import java.io.*;

/**
 * Created by tolgasirvan on 04.07.17.
 */
public class VerifyService {
    public boolean verifyLog(String secret, String [] logDataAsArray) {

        int lineCounter = 0;

        for(String line : logDataAsArray) {

            lineCounter++;

            //noinspection Since15
            if (line.isEmpty()) { // checking if line is empty
                return false;
            }

            String HMACtoVerifiy = line.substring(line.lastIndexOf("=") + 1);// extracting
            // hmac
            // from
            // line
            //System.out.println(HMACtoVerifiy);
            String[] parts = line.split("="); // separating line into values

            try {//if HMAC is not in the right place or there isn't even one

                String HMACfromLine = parts[4]; // extracting hmac-value to
                // delete it from line for
                // computing the hmac of the
                // original log
                String logWithoutHMAC = line.replace(HMACfromLine, "");
                //System.out.println(logWithoutHMAC);
                String actualHMAC = Crypt.generateHmac(secret, logWithoutHMAC, lineCounter);
                //System.out.println(actualHMAC);

                if (HMACtoVerifiy.equals(actualHMAC)) {
                    continue;
                } else
                    return false;
            } catch (Exception e) {
                return false;
            }

        }

        return true;
    }
}

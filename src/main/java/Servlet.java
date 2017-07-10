import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Paths;

/**
 * Created by tolgasirvan on 01.07.17.
 */

@WebServlet(urlPatterns = "/verify")
@MultipartConfig
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        VerifyService verifyService = new VerifyService();
        String secret = request.getParameter("secret");//saving the secret key from post request
        Part filePart = request.getPart("file"); //splitting file in parts
        InputStream fileContent = filePart.getInputStream(); //putting in inputStream
        String fileAsString = IOUtils.toString(fileContent, StandardCharsets.UTF_8);//converting inputStream into a String
        String[] logDataAsArray = fileAsString.split("\n"); //saving as A string array to pass it to the verifyService as parameter
        boolean isValid = verifyService.verifyLog(secret,logDataAsArray); //saving result of verification as a boolean to forward into response jsp
        request.setAttribute("isValid",isValid);
        request.getRequestDispatcher("/index.jsp?isValid="+isValid).forward(request,response);

/*        if (isValid){
            request.getRequestDispatcher("/isValid.jsp").forward(request,response);
        } else {
            request.getRequestDispatcher("/isCorrupt.jsp").forward(request,response);
        }*/


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}

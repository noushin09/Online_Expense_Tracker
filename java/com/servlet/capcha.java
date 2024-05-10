package com.servlet;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class capcha extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Your CAPTCHA verification logic
        String captchaResponse = request.getParameter("g-recaptcha-response");
        String secretKey = "6LfyxMwpAAAAABg5YzLnIgXQPt6qAQvnHHqC1rQY";

        try {
            URL url = new URL("https://www.google.com/recaptcha/api/siteverify");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            String postData = "secret=" + secretKey + "&response=" + captchaResponse;
            try (OutputStream os = conn.getOutputStream()) {
                byte[] input = postData.getBytes("utf-8");
                os.write(input, 0, input.length);
            }

            try (InputStream is = conn.getInputStream()) {
                InputStreamReader isr = new InputStreamReader(is);
                int data = isr.read();
                StringBuilder responseBuffer = new StringBuilder();
                while (data != -1) {
                    char current = (char) data;
                    responseBuffer.append(current);
                    data = isr.read();
                }

                JSONObject jsonObject = new JSONObject(responseBuffer.toString());
                boolean success = jsonObject.getBoolean("success");

                if (success) {
                    // CAPTCHA validation successful, proceed with login
                    response.getWriter().write("CAPTCHA validation successful");
                } else {
                    // CAPTCHA validation failed, display error message
                    response.getWriter().write("CAPTCHA validation failed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error occurred during CAPTCHA validation");
        }
    }
}


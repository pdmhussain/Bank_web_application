package bank_controller;

@WebServlet("/VerifyFace")
public class FaceVerificationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String imageData = request.getParameter("image");
        
        // Convert image data and send to Face Recognition API
        boolean isVerified = FaceRecognitionUtil.verifyFace(imageData, userId);

        if (isVerified) {
            // Delete account from the database
            AccountService.deleteAccount(userId);
            response.getWriter().write("{\"success\": true}");
        } else {
            response.getWriter().write("{\"success\": false}");
        }
    }
}


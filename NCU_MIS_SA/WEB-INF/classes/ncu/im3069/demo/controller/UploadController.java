
package ncu.im3069.demo.controller;


import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/upload.do") 
@MultipartConfig(
		location = "D:\\Desktop\\中央大學課程\\大三上\\SA\\專題\\Tripy\\NCU_MIS_SA\\images"
	)
public class UploadController extends HttpServlet{
	@Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); // 為了處理中文檔名
		
		Part part = request.getPart("photo");
	    String message = "";

	    try {
	        part.write(getFileName(part));
	        message = "File uploaded successfully!";
	    } catch (Exception e) {
	        message = "Failed to upload file: " + e.getMessage();
	    }

	    response.getWriter().write(message);

    }

    private String getFileName(Part part){ //取得檔案名稱(?)
            String contentDisposition = part.getHeader("content-disposition");

            if(!contentDisposition.contains("filename=")){
                return null;
            }

            int beginIndex = contentDisposition.indexOf("filename=") + 10;
            int endIndex = contentDisposition.length()-1;

            return contentDisposition.substring(beginIndex, endIndex);

        }
	
}

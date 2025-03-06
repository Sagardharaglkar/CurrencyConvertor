package myPackageForSecond;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class CurrencyConvertor
 */
@WebServlet("/CurrencyConvertor")
public class CurrencyConvertor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CurrencyConvertor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		double amout1 = Double.parseDouble(request.getParameter("amount1"));
//		double amout2 = Double.parseDouble(request.getParameter("amount2"));
		
//		String currency1 = "USD";
//		String currency2 = "INR";
		String currency1 = request.getParameter("currency1");
		String currency2 = request.getParameter("currency2");
		
//		System.out.println(amout1);
//		System.out.println(amout2);
//		System.out.println(currency1);
//		System.out.println(currency2);
		
//		String query = "http://www.google.com/ig/calculator?hl=en&q=" + amout1 + currency1 + "=?" + currency2;
		String apiUrl = "https://api.currencyapi.com/v3/latest?apikey=cur_live_ykAihLes95wjO4N4uJ2Ph2bm4lsm1VYAkedtFw5u";

		try {
			URL url = new URL(apiUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			
			InputStream inputStream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(inputStream);
			
			StringBuilder responseContent = new StringBuilder();
			
			Scanner scanner = new Scanner(reader);
			
			while(scanner.hasNext()) {
				responseContent.append(scanner.nextLine());
			}
			
			scanner.close();
			
//			System.out.println(responseContent);
//			System.out.println(jsonObject);
			
			Gson gson = new Gson();
			JsonObject jsonObject = gson.fromJson(responseContent.toString(), JsonObject.class);
			
			String currRate = jsonObject.getAsJsonObject("data").getAsJsonObject(currency2).get("value").toString();
						
            // Get currency values
            double sourceValueInUSD = jsonObject.getAsJsonObject("data").getAsJsonObject(currency1).get("value").getAsDouble();
            double targetValueInUSD = jsonObject.getAsJsonObject("data").getAsJsonObject(currency2).get("value").getAsDouble();

            // Convert currency
            double amountInUSD = amout1 / sourceValueInUSD;
            double convertedAmount = amountInUSD * targetValueInUSD;
            
            
            request.setAttribute("convertedAmount", convertedAmount);
            request.setAttribute("converedTo", currency2);


		}catch(IOException e) {
            e.printStackTrace();
        }
		
        // Forward the request to the weather.jsp page for rendering
        request.getRequestDispatcher("index.jsp").forward(request, response);

        
	}

}

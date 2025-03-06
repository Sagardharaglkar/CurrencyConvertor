<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    /* General Page Styling */
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      flex-direction: column;
      margin: 0;
    }

    /* Container */
    .container {
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
      width:450px;
      text-align: center;
    }

    /* Headings */
    h2 {
      color: #666;
      font-size: 14px;
      font-weight: normal;
      margin-bottom: 20px;
    }

    /* Input Fields */
    .input-group {
      display: flex;
      flex-direction: column;
      margin-bottom: 15px;
    }

    label {
      font-weight: bold;
      text-align: left;
      margin-bottom: 5px;
      font-size: 14px;
    }

    input {
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      width: 100%;
      text-align: center;
    }

    /* Currency Selection */
    .currency-group {
      display: flex;
      gap: 20px;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 15px;
    }

    .from, .to{
        display: flex;
        align-items: center;
        gap:14px;
    }

    .dropdown select {
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      width: 100%;
    }

    /* Swap Button */
    #swap {
      background-color: white;
      border: 1px solid #ccc;
      border-radius: 50%;
      font-size: 18px;
      cursor: pointer;
      width: 40px;
      height: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: 0.3s ease-in-out;
    }

    #swap:hover {
      background-color: #eee;
    }

    /* Convert Button */
    #convert {
      background-color: #007f66;
      color: white;
      border: none;
      border-radius: 5px;
      padding: 12px;
      font-size: 16px;
      cursor: pointer;
      width: 100%;
      transition: 0.3s;
    }

    #convert:hover {
      background-color: #005c4b;
    }

    /* Result Section */
    .result-box {
      margin-top: 20px;
    }

    .result-box h3 {
      font-size: 16px;
      color: #666;
      margin-bottom: 10px;
    }

    .result-box p {
      font-size: 20px;
      font-weight: bold;
      color: #333;
    }
  </style>
  <body>
      <h1>ConvertEase - Currency Convertor</h2>
    <div class="container">
      <form action="CurrencyConvertor" method="post">     
      <div class="converter-box">
        <div class="input-group">
          <label>Amount</label>
          <input type="text" id="amount1" name="amount1" value="1" />
        </div>

        <div class="currency-group">
            <div class="from">
          <label>From</label>
          <div class="dropdown">
            <select name="currency1" id="currency1">
              <option selected="" value="EUR">Euro - EUR</option>
              <option value="USD">United States Dollars - USD</option>
              <option value="GBP">United Kingdom Pounds - GBP</option>
              <!-- Dynamically generated options from JSON -->
              <option value="ADA">Cardano - ADA</option>
              <option value="AED">United Arab Emirates Dirham - AED</option>
              <option value="AFN">Afghanistan Afghani - AFN</option>
              <option value="ALL">Albanian Lek - ALL</option>
              <option value="AMD">Armenian Dram - AMD</option>
              <option value="ANG">Netherlands Antillean Guilder - ANG</option>
              <option value="AOA">Angolan Kwanza - AOA</option>
              <option value="ARB">Arbitrum - ARB</option>
              <option value="ARS">Argentine Peso - ARS</option>
              <option value="AUD">Australian Dollar - AUD</option>
              <option value="AVAX">Avalanche - AVAX</option>
              <option value="AWG">Aruban Florin - AWG</option>
              <option value="AZN">Azerbaijani Manat - AZN</option>
              <option value="BAM">
                Bosnia and Herzegovina Convertible Mark - BAM
              </option>
              <option value="BBD">Barbadian Dollar - BBD</option>
              <option value="BDT">Bangladeshi Taka - BDT</option>
              <option value="BGN">Bulgarian Lev - BGN</option>
              <option value="BHD">Bahraini Dinar - BHD</option>
              <option value="BIF">Burundian Franc - BIF</option>
              <option value="BMD">Bermudian Dollar - BMD</option>
              <option value="BNB">Binance Coin - BNB</option>
              <option value="BND">Brunei Dollar - BND</option>
              <option value="BOB">Bolivian Boliviano - BOB</option>
              <option value="BRL">Brazilian Real - BRL</option>
              <option value="BSD">Bahamian Dollar - BSD</option>
              <option value="BTC">Bitcoin - BTC</option>
              <option value="BTN">Bhutanese Ngultrum - BTN</option>
              <option value="BWP">Botswana Pula - BWP</option>
              <option value="BYN">Belarusian Ruble - BYN</option>
              <option value="BYR">Belarusian Ruble (Old) - BYR</option>
              <option value="BZD">Belize Dollar - BZD</option>
              <option value="CAD">Canadian Dollar - CAD</option>
              <option value="CDF">Congolese Franc - CDF</option>
              <option value="CHF">Swiss Franc - CHF</option>
              <option value="CLF">Chilean Unit of Account (UF) - CLF</option>
              <option value="CLP">Chilean Peso - CLP</option>
              <option value="CNY">Chinese Yuan - CNY</option>
              <option value="COP">Colombian Peso - COP</option>
              <option value="CRC">Costa Rican Colón - CRC</option>
              <option value="CUC">Cuban Convertible Peso - CUC</option>
              <option value="CUP">Cuban Peso - CUP</option>
              <option value="CVE">Cape Verdean Escudo - CVE</option>
              <option value="CZK">Czech Koruna - CZK</option>
              <option value="DAI">Dai - DAI</option>
              <option value="DJF">Djiboutian Franc - DJF</option>
              <option value="DKK">Danish Krone - DKK</option>
              <option value="DOP">Dominican Peso - DOP</option>
              <option value="DZD">Algerian Dinar - DZD</option>
              <option value="EGP">Egyptian Pound - EGP</option>
              <option value="ERN">Eritrean Nakfa - ERN</option>
              <option value="ETB">Ethiopian Birr - ETB</option>
              <option value="ETH">Ethereum - ETH</option>
              <option value="EUR">Euro - EUR</option>
              <option value="FJD">Fijian Dollar - FJD</option>
              <option value="GBP">British Pound Sterling - GBP</option>
              <option value="GEL">Georgian Lari - GEL</option>
              <option value="GHS">Ghanaian Cedi - GHS</option>
              <option value="GIP">Gibraltar Pound - GIP</option>
              <option value="GMD">Gambian Dalasi - GMD</option>
              <option value="GNF">Guinean Franc - GNF</option>
              <option value="GTQ">Guatemalan Quetzal - GTQ</option>
              <option value="HKD">Hong Kong Dollar - HKD</option>
              <option value="HNL">Honduran Lempira - HNL</option>
              <option value="HRK">Croatian Kuna - HRK</option>
              <option value="HUF">Hungarian Forint - HUF</option>
              <option value="IDR">Indonesian Rupiah - IDR</option>
              <option value="ILS">Israeli New Shekel - ILS</option>
              <option value="INR">Indian Rupee - INR</option>
              <option value="IQD">Iraqi Dinar - IQD</option>
              <option value="IRR">Iranian Rial - IRR</option>
              <option value="ISK">Icelandic Króna - ISK</option>
              <option value="JMD">Jamaican Dollar - JMD</option>
              <option value="JOD">Jordanian Dinar - JOD</option>
              <option value="JPY">Japanese Yen - JPY</option>
              <option value="KES">Kenyan Shilling - KES</option>
            </select>
          </div>
          </div>

          <div class="to">
            <label>To</label>
            <div class="dropdown">
              <select name="currency2" id="currency2">
                <option selected="" value="EUR">Euro - EUR</option>
                <option value="USD">United States Dollars - USD</option>
                <option value="GBP">United Kingdom Pounds - GBP</option>
                <!-- Dynamically generated options from JSON -->
                <option value="ADA">Cardano - ADA</option>
                <option value="AED">United Arab Emirates Dirham - AED</option>
                <option value="AFN">Afghanistan Afghani - AFN</option>
                <option value="ALL">Albanian Lek - ALL</option>
                <option value="AMD">Armenian Dram - AMD</option>
                <option value="ANG">Netherlands Antillean Guilder - ANG</option>
                <option value="AOA">Angolan Kwanza - AOA</option>
                <option value="ARB">Arbitrum - ARB</option>
                <option value="ARS">Argentine Peso - ARS</option>
                <option value="AUD">Australian Dollar - AUD</option>
                <option value="AVAX">Avalanche - AVAX</option>
                <option value="AWG">Aruban Florin - AWG</option>
                <option value="AZN">Azerbaijani Manat - AZN</option>
                <option value="BAM">
                  Bosnia and Herzegovina Convertible Mark - BAM
                </option>
                <option value="BBD">Barbadian Dollar - BBD</option>
                <option value="BDT">Bangladeshi Taka - BDT</option>
                <option value="BGN">Bulgarian Lev - BGN</option>
                <option value="BHD">Bahraini Dinar - BHD</option>
                <option value="BIF">Burundian Franc - BIF</option>
                <option value="BMD">Bermudian Dollar - BMD</option>
                <option value="BNB">Binance Coin - BNB</option>
                <option value="BND">Brunei Dollar - BND</option>
                <option value="BOB">Bolivian Boliviano - BOB</option>
                <option value="BRL">Brazilian Real - BRL</option>
                <option value="BSD">Bahamian Dollar - BSD</option>
                <option value="BTC">Bitcoin - BTC</option>
                <option value="BTN">Bhutanese Ngultrum - BTN</option>
                <option value="BWP">Botswana Pula - BWP</option>
                <option value="BYN">Belarusian Ruble - BYN</option>
                <option value="BYR">Belarusian Ruble (Old) - BYR</option>
                <option value="BZD">Belize Dollar - BZD</option>
                <option value="CAD">Canadian Dollar - CAD</option>
                <option value="CDF">Congolese Franc - CDF</option>
                <option value="CHF">Swiss Franc - CHF</option>
                <option value="CLF">Chilean Unit of Account (UF) - CLF</option>
                <option value="CLP">Chilean Peso - CLP</option>
                <option value="CNY">Chinese Yuan - CNY</option>
                <option value="COP">Colombian Peso - COP</option>
                <option value="CRC">Costa Rican Colón - CRC</option>
                <option value="CUC">Cuban Convertible Peso - CUC</option>
                <option value="CUP">Cuban Peso - CUP</option>
                <option value="CVE">Cape Verdean Escudo - CVE</option>
                <option value="CZK">Czech Koruna - CZK</option>
                <option value="DAI">Dai - DAI</option>
                <option value="DJF">Djiboutian Franc - DJF</option>
                <option value="DKK">Danish Krone - DKK</option>
                <option value="DOP">Dominican Peso - DOP</option>
                <option value="DZD">Algerian Dinar - DZD</option>
                <option value="EGP">Egyptian Pound - EGP</option>
                <option value="ERN">Eritrean Nakfa - ERN</option>
                <option value="ETB">Ethiopian Birr - ETB</option>
                <option value="ETH">Ethereum - ETH</option>
                <option value="EUR">Euro - EUR</option>
                <option value="FJD">Fijian Dollar - FJD</option>
                <option value="GBP">British Pound Sterling - GBP</option>
                <option value="GEL">Georgian Lari - GEL</option>
                <option value="GHS">Ghanaian Cedi - GHS</option>
                <option value="GIP">Gibraltar Pound - GIP</option>
                <option value="GMD">Gambian Dalasi - GMD</option>
                <option value="GNF">Guinean Franc - GNF</option>
                <option value="GTQ">Guatemalan Quetzal - GTQ</option>
                <option value="HKD">Hong Kong Dollar - HKD</option>
                <option value="HNL">Honduran Lempira - HNL</option>
                <option value="HRK">Croatian Kuna - HRK</option>
                <option value="HUF">Hungarian Forint - HUF</option>
                <option value="IDR">Indonesian Rupiah - IDR</option>
                <option value="ILS">Israeli New Shekel - ILS</option>
                <option value="INR">Indian Rupee - INR</option>
                <option value="IQD">Iraqi Dinar - IQD</option>
                <option value="IRR">Iranian Rial - IRR</option>
                <option value="ISK">Icelandic Króna - ISK</option>
                <option value="JMD">Jamaican Dollar - JMD</option>
                <option value="JOD">Jordanian Dinar - JOD</option>
                <option value="JPY">Japanese Yen - JPY</option>
                <option value="KES">Kenyan Shilling - KES</option>
              </select>
            </div>
          </div>
        </div>

        <button id="convert">CONVERT</button>

        <div class="result-box">
          <h3>Converted Amount</h3>
          <p id="result">${convertedAmount}<span> ${converedTo}</span></p>
        </div>
      </div>
      </form>
    </div>
  </body>
</html>
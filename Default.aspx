<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Contribute.eid.poc.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    
    <head>
        
        <title>Contribute.eid.poc</title>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta http-equiv="content-type" content="text/xhtml; charset=iso-8859-1" />
        <meta http-equiv="imagetoolbar" content="no" />
        <link rel="stylesheet" href="Default.css" />
	<script type="text/javascript" src="https://www.java.com/js/deployJava.js"></script>
        <script type="text/javascript" src="Default.js"></script>

    </head>
    
    <body>
        
        <h1>Persoonlijke informatie</h1>
        <h2>Kaartgegevens</h2>

        <form id="Form" runat="server">
            <fieldset>
                <legend>Data van de e-ID</legend>
                
                <br class="clear" />

                <p class="formRowWithBorder">
                    <label for="">Achternaam</label>
                    <asp:TextBox ID="AchternaamTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Voornaam</label>
                    <asp:TextBox ID="VoornaamTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Rijksregisternummer</label>
                    <asp:TextBox ID="RijksregisternummerTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Adres</label>
                    <asp:TextBox ID="AdresTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Postcode</label>
                    <asp:TextBox ID="PostcodeTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Gemeente</label>
                    <asp:TextBox ID="GemeenteTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Nationaliteit</label>
                    <asp:TextBox ID="NationaliteitTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Geboorteplaats</label>
                    <asp:TextBox ID="GeboorteplaatsTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Geboortedatum (dd/mm/jjjj)</label>
                    <asp:TextBox ID="GeboortedatumTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Geslacht</label>
                    <asp:TextBox ID="GeslachtTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>

                <p class="formRowWithBorder">
                    <label for="">Land</label>
                    <asp:TextBox ID="LandTextBox" ClientIDMode="Static" runat="server"></asp:TextBox>
                </p>
            </fieldset>
            
            <p class="buttontoolbar">
                <a href="#" onclick="Contribute.eid.uitlezen();">Uitlezen e-ID</a>
                <a href="#" onclick="Contribute.eid.uitlezenMetCode();">Uitlezen e-ID met code</a>
            </p>
        </form>

    </body>

</html>

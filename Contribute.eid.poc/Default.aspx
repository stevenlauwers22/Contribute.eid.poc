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
                    <asp:Label ID="AchternaamLabel" runat="server" AssociatedControlID="AchternaamTextBox" Text="Achternaam" />
                    <asp:TextBox ID="AchternaamTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="VoornaamLabel" runat="server" AssociatedControlID="VoornaamTextBox" Text="Voornaam" />
                    <asp:TextBox ID="VoornaamTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="RijksregisternummerLabel" runat="server" AssociatedControlID="RijksregisternummerTextBox" Text="Rijksregisternummer" />
                    <asp:TextBox ID="RijksregisternummerTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="AdresLabel" runat="server" AssociatedControlID="AdresTextBox" Text="Adres" />
                    <asp:TextBox ID="AdresTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="PostcodeLabel" runat="server" AssociatedControlID="PostcodeTextBox" Text="Postcode" />
                    <asp:TextBox ID="PostcodeTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="GemeenteLabel" runat="server" AssociatedControlID="GemeenteTextBox" Text="Gemeente" />
                    <asp:TextBox ID="GemeenteTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="GeboorteplaatsLabel" runat="server" AssociatedControlID="GeboorteplaatsTextBox" Text="Geboorteplaats" />
                    <asp:TextBox ID="GeboorteplaatsTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="GeboortedatumLabel" runat="server" AssociatedControlID="GeboortedatumTextBox" Text="Geboortedatum (dd/mm/jjjj)" />
                    <asp:TextBox ID="GeboortedatumTextBox" ClientIDMode="Static" runat="server" />
                </p>

                <p class="formRowWithBorder">
                    <asp:Label ID="GeslachtLabel" runat="server" AssociatedControlID="GeslachtTextBox" Text="Geslacht" />
                    <asp:TextBox ID="GeslachtTextBox" ClientIDMode="Static" runat="server" />
                </p>
            </fieldset>
            
            <p class="buttontoolbar">
                <a href="#" onclick="Contribute.eid.uitlezen('<%= HttpContext.Current.Session.SessionID %>');">Uitlezen e-ID</a>
                <a href="#" onclick="Contribute.eid.uitlezenMetCode('<%= HttpContext.Current.Session.SessionID %>');">Uitlezen e-ID met code</a>
            </p>
        </form>

    </body>

</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BakeryWebsite._Default" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Sweet Delights Bakery</title>
    <link href="Styles/site.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h1>Sweet Delights Bakery</h1>
    </header>
    <nav>
        <a href="#home">Home</a>
        <a href="#products">Products</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </nav>

    <main>
        <section id="home">
            <h2>Welcome!</h2>
            <p>Freshly baked cakes, bread, and pastries made with love.</p>
            <img src="Images/bakery.jpg" alt="Bakery" style="width:400px;" />
        </section>

        <section id="products">
            <h2>Our Products</h2>
            <asp:Repeater ID="rptProducts" runat="server">
                <ItemTemplate>
                    <div class="product">
                        <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' />
                        <h3><%# Eval("Name") %></h3>
                        <p><%# Eval("Description") %></p>
                        <p>Price: $<%# Eval("Price") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <section id="about">
            <h2>About Us</h2>
            <p>Sweet Delights Bakery has been baking delicious treats since 2005.</p>
        </section>

        <section id="contact">
            <h2>Contact Us</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label><br />
            <asp:TextBox ID="txtName" runat="server" Placeholder="Your Name"></asp:TextBox><br />
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Your Email"></asp:TextBox><br />
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Placeholder="Your Message"></asp:TextBox><br />
            <asp:Button ID="btnSend" runat="server" Text="Send Message" OnClick="btnSend_Click" />
        </section>
    </main>

    <footer>
        <p>&copy; 2025 Sweet Delights Bakery</p>
    </footer>
</body>
</html>

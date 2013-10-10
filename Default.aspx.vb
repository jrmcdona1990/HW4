Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' declare and dim values

        Dim HoursWorked As Double
        Dim Wage As Double
        Dim PreTax As Double
        Dim PostTax As Double
        Dim grosspay As Double
        Dim netincome As Double
        Dim taxablepay As Double
        Dim pay As Double
        Dim tax As Double

        ' declare variables
        HoursWorked = TbHoursWorked.Text
        Wage = TbWage.Text
        PreTax = tbPreTax.Text
        PostTax = TbPostTax.Text

        ' format currency 
        TbWage.Text = FormatCurrency(Wage)
        tbPreTax.Text = FormatCurrency(PreTax)
        TbPostTax.Text = FormatCurrency(PostTax)


        ' calculate equations

        grosspay = Wage * HoursWorked

        taxablepay = grosspay - PreTax

        If grosspay < 500 Then
            tax = taxablepay * 0.18
        Else : tax = taxablepay * 0.22
        End If

        pay = taxablepay - tax

        netincome = pay - PostTax

        lblSalaryPay.Text = netincome

        lblSalaryPay.Text = FormatCurrency(netincome)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ' clear textboxes
        TbHoursWorked.Text = ""
        TbWage.Text = ""
        tbPreTax.Text = ""
        TbPostTax.Text = ""

    End Sub

    Protected Sub TbHoursWorked_TextChanged(sender As Object, e As EventArgs) Handles TbHoursWorked.TextChanged

    End Sub
End Class

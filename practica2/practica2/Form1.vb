Public Class Form1

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click

        Application.Exit()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Clear()
        TextBox2.Clear()

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click





        Dim nombre As String
        Dim ext As String

        nombre = TextBox1.Text
        ext = TextBox2.Text


      
        'Crea la carpeta "ARVO" en la dirección indicada
        System.IO.Directory.CreateDirectory("c:\practica2\arvo")


        'crea el archivo dentro de la carpeta "ARVO"
        Dim file As System.IO.FileStream
        file = System.IO.File.Create(("c:\practica2\arvo\ ") + nombre + "." + ext)








    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        TextBox1.Focus()
    End Sub

    Private Sub TextBox2_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox2.TextChanged





    End Sub
End Class

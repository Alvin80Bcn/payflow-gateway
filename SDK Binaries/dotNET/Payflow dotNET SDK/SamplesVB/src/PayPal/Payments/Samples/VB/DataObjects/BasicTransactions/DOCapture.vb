Imports System
Imports PayPal.Payments.Common
Imports PayPal.Payments.Common.Utility
Imports PayPal.Payments.DataObjects
Imports PayPal.Payments.Transactions

Namespace PayPal.Payments.Samples.VB.DataObjects.BasicTransactions
    ''' <summary>
    ''' This class uses the Payflow SDK Data Objects to do a simple Capture transaction.
    ''' The request is sent as a Data Object and the response received is also a Data Object.
    ''' </summary>
    Public Class DOCapture
        Public Sub New()
        End Sub

        Public Shared Sub Main(ByVal Args As String())
            Console.WriteLine("------------------------------------------------------")
            Console.WriteLine("Executing Sample from File: DOCapture.vb")
            Console.WriteLine("------------------------------------------------------")

            ' Create the Data Objects.
            ' Create the User data object with the required user details.
            Dim User As UserInfo = New UserInfo("<user>", "<vendor>", "<partner>", "<password>")

            ' Create the Payflow  Connection data object with the required connection details.
            ' The PAYFLOW_HOST property is defined in the App config file.
            Dim Connection As PayflowConnectionData = New PayflowConnectionData
            '/////////////////////////////////////////////////////////////////

            ' If you want to change the amount being captured, you'll need to set the Amount object.
            ' Dim Inv As Invoice = New Invoice
            ' Set the amount object if you want to change the amount from the original authorization.
            ' Currency Code USD is US ISO currency code.  If no code passed, USD is default.
            ' See the Developer's Guide for the list of three-character currency codes available.
            ' Dim Amt As New Currency(New Decimal(15.0), "USD")
            ' Inv.Amt = Amt
            ' Dim Trans As CaptureTransaction = New CaptureTransaction("<ORIGINAL_PNREF>", User, Connection, Inv, PayflowUtility.RequestId)

            ' Create a new Capture Transaction for the original amount of the authorization.  See above if you
            ' need to change the amount.
            Dim Trans As CaptureTransaction = New CaptureTransaction("<ORIGINAL_PNREF>", User, Connection, PayflowUtility.RequestId)

            ' Indicates if this Delayed Capture transaction is the last capture you intend to make.
            ' The values are: Y (default) / N
            ' NOTE: If CAPTURECOMPLETE is Y, any remaining amount of the original reauthorized transaction
            ' is automatically voided.  Also, this is only used for UK and US accounts where PayPal is acting
            ' as your bank.
            ' Trans.CaptureComplete = "Y"

            ' Set the transaction verbosity to HIGH to display most details.
            Trans.Verbosity = "HIGH"

            ' Submit the transaction.
            Dim Resp As Response = Trans.SubmitTransaction()
            If Not Resp Is Nothing Then
                ' Get the Transaction Response parameters.
                Dim TrxnResponse As TransactionResponse = Resp.TransactionResponse

                If Not TrxnResponse Is Nothing Then
                    Console.WriteLine("RESULT = " + TrxnResponse.Result.ToString)
                    Console.WriteLine("PNREF = " + TrxnResponse.Pnref)
                    Console.WriteLine("RESPMSG = " + TrxnResponse.RespMsg)
                    Console.WriteLine("AUTHCODE = " + TrxnResponse.AuthCode)
                    Console.WriteLine("AVSADDR = " + TrxnResponse.AVSAddr)
                    Console.WriteLine("AVSZIP = " + TrxnResponse.AVSZip)
                    Console.WriteLine("IAVS = " + TrxnResponse.IAVS)
                    ' If value is true, then the Request ID has not been changed and the original response
                    ' of the original transction is returned. 
                    Console.WriteLine("DUPLICATE = " + TrxnResponse.Duplicate)
                End If

                ' Get the Fraud Response parameters.
                Dim FraudResp As FraudResponse = Resp.FraudResponse
                If Not FraudResp Is Nothing Then
                    Console.WriteLine("PREFPSMSG = " + FraudResp.PreFpsMsg)
                    Console.WriteLine("POSTFPSMSG = " + FraudResp.PostFpsMsg)
                End If
                ' Display the response.
                Console.WriteLine(Environment.NewLine + PayflowUtility.GetStatus(Resp))

                ' Get the Transaction Context and check for any contained SDK specific errors (optional code).
                Dim TransCtx As Context = Resp.TransactionContext
                If (Not TransCtx Is Nothing) And (TransCtx.getErrorCount() > 0) Then
                    Console.WriteLine(Environment.NewLine + "Transaction Errors = " + TransCtx.ToString())
                End If
            End If

            Console.WriteLine(Environment.NewLine + "Press Enter to Exit ...")
            Console.ReadLine()
        End Sub
    End Class
End Namespace
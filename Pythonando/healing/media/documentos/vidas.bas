Attribute VB_Name = "vidas"
Sub DuoVidas()
  Const JS_HAS_TEXT = "return document.body.textContent.indexOf(arguments[0]) > -1"

  Dim tela As New ChromeDriver
  'Dim tela As New EdgeDriver
  
  Dim Procura As New By
  tela.Get "https://pt.duolingo.com/"
  
  tela.Window.SetSize 800, 1000
  tela.Window.SetPosition 600, 0
  'Range("c1") = 0
  
  Do 'espera
    Procurado = False
    Procurado = tela.ExecuteScript(JS_HAS_TEXT, "O jeito grátis")
    If Procurado Then Exit Do
  Loop
     
  tela.FindElementByClass("WOZnx").Click
  
  Do 'espera
    Procurado = False
    Procurado = tela.ExecuteScript(JS_HAS_TEXT, "Entrar")
    If Procurado Then Exit Do
  Loop

'Dados de login+++++++++++++++++++++++++++++++++++++++++++++++++++++
    tela.FindElementByClass("_3Yh_i").SendKeys "edson_g_santos@yahoo.com.br"
    tela.SendKeys tela.Keys.Tab 'envia um tab para o Tela
    tela.SendKeys "Du0l1ng0dsqto8@"
    tela.FindElementByClass("_2z95t").Submit
     
  Do 'espera
    Procurado = False
    Praticar = False
    Procurado = tela.ExecuteScript(JS_HAS_TEXT, "A senha está incorreta.")
    If Procurado Then
        tela.FindElementByClass("_2z95t").Submit
    End If
    Praticar = tela.ExecuteScript(JS_HAS_TEXT, "Praticar")
    If Praticar Then Exit Do
  Loop
  
  tela.Get "https://www.duolingo.com/practice-hub"
  
  Do 'espera
    Procurado = False
    Procurado = tela.ExecuteScript(JS_HAS_TEXT, "Histórias")
    If Procurado Then Exit Do
  Loop
  
Volta:
  qtd = tela.FindElementsByClass("_3_OWE").Count
    For q = 1 To qtd
        Texto = tela.FindElementsByClass("_3_OWE")(q).Attribute("innerText")
        If Texto = "Histórias" Then
            tela.FindElementsByClass("_3_OWE")(q).Click
            Exit For
        End If
    Next
    If Texto <> "Histórias" Then GoTo Volta
    
  Do 'espera
    Procurado = False
    Procurado = tela.ExecuteScript(JS_HAS_TEXT, "Revise")
    If Procurado Then Exit Do
  Loop
Segue:
Volta2:
  qtd = tela.FindElementsByClass("_3XvZO").Count
    For q = 1 To qtd
        Texto = tela.FindElementsByClass("_3XvZO")(q).Attribute("innerText")
        If Texto = "REVISAR +20 XP" Then
            'tela.FindElementsByClass("_3XvZO")(q).Click
            tela.Get "https://www.duolingo.com/stories/en-pt-good-morning?mode=read&practiceHubStory=library"
            Exit For
        End If
    Next
    If Texto <> "REVISAR +20 XP" Then GoTo Volta2
    
    Do 'espera
        Procurado = False
        Procurado = tela.IsElementPresent(Procura.Class("_3HhhB"))
        If Procurado Then Exit Do
    Loop
    
    Continuar = False
    Do 'espera
        Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
        If Continuar Then
            Continuar = False
            tela.SendKeys tela.Keys.Enter
            Exit Do
        End If
    Loop
    
    Do
        Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
        If Continuar Then
            Continuar = False
            tela.SendKeys tela.Keys.Enter
        End If
    
    '////////////////////////////////////////////////////////////////
    SN_da_vez = ""
    SN_da_vez = tela.ExecuteScript(JS_HAS_TEXT, "A Priti não consegue encontrar as chaves dela.")
    If SN_da_vez <> Falso Then
        Rangea8 = "A Priti não consegue encontrar as chaves dela."
        Ranged8 = "Sim, isso mesmo."
        SimNao = True
        GoTo SN
    End If
 
    SN_da_vez = tela.ExecuteScript(JS_HAS_TEXT, "Hmm… O que a Priti está fazendo?")
    If SN_da_vez <> Falso Then
        Rangea8 = "Hmm… O que a Priti está fazendo?"
        Ranged8 = "Procurando um pouco de açúcar para o café dela."
        SimNao = True
        GoTo SN
    End If
    
    SN_da_vez = tela.ExecuteScript(JS_HAS_TEXT, "A Priti estava tão cansada que…")
    If SN_da_vez <> Falso Then
        Rangea8 = "A Priti estava tão cansada que…"
        Ranged8 = "…ela colocou sal no café dela."
        SimNao = True
        GoTo SN
    End If
    
           
        Espera = tela.IsElementPresent(Procura.Class("_1yW4j"))
        If Espera Then
            Verificando = tela.ExecuteScript(JS_HAS_TEXT, "Forme a frase que você ouvir:")
            Espera = False
            Frase = True
            If Verificando Then GoTo Formefrase
        End If
        
         Espera = tela.IsElementPresent(Procura.Class("_2dp2L"))
        If Espera Then
            Espera = False
            Pares = True
            GoTo Pares
        End If
        
        Espera = tela.IsElementPresent(Procura.Class("WOZnx"))
        If Espera Then
            Verificando = False
            Espera = False
            Significa = True
            Verificando = tela.ExecuteScript(JS_HAS_TEXT, "Escolha a opção que significa")
            If Verificando Then GoTo Significado
        End If
    Loop
    
    'Sim ou Não *******************************************************************************
SN:
    If SimNao Then
        Palavrachave = Rangea8
        Palavrachave2 = Ranged8
        Do 'espera
            Procurado = False
            Procurado = tela.ExecuteScript(JS_HAS_TEXT, Palavrachave)
            If Procurado Then
                Exit Do
            End If
        Loop
        
        qtd = tela.FindElementsByClass("_1WfLN").Count
        For c = 1 To qtd
        On Error Resume Next
            clicar = tela.FindElementsByClass("_1WfLN")(c).Text
            If clicar = Palavrachave2 Then
                tela.FindElementsByClass("_1WfLN")(c).Click
            End If
            'Application.Wait Now + TimeValue("00:00:01")
            Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
            If Continuar Then
                'SimNao = False
                GoTo Segue
            End If
        Next
    End If
'Fim - Sim ou Não *******************************************************************************

'Forme a frase que você ouvir *****************************************************
Formefrase:
        If Frase Then
            Frase = False
RepeteFor:
            qtd_frase = tela.FindElementsByClass("_1yW4j").Count
            
            For P = 1 To qtd_frase
                If P = 1 Then Procurando = "I"
                If P = 2 Then Procurando = "need the"
                If P = 3 Then Procurando = "keys"
                If P = 4 Then Procurando = "to my car"
                For F = 1 To qtd_frase
                    clicar = tela.FindElementsByClass("_1yW4j")(F).Text
                    If clicar = Procurando Then
                        tela.FindElementsByClass("_1yW4j")(F).Click
                        Exit For
                    End If
                    Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
                    If Continuar Then GoTo Segue
                Next
                If Continuar Then GoTo Segue
            Next
        End If
        If Not Continuar Then
            Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
            GoTo RepeteFor
        End If
        If Continuar Then GoTo Segue
'Fim - Forme a frase que você ouvir *****************************************************

'Escolha as palavras que faltam  **********************************************************
'ESCOLHA:
'    If Palavra Then
'RepeteFor2:
'            qtd_pal = tela.FindElementsByClass("_1nCoa").Count
'            For P = 1 To qtd_pal
'                    tela.FindElementsByClass("_1nCoa")(P).Click
'                       Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
'                       If Continuar Then
'                        GoTo Segue
'                       End If
'            Next
'        Palavra = False
'    End If
'    If Not Continuar Then
'        Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
'        Stop
'        GoTo RepeteFor2
'    End If
'    If Continuar Then GoTo Segue
    'Fim de Escolha as palavras que faltam ****************************************************

'Significado  **********************************************************
Significado:
    If Significa Then
        Significa = False
RepeteFor3:
        qtd = tela.FindElementsByClass("WOZnx").Count
        For Sq = 1 To qtd
            clicar = tela.FindElementsByClass("WOZnx")(Sq).Text
            If clicar = "tired" Then
                tela.FindElementsByClass("WOZnx")(Sq).Click
                Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
                Exit For
            End If
        Next
        Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
        If Continuar Then GoTo Segue
    End If
    If Not Continuar Then
        Continuar = tela.FindElementByClass("_3HhhB").IsEnabled
        'Stop
        GoTo RepeteFor3
    End If
    If Continuar Then GoTo Segue
'Fim de Significado  **********************************************************


'Pares ***********************************************************************
Pares:
If Pares Then
    Pares = False
    Sai = False
    
    Portugues = Array("açúcar", "aqui está", "bebe", "bom dia", "café", "cansada", "chaves", "desculpe", "eca", "mesa", "onde", "por favor", "querido", "sal", "você")
    Ingles = Array("sugar", "here it is", "drinks", "good morning", "coffee", "tired", "keys", "sorry", "yuck", "table", "where", "please", "honey", "salt", "you")
    
        
    For T = 1 To 5
        Combine = Trim(Mid(tela.FindElementsByClass("notranslate")(T).Text, 3, 50))
        For Busca = 0 To 14 'Len(Portugues) - 1
            If UCase(Combine) = UCase(Portugues(Busca)) Then
                tela.FindElementsByClass("notranslate")(T).Click
                Combinou = Ingles(Busca)
                Exit For
            End If
        Next
        
        'tela.FindElementsByClass("notranslate")(T).Click
        For clica = 6 To 10
            Par = Trim(Mid(tela.FindElementsByClass("notranslate")(clica).Text, 3, 50))
            If UCase(Combinou) = UCase(Par) Then
                'Stop
                tela.FindElementsByClass("notranslate")(clica).Click
                Exit For
            End If
        Next
        Sai = tela.FindElementByClass("_3HhhB").IsEnabled
        If Sai Then Exit For
    Next
    Do
        Sai = tela.FindElementByClass("_3HhhB").IsEnabled
        If Sai Then
            tela.SendKeys tela.Keys.Enter
            Exit Do
        End If
    Loop
    Sai = False
    
    qtd = tela.FindElementsByClass("_3XvZO").Count
    For q = 1 To qtd
        Texto = tela.FindElementsByClass("_3XvZO")(q).Attribute("innerText")
        If Texto = "REVISAR +20 XP" Then GoTo Segue
    Next
    
    
    Do
        Sai = tela.FindElementByClass("_3HhhB").IsEnabled
        If Sai Then
            Sai = False
            tela.SendKeys tela.Keys.Enter
            ''''''''''''''''''''''''''''''''
            Do 'espera
              Procurado = False
              SubiuDivisao = False
              Procurado = tela.ExecuteScript(JS_HAS_TEXT, "Família grande")
              If Procurado Then GoTo RodarCinco
                SubiuDivisao = tela.IsElementPresent(Procura.Class("_3_MEB"))
                If SubiuDivisao Then
                  tela.SendKeys tela.Keys.Enter
                  GoTo RodarCinco
                End If
            Loop
        End If
    Loop
End If
'Fim - Pares *****************************************************************
RodarCinco:
Do
    qtd = tela.FindElementsByClass("_3XvZO").Count
    For q = 1 To qtd
        Texto = tela.FindElementsByClass("_3XvZO")(q).Attribute("innerText")
        If Texto = "REVISAR +20 XP" Then GoTo Segue
    Next
    
    
    Sai = tela.FindElementByClass("_3HhhB").IsEnabled
        If Sai Then
            tela.SendKeys tela.Keys.Enter
            GoTo Segue
            Exit Do
        End If
Loop
End Sub





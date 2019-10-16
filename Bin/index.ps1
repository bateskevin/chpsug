

$HTML = html {
    head {
        

        #Bootstrap
        
        #Write-PSHTMLAsset -Type Script -Name BootStrap
        #Write-PSHTMLAsset -Type Style -Name BootStrap
        Link -href "Style/style.css" -rel stylesheet
        Link -href "Assets/BootStrap/bootstrap.min.css" -rel stylesheet
        Script -src "Assets/BootStrap/bootstrap.min.js"
        link -href "https://fonts.googleapis.com/css?family=Quicksand&display=swap" -rel "stylesheet"
        
        #script -src "styles/chartjs/Chart.bundle.min.js" -type "text/javascript"
        Title "CHPSUG"
    }
    body {

        div -Class "container" -Content {
        div -class 'jumbotron container-fluid' -content {
            h1 -class 'display-4' -content "Powershell Usergroup Schweiz"
            hr -Class "my-4"
            
            img -src "https://3.bp.blogspot.com/-a7jPVdFk9Hw/W_XeTJX6JyI/AAAAAAAAC2c/HCtxP0wSSs0wEMKJOYq7pivEJaSVin92gCLcBGAs/s1600/powershell.png" -alt "Powershell Logo" -height "250" -width "250" -Class "img-responsive"

            
            p -Class "lead" -Content "Online Meetups mit deinen Powershell Peers" -Style ""

        } -Style "background-image:url('https://i.pinimg.com/originals/ae/69/40/ae69407f5948d0e76ccb1e52af2eca2b.jpg');"
        #h6 -Class "text-center" -Content {"Switzerland &#x2764 Powershell"}
        

            div -id "listmembers" -class "container-fluid" -Content {
                h3 "Was ist eine Powershell Usergroup"
                
                p "Eine Powershell Usergroup ist eine Gruppe aus IT-Pros die ein grosses Interesse an Powershell haben, taeglich mit Powershell arbeiten oder sich fuer Powershell interessieren und gerne ihr Wissen ausbauen/teilen mouchten."

                p {
                    "Falls du interessiert daran bist Teilzunehmen Fuelle das Formular unten kurz aus um dein Interesse zu zeigen:"
                }
                a -href "https://bit.ly/31jdJFC" -content {
                    button -Content {
                        "Zum Formular"
                    } -Class "btn btn-outline-primary"
                }
            }
            
            div -id "removeuser" -class "container-fluid" -Content {

                h3 {
                    "Was macht die Schweizer Powershell Usergroup"
                }

                p "Die Schweizer Powershell Usergruppe trifft sich einmal monatlich online! In so einem online meetup finden Lightning Demons (15-20 Minuetige Praesentationen) statt und sie ermouglichen den Austausch mit anderen IT-Pros ueber Powershell."

                p "Die Events finden jeweils am ersten Dienstag im Monat um 17:00 statt und sie dauern etwa eine Stunde. HIer die naechsten Events:"


            }

            Div -id "somediv" -class "Container-Fluid" -Content {
                h2 "Upcoming Events"

                $Link = a -href "https://chpsug.com/meetup" -Content {
                    button -Content {
                        "Online Meetup"
                    } -Class "btn btn-outline-primary"
                }

                $EventArr = @()

                $EventHash1 = @{
                    Wo = "Online"
                    wann = "Dienstag 5. November 2019"
                    Uhrzeit = "17:00"
                    LinkToJoin = $Link
                    Number = 1
                }
                $EventObj1 =  new-Object psobject -property $EventHash1
                $EventArr += $EventObj1

                $EventHash2 = @{
                    Wo = "Online"
                    wann = "Dienstag 3. Dezember 2019"
                    Uhrzeit = "17:00"
                    LinkToJoin = $Link
                    Number = 2
                }
                $EventObj2 =  new-Object psobject -property $EventHash2
                $EventArr += $EventObj2

                $EventHash3 = @{
                    Wo = "Online"
                    wann = "Dienstag 7. Januar 2020"
                    Uhrzeit = "17:00"
                    LinkToJoin = $Link
                    Number = 3
                }
                $EventObj3 =  new-Object psobject -property $EventHash3
                $EventArr += $EventObj3

                ConvertTo-PSHTMLTable -Object ($EventArr | sort number) -Properties Wo,Wann,Uhrzeit,LinkToJoin -TableClass "table" -TheadClass "thead-dark"
            }
        
            } 

            #>
            
            
            
            #>
        }
       
        
    
    
    footer -Content {
        $PSHTMLLove
    }
}

$HTML | out-File -Filepath ..\index.html -Encoding utf8


#start ..\Html\index.html
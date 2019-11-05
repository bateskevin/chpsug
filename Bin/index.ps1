

$HTML = html {
    head {
        

        
        Meta -name viewport -content_tag "width=device-width, initial-scale=1.0"
        #Write-PSHTMLAsset -Type Script -Name BootStrap
        #Write-PSHTMLAsset -Type Style -Name BootStrap
        link -rel 'icon' -href 'https://avatars1.githubusercontent.com/u/56639134?s=400&u=9c1a1dc1a8d8718534bf7d455042c7382cc419a0&v=4' -type 'image/x-icon'
        Link -href "Style/style.css" -rel stylesheet
        Link -href "Assets/BootStrap/bootstrap.min.css" -rel stylesheet
        Script -src "Assets/BootStrap/bootstrap.min.js"
        link -href "https://fonts.googleapis.com/css?family=Quicksand&display=swap" -rel "stylesheet"
        
        #script -src "styles/chartjs/Chart.bundle.min.js" -type "text/javascript"
        Title "CHPSUG"
    }
    body {

        div -Class "container" -Content {
                ul -Content {
                    li -Content {
                        a -href "index.html" -Content {
                            "Home"
                        }
                    }

                    li -Content {
                        a -href "Team.html" -Content {
                            "Team"
                        }
                    }

                    li -Content {
                        a -href "About.html" -Content {
                            "About"
                        }
                    }
                }
            
        div -class 'jumbotron container-fluid' -content {
            h1 -class 'display-4' -content "Powershell Usergroup Schweiz"
            hr -Class "my-4"
            
            img -src "https://3.bp.blogspot.com/-a7jPVdFk9Hw/W_XeTJX6JyI/AAAAAAAAC2c/HCtxP0wSSs0wEMKJOYq7pivEJaSVin92gCLcBGAs/s1600/powershell.png" -alt "Powershell Logo" -height "250" -width "250" -Class "img-responsive"
            
            p -Class "lead" -Content "Online Meetups mit deinen Powershell Peers" -Style "color:#d5caf7;"

        } -Style "background-image:url('https://i.pinimg.com/originals/ae/69/40/ae69407f5948d0e76ccb1e52af2eca2b.jpg');background-size: cover;"
        #h6 -Class "text-center" -Content {"Switzerland &#x2764 Powershell"}
        

            div -id "listmembers" -class "container-fluid" -Content {
                h3 "Was ist eine Powershell Usergroup"
                
                p "Eine Powershell Usergroup ist eine Gruppe aus IT-Pros die ein grosses Interesse an Powershell haben, taeglich mit Powershell arbeiten oder sich fuer Powershell interessieren und gerne ihr Wissen ausbauen/teilen moechten."

                p {
                    "Falls du interessiert daran bist Teilzunehmen Fuelle das Formular unten kurz aus um dein Interesse zu zeigen:"
                }
                a -href "https://bit.ly/31jdJFC" -content {
                    button -Content {
                        "Zum Formular"
                    } -Class "btn btn-outline-primary"
                } -Target _blank    
            }
            
            div -id "removeuser" -class "container-fluid" -Content {

                h3 {
                    "Call for Speakers" 
                }

                p "Wir suchen staendig neue Speakers, die bereit sind eine 10-15 minuetige Demo mit uns zu teilen. Kennst du dich mit einem Thema in Powershell, zum Beispiel ein Module oder den Umgang mit einer bestimmten Technologie in Powershell, aus? Dann melde dich hier beim Call for Speakers und trage dich ein!"

                a -href "https://docs.google.com/forms/d/19JqHCIN9DFap4KPWsFuXS1N4jr-yPrSzXdPkEXuE_E0/viewform?edit_requested=true" -content {
                    button -Content {
                        "Call for Speakers!"
                    } -Class "btn btn-outline-primary"
                } -Target _blank

                h3 {
                    "Was macht die Schweizer Powershell Usergroup"
                }

                p "Die Schweizer Powershell Usergruppe trifft sich einmal monatlich online! In so einem online meetup finden Lightning Demons (15-20 Minuetige Praesentationen) statt und sie ermoeglichen den Austausch mit anderen IT-Pros ueber Powershell."

                p "Die Events finden jeweils am ersten Dienstag im Monat um 17:00 statt und sie dauern etwa eine Stunde. HIer die naechsten Events:"

                

            }

            Div -id "somediv" -class "Container-Fluid" -Content {
                h2 "Upcoming Events"

                $Link = a -href "https://join.freeconferencecall.com/chpsug" -Content {
                    button -Content {
                        "Join"
                    } -Class "btn btn-outline-primary"
                } -Target _blank 

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

            Div -id "somediv" -class "Container-Fluid" -Content {
                h2 "Agenda for 5. November 2019"

                ol {
                    li {"Was ist das Ziel der Swiss Powershell Usergroup"} -class "list-group-item-action"
                    li {"Call for Speakers"}  -class "list-group-item-action"
                    li {"Themensammlung"} -class "list-group-item-action" 
                } -class "list-group"
            }
        
            } 

            #>
            
            
            
            #>
        }
       
        
    
    
    footer -Content {
        Div -id "somediv" -class "Container" -Content {
            
            $PSHTMLlink = a {"PSHTML"} -href "https://github.com/Stephanevg/PSHTML"  
     $PSHTMLLove = h6 "Generated with &#x2764 using $($PSHTMLlink)" -Class "text-center"
            $PSHTMLLove
        }
    }
}

$HTML | out-File -Filepath ..\index.html -Encoding utf8


#start ..\Html\index.html
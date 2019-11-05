

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

                    li -Content {
                        a -href "CFP.html" -Content {
                            "Call for Speakers"
                        }
                    }

                    li -Content {
                        a -href "https://Twitter.com/chpsug" -Content {
                            img -src "https://png.pngtree.com/element_our/sm/20180626/sm_5b321c96ef796.png" -alt "Powershell Logo" -height "25" -width "25" -Class "img-responsive"
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
                h2 "Call for Speakers"
                
                p "Ein Call for Speakers ist ein Aufruf and Leute die interessiert sind ihr Wissen zu teilen. HIer auf der Seite der Swiss Powershell Usergroup ist das natuerlich im Kontext von Powershell. Du kennst dich mit einem Thema in Powershell gut aus, zum Beispiel mit einer Technologie, die ein Interface zu Powershell hat, oder mit einem Modul das viel gebraucht wird, oder sogar mit einem Modul welches du slebst geschrieben hast. Zeige es uns!"

                h3 "Lightning Demos"

                p "Bei uns in der Swiss Powershell Usergroup sprechen wir von Lightning Demos. Das sind kleinere Vortaege oder eben Demos, die sich in einem Rahmen von etwa 10-20 Minuten halten. Dein Thema sollte also in einen solchen Timeslot hineinpassen. Wir bitten dich also dein Thema auch so vorzubereiten!"

                h3 "Wie kann ich eine Lightning Demo submitten?"

                p "Ganz einfach! Klicke auf den Button unten und fuelle das Google Formular aus. Deine Lightning Demo wird von unserem Team evaluiert und du wirst von uns kontaktiert mit dem Datum an dem du deine Lightning Demo halten kannst."
                    
                p ""

                a -href "https://docs.google.com/forms/d/19JqHCIN9DFap4KPWsFuXS1N4jr-yPrSzXdPkEXuE_E0/viewform?edit_requested=true" -content {
                    button -Content {
                        "Call for Speakers!"
                    } -Class "btn btn-outline-primary"
                } -Target _blank
            }
            
            div -id "removeuser" -class "container-fluid" -Content {

                h2 {
                    "Reverse Call for Speakers"
                }

                p "Hier kannst du auch Themen wuenschen, ueber die du gerne eine Lightning Demo sehen moechtest. Die Liste mit gewuenschten Themen findest du unten."
                p ""
                a -href "https://docs.google.com/forms/d/1SwysxKi4NskzDkjP4gLvrE_3G6-U9Gl9jviH2I1d4dw/viewform?edit_requested=true" -content {
                    button -Content {
                        "Reverse Call for Speakers!"
                    } -Class "btn btn-outline-primary"
                } -Target _blank

                h3 "Resultate aus dem Reverse Call for Speakers"

                p "Hier findest du die Wuensche der Swiss Powershell Usergroup. (sobald es welche gibt ;) ) Du kennst dich mit einem der Themen aus? Submitte eine Session!"

            }
        
            } 

            #>
            
            
            
            #>
        }
       
        
    
    
    footer -Content {
        Div -id "somediv" -class "Container" -Style "text-align: center" -Content {
            $PSHTMLlink = a {"PSHTML"} -href "https://github.com/Stephanevg/PSHTML"  
     $PSHTMLLove = h6 "Generated with &#x2764 using $($PSHTMLlink)" -Class "text-center"

            $PSHTMLLove
        }
    }
}

$HTML | out-File -Filepath ..\CFP.html -Encoding utf8


#start ..\Html\index.html
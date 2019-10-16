

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
                        a -href "about.html" -Content {
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
                h3 "About Powershell User Groups"
                
                p "Powershell Usergroups sind Gruppen aus Powershell begeisterten IT-Pros. In solchen Gruppen hat es normalerweise Platz für alle Levels von Powershell skills und für viele verschiedene Ideen was man mit Powershell umsetzen kann. Viele Usergruppen treffen sich regelmässig online, oder auch vor Ort um miteinander über Powershell auszutauschen. Die Usergruppen haben verschiedene Kommunikationskanäle wie zum Beispiel Slack, wo sie einander gegebenenfalles auch unterstützen können, um so in ihrem proffesionellen Alltag, oder auch in Open Source Projekten weiter zu kommen."
                    
            }
            
            div -id "removeuser" -class "container-fluid" -Content {

                h2 {
                    "About Powershell User Group Switzerland"
                }

                img -src "https://avatars0.githubusercontent.com/u/31886373?s=460&v=4" -alt "Kevin Bates" -height "300" -width "300" -Class "rounded-circle"


                p "Die Usergruppe wurde im Oktober 2019 gegründet und hält monatlich Online meetups über verschiedene Technologien im Zusammenhang mit Powershell."


            }

            Div -id "somediv" -class "Container-Fluid" -Content {
                h3 "Opensource Projekte"

                $Link = a -href "https://github.com/bateskevin/PSAtlas" -Content {
                    button -Content {
                        "GitHub"
                    } -Class "btn btn-outline-primary"
                } -Target _blank 

                $EventArr = @()

                $EventHash1 = @{
                    Projekt = "PSMD"
                    Link = $Link
                    Number = 1
                }
                $EventObj1 =  new-Object psobject -property $EventHash1
                $EventArr += $EventObj1

                $EventHash2 = @{
                    Projekt = "PSAtlas"
                    Link = $Link
                    Number = 2
                }
                $EventObj2 =  new-Object psobject -property $EventHash2
                $EventArr += $EventObj2

                $EventHash3 = @{
                    Projekt = "PSHarmonize"
                    Link = $Link
                    Number = 3
                }
                $EventObj3 =  new-Object psobject -property $EventHash3
                $EventArr += $EventObj3

                ConvertTo-PSHTMLTable -Object ($EventArr | sort number) -Properties Projekt,Link -TableClass "table" -TheadClass "thead-dark"
            }
        
            } 

            #>
            
            
            
            #>
        }
       
        
    
    
    footer -Content {
        $PSHTMLLove
    }
}

$HTML | out-File -Filepath ..\About.html -Encoding utf8


#start ..\Html\index.html
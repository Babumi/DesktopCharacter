-- premake5.lua

solution "DesktopCharacter"
    configurations { "Debug", "Release" }
    location ("./")
    
project "DesktopCharacter"
    location ("./DesktopCharacter")
    kind "WindowedApp"
    language "C#"
    
    framework ("4.5.2")
        
    defines { 
        "TRACE" 
    }

    files {
         "./**.cs", 
         "./**.xaml", 
         "./**.config",
         "./**.png" 
    }
    
    excludes  { 
        "DesktopCharacter/obj/**.*",
        "DesktopCharacter/bin/**.*" 
    }
    
    links { 
        "System",
        "System.Data",
        "System.Core",
        "System.Drawing",
        "System.ComponentModel.DataAnnotations",
        "System.Data.DataSetExtensions",
        "System.Net.Http",
        "System.Xaml",
        "System.Xml",
        "System.Xml.Linq",
        "System.Runtime.Serialization",
        "System.Windows.Forms",
        "WindowsBase",
        "Microsoft.CSharp",
        "PresentationCore",
        "PresentationFramework",        
        "packages/CoreTweet.0.6.2.277/lib/net45/CoreTweet.dll",
        "packages/EntityFramework.6.1.3/lib/net45/EntityFramework.dll",
        "packages/EntityFramework.6.1.3/lib/net45/EntityFramework.SqlServer.dll",
        "packages/EventSource4Net.0.4.0.0/lib/net45/EventSource4Net.dll",
        "packages/LivetCask.1.3.1.0/lib/net45/Livet.dll",
        "packages/LivetCask.1.3.1.0/lib/net45/Microsoft.Expression.Interactions.dll",
        "packages/LivetCask.1.3.1.0/lib/net45/System.Windows.Interactivity.dll",
        "packages/Newtonsoft.Json.8.0.3/lib/net45/Newtonsoft.Json.dll",
        "packages/ReactiveProperty.2.5/lib/net45/ReactiveProperty.dll",
        "packages/ReactiveProperty.2.5/lib/net45/ReactiveProperty.DataAnnotations.dll",
        "packages/ReactiveProperty.2.5/lib/net45/ReactiveProperty.NET45.dll",
        "packages/Rx-Core.2.2.5/lib/net45/System.Reactive.Core.dll",
        "packages/Rx-Interfaces.2.2.5/lib/net45/System.Reactive.Interfaces.dll",
        "packages/Rx-Linq.2.2.5/lib/net45/System.Reactive.Linq.dll",
        "packages/Rx-PlatformServices.2.2.5/lib/net45/System.Reactive.PlatformServices.dll",
        "packages/Rx-XAML.2.2.5/lib/net45/System.Reactive.Windows.Threading.dll",
        "packages/slf4net.0.1.32.1/lib/net35/slf4net.dll",
        "packages/SQLite.CodeFirst.1.1.11.0/lib/net45/SQLite.CodeFirst.dll",
        "packages/System.Data.SQLite.Core.1.0.99.0/lib/net451/System.Data.SQLite.dll",
        "packages/System.Data.SQLite.EF6.1.0.99.0/lib/net451/System.Data.SQLite.EF6.dll",
        "packages/System.Data.SQLite.Linq.1.0.99.0/lib/net451/System.Data.SQLite.Linq.dll",
    }

    
    filter "files:**.png"
    do
        buildaction ( "Resource" )
    end
    
    
    configuration { "Debug*" }
        defines { "DEBUG" }
        flags   { "Symbols" }
        postbuildcommands { 'copy "$(SolutionDir)packages\\System.Data.SQLite.Core.1.0.99.0\\build\\net451\\x86\\SQLite.Interop.dll" "$(ProjectDir)$(OutDir)SQLite.Interop.dll"' }

    configuration { "Release*" }
        optimize "On"


        
Imdb via PowerShell
===================

PowerShell Script Cmdlets that provide utilities for retrieving IMDb (Internet Movie Database) information. These are currently dependent upon the OMDb (Open Movie Database) API by Brian Fritz (http://www.omdbapi.com/). This code is not endorsed by or affiliated with IMDb.com or OmdbApi.com.

Resolve-ImdbId
--------------

    NAME
        Resolve-ImdbId
    
    SYNOPSIS
        Converts an integer, string of numbers, or an object with the property "imdbID" to an IMDb (Internet Movie Database) formatted identifier in the form of "tt#######".
        If the input cannot be resolved, it is returned as is.
    
    
    SYNTAX
        Resolve-ImdbId [-Id] <Object[]> [<CommonParameters>]
    
    
    DESCRIPTION
    

    PARAMETERS
        -Id <Object[]>
            An integer, string of numbers, or an object with the property "imdbID". No characters are interpreted as wildcards.
        
        <CommonParameters>
            This cmdlet supports the common parameters: Verbose, Debug,
            ErrorAction, ErrorVariable, WarningAction, WarningVariable,
            OutBuffer, PipelineVariable, and OutVariable. For more information, see 
            about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
        -------------------------- EXAMPLE 1 --------------------------
    
        C:\PS>Resolve-ImdbId 1234
    
        This example accepts an integer for the Id and returns a string value of "tt0001234".
    
    
    
    
        -------------------------- EXAMPLE 2 --------------------------
    
        C:\PS>12, '345', '6879', 'BadId' | Resolve-ImdbId
    
        This example accepts four piped inputs, an integer and three strings, and returns the following string values:
        tt0000012
        tt0000345
        tt0006879
        BadId
    
    
    
    
        -------------------------- EXAMPLE 3 --------------------------
    
        C:\PS>Get-ImdbTitle 'The Office' | imdbid
    
        This example uses Get-ImdbTitle to retrieve a PSCustomObject which has a property named 'imdbID'.
        This object is piped to imdbid (Resolve-ImdbId) and returns a string value of "tt0386676".
    
    
    
    
    REMARKS
        To see the examples, type: "get-help Resolve-ImdbId -examples".
        For more information, type: "get-help Resolve-ImdbId -detailed".
        For technical information, type: "get-help Resolve-ImdbId -full".`



Get-ImdbTitle
-------------

    NAME
        Get-ImdbTitle
    
    SYNOPSIS
        Retrieves IMDb (Internet Movie Database) information using the OMDb (Open Movie Database) API by Brian Fritz.
        Changes to the OMDb API may break the functionality of this command.
    
    
    SYNTAX
        Get-ImdbTitle [-Title] <String[]> [[-Year] <Int32>] [<CommonParameters>]
    
        Get-ImdbTitle [-Id] <Object[]> [<CommonParameters>]
    
    
    DESCRIPTION
    

    PARAMETERS
        -Title <String[]>
            If no wildcards are present, the first matching title is returned.
            If wildcards are present, the first 10 matching titles are returned.
        
        -Year <Int32>
            The year of the title to retrieve (optional).
        
        -Id <Object[]>
            An integer, string of numbers, or an object with the property "imdbID" that represents the IMDb ID of the title to retrieve.
            No characters are interpreted as wildcards.
        
        <CommonParameters>
            This cmdlet supports the common parameters: Verbose, Debug,
            ErrorAction, ErrorVariable, WarningAction, WarningVariable,
            OutBuffer, PipelineVariable, and OutVariable. For more information, see 
            about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
        -------------------------- EXAMPLE 1 --------------------------
    
        C:\PS>Get-ImdbTitle 'True Grit'
    
        This example returns a PSCustomObject respresenting the 2010 movie "True Grit".
    
    
    
    
        -------------------------- EXAMPLE 2 --------------------------
    
        C:\PS>Get-ImdbTitle 'True Grit' 1969
    
        This example returns a PSCustomObject respresenting the 1969 movie "True Grit".
    
    
    
    
        -------------------------- EXAMPLE 3 --------------------------
    
        C:\PS>'True Grit' | Get-ImdbTitle -Year 1969
    
        Similar to the previous example except the title is piped.
    
    
    
    
        -------------------------- EXAMPLE 4 --------------------------
    
        C:\PS>65126 | imdb
    
        This example also returns a PSCustomObject respresenting the 1969 movie "True Grit".
    
    
    
    
    REMARKS
        To see the examples, type: "get-help Get-ImdbTitle -examples".
        For more information, type: "get-help Get-ImdbTitle -detailed".
        For technical information, type: "get-help Get-ImdbTitle -full".`



Open-ImdbTitle
--------------

    NAME
        Open-ImdbTitle
    
    SYNOPSIS
        Opens the IMDb (Internet Movie Database) web site to the specified title using the default web browser.
        Some features of this command are achieved via the OMDb (Open Movie Database) API by Brian Fritz.
        Changes to the OMDb API may break the functionality of this command.
    
    
    SYNTAX
        Open-ImdbTitle [-Title] <String[]> [[-Year] <Int32>] [<CommonParameters>]
    
        Open-ImdbTitle [-Id] <Object[]> [<CommonParameters>]
    
    
    DESCRIPTION
    

    PARAMETERS
        -Title <String[]>
            If no wildcards are present, the first matching title is opened.
            If wildcards are present, the first 10 matching titles are opened.
        
        -Year <Int32>
            The year of the title to open (optional).
        
        -Id <Object[]>
            An integer, string of numbers, or an object with the property "imdbID" that represents the IMDb ID of the title to open.
            No characters are interpreted as wildcards.
        
        <CommonParameters>
            This cmdlet supports the common parameters: Verbose, Debug,
            ErrorAction, ErrorVariable, WarningAction, WarningVariable,
            OutBuffer, PipelineVariable, and OutVariable. For more information, see 
            about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
        -------------------------- EXAMPLE 1 --------------------------
    
        C:\PS>Open-ImdbTitle 'True Grit'
    
        This example opens the IMDb page for the 2010 movie "True Grit".
    
    
    
    
        -------------------------- EXAMPLE 2 --------------------------
    
        C:\PS>Open-ImdbTitle 'True Grit' 1969
    
        This example opens the IMDb page for the 1969 movie "True Grit".
    
    
    
    
        -------------------------- EXAMPLE 3 --------------------------
    
        C:\PS>'True Grit' | Open-ImdbTitle -Year 1969
    
        Similar to the previous example except the title is piped.
    
    
    
    
        -------------------------- EXAMPLE 4 --------------------------
    
        C:\PS>65126 | imdb.com
    
        This example also opens the IMDb page for the 1969 movie "True Grit".
    
    
    
    
    REMARKS
        To see the examples, type: "get-help Open-ImdbTitle -examples".
        For more information, type: "get-help Open-ImdbTitle -detailed".
        For technical information, type: "get-help Open-ImdbTitle -full".`

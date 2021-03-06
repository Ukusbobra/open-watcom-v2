/****************************************************************************
*
*                            Open Watcom Project
*
*    Copyright (c) 2013 Open Watcom Contributors. All Rights Reserved.
*
* =========================================================================
*
* Description:  Path list processing.
*
****************************************************************************/

#include "bool.h"
#include "iopath.h"
#include "pathlist.h"

char *GetPathElement( const char *path_list, char **path )
{
    bool    is_blank;
    char    c;

    is_blank = TRUE;
    while( (c = *path_list) != '\0' ) {
        ++path_list;
        if( IS_INCL_SEP( c ) ) {
            if( !is_blank ) {
                break;
            }
        } else if( !is_blank ) {
            *(*path)++ = c;
        } else if( c != ' ' ) {
            is_blank = FALSE;
            *(*path)++ = c;
        }
    }
    return( (char *)path_list );
}

char *GetPathElementEnd( const char *path_list, const char *end, char **path )
{
    bool    is_blank;
    char    c;

    is_blank = TRUE;
    while( path_list != end ) {
        c = *path_list++;
        if( IS_INCL_SEP( c ) ) {
            if( !is_blank ) {
                break;
            }
        } else if( !is_blank ) {
            *(*path)++ = c;
        } else if( c != ' ' ) {
            is_blank = FALSE;
            *(*path)++ = c;
        }
    }
    return( (char *)path_list );
}

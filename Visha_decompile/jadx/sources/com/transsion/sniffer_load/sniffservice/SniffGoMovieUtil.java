package com.transsion.sniffer_load.sniffservice;

import defpackage.r0a;

public class SniffGoMovieUtil {
    public static final String TAG = "visha_SniffGoMovieUtil";
    private static final String URL_GOMOVIES_HOST = "gomovies.sx";

    public static boolean isGoMoviesWebSite(String str) {
        return !r0a.g(str) && str.contains(URL_GOMOVIES_HOST);
    }
}

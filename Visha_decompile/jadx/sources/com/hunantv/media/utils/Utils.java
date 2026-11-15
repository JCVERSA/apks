package com.hunantv.media.utils;

import android.net.Uri;

public class Utils {
    public static boolean isLocalUri(Uri uri) {
        return (uri == null || uri.getPath() == null || !uri.getPath().toLowerCase().contains("file:/")) ? false : true;
    }
}

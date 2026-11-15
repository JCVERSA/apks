package com.transsion.sniffer_load.sniffservice;

import android.net.Uri;

public class SniffTorrentUtil {
    public static boolean isTorrentSource(Uri uri) {
        if (uri == null || uri.getScheme() == null) {
            return false;
        }
        return uri.getScheme().equals(SniffDownloadHelper.MAGNET_PREFIX);
    }
}

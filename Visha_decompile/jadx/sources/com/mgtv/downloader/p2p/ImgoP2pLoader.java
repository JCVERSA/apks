package com.mgtv.downloader.p2p;

import com.mgtv.downloader.p2p.yunfan.YFP2pLoader;

public class ImgoP2pLoader {
    public static boolean loadLiloadLibrarybrary(int i, String str) {
        if (i != 0) {
            return false;
        }
        return YFP2pLoader.loadLibrary(str);
    }
}

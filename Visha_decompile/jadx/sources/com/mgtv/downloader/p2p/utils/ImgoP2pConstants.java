package com.mgtv.downloader.p2p.utils;

import android.os.Environment;

public class ImgoP2pConstants {
    public static final int DEFAULT_P2P_AD_MAXMEM = 75;
    public static final int DEFAULT_P2P_AD_MINMEM = 10;
    public static final int DEFAULT_P2P_MAXMEM = 700;
    public static final int DEFAULT_P2P_MINMEM = 50;
    public static final int DEFAULT_P2P_PORT = 30107;
    public static final String LOCAL_HOST = "127.0.0.1";
    public static final String MANGO_FIXED_HOST = "hunantv.com";
    public static final String PRIVATE_CDN_HOST = "hunantv.imgo.tv";
    public static final String YF_PROXY_FIXED_STRING = "yfhttpagent";
    public static final String DEFAULT_CONFIG_PATH = Environment.getExternalStorageDirectory().getPath() + "/MangoTvTemp/config/";
    public static final String DEFAULT_CACHE_PATH = Environment.getExternalStorageDirectory().getPath() + "/MangoTvTemp/cache/";
}

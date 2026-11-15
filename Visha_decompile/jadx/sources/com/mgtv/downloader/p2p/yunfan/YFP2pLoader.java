package com.mgtv.downloader.p2p.yunfan;

import android.content.Context;
import android.text.TextUtils;
import com.mgtv.downloader.util.c;
import com.mgtv.downloader.util.d;
import java.io.File;

public class YFP2pLoader {
    public static final String P2P_LOAD_ERROR_FAIL = "301";
    public static final String P2P_LOAD_ERROR_GRAY = "300";
    public static final String P2P_LOAD_SUCCESS = "0";
    public static final String P2P_SDK_VERSION = "1.0.0.45";
    private static Context mContext = null;
    private static String mUpdatePath = "";

    private static boolean load(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        c.a("[load]yfp2p load start, timestamp_[1]: " + System.currentTimeMillis());
        try {
            String strA = d.a(mContext);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            String str2 = File.separator;
            String strConcat = str.endsWith(str2) ? str.concat(strA).concat(str2).concat("libyfnet_mongotv.so") : str.concat(str2).concat(strA).concat(str2).concat("libyfnet_mongotv.so");
            c.a("[load]yfp2p load, soPath: " + strConcat);
            System.load(strConcat);
            c.a("[load]yfp2p load success, timestamp_[2]: " + System.currentTimeMillis() + ", path: " + strConcat);
            return true;
        } catch (UnsatisfiedLinkError e) {
            c.a("[load]yfp2p load failed, e: " + e.toString());
            return false;
        }
    }

    public static synchronized boolean loadLibrary(String str) {
        boolean z = true;
        if (load(mUpdatePath)) {
            return true;
        }
        c.a("[YFP2pLoader]yfp2p loadLibrary timestamp_[1] : " + System.currentTimeMillis());
        try {
            System.loadLibrary("yfnet_mongotv");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
            z = false;
        }
        c.a("[YFP2pLoader]yfp2p loadLibrary timestamp_[2] : " + System.currentTimeMillis());
        return z;
    }

    public static void setContext(Context context) {
        mContext = context;
    }

    public static void setUpdatePath(String str) {
        mUpdatePath = str;
    }

    public static void testLoadSo(Context context) {
        setContext(context);
        new Thread() {
            @Override
            public void run() {
                YFP2pLoader.loadLibrary(YFP2pLoader.mUpdatePath);
            }
        }.start();
    }
}

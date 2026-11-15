package com.mgtv.downloader.p2p;

import android.content.Context;
import android.text.TextUtils;
import com.mgtv.downloader.util.c;
import com.mgtv.downloader.util.d;
import java.io.File;

public class MGP2pLoader {
    private static final String LIB_P2P_MODEL_MGTV = "libmgtvp2p.so";
    private static final String P2P_MODEL_MGTV = "mgtvp2p";
    private static Context mContext = null;
    private static boolean mIsSoLoad = false;
    private static String mUpdatePath = "";

    public static boolean isSoLoad() {
        return mIsSoLoad;
    }

    private static boolean load(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        c.a("[load]mgtvp2p load start, timestamp_[1]: " + System.currentTimeMillis());
        try {
            String strA = d.a(mContext);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            String str2 = File.separator;
            String strConcat = str.endsWith(str2) ? str.concat(strA).concat(str2).concat(LIB_P2P_MODEL_MGTV) : str.concat(str2).concat(strA).concat(str2).concat(LIB_P2P_MODEL_MGTV);
            c.a("[load]mgtvp2p load, soPath: " + strConcat);
            System.load(strConcat);
            mIsSoLoad = true;
            c.a("[load]mgtvp2p load success, timestamp_[2]: " + System.currentTimeMillis() + ", path: " + strConcat);
        } catch (UnsatisfiedLinkError e) {
            c.a("[load]mgtvp2p load failed, e: " + e.toString());
            mIsSoLoad = false;
        }
        return mIsSoLoad;
    }

    public static synchronized boolean loadLibrary() {
        if (load(mUpdatePath)) {
            return true;
        }
        c.a("[loadLibrary]mgtvp2p loadLibrary timestamp_[1]: " + System.currentTimeMillis());
        try {
            System.loadLibrary(P2P_MODEL_MGTV);
            mIsSoLoad = true;
        } catch (UnsatisfiedLinkError e) {
            mIsSoLoad = false;
            c.a("[loadLibrary]mgtvp2p loadLibrary failed, e: " + e.getStackTrace());
        }
        c.a("[loadLibrary]mgtvp2p loadLibrary timestamp_[2]: " + System.currentTimeMillis());
        return mIsSoLoad;
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
                MGP2pLoader.loadLibrary();
            }
        }.start();
    }
}

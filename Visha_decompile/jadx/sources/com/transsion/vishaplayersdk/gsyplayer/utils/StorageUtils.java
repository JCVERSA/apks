package com.transsion.vishaplayersdk.gsyplayer.utils;

import android.content.Context;
import android.os.Environment;
import java.io.File;

public class StorageUtils {
    private static final String INDIVIDUAL_DIR_NAME = "video-cache";

    private static File getCacheDirectory(Context context, boolean z) {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            externalStorageState = "";
        }
        File externalCacheDir = (z && "mounted".equals(externalStorageState)) ? getExternalCacheDir(context) : null;
        if (externalCacheDir == null) {
            externalCacheDir = context.getCacheDir();
        }
        if (externalCacheDir != null) {
            return externalCacheDir;
        }
        return new File("/data/data/" + context.getPackageName() + "/cache/");
    }

    private static File getExternalCacheDir(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static File getIndividualCacheDirectory(Context context) {
        return new File(getCacheDirectory(context, true), INDIVIDUAL_DIR_NAME);
    }
}

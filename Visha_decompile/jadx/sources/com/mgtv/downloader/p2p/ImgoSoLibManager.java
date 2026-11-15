package com.mgtv.downloader.p2p;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.mgtv.downloader.util.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class ImgoSoLibManager {
    public static final String IS_PLAYER_LIB_SATISFY = "is_palyer_lib_satisfy";
    public static final String TAG = "ImgoSoLibManager";
    private static Context mContext;
    public static ImgoSoLibManager mImgoPlayerLibManager;
    private static int mVersionCode;
    private final SharedPreferences mSharedPreferences;

    private ImgoSoLibManager(Context context) {
        mContext = context;
        this.mSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static synchronized ImgoSoLibManager getInstance(Context context) {
        try {
            if (mImgoPlayerLibManager == null) {
                mImgoPlayerLibManager = new ImgoSoLibManager(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return mImgoPlayerLibManager;
    }

    public static int getVersionCode() {
        if (mVersionCode <= 0) {
            try {
                mVersionCode = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 16384).versionCode;
            } catch (Exception e) {
                e.printStackTrace();
                mVersionCode = 0;
            }
        }
        return mVersionCode;
    }

    public void copyFile(String str, String str2) {
        try {
            File file = new File(str);
            File file2 = new File(str2);
            if (!file.exists() || !file.isFile() || !file.canRead()) {
                return;
            }
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
            if (file2.exists()) {
                file2.delete();
            }
            if (!file.exists()) {
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[1444];
            int i = 0;
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 == -1) {
                    fileInputStream.close();
                    return;
                } else {
                    i += i2;
                    System.out.println(i);
                    fileOutputStream.write(bArr, 0, i2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteAllFile(File file) {
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                file.delete();
                return;
            }
            for (File file2 : fileArrListFiles) {
                deleteAllFile(file2);
            }
            file.delete();
        }
    }

    public void deleteCoreLibs() {
        try {
            for (File file : new File(getSoLibDir()).listFiles()) {
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
            c.b("ImgoSoLibManager=" + e.getMessage());
        }
    }

    public String getSoConfigDir() {
        return mContext.getFilesDir().getAbsolutePath();
    }

    public String getSoLibDir() throws IOException {
        return mContext.getDir("imgo_update_lib", 0).getCanonicalPath();
    }

    public boolean isNeedDownLoadSo() {
        return !this.mSharedPreferences.getBoolean(IS_PLAYER_LIB_SATISFY, false);
    }

    public void setPlayerLibDownloaded(boolean z) {
        this.mSharedPreferences.edit().putBoolean(IS_PLAYER_LIB_SATISFY, z).commit();
    }
}

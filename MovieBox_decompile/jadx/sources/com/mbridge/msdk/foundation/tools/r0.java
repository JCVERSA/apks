package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;

public class r0 {

    static String f34970a = "";

    private static volatile boolean f34971b = false;

    private static int f34972c = -1;

    private static int f34973d = -1;

    private static long f34974e;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            r0.b();
        }
    }

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f34971b) {
                return;
            }
            f34971b = true;
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                f34970a = externalFilesDir.getAbsolutePath();
            }
            try {
                b(context);
            } catch (Exception unused) {
                b(context);
            }
        } catch (Exception e10) {
            o0.b("SameSDCardTool", e10.getMessage());
        }
    }

    private static void b(Context context) {
        File externalFilesDir;
        if (TextUtils.isEmpty(f34970a) && (externalFilesDir = context.getExternalFilesDir(null)) != null) {
            f34970a = externalFilesDir.getAbsolutePath();
        }
        if (!TextUtils.isEmpty(f34970a)) {
            com.mbridge.msdk.foundation.same.directory.e.a(new com.mbridge.msdk.foundation.same.directory.d(f34970a));
            com.mbridge.msdk.foundation.same.directory.e.b().a();
        }
        b();
    }

    public static int c() {
        return f34973d;
    }

    public static int a() {
        if (System.currentTimeMillis() - f34974e > 1800000) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a());
        }
        return f34972c;
    }

    public static void b() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSize = statFs.getBlockSize();
            long availableBlocks = statFs.getAvailableBlocks();
            f34973d = Long.valueOf(((((long) statFs.getBlockCount()) * blockSize) / 1000) / 1000).intValue();
            f34972c = Long.valueOf(((availableBlocks * blockSize) / 1000) / 1000).intValue();
            f34974e = System.currentTimeMillis();
        } catch (Exception e10) {
            o0.b("SameSDCardTool", e10.getMessage());
        }
    }
}

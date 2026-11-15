package com.cloud.hisavana.net.utils;

import android.content.Context;
import android.os.Environment;
import defpackage.ja1;
import defpackage.ul4;
import defpackage.vl4;
import java.io.File;

public final class StorageUtils {
    public static volatile File a;

    private StorageUtils() {
    }

    public static String a(String str) {
        return vl4.a(str);
    }

    public static File b(Context context) {
        return c(context, true);
    }

    public static File c(Context context, boolean z) {
        File fileB;
        if (z) {
            fileB = f(context);
            if (fileB != null && fileB.exists()) {
                File file = new File(fileB.getPath() + File.separator + a("hisavana_net_cache"));
                if (!file.exists() && !file.mkdir()) {
                    ja1.Log().w("StorageUtils", "can't create cache file");
                }
                fileB = file;
            }
        } else {
            fileB = null;
        }
        if ((fileB == null || (!fileB.exists() && !fileB.mkdirs())) && ((fileB = ul4.b(context.getApplicationContext())) == null || !fileB.exists())) {
            fileB = context.getFilesDir();
        }
        if (fileB == null || !fileB.exists()) {
            fileB = context.getCacheDir();
        }
        if (fileB != null) {
            return fileB;
        }
        String str = "/data/data/" + context.getPackageName() + File.separator + a("hisavana_net_cache");
        ja1.Log().w("StorageUtils", "Can't define system cache directory! '%s' will be used." + str);
        return new File(str);
    }

    public static File d(Context context, boolean z) {
        File file;
        if (z) {
            file = f(context);
            if (file != null) {
                File file2 = new File(file.getPath() + File.separator + a("hisavana_default_cache"));
                if (!file2.exists() && !file2.mkdir()) {
                    ja1.Log().e("StorageUtils", "getOfflineCacheDirectory,storage cache is not ready");
                }
                file = file2;
            }
        } else {
            file = null;
        }
        if (file == null) {
            file = new File("/data/data/" + context.getPackageName() + File.separator + a("hisavana_default_cache"));
            if (!file.exists() && !file.mkdir()) {
                ja1.Log().e("StorageUtils", "getOfflineCacheDirectory,app cache path is not ready");
            }
        }
        return file;
    }

    public static File e(Context context, boolean z) {
        File file;
        if (z) {
            file = f(context);
            if (file != null) {
                File file2 = new File(file.getPath() + File.separator + a("hisavana_video_cache"));
                if (!file2.exists() && !file2.mkdir()) {
                    ja1.Log().e("StorageUtils", "getExoCacheDirectory,storage cache is not ready");
                }
                file = file2;
            }
        } else {
            file = null;
        }
        if (file == null) {
            file = new File("/data/data/" + context.getPackageName() + File.separator + a("hisavana_video_cache"));
            if (!file.exists() && !file.mkdir()) {
                ja1.Log().e("StorageUtils", "getExoCacheDirectory,app cache path is not ready");
            }
        }
        return file;
    }

    public static File f(Context context) {
        String externalStorageState = "";
        if (a != null) {
            return a;
        }
        File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/" + context.getPackageName() + "/files");
        if (file.exists() || file.mkdir()) {
            a = file;
        } else {
            ja1.Log().w("StorageUtils", "getExternalFileDir is not exists");
        }
        if (a == null) {
            try {
                externalStorageState = Environment.getExternalStorageState();
            } catch (IncompatibleClassChangeError | NullPointerException unused) {
            }
            if ("mounted".equals(externalStorageState)) {
                a = context.getExternalFilesDir(null);
            }
        }
        return a;
    }

    public static File g(Context context, boolean z) {
        File file;
        if (z) {
            file = f(context);
            if (file != null) {
                File file2 = new File(file.getPath() + File.separator + a("hisavana_normal_video_cache"));
                if (!file2.exists() && !file2.mkdir()) {
                    ja1.Log().e("StorageUtils", "getVideoCacheDirectory,storage cache is not ready");
                }
                file = file2;
            }
        } else {
            file = null;
        }
        if (file == null) {
            file = new File("/data/data/" + context.getPackageName() + File.separator + a("hisavana_normal_video_cache"));
            if (!file.exists() && !file.mkdir()) {
                ja1.Log().e("StorageUtils", "getVideoCacheDirectory,app cache path is not ready");
            }
        }
        return file;
    }
}

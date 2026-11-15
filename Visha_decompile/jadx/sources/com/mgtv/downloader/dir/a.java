package com.mgtv.downloader.dir;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.mgtv.downloader.util.c;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class a {
    private static int a = Build.VERSION.SDK_INT;
    private static a g;
    private DownloadDirInfo d;
    private String b = "";
    private String c = "";
    private List<DownloadDirInfo> e = new ArrayList();
    private boolean f = false;

    private a() {
    }

    public static a c() {
        if (g == null) {
            synchronized (a.class) {
                try {
                    if (g == null) {
                        g = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    private void f() {
        g("checkCurDir");
        if (this.d != null) {
            g("matching cur dir");
            DownloadDirInfo downloadDirInfo = null;
            for (int i = 0; i < this.e.size(); i++) {
                DownloadDirInfo downloadDirInfo2 = this.e.get(i);
                if (downloadDirInfo2 != null && downloadDirInfo2.equals(this.d)) {
                    downloadDirInfo = downloadDirInfo2;
                }
            }
            this.d = downloadDirInfo;
        }
        if (this.d == null) {
            g("not matched, setting to default");
            for (int i2 = 0; i2 < this.e.size(); i2++) {
                DownloadDirInfo downloadDirInfo3 = this.e.get(i2);
                if (downloadDirInfo3 != null) {
                    if (i2 == 0) {
                        this.d = downloadDirInfo3;
                    } else if (downloadDirInfo3.availableSize > this.d.availableSize) {
                        this.d = downloadDirInfo3;
                    }
                }
            }
        }
        if (this.d == null) {
            g("check failed, no current dir info initialized");
            return;
        }
        g("check succeed, current dir info : " + this.d.toString());
    }

    @TargetApi(19)
    private List<DownloadDirInfo> g(Context context) {
        g("getAboveKitKat");
        String path = Environment.getExternalStorageDirectory().getPath();
        ArrayList arrayList = new ArrayList();
        File[] externalFilesDirs = context.getExternalFilesDirs(!TextUtils.isEmpty(b()) ? b() : "Download-plugin9");
        if (externalFilesDirs != null && externalFilesDirs.length > 0) {
            int i = 0;
            int i2 = 0;
            for (File file : externalFilesDirs) {
                if (file != null && file.isDirectory()) {
                    String path2 = file.getPath();
                    DownloadDirInfo downloadDirInfo = new DownloadDirInfo();
                    if (path2.contains(path)) {
                        downloadDirInfo.internal = true;
                        if (i2 > 0) {
                            downloadDirInfo.serialNo = i2;
                        }
                        i2++;
                    } else {
                        downloadDirInfo.internal = false;
                        if (i > 0) {
                            downloadDirInfo.serialNo = i;
                        }
                        i++;
                    }
                    downloadDirInfo.path = f(path2);
                    arrayList.add(downloadDirInfo);
                }
            }
        }
        List<DownloadDirInfo> listF = f(context);
        if (listF == null || listF.isEmpty()) {
            g("listBySM is empty, listByApi size: " + arrayList.size());
            return arrayList;
        }
        if (arrayList.isEmpty()) {
            g("listByApi is empty, listBySM size: " + listF.size());
            return listF;
        }
        g("listByApi size: " + arrayList.size() + ", listBySM size: " + listF.size());
        return (arrayList.size() != listF.size() && arrayList.size() <= listF.size()) ? listF : arrayList;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public List<DownloadDirInfo> d() {
        return this.e;
    }

    public DownloadDirInfo e() {
        return this.d;
    }

    private List<DownloadDirInfo> d(Context context) {
        g("enumCacheDir");
        int i = a;
        if (i < 14) {
            return e(context);
        }
        return i < 19 ? f(context) : g(context);
    }

    private List<DownloadDirInfo> e(Context context) {
        g("getUnderICS");
        ArrayList arrayList = new ArrayList();
        File filesDir = context.getFilesDir();
        if (filesDir != null && filesDir.isDirectory()) {
            DownloadDirInfo downloadDirInfo = new DownloadDirInfo();
            downloadDirInfo.internal = true;
            downloadDirInfo.path = f(filesDir.getPath());
            arrayList.add(downloadDirInfo);
        }
        if ("mounted".equals(Environment.getExternalStorageState())) {
            File externalFilesDir = context.getExternalFilesDir(!TextUtils.isEmpty(b()) ? b() : "Download-plugin9");
            if (externalFilesDir != null && externalFilesDir.isDirectory()) {
                String path = externalFilesDir.getPath();
                if (e(path)) {
                    DownloadDirInfo downloadDirInfo2 = new DownloadDirInfo();
                    downloadDirInfo2.internal = false;
                    downloadDirInfo2.path = f(path);
                    arrayList.add(downloadDirInfo2);
                }
            }
        }
        return arrayList;
    }

    public void a(String str) {
        this.b = str;
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        this.e.clear();
    }

    public void a(Context context) {
        c(context);
    }

    public boolean b(String str) {
        return str != null && e(str);
    }

    private DownloadDirInfo b(DownloadDirInfo downloadDirInfo) {
        if (downloadDirInfo != null && !downloadDirInfo.equals(this.d) && !this.e.isEmpty()) {
            for (int i = 0; i < this.e.size(); i++) {
                DownloadDirInfo downloadDirInfo2 = this.e.get(i);
                if (downloadDirInfo2 != null && downloadDirInfo2.equals(downloadDirInfo)) {
                    this.d = downloadDirInfo2;
                    g("changeDir to : " + this.d.toString());
                    return this.d;
                }
            }
            g("changeDir to null");
            return null;
        }
        g("changeDir to nowhere");
        return null;
    }

    public DownloadDirInfo a(DownloadDirInfo downloadDirInfo) {
        g("setCurDownloadDir - dir: " + downloadDirInfo.toString());
        return b(downloadDirInfo);
    }

    private boolean a(String str, boolean z) {
        if (z) {
            g("pathCanWrite - " + str);
        }
        if (TextUtils.isEmpty(str)) {
            if (z) {
                g("pathCanWrite : invalid path!");
            }
            return false;
        }
        try {
            File file = new File(new File(str), ".testwrite" + String.valueOf(System.currentTimeMillis()));
            file.mkdirs();
            file.createNewFile();
            if (!file.exists()) {
                if (z) {
                    g("pathCanWrite : no! write failed");
                }
                return false;
            }
            file.delete();
            if (!z) {
                return true;
            }
            g("pathCanWrite : yes! write success");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (z) {
                g("pathCanWrite : no! write exception");
            }
            return false;
        }
    }

    private void c(Context context) {
        g("initCacheDirList");
        if (this.f) {
            return;
        }
        this.f = true;
        List<DownloadDirInfo> listD = d(context);
        if (listD != null && !listD.isEmpty()) {
            this.e.clear();
            for (int i = 0; i < listD.size(); i++) {
                DownloadDirInfo downloadDirInfo = listD.get(i);
                if (downloadDirInfo != null) {
                    long jC = c(downloadDirInfo.path);
                    downloadDirInfo.totalSize = jC;
                    downloadDirInfo.totalSizeDesc = a(jC);
                    long jD = d(downloadDirInfo.path);
                    downloadDirInfo.availableSize = jD;
                    downloadDirInfo.availableSizeDesc = a(jD);
                    this.e.add(downloadDirInfo);
                    g(downloadDirInfo.toString());
                }
            }
            f();
        } else {
            g("No download dir found!");
        }
        this.f = false;
    }

    @SuppressLint({"NewApi"})
    public long d(String str) {
        long blockSize;
        long availableBlocks;
        if (str == null) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(str);
            if (a >= 18) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return availableBlocks * blockSize;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    private List<DownloadDirInfo> f(Context context) {
        Object[] objArr;
        g("getUnderKitKat");
        ArrayList arrayList = new ArrayList();
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        if (storageManager != null) {
            try {
                Method method = storageManager.getClass().getMethod("getVolumeState", String.class);
                Method method2 = storageManager.getClass().getMethod("getVolumeList", null);
                if (method2 != null && (objArr = (Object[]) method2.invoke(storageManager, null)) != null && objArr.length > 0) {
                    int i = 0;
                    int i2 = 0;
                    for (Object obj : objArr) {
                        Method method3 = obj.getClass().getMethod("isRemovable", null);
                        String str = (String) obj.getClass().getMethod("getPath", null).invoke(obj, null);
                        if (str != null && !str.isEmpty() && "mounted".equals((String) method.invoke(storageManager, str))) {
                            String strA = String.format("%sAndroid/data/%s/files/Download-plugin9/", f(str), context.getPackageName());
                            if (!TextUtils.isEmpty(a())) {
                                strA = a();
                            }
                            File file = new File(strA);
                            if ((file.exists() || file.mkdirs()) && e(strA)) {
                                boolean zBooleanValue = ((Boolean) method3.invoke(obj, null)).booleanValue();
                                DownloadDirInfo downloadDirInfo = new DownloadDirInfo();
                                downloadDirInfo.path = f(strA);
                                if (zBooleanValue) {
                                    downloadDirInfo.internal = false;
                                    if (i2 > 0) {
                                        downloadDirInfo.serialNo = i2;
                                    }
                                    i2++;
                                } else {
                                    downloadDirInfo.internal = true;
                                    if (i > 0) {
                                        downloadDirInfo.serialNo = i;
                                    }
                                    i++;
                                }
                                arrayList.add(downloadDirInfo);
                            }
                        }
                    }
                }
            } catch (IllegalAccessException e) {
                g("getUnderKitKat - exception: " + e.getMessage());
            } catch (NoSuchMethodException e2) {
                g("getUnderKitKat - exception: " + e2.getMessage());
            } catch (InvocationTargetException e3) {
                g("getUnderKitKat - exception: " + e3.getMessage());
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        g("getUnderKitKat got nothing, try underICS way");
        return e(context);
    }

    public String a(long j) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j < 1024) {
            if (j <= 0) {
                str = "0B";
            } else {
                str = decimalFormat.format(j) + "B";
            }
        } else if (j < 1048576) {
            str = decimalFormat.format(j / 1024.0d) + "K";
        } else if (j < 1073741824) {
            str = decimalFormat.format(j / 1048576.0d) + "M";
        } else {
            str = decimalFormat.format(j / 1.073741824E9d) + RequestConfiguration.MAX_AD_CONTENT_RATING_G;
        }
        if (str.charAt(0) != '.') {
            return str;
        }
        return 0 + str;
    }

    private boolean e(String str) {
        return a(str, true);
    }

    @SuppressLint({"NewApi"})
    public long c(String str) {
        long blockSize;
        long blockCount;
        if (str == null) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(str);
            if (a >= 18) {
                blockSize = statFs.getBlockSizeLong();
                blockCount = statFs.getBlockCountLong();
            } else {
                blockSize = statFs.getBlockSize();
                blockCount = statFs.getBlockCount();
            }
            return blockCount * blockSize;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    private void g(String str) {
        c.a("DownloadSDK_1.8.0 DownloadDirManager: " + str);
    }

    @NonNull
    private String f(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = File.separator;
        return str.endsWith(str2) ? str : str.concat(str2);
    }
}

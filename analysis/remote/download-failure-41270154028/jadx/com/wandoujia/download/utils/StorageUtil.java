package com.wandoujia.download.utils;

import android.content.Context;
import android.os.Environment;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Pair;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.internal.model.AdPayload;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.download.rpc.DownloadConstants;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import o.gu4;
import o.hs7;
import o.ir1;
import o.nj2;
import o.uh;
import o.yj2;

public abstract class StorageUtil {
    public static final String a = "StorageUtil";
    public static String b;
    public static String c;

    public static class GenerateSaveFileException extends Exception {
        private static final long serialVersionUID = -7012378141199515715L;
        String mMessage;
        int mStatus;

        public GenerateSaveFileException(int i, String str) {
            this.mStatus = i;
            this.mMessage = str;
        }

        @Override
        public String getMessage() {
            return this.mMessage;
        }

        public int getStatus() {
            return this.mStatus;
        }
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DownloadConstants.ResourceType.values().length];
            a = iArr;
            try {
                iArr[DownloadConstants.ResourceType.APP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[DownloadConstants.ResourceType.PATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[DownloadConstants.ResourceType.IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[DownloadConstants.ResourceType.VIDEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[DownloadConstants.ResourceType.COMIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static String a(String str, String str2, String str3, String str4, DownloadConstants.ResourceType resourceType, long j, String str5) throws GenerateSaveFileException {
        if (TextUtils.isEmpty(str3)) {
            str3 = j > 0 ? f(resourceType, j) : e(resourceType);
        }
        String str6 = null;
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        String strReplaceFirst = str3.replaceFirst(AdPayload.FILE_SCHEME, "");
        if (!strReplaceFirst.endsWith("/")) {
            strReplaceFirst = strReplaceFirst + "/";
        }
        File file = new File(strReplaceFirst);
        if (!file.exists() && !file.mkdirs() && !file.exists()) {
            throw new GenerateSaveFileException(492, "unable to make folder");
        }
        if (TextUtils.isEmpty(str)) {
            str = h(str2);
        }
        if (!TextUtils.isEmpty(str)) {
            str = nj2.l(str);
        }
        String strC = c(str2);
        if (TextUtils.isEmpty(strC)) {
            strC = b(resourceType);
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(strC)) {
            if (TextUtils.isEmpty(str5)) {
                str5 = String.valueOf(System.currentTimeMillis());
            }
            str6 = strReplaceFirst + str + "_" + str5 + "." + strC;
        } else if (!TextUtils.isEmpty(str4)) {
            String strReplace = str4.replace("\"", "");
            if (!TextUtils.isEmpty(strReplace)) {
                Matcher matcher = Pattern.compile(".*filename=(.*)").matcher(strReplace.toLowerCase());
                if (matcher.find()) {
                    String strGroup = matcher.group(1);
                    int iIndexOf = strGroup.indexOf(59);
                    if (iIndexOf != -1) {
                        strGroup = strGroup.substring(0, iIndexOf);
                    }
                    str6 = strReplaceFirst + System.currentTimeMillis() + "_" + strGroup;
                }
            }
        }
        if (TextUtils.isEmpty(str6)) {
            throw new GenerateSaveFileException(492, "unable to generate file name");
        }
        if (yj2.y(i(str6).getAbsolutePath()) < j) {
            throw new GenerateSaveFileException(498, "insufficient space on external storage");
        }
        ProductionEnv.debugLog(a, "generateSaveFile: " + str6);
        return str6;
    }

    public static String b(DownloadConstants.ResourceType resourceType) {
        int i = a.a[resourceType.ordinal()];
        if (i == 1) {
            return ".apk";
        }
        if (i == 2) {
            return ".patch";
        }
        if (i == 3) {
            return ".png";
        }
        if (i != 4) {
            return i != 5 ? "" : ".buka";
        }
        return ".mp4";
    }

    public static String c(String str) {
        return gu4.a(str);
    }

    public static File[] d(Context context) {
        return context.getExternalCacheDirs();
    }

    public static String e(DownloadConstants.ResourceType resourceType) {
        return f(resourceType, -1L);
    }

    public static String f(DownloadConstants.ResourceType resourceType, long j) {
        return uh.d() ? g(k().getAbsolutePath(), resourceType) : g(hs7.n().m(j), resourceType);
    }

    public static String g(String str, DownloadConstants.ResourceType resourceType) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = str + "/" + ir1.b + "/" + resourceType.name().toLowerCase() + "/";
        File file = new File(str2);
        if (file.exists() || file.mkdirs() || file.exists()) {
            return str2;
        }
        return null;
    }

    public static String h(String str) {
        return gu4.b(str);
    }

    public static File i(String str) {
        File downloadCacheDirectory = Environment.getDownloadCacheDirectory();
        if (str.startsWith(downloadCacheDirectory.getPath())) {
            return downloadCacheDirectory;
        }
        File file = new File(nj2.e(str));
        if (file.exists()) {
            return file;
        }
        throw new IllegalArgumentException("Cannot determine filesystem root for " + str);
    }

    public static List j() {
        String canonicalPath;
        String canonicalPath2;
        List<String> listL = hs7.n().l();
        try {
            canonicalPath = Environment.getExternalStorageDirectory().getCanonicalPath();
        } catch (IOException e) {
            e.printStackTrace();
            canonicalPath = null;
        }
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(canonicalPath)) {
            Iterator it2 = listL.iterator();
            while (it2.hasNext()) {
                arrayList.add(Pair.create((String) it2.next(), 0));
            }
        } else {
            for (String str : listL) {
                try {
                    canonicalPath2 = new File(str).getCanonicalPath();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    canonicalPath2 = null;
                }
                if (nj2.i(canonicalPath2, canonicalPath)) {
                    arrayList.add(Pair.create(str, 0));
                } else {
                    arrayList.add(Pair.create(str, 1));
                }
            }
        }
        return arrayList;
    }

    public static File k() {
        File fileB = yj2.B(GlobalConfig.getAppContext());
        return fileB == null ? yj2.I(GlobalConfig.getAppContext()) : fileB;
    }

    public static boolean l(long j) {
        if (j < 0) {
            return true;
        }
        List listL = hs7.n().l();
        if (listL.size() == 0) {
            String strK = Config.K();
            if (yj2.e(strK)) {
                listL.add(strK);
            }
        }
        Iterator it2 = listL.iterator();
        while (it2.hasNext()) {
            if (yj2.y((String) it2.next()) >= j) {
                return true;
            }
        }
        return false;
    }

    public static boolean m() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean n(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(PhoenixApplication.z().getFilesDir().getParentFile().getAbsolutePath());
    }

    public static boolean o(String str) {
        return !str.startsWith(Environment.getExternalStorageDirectory().getAbsolutePath());
    }

    public static boolean p(String str) {
        File parentFile;
        File externalFilesDir;
        File parentFile2;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Context contextZ = PhoenixApplication.z();
            if (TextUtils.isEmpty(b) && (externalFilesDir = contextZ.getExternalFilesDir(null)) != null && (parentFile2 = externalFilesDir.getParentFile()) != null) {
                b = parentFile2.getAbsolutePath();
            }
            if (TextUtils.isEmpty(c) && (parentFile = contextZ.getFilesDir().getParentFile()) != null) {
                c = parentFile.getAbsolutePath();
            }
            return str.startsWith(b) || str.startsWith(c);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean q(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String absolutePath = new File(str).getAbsolutePath();
        File[] fileArrD = d(context);
        if (fileArrD != null && fileArrD.length != 0) {
            for (File file : fileArrD) {
                if (file != null && absolutePath.startsWith(file.getParentFile().getAbsolutePath())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long r(long j) {
        if (j <= 0) {
            return -1L;
        }
        long j2 = (j / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        long jHighestOneBit = Long.highestOneBit(j2);
        return (j2 - jHighestOneBit) * 2 > jHighestOneBit ? jHighestOneBit << 1 : jHighestOneBit;
    }
}

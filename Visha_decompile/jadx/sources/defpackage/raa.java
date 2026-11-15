package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.FileProvider;
import androidx.webkit.internal.AssetHelper;
import com.alibaba.android.arouter.utils.Consts;
import com.blankj.utilcode.util.Utils;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.File;

public abstract class raa {
    public static int a = -1;
    public static final String[][] b = {new String[]{".apk", "application/vnd.android.package-archive"}, new String[]{".bin", "application/octet-stream"}, new String[]{".bmp", "image/bmp"}, new String[]{".c", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".class", "application/octet-stream"}, new String[]{".conf", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".cpp", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".doc", "application/msword"}, new String[]{".exe", "application/octet-stream"}, new String[]{".gif", ImageFormats.MIME_TYPE_GIF}, new String[]{".gtar", "application/x-gtar"}, new String[]{".gz", "application/x-gzip"}, new String[]{".h", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".htm", "text/html"}, new String[]{".html", "text/html"}, new String[]{".jar", "application/java-archive"}, new String[]{".java", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".js", "application/x-javascript"}, new String[]{".log", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".m3u", "audio/x-mpegurl"}, new String[]{".mpc", "application/vnd.mpohun.certificate"}, new String[]{".msg", "application/vnd.ms-outlook"}, new String[]{".pdf", "application/pdf"}, new String[]{".pps", "application/vnd.ms-powerpoint"}, new String[]{".ppt", "application/vnd.ms-powerpoint"}, new String[]{".prop", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".rar", "application/x-rar-compressed"}, new String[]{".rc", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".rmvb", "audio/x-pn-realaudio"}, new String[]{".rtf", "application/rtf"}, new String[]{".sh", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".tar", "application/x-tar"}, new String[]{".tgz", "application/x-compressed"}, new String[]{".txt", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".wps", "application/vnd.ms-works"}, new String[]{".xml", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".z", "application/x-compress"}, new String[]{".zip", "application/zip"}, new String[]{"", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE}};

    public static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.gallery20", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("visha_SystemUtils", "NameNotFoundException:" + e.getMessage());
            return 0;
        }
    }

    public static String b(File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(Consts.DOT);
        String str = SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
        if (iLastIndexOf < 0) {
            return SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
        }
        String lowerCase = name.substring(iLastIndexOf, name.length()).toLowerCase();
        if (lowerCase.equals("")) {
            return SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE;
        }
        int i = 0;
        while (true) {
            String[][] strArr = b;
            if (i >= strArr.length) {
                return str;
            }
            if (lowerCase.equals(strArr[i][0])) {
                str = strArr[i][1];
            }
            i++;
        }
    }

    public static int c(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("visha_SystemUtils", "NameNotFoundException:" + e.getMessage());
            return 0;
        }
    }

    public static void d(Point point) {
        ((WindowManager) Utils.a().getSystemService("window")).getDefaultDisplay().getRealSize(point);
    }

    public static int e() {
        try {
            int i = a;
            if (i >= 0) {
                return i;
            }
            int identifier = Utils.a().getResources().getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
            int dimensionPixelSize = identifier > 0 ? Utils.a().getResources().getDimensionPixelSize(identifier) : 0;
            a = dimensionPixelSize;
            return dimensionPixelSize;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static void f(Context context) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.DOLBY_SETTINGS");
            intent.setPackage("com.android.settings");
            context.startActivity(intent);
        } catch (Exception e) {
            Log.e("visha_SystemUtils", "goDolbySetting " + e);
        }
    }

    public static boolean g(Context context) {
        return h(context, "com.whatsapp");
    }

    public static boolean h(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                return context.getPackageManager().getApplicationInfo(str, 0).enabled;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    public static boolean i(Context context) {
        AccessibilityManager accessibilityManager;
        if (context == null || (accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility")) == null) {
            return false;
        }
        return accessibilityManager.isTouchExplorationEnabled();
    }

    public static void j(Context context, File file) {
        try {
            Uri uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addFlags(1);
            intent.addFlags(268435456);
            intent.setDataAndType(uriForFile, b(file));
            context.startActivity(intent);
        } catch (Exception e) {
            Log.i("visha_SystemUtils", "openFile exception:" + e.getMessage());
        }
    }

    public static boolean k(Context context, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, "image/*");
        intent.addFlags(1);
        if (h(context, "com.gallery20")) {
            intent.setPackage("com.gallery20");
            intent.putExtra("isFilterVideo", 1);
            intent.putExtra("entryMode", 6);
        }
        try {
            context.startActivity(intent);
            return true;
        } catch (SecurityException | Exception unused) {
            return false;
        }
    }

    public static boolean l(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.whatsapp");
        if (launchIntentForPackage == null) {
            return false;
        }
        try {
            context.startActivity(launchIntentForPackage);
            return true;
        } catch (Exception e) {
            Log.e("visha_SystemUtils", "openWhatsApp exception:" + e.getMessage());
            return true;
        }
    }
}

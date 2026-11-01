package x0;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.storage.StorageVolume;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import ru.zdevs.zarchiver.ZArchiver;

public final class h {
    public static String a(Context context) {
        PackageInfo packageInfoB = b(context);
        if (packageInfoB == null) {
            return null;
        }
        return "Files: SDK " + packageInfoB.applicationInfo.targetSdkVersion + " V " + packageInfoB.getLongVersionCode();
    }

    public static PackageInfo b(Context context) {
        try {
            try {
                return context.getPackageManager().getPackageInfo("com.google.android.documentsui", 0);
            } catch (Exception unused) {
                return context.getPackageManager().getPackageInfo("com.android.documentsui", 0);
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static int c(Context context) {
        if (Build.VERSION.SDK_INT < 30) {
            return 0;
        }
        PackageInfo packageInfoB = b(context);
        if (packageInfoB == null) {
            return 1;
        }
        if (d(packageInfoB)) {
            return 0;
        }
        String str = packageInfoB.applicationInfo.sourceDir;
        if (str != null && str.startsWith("/data/app/")) {
            try {
                String str2 = packageInfoB.packageName.contains(".google.") ? "DocumentsUIGoogle" : "DocumentsUI";
                if (d(context.getPackageManager().getPackageArchiveInfo("/system/priv-app/" + str2 + "/" + str2 + ".apk", 0))) {
                    return 2;
                }
            } catch (Exception unused) {
            }
        }
        return 1;
    }

    public static boolean d(PackageInfo packageInfo) {
        if (packageInfo.applicationInfo.targetSdkVersion < 34) {
            return true;
        }
        long longVersionCode = packageInfo.getLongVersionCode();
        if (longVersionCode <= 340819010 || longVersionCode == 990090000) {
            try {
                return new SimpleDateFormat("yyyy-MM-dd").parse(Build.VERSION.SECURITY_PATCH).getTime() < 1706745600000L;
            } catch (ParseException unused) {
            }
        }
        return false;
    }

    public static void e(ZArchiver zArchiver, StorageVolume storageVolume, int i2) {
        Intent intentCreateAccessIntent = storageVolume.createAccessIntent(null);
        if (intentCreateAccessIntent != null) {
            try {
                zArchiver.startActivityForResult(intentCreateAccessIntent, i2);
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        g(zArchiver, null, i2);
    }

    public static void f(Activity activity, String str, boolean z2, int i2) {
        Uri uri = Uri.parse("content://com.android.externalstorage.documents/document/primary");
        Intent intent = new Intent(z2 ? "android.intent.action.CREATE_DOCUMENT" : "android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("text/plain");
        if (str != null) {
            intent.putExtra("android.intent.extra.TITLE", str);
        }
        intent.putExtra("android.intent.extra.LOCAL_ONLY", true);
        intent.putExtra("android.content.extra.SHOW_ADVANCED", true);
        intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        j(activity, intent, i2);
    }

    public static void g(ZArchiver zArchiver, Uri uri, int i2) {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.setFlags(67);
        intent.putExtra("android.intent.extra.LOCAL_ONLY", true);
        intent.putExtra("android.content.extra.SHOW_ADVANCED", true);
        intent.putExtra("android.provider.extra.SHOW_ADVANCED", true);
        if (uri != null) {
            intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        }
        j(zArchiver, intent, i2);
    }

    public static void h(ZArchiver zArchiver, d.a aVar, String str, int i2) {
        Uri uri;
        if (aVar != null) {
            StringBuilder sb = new StringBuilder("content://com.android.externalstorage.documents/document/");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aVar.a());
            sb2.append(":");
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            sb.append(Uri.encode(sb2.toString()));
            uri = Uri.parse(sb.toString());
        } else {
            uri = null;
        }
        g(zArchiver, uri, i2);
    }

    public static void i(ZArchiver zArchiver, StorageVolume storageVolume, int i2) {
        try {
            j(zArchiver, storageVolume.createOpenDocumentTreeIntent(), i2);
        } catch (Exception e2) {
            e2.printStackTrace();
            g(zArchiver, null, i2);
        }
    }

    public static void j(Activity activity, Intent intent, int i2) {
        String action = intent.getAction();
        if (action != null && action.startsWith("android.intent.action.")) {
            action = action.substring(22);
        }
        w0.c.h(new h1.g(activity, intent, i2, "Failed to call " + action + ". The Files (documnetui) application may be frozen."));
    }
}

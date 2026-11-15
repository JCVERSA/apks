package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.UriPermission;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.mgmi.ssp.AdError;
import com.transsion.mimedia.activity.MediaLibraryVideoActivity;
import com.transsion.playercommon.R;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.Objects;

public abstract class nx8 {
    public static ArrayMap a;
    public static s08 b;

    public static boolean a(Activity activity, String str) {
        if (n(str) && !d(activity, l(str), str)) {
            s(activity, new File(str));
            return true;
        }
        if (b == null) {
            return false;
        }
        Log.i("SAFHelper", "checkAndTakePermission path:" + str);
        b.b();
        return false;
    }

    public static boolean b(Activity activity, String str) {
        String str2 = BaseConstant.f;
        if (str2 != null && str.startsWith(str2)) {
            return c(activity, str);
        }
        String str3 = BaseConstant.g;
        if (str3 == null || !str.startsWith(str3)) {
            return true;
        }
        return c(activity, str);
    }

    public static boolean c(Activity activity, String str) {
        if (n(str)) {
            String strL = l(str);
            Log.d("SAFHelper", "checkIsHavePermission");
            if (d(activity, strL, str)) {
                return true;
            }
        }
        Log.d("SAFHelper", "checkIsHavePermission path" + str + ",\n" + BaseConstant.f + ",\n" + BaseConstant.g);
        return false;
    }

    public static boolean d(Activity activity, String str, String str2) {
        g(activity);
        if (!pp3.j && Build.VERSION.SDK_INT >= 30) {
            return ((Uri) a.get(i(str, str2))) != null;
        }
        Uri uri = (Uri) a.get(str);
        if (uri == null) {
            return uri != null;
        }
        String strB = du9.b(activity, "android.provider.extra.INITIAL_URI", "ANDROID_Q_SD_PERSSION", "");
        String strB2 = du9.b(activity, "android.provider.extra.INITIAL_URI", "ANDROID_Q_OTG_PERSSION", "");
        Log.d("SAFHelper", "::::::::::::" + uri + "::::::::" + strB);
        return strB.equals(uri.toString()) || strB2.equals(uri.toString());
    }

    public static boolean e(Activity activity, String str, s08 s08Var) {
        b = s08Var;
        String str2 = BaseConstant.f;
        if (str2 != null && str.startsWith(str2)) {
            return a(activity, str);
        }
        String str3 = BaseConstant.g;
        if (str3 != null && str.startsWith(str3)) {
            return a(activity, str);
        }
        s08Var.a();
        b = null;
        return false;
    }

    public static boolean f(Context context, File file) {
        hw2 hw2VarH = h(context, file);
        if (hw2VarH == null || !hw2VarH.c()) {
            return false;
        }
        try {
            return hw2VarH.b();
        } catch (Exception unused) {
            return false;
        }
    }

    public static void g(Context context) {
        synchronized (nx8.class) {
            try {
                ArrayMap arrayMap = a;
                if (arrayMap == null) {
                    a = new ArrayMap();
                } else {
                    arrayMap.clear();
                }
                for (UriPermission uriPermission : context.getContentResolver().getPersistedUriPermissions()) {
                    String strK = k(uriPermission.getUri());
                    try {
                        String strSubstring = (pp3.j || Build.VERSION.SDK_INT < 30) ? strK.substring(0, strK.indexOf(58, 1)) : strK;
                        Uri uri = uriPermission.getUri();
                        Log.d("SAFHelper", "::::::::::::" + strSubstring + "::::::::::::" + strK);
                        a.put(strSubstring, uri);
                    } catch (Exception e) {
                        Log.i("SAFHelper", e.getMessage());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static hw2 h(Context context, File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        if (!n(absolutePath)) {
            return hw2.d(file);
        }
        if (a == null) {
            g(context);
        }
        String strL = l(absolutePath);
        String strReplaceFirst = absolutePath.replaceFirst("/storage/", "");
        Uri uri = (Uri) a.get(strL);
        if (uri == null) {
            return null;
        }
        if (!strReplaceFirst.contains("/")) {
            return hd0.f(context, DocumentsContract.buildDocumentUriUsingTree(uri, strL + StringUtils.PROCESS_POSTFIX_DELIMITER));
        }
        return hd0.f(context, DocumentsContract.buildDocumentUriUsingTree(uri, strReplaceFirst.replaceFirst(strL + "/", strL + StringUtils.PROCESS_POSTFIX_DELIMITER)));
    }

    public static String i(String str, String str2) {
        if (str2 == null) {
            return "";
        }
        int iIndexOf = str2.indexOf(str);
        if (iIndexOf == -1) {
            return str2;
        }
        String strReplaceFirst = str2.substring(iIndexOf).replaceFirst("/", StringUtils.PROCESS_POSTFIX_DELIMITER);
        int iLastIndexOf = strReplaceFirst.lastIndexOf("/");
        return iLastIndexOf == -1 ? strReplaceFirst : strReplaceFirst.substring(0, iLastIndexOf);
    }

    public static boolean j(Activity activity, Intent intent, boolean z, int i) {
        boolean z2;
        if (intent != null && intent.getData() != null && a != null) {
            Uri data = intent.getData();
            int i2 = Build.VERSION.SDK_INT;
            String str = du9.b(activity, "android.provider.extra.INITIAL_URI", MediaLibraryVideoActivity.HOST_OPEN, "") + "%3A";
            if (str.equals(data.toString()) || !((z2 = pp3.j) || i2 < 30 || data.toString().contains(str))) {
                if (i == 4010) {
                    ToastUtils.s(R.string.access_sdCard);
                } else {
                    ToastUtils.s(R.string.access_otg);
                }
                s08 s08Var = b;
                if (s08Var != null) {
                    s08Var.b();
                }
                return false;
            }
            if (i == 4010) {
                du9.c(activity, "android.provider.extra.INITIAL_URI", "ANDROID_Q_SD_PERSSION", data.toString());
            } else if (i == 4011) {
                du9.c(activity, "android.provider.extra.INITIAL_URI", "ANDROID_Q_OTG_PERSSION", data.toString());
            }
            activity.getContentResolver().takePersistableUriPermission(data, 3);
            String strK = k(data);
            int iIndexOf = strK.indexOf(58, 1);
            if (strK.length() < 1) {
                r(activity, i);
                s08 s08Var2 = b;
                if (s08Var2 != null) {
                    s08Var2.b();
                }
                return false;
            }
            if (z2 || i2 < 30) {
                strK = strK.substring(0, iIndexOf);
            }
            a.remove(strK);
            a.put(strK, data);
            s08 s08Var3 = b;
            if (s08Var3 != null) {
                s08Var3.a();
                b = null;
            }
            z = true;
        }
        s08 s08Var4 = b;
        if (s08Var4 != null) {
            s08Var4.b();
        }
        return z;
    }

    public static String k(Uri uri) {
        return o(uri) ? DocumentsContract.getTreeDocumentId(uri) : DocumentsContract.getDocumentId(uri);
    }

    public static String l(String str) {
        if (str == null) {
            return "";
        }
        String strReplaceFirst = str.replaceFirst("/storage/", "");
        int iIndexOf = strReplaceFirst.indexOf("/");
        return iIndexOf == -1 ? strReplaceFirst : strReplaceFirst.substring(0, iIndexOf);
    }

    public static boolean m(String str) {
        if (!n(str)) {
            return false;
        }
        Log.d("SAFHelper", ":::::::" + av3.u(str) + ":::::::::::\n" + BaseConstant.f + " :::::::::::\n" + BaseConstant.g);
        String strU = av3.u(str);
        return strU.equals(BaseConstant.f) || strU.equals(BaseConstant.g);
    }

    public static boolean n(String str) {
        return ("/storage".equals(str) || str.startsWith("/storage/emulated/") || !new File(str).exists()) ? false : true;
    }

    public static boolean o(Uri uri) {
        return DocumentsContract.isTreeUri(uri);
    }

    public static boolean p(Activity activity, int i, int i2, Intent intent) {
        if (i == 4010 || i == 4011) {
            if (i2 == -1) {
                j(activity, intent, false, i);
            } else {
                s08 s08Var = b;
                if (s08Var != null) {
                    s08Var.b();
                }
                r(activity, i);
            }
        }
        return false;
    }

    public static boolean q(Context context, File file, String str) {
        try {
            hw2 hw2VarH = h(context, file);
            if (hw2VarH == null || !hw2VarH.c() || !hw2VarH.a()) {
                return false;
            }
            hw2VarH.e(str);
            return true;
        } catch (Exception e) {
            return e.getMessage().contains("UNIQUE constraint failed");
        }
    }

    public static void r(Activity activity, int i) {
        if (i == 4010) {
            ToastUtils.s(R.string.access_sdCard);
        } else {
            ToastUtils.s(R.string.access_otg);
        }
    }

    public static void s(Activity activity, File file) {
        String str;
        String absolutePath = file.getAbsolutePath();
        String str2 = BaseConstant.f;
        int i = 4010;
        if (str2 == null || !absolutePath.startsWith(str2)) {
            String str3 = BaseConstant.g;
            if (str3 == null || !absolutePath.startsWith(str3)) {
                str = "";
            } else {
                str = BaseConstant.g;
                i = AdError.ERROR_REASON_TIME_OUT;
            }
        } else {
            str = BaseConstant.f;
        }
        Log.d("SAFHelper", ":::::::::" + absolutePath + "\n" + str);
        if (TextUtils.isEmpty(str) || !str.contains("/storage/")) {
            return;
        }
        String strReplace = str.replace("/storage/", "");
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        String str4 = "content://com.android.externalstorage.documents/tree/" + strReplace;
        Uri uri = Uri.parse("content://com.android.externalstorage.documents/root/" + strReplace);
        du9.c(activity, "android.provider.extra.INITIAL_URI", MediaLibraryVideoActivity.HOST_OPEN, str4);
        intent.putExtra("android.provider.extra.INITIAL_URI", uri);
        try {
            activity.startActivityForResult(intent, i);
        } catch (Exception e) {
            String message = e.getMessage();
            Objects.requireNonNull(message);
            Log.i("SAFHelper", message);
        }
    }
}

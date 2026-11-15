package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.xuanniao.account.R;
import java.io.File;

public abstract class jr7 {
    public static boolean a = false;
    public static Context b;

    public static Intent a(Context context) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction(BasePermissionActivity.PERMISSION_ACTION_OTHER);
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        return intent;
    }

    public static Uri b(Context context, String str, File file) {
        try {
            return FileProvider.getUriForFile(context, str, file);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String c() {
        String strA = pa1.a("ro.tranos.type");
        String str = Build.BRAND;
        if (TextUtils.isEmpty(strA)) {
            if ("Infinix".equalsIgnoreCase(str)) {
                return "Infinix";
            }
            if ("itel".equalsIgnoreCase(str)) {
                return "itel";
            }
            if ("TECNO".equalsIgnoreCase(str)) {
                return "TECNO";
            }
            return "VIMOQ".equalsIgnoreCase(str) ? "VIMOQ" : "";
        }
        if ("xos".equalsIgnoreCase(strA) && "Infinix".equalsIgnoreCase(str)) {
            return "Infinix";
        }
        if (!"itel".equalsIgnoreCase(strA)) {
            return ("hios".equalsIgnoreCase(strA) && "TECNO".equalsIgnoreCase(str)) ? "TECNO" : "";
        }
        if ("VIMOQ".equalsIgnoreCase(str)) {
            return "VIMOQ";
        }
        return "itel".equalsIgnoreCase(str) ? "itel" : "";
    }

    public static String d(String str) {
        Context context;
        if (a) {
            return str.replace("TECNO", "Palm");
        }
        String strH = ao7.a.a.h();
        Log.d("com.palm.id.log", "lbd = " + strH);
        if (!TextUtils.isEmpty(strH)) {
            return str.replace("TECNO", strH.replace(" ID", ""));
        }
        String strC = c();
        if (TextUtils.isEmpty(strC) && (context = b) != null) {
            strC = context.getString(R.string.sdk_config_brand_id);
        }
        return TextUtils.isEmpty(strC) ? str : str.replace("TECNO", strC);
    }

    public static String e() {
        String str;
        String strA = pa1.a("ro.tranos.type");
        String str2 = Build.BRAND;
        if (TextUtils.isEmpty(strA)) {
            if ("Infinix".equalsIgnoreCase(str2)) {
                return "Infinix ID";
            }
            if ("itel".equalsIgnoreCase(str2)) {
                return "itel ID";
            }
            if ("VIMOQ".equalsIgnoreCase(str2)) {
                return "VIMOQ ID";
            }
            if ("TECNO".equalsIgnoreCase(str2)) {
                return "TECNO ID";
            }
        } else {
            if ("xos".equalsIgnoreCase(strA) && "Infinix".equalsIgnoreCase(str2)) {
                return "Infinix ID";
            }
            if ("itel".equalsIgnoreCase(strA)) {
                if ("VIMOQ".equalsIgnoreCase(str2)) {
                    return "VIMOQ ID";
                }
                if ("itel".equalsIgnoreCase(str2)) {
                    return "itel ID";
                }
            } else if ("hios".equalsIgnoreCase(strA) && "TECNO".equalsIgnoreCase(str2)) {
                return "TECNO ID";
            }
        }
        if (b != null) {
            str = b.getString(R.string.sdk_config_brand_id) + " ID";
        } else {
            str = null;
        }
        return TextUtils.isEmpty(str) ? "TECNO ID" : str;
    }

    public static String f(String str) {
        String strH = h();
        if (TextUtils.isEmpty(strH)) {
            return str;
        }
        return str.replace("legal-agreement", strH + "/legal-agreement");
    }

    public static boolean g(Context context) {
        return TextUtils.isEmpty(c()) && !context.getResources().getBoolean(R.bool.sdk_faq_is_show);
    }

    public static String h() {
        if (a) {
            return "";
        }
        String strH = ao7.a.a.h();
        Log.d("com.palm.id.log", "lbd = " + strH);
        if (!TextUtils.isEmpty(strH)) {
            if (!"itel ID".equalsIgnoreCase(strH)) {
                if (!"Infinix ID".equalsIgnoreCase(strH)) {
                    return "VIMOQ ID".equalsIgnoreCase(strH) ? "vimoq-id" : "tecno-id";
                }
                return "infinix-id";
            }
            return "itel-id";
        }
        String strC = c();
        if (!TextUtils.isEmpty(strC)) {
            if (!"itel".equalsIgnoreCase(strC)) {
                if (!"Infinix".equalsIgnoreCase(strC)) {
                    if ("VIMOQ".equalsIgnoreCase(strC)) {
                        return "vimoq-id";
                    }
                }
                return "infinix-id";
            }
            return "itel-id";
        }
    }

    public static boolean i(Context context) {
        try {
            String string = context.getPackageManager().getApplicationInfo("tech.palm.id", 128).metaData.getString("com.palm.id.clientId");
            boolean z = string == null || string.length() == 0;
            a = z;
            return z;
        } catch (Exception unused) {
            a = false;
            return false;
        }
    }

    public static boolean j(Context context) {
        return context.getFilesDir() != null;
    }
}

package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

public abstract class tdf {
    public static Uri a(String str, String str2, String str3) {
        int iIndexOf = str.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("?adurl");
        }
        if (iIndexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i = iIndexOf + 1;
        return Uri.parse(str.substring(0, i) + str2 + "=" + str3 + "&" + str.substring(i));
    }

    public static String b(Uri uri, Context context, Map map) {
        String strB;
        if (zzv.zzo().p(context) && (strB = zzv.zzo().b(context)) != null) {
            String str = (String) zzbd.zzc().b(cye.w0);
            String string = uri.toString();
            if (((Boolean) zzbd.zzc().b(cye.v0)).booleanValue() && string.contains(str)) {
                zzv.zzo().j(context, strB, (Map) map.get("_ac"));
                return d(string, context).replace(str, strB);
            }
            if (!TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                return string;
            }
            if (((Boolean) zzbd.zzc().b(cye.u0)).booleanValue()) {
                return string;
            }
            String string2 = a(d(string, context), "fbs_aeid", strB).toString();
            zzv.zzo().j(context, strB, (Map) map.get("_ac"));
            return string2;
        }
        return uri.toString();
    }

    public static String c(String str, Context context, boolean z, Map map) {
        String strB;
        if ((((Boolean) zzbd.zzc().b(cye.D0)).booleanValue() && !z) || !zzv.zzo().p(context) || TextUtils.isEmpty(str) || (strB = zzv.zzo().b(context)) == null) {
            return str;
        }
        String str2 = (String) zzbd.zzc().b(cye.w0);
        if (((Boolean) zzbd.zzc().b(cye.v0)).booleanValue() && str.contains(str2)) {
            if (zzv.zzq().zzj(str)) {
                zzv.zzo().j(context, strB, (Map) map.get("_ac"));
                return d(str, context).replace(str2, strB);
            }
            if (!zzv.zzq().zzk(str)) {
                return str;
            }
            zzv.zzo().k(context, strB, (Map) map.get("_ai"));
            return d(str, context).replace(str2, strB);
        }
        if (str.contains("fbs_aeid")) {
            return str;
        }
        if (((Boolean) zzbd.zzc().b(cye.u0)).booleanValue()) {
            return str;
        }
        if (zzv.zzq().zzj(str)) {
            zzv.zzo().j(context, strB, (Map) map.get("_ac"));
            return a(d(str, context), "fbs_aeid", strB).toString();
        }
        if (!zzv.zzq().zzk(str)) {
            return str;
        }
        zzv.zzo().k(context, strB, (Map) map.get("_ai"));
        return a(d(str, context), "fbs_aeid", strB).toString();
    }

    public static String d(String str, Context context) {
        String strE = zzv.zzo().e(context);
        String strC = zzv.zzo().c(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(strE)) {
            str = a(str, "gmp_app_id", strE).toString();
        }
        return (str.contains("fbs_aiid") || TextUtils.isEmpty(strC)) ? str : a(str, "fbs_aiid", strC).toString();
    }
}

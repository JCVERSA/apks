package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.PendingIntentCompat;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.common.b;
import com.transsion.playercommon.activities.BasePermissionActivity;

public class aj4 {
    public static final int a = b.a;
    public static final aj4 b = new aj4();

    public static aj4 g() {
        return b;
    }

    public void a(Context context) {
        b.a(context);
    }

    public int b(Context context) {
        return b.c(context);
    }

    public Intent c(Context context, int i, String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            Uri uriFromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent(BasePermissionActivity.PERMISSION_ACTION_OTHER);
            intent.setData(uriFromParts);
            return intent;
        }
        if (context != null && ia2.g(context)) {
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(mpc.a(context).f(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String string = sb.toString();
        Intent intent3 = new Intent("android.intent.action.VIEW");
        Uri.Builder builderAppendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter(TtmlNode.ATTR_ID, "com.google.android.gms");
        if (!TextUtils.isEmpty(string)) {
            builderAppendQueryParameter.appendQueryParameter("pcampaignid", string);
        }
        intent3.setData(builderAppendQueryParameter.build());
        intent3.setPackage("com.android.vending");
        intent3.addFlags(524288);
        return intent3;
    }

    public PendingIntent d(Context context, int i, int i2) {
        return e(context, i, i2, null);
    }

    public PendingIntent e(Context context, int i, int i2, String str) {
        Intent intentC = c(context, i, str);
        if (intentC == null) {
            return null;
        }
        return PendingIntentCompat.getActivity(context, i2, intentC, C.BUFFER_FLAG_FIRST_SAMPLE, false);
    }

    public String f(int i) {
        return b.d(i);
    }

    public int h(Context context) {
        return i(context, a);
    }

    public int i(Context context, int i) {
        int iH = b.h(context, i);
        if (b.i(context, iH)) {
            return 18;
        }
        return iH;
    }

    public boolean j(Context context, String str) {
        return b.l(context, str);
    }

    public boolean k(int i) {
        return b.k(i);
    }

    public void l(Context context, int i) {
        b.b(context, i);
    }
}

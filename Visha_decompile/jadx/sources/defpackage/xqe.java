package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.google.android.gms.internal.ads.a0;
import com.google.android.gms.internal.ads.b0;
import com.google.android.gms.internal.ads.x;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

public abstract class xqe {
    public static final String a(Context context, String str, long j, boolean z) {
        try {
            npe npeVarB0 = x.b0();
            npeVarB0.w(str);
            npeVarB0.v("0.460000000");
            npeVarB0.x(context.getPackageName());
            npeVarB0.z((System.currentTimeMillis() - j) / 1000);
            npeVarB0.y(System.currentTimeMillis() / 1000);
            try {
                npeVarB0.A(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                npeVarB0.A(-1L);
            }
            rpe rpeVarA = b0.a(((x) npeVarB0.q()).l(), null);
            rpeVarA.y(5);
            rpeVarA.x(2);
            return Base64.encodeToString(((a0) rpeVarA.q()).l(), 11);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused2) {
            return Integer.toString(7);
        }
    }
}

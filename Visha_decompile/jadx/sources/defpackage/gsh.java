package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzfgn;
import java.util.regex.Pattern;

public abstract class gsh {
    public static void a(im5 im5Var, zzfgn zzfgnVar, wrh wrhVar) {
        g(im5Var, zzfgnVar, wrhVar, false);
    }

    public static void b(im5 im5Var, zzfgn zzfgnVar, wrh wrhVar) {
        g(im5Var, zzfgnVar, wrhVar, true);
    }

    public static void c(im5 im5Var, zzfgn zzfgnVar, wrh wrhVar) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            j8.r(q7i.zzE(im5Var), new fsh(zzfgnVar, wrhVar), zef.g);
        }
    }

    public static void d(im5 im5Var, wrh wrhVar) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            j8.r(q7i.zzE(im5Var), new dsh(wrhVar), zef.g);
        }
    }

    public static boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) zzbd.zzc().b(cye.T8), str);
    }

    public static int f(enh enhVar) {
        int iZzg = zzaa.zzg(enhVar) - 1;
        return (iZzg == 0 || iZzg == 1) ? 7 : 23;
    }

    public static void g(im5 im5Var, zzfgn zzfgnVar, wrh wrhVar, boolean z) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            j8.r(q7i.zzE(im5Var), new esh(zzfgnVar, wrhVar, z), zef.g);
        }
    }
}

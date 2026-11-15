package defpackage;

import android.text.TextUtils;
import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.ImpressionType;
import com.iab.omid.library.hisavana.adsession.Owner;

public abstract class agd {
    public static void a() {
        if (!ke7.c()) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    public static void b(e3d e3dVar) {
        h(e3dVar);
        g(e3dVar);
    }

    public static void c(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
        if (owner == Owner.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (creativeType == CreativeType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (impressionType == ImpressionType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }

    public static void d(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void e(String str, int i, String str2) {
        if (str.length() > i) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void f(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void g(e3d e3dVar) {
        if (e3dVar.q()) {
            throw new IllegalStateException("AdSession is finished");
        }
    }

    public static void h(e3d e3dVar) {
        if (!e3dVar.s()) {
            throw new IllegalStateException("AdSession is not started");
        }
    }

    public static void i(e3d e3dVar) {
        if (!e3dVar.r()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
    }

    public static void j(e3d e3dVar) {
        if (e3dVar.l().o() != null) {
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
    }
}

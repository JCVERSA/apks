package defpackage;

import com.google.android.gms.common.Feature;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;

public final class e0e {
    public final xd a;
    public final Feature b;

    public e0e(xd xdVar, Feature feature, d0e d0eVar) {
        this.a = xdVar;
        this.b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof e0e)) {
            e0e e0eVar = (e0e) obj;
            if (jc7.a(this.a, e0eVar.a) && jc7.a(this.b, e0eVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return jc7.b(this.a, this.b);
    }

    public final String toString() {
        return jc7.c(this).a("key", this.a).a(TranThemePackageInfo.FEATURE_KEY, this.b).toString();
    }
}

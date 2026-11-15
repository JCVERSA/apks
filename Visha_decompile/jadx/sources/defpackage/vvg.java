package defpackage;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.zzm;
import org.apache.commons.text.StringSubstitutor;

public final class vvg extends qwg {
    public final Activity a;
    public final zzm b;
    public final String c;
    public final String d;

    public vvg(Activity activity, zzm zzmVar, String str, String str2, uvg uvgVar) {
        this.a = activity;
        this.b = zzmVar;
        this.c = str;
        this.d = str2;
    }

    @Override
    public final Activity a() {
        return this.a;
    }

    @Override
    public final zzm b() {
        return this.b;
    }

    @Override
    public final String c() {
        return this.c;
    }

    @Override
    public final String d() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        zzm zzmVar;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof qwg) {
            qwg qwgVar = (qwg) obj;
            if (this.a.equals(qwgVar.a()) && ((zzmVar = this.b) != null ? zzmVar.equals(qwgVar.b()) : qwgVar.b() == null) && ((str = this.c) != null ? str.equals(qwgVar.c()) : qwgVar.c() == null) && ((str2 = this.d) != null ? str2.equals(qwgVar.d()) : qwgVar.d() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() ^ 1000003;
        zzm zzmVar = this.b;
        int iHashCode2 = ((iHashCode * 1000003) ^ (zzmVar == null ? 0 : zzmVar.hashCode())) * 1000003;
        String str = this.c;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.d;
        return iHashCode3 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        zzm zzmVar = this.b;
        return "OfflineUtilsParams{activity=" + this.a.toString() + ", adOverlay=" + String.valueOf(zzmVar) + ", gwsQueryId=" + this.c + ", uri=" + this.d + StringSubstitutor.DEFAULT_VAR_END;
    }
}

package defpackage;

import android.net.Uri;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.util.ArrayList;
import java.util.List;

public final class xge {
    public final Uri a;
    public final String b;
    public final List c;
    public final String d;
    public final zzfww e;
    public final Object f;
    public final long g;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
    }

    public xge(Uri uri, String str, qde qdeVar, r7e r7eVar, List list, String str2, zzfww zzfwwVar, Object obj, long j, ile ileVar) {
        this.a = uri;
        ArrayList arrayList = bue.a;
        this.b = null;
        this.c = list;
        this.d = null;
        this.e = zzfwwVar;
        int i = zzfww.zzd;
        l4i l4iVar = new l4i();
        if (zzfwwVar.size() > 0) {
            ubc.a(zzfwwVar.get(0));
            throw null;
        }
        l4iVar.j();
        this.f = null;
        this.g = C.TIME_UNSET;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xge)) {
            return false;
        }
        xge xgeVar = (xge) obj;
        return this.a.equals(xgeVar.a) && this.c.equals(xgeVar.c) && this.e.equals(xgeVar.e);
    }

    public final int hashCode() {
        return (int) ((((long) (((((this.a.hashCode() * 923521) + this.c.hashCode()) * 961) + this.e.hashCode()) * 31)) * 31) + C.TIME_UNSET);
    }
}

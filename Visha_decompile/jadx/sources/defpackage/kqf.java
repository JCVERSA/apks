package defpackage;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;

public final class kqf {
    public final String a;
    public final s7f b;
    public final Executor c;
    public oqf d;
    public final n3f e = new iqf(this);
    public final n3f f = new jqf(this);

    public kqf(String str, s7f s7fVar, Executor executor) {
        this.a = str;
        this.b = s7fVar;
        this.c = executor;
    }

    public static boolean g(kqf kqfVar, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(kqfVar.a);
    }

    public final void c(oqf oqfVar) {
        s7f s7fVar = this.b;
        s7fVar.b("/updateActiveView", this.e);
        s7fVar.b("/untrackActiveViewUnit", this.f);
        this.d = oqfVar;
    }

    public final void d(ejf ejfVar) {
        ejfVar.zzag("/updateActiveView", this.e);
        ejfVar.zzag("/untrackActiveViewUnit", this.f);
    }

    public final void e() {
        s7f s7fVar = this.b;
        s7fVar.c("/updateActiveView", this.e);
        s7fVar.c("/untrackActiveViewUnit", this.f);
    }

    public final void f(ejf ejfVar) {
        ejfVar.zzaz("/updateActiveView", this.e);
        ejfVar.zzaz("/untrackActiveViewUnit", this.f);
    }
}

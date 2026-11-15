package defpackage;

import android.os.Looper;
import defpackage.tag;

public final class tag {
    public final olg a;
    public final olg b;
    public Object c;
    public final w4j d;

    public tag(Object obj, Looper looper, Looper looper2, tbg tbgVar, w4j w4jVar) {
        this.a = tbgVar.a(looper, null);
        this.b = tbgVar.a(looper2, null);
        this.c = obj;
        this.d = w4jVar;
    }

    public static void a(tag tagVar, Object obj) {
        Object obj2 = tagVar.c;
        tagVar.c = obj;
        if (obj2.equals(obj)) {
            return;
        }
        tagVar.d.a(obj2, obj);
    }

    public final void b(Runnable runnable) {
        this.a.f(runnable);
    }

    public final void c(final Object obj) {
        this.b.f(new Runnable() {
            @Override
            public final void run() {
                tag.a(this.zza, obj);
            }
        });
    }
}

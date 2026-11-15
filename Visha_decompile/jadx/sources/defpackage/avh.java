package defpackage;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

public final class avh implements dvh {
    public static final avh e = new avh(new evh());
    public Date a;
    public boolean b;
    public final evh c;
    public boolean d;

    public avh(evh evhVar) {
        this.c = evhVar;
    }

    public static avh a() {
        return e;
    }

    public final Date b() {
        Date date = this.a;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public final void c(Context context) {
        if (this.b) {
            return;
        }
        evh evhVar = this.c;
        evhVar.d(context);
        evhVar.e(this);
        evhVar.f();
        this.d = evhVar.c;
        this.b = true;
    }

    @Override
    public final void zzc(boolean z) {
        if (!this.d && z) {
            Date date = new Date();
            Date date2 = this.a;
            if (date2 == null || date.after(date2)) {
                this.a = date;
                if (this.b) {
                    Iterator it = cvh.a().b().iterator();
                    while (it.hasNext()) {
                        ((suh) it.next()).g().g(b());
                    }
                }
            }
        }
        this.d = z;
    }
}

package defpackage;

import android.content.Context;
import java.util.Date;
import java.util.Iterator;

public class i3d implements r9d.a {
    public static i3d f = new i3d(new r9d());
    public qed a = new qed();
    public Date b;
    public boolean c;
    public r9d d;
    public boolean e;

    public i3d(r9d r9dVar) {
        this.d = r9dVar;
    }

    public static i3d a() {
        return f;
    }

    public void b(Context context) {
        if (this.c) {
            return;
        }
        this.d.a(context);
        this.d.b(this);
        this.d.i();
        this.e = this.d.g();
        this.c = true;
    }

    public Date c() {
        Date date = this.b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public final void d() {
        if (!this.c || this.b == null) {
            return;
        }
        Iterator it = i8d.e().a().iterator();
        while (it.hasNext()) {
            ((e3d) it.next()).l().i(c());
        }
    }

    public void e() {
        Date dateA = this.a.a();
        Date date = this.b;
        if (date == null || dateA.after(date)) {
            this.b = dateA;
            d();
        }
    }

    @Override
    public void a(boolean z) {
        if (!this.e && z) {
            e();
        }
        this.e = z;
    }
}

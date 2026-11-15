package defpackage;

import com.transsion.dbdata.beans.ThemeData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class xn9 {
    public static volatile xn9 e;
    public boolean a;
    public boolean b;
    public ThemeData c;
    public List d = new ArrayList();

    public static xn9 c() {
        if (e == null) {
            synchronized (xn9.class) {
                try {
                    if (e == null) {
                        e = new xn9();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public void a() {
        List list = this.d;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((os0) it.next()).a();
        }
        this.a = true;
        this.b = true;
    }

    public void b() {
        List list = this.d;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((os0) it.next()).b();
        }
        this.a = false;
    }

    public boolean d() {
        return this.a;
    }

    public void e(os0 os0Var) {
        this.d.remove(os0Var);
    }

    public void f(os0 os0Var) {
        this.d.add(os0Var);
    }

    public void g(boolean z) {
        this.b = z;
    }

    public void h(ThemeData themeData) {
        this.c = themeData;
    }
}

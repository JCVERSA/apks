package defpackage;

import android.text.TextUtils;
import com.transsion.core.log.ObjectLogUtils;

public abstract class ia1 {
    public static ObjectLogUtils d = new ObjectLogUtils.a().p("UPDATE_N").q(false).n(false).m();
    public static ia1 e = null;
    public final ObjectLogUtils b;
    public final String a = "UPDATE_S";
    public final int c = 2;

    public ia1() {
        ObjectLogUtils objectLogUtilsM = new ObjectLogUtils.a().p("UPDATE").r(true).n(false).m();
        this.b = objectLogUtilsM;
        objectLogUtilsM.x(3);
    }

    public static void g(String str) {
        d.n(str);
    }

    public void a(String str) {
        e(6, "", "******" + str + "******");
    }

    public void b(String str, String str2) {
        e(6, str, "******" + str2 + "******");
    }

    public abstract String c();

    public void d(String str, String str2) {
        e(4, str, str2);
    }

    public void e(int i, String str, String str2) {
        f(i, str, str2, null);
    }

    public void f(int i, String str, String str2, Throwable th) {
        try {
            if (i(i)) {
                if (!TextUtils.isEmpty(str)) {
                    str = c() + "_" + str;
                }
                if (i == 2) {
                    if (th != null) {
                        this.b.y(str, str2, th);
                        return;
                    } else {
                        this.b.y(str, str2);
                        return;
                    }
                }
                if (i == 3) {
                    if (th != null) {
                        this.b.h(str, str2, th);
                        return;
                    } else {
                        this.b.h(str, str2);
                        return;
                    }
                }
                if (i == 4) {
                    if (th != null) {
                        this.b.o(str, str2, th);
                        return;
                    } else {
                        this.b.o(str, str2);
                        return;
                    }
                }
                if (i == 5) {
                    if (th != null) {
                        this.b.A(str, str2, th);
                        return;
                    } else {
                        this.b.A(str, str2);
                        return;
                    }
                }
                if (i != 6) {
                    if (i != 9) {
                        return;
                    }
                    this.b.q(str, str2);
                } else if (th != null) {
                    this.b.j(str, str2, th);
                } else {
                    this.b.j(str, str2);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void h(boolean z) {
        this.b.m().r(z);
    }

    public final boolean i(int i) {
        return i >= 2;
    }
}

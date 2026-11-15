package defpackage;

import com.lzy.okgo.model.Progress;

public final class oq5 {
    public static final oq5 a = new oq5();
    public static boolean b = true;
    public static wp5 c = new h22();
    public static int d = 3;
    public static String e = "";
    public static final uq5 f = new uq5();

    public final void a(String str, Object... objArr) {
        y45.j(str, Progress.TAG);
        y45.j(objArr, "contents");
        if (d > 3) {
            return;
        }
        e(3, str, objArr);
    }

    public final void b(String str, Object... objArr) {
        y45.j(str, Progress.TAG);
        y45.j(objArr, "contents");
        if (d > 6) {
            return;
        }
        e(6, str, objArr);
    }

    public final void c(Object... objArr) {
        y45.j(objArr, "contents");
        if (d > 6) {
            return;
        }
        e(6, "CloudDriveSdk", objArr);
    }

    public final void d(String str, Object... objArr) {
        y45.j(str, Progress.TAG);
        y45.j(objArr, "contents");
        if (d > 4) {
            return;
        }
        e(4, str, objArr);
    }

    public final void e(int i, String str, Object[] objArr) {
        y45.j(str, Progress.TAG);
        y45.j(objArr, "contents");
        if (j1a.o0(str)) {
            str = "CloudDriveSdk";
        }
        f(i, str, h(objArr));
    }

    public final void f(int i, String str, String str2) {
        if (!j1a.o0(e)) {
            str = e;
        }
        int length = str2.length();
        int i2 = length / 1100;
        if (i2 <= 0) {
            g(i, str, str2);
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4 + 1100;
            String strSubstring = str2.substring(i4, i5);
            y45.i(strSubstring, "substring(...)");
            g(i, str, strSubstring);
            i3++;
            i4 = i5;
        }
        if (i4 != length) {
            String strSubstring2 = str2.substring(i4, length);
            y45.i(strSubstring2, "substring(...)");
            g(i, str, strSubstring2);
        }
    }

    public final void g(int i, String str, String str2) {
        if (i == 2) {
            c.a(str, j1a.i1(str2).toString());
            return;
        }
        if (i == 3) {
            c.debug(str, j1a.i1(str2).toString());
            return;
        }
        if (i == 4) {
            c.info(str, j1a.i1(str2).toString());
        } else if (i == 5) {
            c.b(str, j1a.i1(str2).toString());
        } else {
            if (i != 6) {
                return;
            }
            c.error(str, j1a.i1(str2).toString());
        }
    }

    public final String h(Object[] objArr) {
        if (objArr.length == 1) {
            return f.e(objArr[0]);
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(f.e(obj));
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final void i(rp5 rp5Var) {
        y45.j(rp5Var, "config");
        b = rp5Var.c();
        c = rp5Var.b();
        e = rp5Var.d();
        d = rp5Var.a();
    }

    public final void j(String str, Object... objArr) {
        y45.j(str, Progress.TAG);
        y45.j(objArr, "contents");
        if (d > 5) {
            return;
        }
        e(5, str, objArr);
    }
}

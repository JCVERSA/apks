package defpackage;

import com.lzy.okgo.cookie.SerializableCookie;

public final class yr4 {
    public static final yr4 a = new yr4();
    public static String[] b = new String[0];
    public static String[] c = new String[0];
    public static String[] d = new String[0];

    public static final boolean a(String str) {
        y45.j(str, SerializableCookie.HOST);
        return hi.P(d, str);
    }

    public static final boolean b(String str) {
        y45.j(str, SerializableCookie.HOST);
        return hi.P(b, str);
    }

    public static final boolean c(String str) {
        y45.j(str, SerializableCookie.HOST);
        return hi.P(c, str);
    }

    public static final boolean d() {
        return d.length == 0;
    }

    public final void e(String[] strArr) {
        y45.j(strArr, "hosts");
        d = strArr;
    }
}

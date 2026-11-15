package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public final class vib {
    public static final a b = new a(null);
    public final String a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(String str) {
            y45.j(str, "urlString");
            if (b(str)) {
                return vib.b(str);
            }
            throw new IllegalArgumentException("Invalid url " + str);
        }

        public final boolean b(String str) {
            try {
                new URL(str);
                return true;
            } catch (MalformedURLException unused) {
                return false;
            }
        }

        public a() {
        }
    }

    public vib(String str) {
        this.a = str;
    }

    public static final vib a(String str) {
        return new vib(str);
    }

    public static String b(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        return str;
    }

    public static boolean c(String str, Object obj) {
        return (obj instanceof vib) && y45.e(str, ((vib) obj).g());
    }

    public static final boolean d(String str, String str2) {
        return y45.e(str, str2);
    }

    public static int e(String str) {
        return str.hashCode();
    }

    public static String f(String str) {
        return str;
    }

    public boolean equals(Object obj) {
        return c(this.a, obj);
    }

    public final String g() {
        return this.a;
    }

    public int hashCode() {
        return e(this.a);
    }

    public String toString() {
        return f(this.a);
    }
}

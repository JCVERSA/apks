package e0;

public final class h {

    public static h f688d;

    public String f689a;

    public String f690b;

    public int f691c;

    public h() {
        a();
    }

    public static h d() {
        if (f688d == null) {
            f688d = new h();
        }
        return f688d;
    }

    public final synchronized void a() {
        this.f689a = null;
        this.f690b = null;
    }

    public final synchronized String b(String str, boolean z2) {
        String strReplace;
        if (str == null) {
            return "";
        }
        String str2 = this.f689a;
        if (str2 == null || !str2.endsWith(str) || (strReplace = this.f690b) == null) {
            return "";
        }
        if (z2) {
            strReplace = strReplace.replace("\\", "\\\\");
        }
        return strReplace;
    }

    public final synchronized String c(boolean z2) {
        String strReplace;
        if (this.f689a == null || (strReplace = this.f690b) == null) {
            return "";
        }
        if (z2) {
            strReplace = strReplace.replace("\\", "\\\\");
        }
        return strReplace;
    }

    public final synchronized boolean e(String str) {
        boolean z2 = false;
        if (str == null) {
            return false;
        }
        String str2 = this.f689a;
        if (str2 != null && str2.endsWith(str) && !v0.h.e(this.f690b)) {
            z2 = true;
        }
        return z2;
    }

    public final synchronized boolean f(String str) {
        if (str == null) {
            return false;
        }
        String str2 = this.f689a;
        if (str2 == null || !str2.endsWith(str)) {
            return false;
        }
        return 1 == this.f691c;
    }

    public final synchronized void g(String str, String str2) {
        this.f689a = str;
        this.f690b = str2;
        this.f691c = 1;
    }
}

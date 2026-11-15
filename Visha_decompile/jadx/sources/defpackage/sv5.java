package defpackage;

import com.transsion.videodownloader.model.Video;
import java.util.List;

public class sv5 {
    public String b;
    public String c;
    public pv5 j;
    public String k;
    public boolean l;
    public String m;
    public final List a = null;
    public int d = -1;
    public int e = -1;
    public int f = -1;
    public int g = -1;
    public int h = -1;
    public int i = -1;

    public static sv5 g(String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return null;
        }
        String strM = aw5.m(str2, rv5.j);
        String strM2 = aw5.m(str2, rv5.k);
        String strM3 = aw5.m(str2, rv5.l);
        String strM4 = aw5.m(str2, rv5.m);
        String strM5 = aw5.m(str2, rv5.n);
        String strM6 = aw5.m(str2, rv5.o);
        sv5 sv5Var = new sv5();
        if (strM != null) {
            sv5Var.h = Integer.parseInt(strM);
        } else {
            sv5Var.h = -1;
        }
        if (strM2 != null) {
            sv5Var.f = Integer.parseInt(strM2);
        } else {
            sv5Var.f = -1;
        }
        if (strM3 != null) {
            sv5Var.g = Integer.parseInt(strM3);
        } else {
            sv5Var.g = -1;
        }
        if (strM6 != null) {
            sv5Var.b = strM6.trim();
        }
        if (strM4 != null) {
            String[] strArrSplit = strM4.split("x");
            String str3 = strArrSplit[0];
            String str4 = strArrSplit[1];
            sv5Var.d = Integer.parseInt(str3);
            sv5Var.e = Integer.parseInt(str4);
        }
        if (strM5 != null) {
            sv5Var.i = Integer.parseInt(strM5);
        }
        return sv5Var;
    }

    public int a() {
        return this.g;
    }

    public int b() {
        return this.f;
    }

    public String c() {
        return this.k;
    }

    public String d() {
        return this.c;
    }

    public String e() {
        if (n()) {
            return ".mp3";
        }
        return m() ? ".aac" : Video.SUFFIX.SUFFIX_MP4;
    }

    public int f() {
        if (l()) {
            return 0;
        }
        return this.e;
    }

    public pv5 h() {
        return this.j;
    }

    public String i() {
        return this.m;
    }

    public String j() {
        String str = "";
        if (this.d != -1 && this.e != -1) {
            str = "" + i();
        }
        if (this.b != null) {
            str = str + "_" + this.b;
        }
        return str + e();
    }

    public int k() {
        if (l()) {
            return 0;
        }
        return this.d;
    }

    public boolean l() {
        return n() || m();
    }

    public final boolean m() {
        return r0a.b(this.b, "mp4a.40.5") || r0a.b(this.b, "mp4a.40.2");
    }

    public final boolean n() {
        return r0a.b(this.b, "mp4a.40.34");
    }

    public void o(boolean z) {
        this.l = z;
    }

    public void p(String str) {
        this.k = str;
    }

    public void q(String str) {
        this.c = str;
    }

    public void r(int i) {
        this.e = i;
    }

    public void s(pv5 pv5Var) {
        this.j = pv5Var;
    }

    public void t(String str) {
        this.m = str;
    }

    public String toString() {
        return j();
    }

    public void u(int i) {
        this.d = i;
    }
}

package defpackage;

import android.net.Uri;
import android.text.TextUtils;

public class zv5 implements Comparable {
    public float b;
    public int c;
    public int d;
    public String e;
    public String f;
    public long g;
    public boolean h;
    public boolean i;
    public String j;
    public String k;
    public String l;
    public boolean m;
    public long n;
    public int o;
    public boolean p;
    public String q;
    public String r;

    @Override
    public int compareTo(zv5 zv5Var) {
        return this.f.compareTo(zv5Var.f);
    }

    public long b() {
        return this.n;
    }

    public float d() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    public String e() {
        String strF;
        if (TextUtils.isEmpty(this.e)) {
            strF = "";
        } else {
            String lastPathSegment = Uri.parse(this.e).getLastPathSegment();
            if (TextUtils.isEmpty(lastPathSegment)) {
                strF = "";
            } else {
                strF = frb.f(lastPathSegment.toLowerCase());
            }
        }
        return "video_" + this.c + strF;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    public String f() {
        String strF;
        if (TextUtils.isEmpty(this.q)) {
            strF = "";
        } else {
            String lastPathSegment = Uri.parse(this.q).getLastPathSegment();
            if (TextUtils.isEmpty(lastPathSegment)) {
                strF = "";
            } else {
                strF = frb.f(lastPathSegment.toLowerCase());
            }
        }
        return "init_video_" + this.c + strF;
    }

    public String g() {
        return this.q;
    }

    public String h() {
        return this.l;
    }

    public String i() {
        return this.k;
    }

    public String j() {
        return "local_" + this.c + ".key";
    }

    public String k() {
        return this.j;
    }

    public int l() {
        return this.o;
    }

    public String m() {
        return this.r;
    }

    public String n() {
        return this.e;
    }

    public boolean o() {
        return this.h;
    }

    public boolean p() {
        return this.p;
    }

    public boolean q() {
        return this.i;
    }

    public void r(String str, float f, int i, int i2, boolean z) {
        this.e = str;
        this.f = str;
        this.b = f;
        this.c = i;
        this.d = i2;
        this.h = z;
        this.g = 0L;
    }

    public boolean s() {
        return this.m;
    }

    public void t(long j) {
        this.n = j;
    }

    public String toString() {
        return "duration=" + this.b + ", index=" + this.c + ", name=" + this.f;
    }

    public void u(String str, String str2) {
        this.p = true;
        this.q = str;
        this.r = str2;
    }

    public void v(boolean z) {
        this.m = z;
    }

    public void w(String str, String str2, String str3) {
        this.i = true;
        this.j = str;
        this.k = str2;
        this.l = str3;
    }

    public void x(String str) {
        this.f = str;
    }

    public void y(int i) {
        this.o = i;
    }

    public void z(long j) {
        this.g = j;
    }
}

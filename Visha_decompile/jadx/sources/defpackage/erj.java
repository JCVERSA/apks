package defpackage;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzs;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public final class erj {
    public static final int N = 0;
    public final byte[] A;
    public final int B;
    public final h6j C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public int M;
    public final String a;
    public final String b;
    public final List c;
    public final String d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final String k;
    public final hre l;
    public final Object m;
    public final String n;
    public final String o;
    public final int p;
    public final int q;
    public final List r;
    public final zzs s;
    public final long t;
    public final boolean u;
    public final int v;
    public final int w;
    public final float x;
    public final int y;
    public final float z;

    static {
        new erj(new gpj());
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
        Integer.toString(32, 36);
        Integer.toString(33, 36);
        Integer.toString(34, 36);
    }

    public final int a() {
        int i;
        int i2 = this.v;
        if (i2 == -1 || (i = this.w) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final gpj b() {
        return new gpj(this, null);
    }

    public final erj c(int i) {
        gpj gpjVar = new gpj(this, null);
        gpjVar.f(i);
        return new erj(gpjVar);
    }

    public final boolean d(erj erjVar) {
        List list = this.r;
        int size = list.size();
        List list2 = erjVar.r;
        if (size != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals((byte[]) list.get(i), (byte[]) list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && erj.class == obj.getClass()) {
            erj erjVar = (erj) obj;
            int i2 = this.M;
            if ((i2 == 0 || (i = erjVar.M) == 0 || i2 == i) && this.e == erjVar.e && this.f == erjVar.f && this.g == erjVar.g && this.h == erjVar.h && this.i == erjVar.i && this.p == erjVar.p && this.t == erjVar.t && this.v == erjVar.v && this.w == erjVar.w && this.y == erjVar.y && this.B == erjVar.B && this.D == erjVar.D && this.E == erjVar.E && this.F == erjVar.F && this.G == erjVar.G && this.H == erjVar.H && this.I == erjVar.I && this.J == erjVar.J && this.L == erjVar.L && Float.compare(this.x, erjVar.x) == 0 && Float.compare(this.z, erjVar.z) == 0 && Objects.equals(this.a, erjVar.a) && Objects.equals(this.b, erjVar.b) && this.c.equals(erjVar.c) && Objects.equals(this.k, erjVar.k) && Objects.equals(this.n, erjVar.n) && Objects.equals(this.o, erjVar.o) && Objects.equals(this.d, erjVar.d) && Arrays.equals(this.A, erjVar.A) && Objects.equals(this.l, erjVar.l) && Objects.equals(this.C, erjVar.C) && Objects.equals(this.s, erjVar.s) && d(erjVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.M;
        if (i != 0) {
            return i;
        }
        String str = this.a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.b;
        int iHashCode2 = ((((iHashCode + 527) * 31) + (str2 == null ? 0 : str2.hashCode())) * 31) + this.c.hashCode();
        String str3 = this.d;
        int iHashCode3 = ((((((((((((iHashCode2 * 31) + (str3 == null ? 0 : str3.hashCode())) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31) + this.i) * 31;
        String str4 = this.k;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        hre hreVar = this.l;
        int iHashCode5 = iHashCode4 + (hreVar == null ? 0 : hreVar.hashCode());
        String str5 = this.n;
        int iHashCode6 = ((iHashCode5 * 961) + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.o;
        int iHashCode7 = ((((((((((((((((((((((((((((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.p) * 31) + ((int) this.t)) * 31) + this.v) * 31) + this.w) * 31) + Float.floatToIntBits(this.x)) * 31) + this.y) * 31) + Float.floatToIntBits(this.z)) * 31) + this.B) * 31) + this.D) * 31) + this.E) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) - 1) * 31) - 1) * 31) + this.L;
        this.M = iHashCode7;
        return iHashCode7;
    }

    public final String toString() {
        return "Format(" + this.a + ", " + this.b + ", " + this.n + ", " + this.o + ", " + this.k + ", " + this.j + ", " + this.d + ", [" + this.v + ", " + this.w + ", " + this.x + ", " + String.valueOf(this.C) + "], [" + this.E + ", " + this.F + "])";
    }

    public erj(gpj gpjVar) {
        boolean z;
        String str;
        this.a = gpjVar.a;
        String strE = kfh.e(gpjVar.d);
        this.d = strE;
        if (gpjVar.c.isEmpty() && gpjVar.b != null) {
            this.c = zzfww.zzo(new w6e(strE, gpjVar.b));
            this.b = gpjVar.b;
        } else if (gpjVar.c.isEmpty() || gpjVar.b != null) {
            if (!gpjVar.c.isEmpty() || gpjVar.b != null) {
                int i = 0;
                while (true) {
                    if (i >= gpjVar.c.size()) {
                        z = false;
                        break;
                    } else {
                        if (((w6e) gpjVar.c.get(i)).b.equals(gpjVar.b)) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                }
            } else {
                z = true;
                break;
            }
            n7g.f(z);
            this.c = gpjVar.c;
            this.b = gpjVar.b;
        } else {
            this.c = gpjVar.c;
            List list = gpjVar.c;
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = ((w6e) list.get(0)).b;
                    break;
                }
                w6e w6eVar = (w6e) it.next();
                if (TextUtils.equals(w6eVar.a, strE)) {
                    str = w6eVar.b;
                    break;
                }
            }
            this.b = str;
        }
        this.e = gpjVar.e;
        n7g.g(gpjVar.g == 0 || (gpjVar.f & 32768) != 0, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set");
        this.f = gpjVar.f;
        this.g = gpjVar.g;
        int i2 = gpjVar.h;
        this.h = i2;
        int i3 = gpjVar.i;
        this.i = i3;
        this.j = i3 != -1 ? i3 : i2;
        this.k = gpjVar.j;
        this.l = gpjVar.k;
        this.m = null;
        this.n = gpjVar.l;
        this.o = gpjVar.m;
        this.p = gpjVar.n;
        this.q = gpjVar.o;
        this.r = gpjVar.p == null ? Collections.emptyList() : gpjVar.p;
        zzs zzsVar = gpjVar.q;
        this.s = zzsVar;
        this.t = gpjVar.r;
        this.u = gpjVar.s;
        this.v = gpjVar.t;
        this.w = gpjVar.u;
        this.x = gpjVar.v;
        this.y = gpjVar.w == -1 ? 0 : gpjVar.w;
        this.z = gpjVar.x == -1.0f ? 1.0f : gpjVar.x;
        this.A = gpjVar.y;
        this.B = gpjVar.z;
        this.C = gpjVar.A;
        this.D = gpjVar.B;
        this.E = gpjVar.C;
        this.F = gpjVar.D;
        this.G = gpjVar.E;
        this.H = gpjVar.F == -1 ? 0 : gpjVar.F;
        this.I = gpjVar.G != -1 ? gpjVar.G : 0;
        this.J = gpjVar.H;
        this.K = gpjVar.I;
        if (gpjVar.J != 0 || zzsVar == null) {
            this.L = gpjVar.J;
        } else {
            this.L = 1;
        }
    }
}

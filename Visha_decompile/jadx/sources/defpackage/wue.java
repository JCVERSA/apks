package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.l0;
import java.util.ArrayList;

public final class wue {
    public final int a;
    public final int b;
    public final int c;
    public final boolean d;
    public final l0 e;
    public final lve f;
    public int n;
    public final Object g = new Object();
    public final ArrayList h = new ArrayList();
    public final ArrayList i = new ArrayList();
    public final ArrayList j = new ArrayList();
    public int k = 0;
    public int l = 0;
    public int m = 0;
    public String o = "";
    public String p = "";
    public String q = "";

    public wue(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = z;
        this.e = new l0(i4);
        this.f = new lve(i5, i6, i7);
    }

    public static final String n(ArrayList arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            sb.append((String) arrayList.get(i2));
            sb.append(' ');
            i2++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String string = sb.toString();
        return string.length() < 100 ? string : string.substring(0, 100);
    }

    public final int a(int i, int i2) {
        return this.d ? this.b : (i * this.a) + (i2 * this.b);
    }

    public final int b() {
        return this.k;
    }

    public final String c() {
        return this.o;
    }

    public final String d() {
        return this.q;
    }

    public final void e() {
        synchronized (this.g) {
            this.m--;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wue)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((wue) obj).o;
        return str != null && str.equals(this.o);
    }

    public final void f() {
        synchronized (this.g) {
            this.m++;
        }
    }

    public final void g(int i) {
        this.l = i;
    }

    public final void h(String str, boolean z, float f, float f2, float f3, float f4) {
        m(str, z, f, f2, f3, f4);
    }

    public final int hashCode() {
        return this.o.hashCode();
    }

    public final void i(String str, boolean z, float f, float f2, float f3, float f4) {
        m(str, z, f, f2, f3, f4);
        synchronized (this.g) {
            try {
                if (this.m < 0) {
                    int i = zze.zza;
                    zzo.zze("ActivityContent: negative number of WebViews.");
                }
                j();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j() {
        synchronized (this.g) {
            try {
                int iA = a(this.k, this.l);
                if (iA > this.n) {
                    this.n = iA;
                    if (!zzv.zzp().j().zzK()) {
                        l0 l0Var = this.e;
                        this.o = l0Var.a(this.h);
                        this.p = l0Var.a(this.i);
                    }
                    if (!zzv.zzp().j().zzL()) {
                        this.q = this.f.a(this.i, this.j);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k() {
        synchronized (this.g) {
            try {
                int iA = a(this.k, this.l);
                if (iA > this.n) {
                    this.n = iA;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean l() {
        boolean z;
        synchronized (this.g) {
            z = this.m == 0;
        }
        return z;
    }

    public final void m(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null) {
            if (str.length() < this.c) {
                return;
            }
            synchronized (this.g) {
                try {
                    this.h.add(str);
                    this.k += str.length();
                    if (z) {
                        ArrayList arrayList = this.i;
                        arrayList.add(str);
                        this.j.add(new dve(f, f2, f3, f4, arrayList.size() - 1));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = this.h;
        return "ActivityContent fetchId: " + this.l + " score:" + this.n + " total_length:" + this.k + "\n text: " + n(arrayList, 100) + "\n viewableText" + n(this.i, 100) + "\n signture: " + this.o + "\n viewableSignture: " + this.p + "\n viewableSignatureForVertical: " + this.q;
    }
}

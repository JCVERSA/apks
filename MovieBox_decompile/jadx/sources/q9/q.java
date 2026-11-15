package q9;

import com.google.android.exoplayer2.util.d0;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class q {

    public c f69551a;

    public long f69552b;

    public long f69553c;

    public long f69554d;

    public int f69555e;

    public int f69556f;

    public boolean f69562l;

    public p f69564n;

    public boolean f69566p;

    public long f69567q;

    public boolean f69568r;

    public long[] f69557g = new long[0];

    public int[] f69558h = new int[0];

    public int[] f69559i = new int[0];

    public long[] f69560j = new long[0];

    public boolean[] f69561k = new boolean[0];

    public boolean[] f69563m = new boolean[0];

    public final d0 f69565o = new d0();

    public void a(d0 d0Var) {
        d0Var.j(this.f69565o.d(), 0, this.f69565o.f());
        this.f69565o.P(0);
        this.f69566p = false;
    }

    public void b(i9.m mVar) {
        mVar.readFully(this.f69565o.d(), 0, this.f69565o.f());
        this.f69565o.P(0);
        this.f69566p = false;
    }

    public long c(int i10) {
        return this.f69560j[i10];
    }

    public void d(int i10) {
        this.f69565o.L(i10);
        this.f69562l = true;
        this.f69566p = true;
    }

    public void e(int i10, int i11) {
        this.f69555e = i10;
        this.f69556f = i11;
        if (this.f69558h.length < i10) {
            this.f69557g = new long[i10];
            this.f69558h = new int[i10];
        }
        if (this.f69559i.length < i11) {
            int i12 = (i11 * Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) / 100;
            this.f69559i = new int[i12];
            this.f69560j = new long[i12];
            this.f69561k = new boolean[i12];
            this.f69563m = new boolean[i12];
        }
    }

    public void f() {
        this.f69555e = 0;
        this.f69567q = 0L;
        this.f69568r = false;
        this.f69562l = false;
        this.f69566p = false;
        this.f69564n = null;
    }

    public boolean g(int i10) {
        return this.f69562l && this.f69563m[i10];
    }
}

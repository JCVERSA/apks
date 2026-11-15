package e3;

import androidx.media3.common.util.j0;
import com.vungle.ads.internal.protos.Sdk$SDKError;

final class v {

    public c f59419a;

    public long f59420b;

    public long f59421c;

    public long f59422d;

    public int f59423e;

    public int f59424f;

    public boolean f59430l;

    public u f59432n;

    public boolean f59434p;

    public long f59435q;

    public boolean f59436r;

    public long[] f59425g = new long[0];

    public int[] f59426h = new int[0];

    public int[] f59427i = new int[0];

    public long[] f59428j = new long[0];

    public boolean[] f59429k = new boolean[0];

    public boolean[] f59431m = new boolean[0];

    public final j0 f59433o = new j0();

    public void a(j0 j0Var) {
        j0Var.l(this.f59433o.e(), 0, this.f59433o.g());
        this.f59433o.W(0);
        this.f59434p = false;
    }

    public void b(k2.s sVar) {
        sVar.readFully(this.f59433o.e(), 0, this.f59433o.g());
        this.f59433o.W(0);
        this.f59434p = false;
    }

    public long c(int i10) {
        return this.f59428j[i10];
    }

    public void d(int i10) {
        this.f59433o.S(i10);
        this.f59430l = true;
        this.f59434p = true;
    }

    public void e(int i10, int i11) {
        this.f59423e = i10;
        this.f59424f = i11;
        if (this.f59426h.length < i10) {
            this.f59425g = new long[i10];
            this.f59426h = new int[i10];
        }
        if (this.f59427i.length < i11) {
            int i12 = (i11 * Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) / 100;
            this.f59427i = new int[i12];
            this.f59428j = new long[i12];
            this.f59429k = new boolean[i12];
            this.f59431m = new boolean[i12];
        }
    }

    public void f() {
        this.f59423e = 0;
        this.f59435q = 0L;
        this.f59436r = false;
        this.f59430l = false;
        this.f59434p = false;
        this.f59432n = null;
    }

    public boolean g(int i10) {
        return this.f59430l && this.f59431m[i10];
    }
}

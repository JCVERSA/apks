package androidx.media3.exoplayer;

import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class t3 {

    private final b f12600a;

    private final a f12601b;

    private final androidx.media3.common.util.i f12602c;

    private final androidx.media3.common.e0 f12603d;

    private int f12604e;

    private Object f12605f;

    private Looper f12606g;

    private int f12607h;

    private long f12608i = C.TIME_UNSET;

    private boolean f12609j = true;

    private boolean f12610k;

    private boolean f12611l;

    private boolean f12612m;

    private boolean f12613n;

    public interface a {
        void c(t3 t3Var);
    }

    public interface b {
        void handleMessage(int i10, Object obj);
    }

    public t3(a aVar, b bVar, androidx.media3.common.e0 e0Var, int i10, androidx.media3.common.util.i iVar, Looper looper) {
        this.f12601b = aVar;
        this.f12600a = bVar;
        this.f12603d = e0Var;
        this.f12606g = looper;
        this.f12602c = iVar;
        this.f12607h = i10;
    }

    public boolean a() {
        return this.f12609j;
    }

    public Looper b() {
        return this.f12606g;
    }

    public int c() {
        return this.f12607h;
    }

    public Object d() {
        return this.f12605f;
    }

    public long e() {
        return this.f12608i;
    }

    public b f() {
        return this.f12600a;
    }

    public androidx.media3.common.e0 g() {
        return this.f12603d;
    }

    public int h() {
        return this.f12604e;
    }

    public synchronized boolean i() {
        return this.f12613n;
    }

    public synchronized void j(boolean z10) {
        this.f12611l = z10 | this.f12611l;
        this.f12612m = true;
        notifyAll();
    }

    public t3 k() {
        androidx.media3.common.util.a.g(!this.f12610k);
        if (this.f12608i == C.TIME_UNSET) {
            androidx.media3.common.util.a.a(this.f12609j);
        }
        this.f12610k = true;
        this.f12601b.c(this);
        return this;
    }

    public t3 l(Object obj) {
        androidx.media3.common.util.a.g(!this.f12610k);
        this.f12605f = obj;
        return this;
    }

    public t3 m(int i10) {
        androidx.media3.common.util.a.g(!this.f12610k);
        this.f12604e = i10;
        return this;
    }
}

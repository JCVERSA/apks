package da;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.z2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.List;

public final class p extends com.google.android.exoplayer2.h implements Handler.Callback {
    private int A;
    private long B;

    private final Handler f58986n;

    private final o f58987o;

    private final k f58988p;

    private final q1 f58989q;

    private boolean f58990r;

    private boolean f58991s;

    private boolean f58992t;

    private int f58993u;

    private p1 f58994v;

    private j f58995w;

    private m f58996x;

    private n f58997y;

    private n f58998z;

    public p(o oVar, Looper looper) {
        this(oVar, looper, k.f58971a);
    }

    private long A() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        com.google.android.exoplayer2.util.a.e(this.f58997y);
        if (this.A >= this.f58997y.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.f58997y.getEventTime(this.A);
    }

    private void B(SubtitleDecoderException subtitleDecoderException) {
        s.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f58994v, subtitleDecoderException);
        z();
        G();
    }

    private void C() {
        this.f58992t = true;
        this.f58995w = this.f58988p.b((p1) com.google.android.exoplayer2.util.a.e(this.f58994v));
    }

    private void D(List list) {
        this.f58987o.onCues(list);
        this.f58987o.onCues(new f(list));
    }

    private void E() {
        this.f58996x = null;
        this.A = -1;
        n nVar = this.f58997y;
        if (nVar != null) {
            nVar.l();
            this.f58997y = null;
        }
        n nVar2 = this.f58998z;
        if (nVar2 != null) {
            nVar2.l();
            this.f58998z = null;
        }
    }

    private void F() {
        E();
        ((j) com.google.android.exoplayer2.util.a.e(this.f58995w)).release();
        this.f58995w = null;
        this.f58993u = 0;
    }

    private void G() {
        F();
        C();
    }

    private void I(List list) {
        Handler handler = this.f58986n;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            D(list);
        }
    }

    private void z() {
        I(Collections.emptyList());
    }

    public void H(long j10) {
        com.google.android.exoplayer2.util.a.g(isCurrentStreamFinal());
        this.B = j10;
    }

    @Override
    public int a(p1 p1Var) {
        if (this.f58988p.a(p1Var)) {
            return z2.a(p1Var.E == 0 ? 4 : 2);
        }
        return w.r(p1Var.f24901l) ? z2.a(1) : z2.a(0);
    }

    @Override
    public String getName() {
        return "TextRenderer";
    }

    @Override
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        D((List) message.obj);
        return true;
    }

    @Override
    public boolean isEnded() {
        return this.f58991s;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    protected void p() {
        this.f58994v = null;
        this.B = C.TIME_UNSET;
        z();
        F();
    }

    @Override
    protected void r(long j10, boolean z10) {
        z();
        this.f58990r = false;
        this.f58991s = false;
        this.B = C.TIME_UNSET;
        if (this.f58993u != 0) {
            G();
        } else {
            E();
            ((j) com.google.android.exoplayer2.util.a.e(this.f58995w)).flush();
        }
    }

    @Override
    public void render(long j10, long j11) {
        boolean z10;
        if (isCurrentStreamFinal()) {
            long j12 = this.B;
            if (j12 != C.TIME_UNSET && j10 >= j12) {
                E();
                this.f58991s = true;
            }
        }
        if (this.f58991s) {
            return;
        }
        if (this.f58998z == null) {
            ((j) com.google.android.exoplayer2.util.a.e(this.f58995w)).setPositionUs(j10);
            try {
                this.f58998z = (n) ((j) com.google.android.exoplayer2.util.a.e(this.f58995w)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e10) {
                B(e10);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f58997y != null) {
            long jA = A();
            z10 = false;
            while (jA <= j10) {
                this.A++;
                jA = A();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        n nVar = this.f58998z;
        if (nVar != null) {
            if (nVar.h()) {
                if (!z10 && A() == Long.MAX_VALUE) {
                    if (this.f58993u == 2) {
                        G();
                    } else {
                        E();
                        this.f58991s = true;
                    }
                }
            } else if (nVar.f24246b <= j10) {
                n nVar2 = this.f58997y;
                if (nVar2 != null) {
                    nVar2.l();
                }
                this.A = nVar.getNextEventTimeIndex(j10);
                this.f58997y = nVar;
                this.f58998z = null;
                z10 = true;
            }
        }
        if (z10) {
            com.google.android.exoplayer2.util.a.e(this.f58997y);
            I(this.f58997y.getCues(j10));
        }
        if (this.f58993u == 2) {
            return;
        }
        while (!this.f58990r) {
            try {
                m mVar = this.f58996x;
                if (mVar == null) {
                    mVar = (m) ((j) com.google.android.exoplayer2.util.a.e(this.f58995w)).dequeueInputBuffer();
                    if (mVar == null) {
                        return;
                    } else {
                        this.f58996x = mVar;
                    }
                }
                if (this.f58993u == 1) {
                    mVar.k(4);
                    ((j) com.google.android.exoplayer2.util.a.e(this.f58995w)).queueInputBuffer(mVar);
                    this.f58996x = null;
                    this.f58993u = 2;
                    return;
                }
                int iW = w(this.f58989q, mVar, 0);
                if (iW == -4) {
                    if (mVar.h()) {
                        this.f58990r = true;
                        this.f58992t = false;
                    } else {
                        p1 p1Var = this.f58989q.f24962b;
                        if (p1Var == null) {
                            return;
                        }
                        mVar.f58983i = p1Var.f24905p;
                        mVar.n();
                        this.f58992t &= !mVar.j();
                    }
                    if (!this.f58992t) {
                        ((j) com.google.android.exoplayer2.util.a.e(this.f58995w)).queueInputBuffer(mVar);
                        this.f58996x = null;
                    }
                } else if (iW == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e11) {
                B(e11);
                return;
            }
        }
    }

    @Override
    protected void v(p1[] p1VarArr, long j10, long j11) {
        this.f58994v = p1VarArr[0];
        if (this.f58995w != null) {
            this.f58993u = 1;
        } else {
            C();
        }
    }

    public p(o oVar, Looper looper, k kVar) {
        super(3);
        this.f58987o = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.f58986n = looper == null ? null : p0.v(looper, this);
        this.f58988p = kVar;
        this.f58989q = new q1();
        this.B = C.TIME_UNSET;
    }
}

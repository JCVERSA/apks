package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.Collections;
import java.util.List;

public final class lha extends d implements Handler.Callback {
    public k5a A;
    public int B;
    public long C;
    public final Handler o;
    public final kha p;
    public final p2a q;
    public final o44 r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public k w;
    public o2a x;
    public y4a y;
    public k5a z;

    public lha(kha khaVar, Looper looper) {
        this(khaVar, looper, p2a.a);
    }

    public final void A() {
        this.u = true;
        this.x = this.q.b((k) zi.e(this.w));
    }

    public final void B(List list) {
        this.p.onCues(list);
        this.p.onCues(new qm1(list));
    }

    public final void C() {
        this.y = null;
        this.B = -1;
        k5a k5aVar = this.z;
        if (k5aVar != null) {
            k5aVar.l();
            this.z = null;
        }
        k5a k5aVar2 = this.A;
        if (k5aVar2 != null) {
            k5aVar2.l();
            this.A = null;
        }
    }

    public final void D() {
        C();
        ((o2a) zi.e(this.x)).release();
        this.x = null;
        this.v = 0;
    }

    public final void E() {
        D();
        A();
    }

    public void F(long j) {
        zi.g(isCurrentStreamFinal());
        this.C = j;
    }

    public final void G(List list) {
        Handler handler = this.o;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            B(list);
        }
    }

    @Override
    public int a(k kVar) {
        if (this.q.a(kVar)) {
            return ks8.create(kVar.F == 0 ? 4 : 2);
        }
        return qp6.j(kVar.m) ? ks8.create(1) : ks8.create(0);
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
        B((List) message.obj);
        return true;
    }

    @Override
    public boolean isEnded() {
        return this.t;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public void n() {
        this.w = null;
        this.C = C.TIME_UNSET;
        x();
        D();
    }

    @Override
    public void p(long j, boolean z) {
        x();
        this.s = false;
        this.t = false;
        this.C = C.TIME_UNSET;
        if (this.v != 0) {
            E();
        } else {
            C();
            ((o2a) zi.e(this.x)).flush();
        }
    }

    @Override
    public void render(long j, long j2) {
        boolean z;
        if (isCurrentStreamFinal()) {
            long j3 = this.C;
            if (j3 != C.TIME_UNSET && j >= j3) {
                C();
                this.t = true;
            }
        }
        if (this.t) {
            return;
        }
        if (this.A == null) {
            ((o2a) zi.e(this.x)).setPositionUs(j);
            try {
                this.A = (k5a) ((o2a) zi.e(this.x)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e) {
                z(e);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.z != null) {
            long jY = y();
            z = false;
            while (jY <= j) {
                this.B++;
                jY = y();
                z = true;
            }
        } else {
            z = false;
        }
        k5a k5aVar = this.A;
        if (k5aVar != null) {
            if (k5aVar.h()) {
                if (!z && y() == Long.MAX_VALUE) {
                    if (this.v == 2) {
                        E();
                    } else {
                        C();
                        this.t = true;
                    }
                }
            } else if (k5aVar.c <= j) {
                k5a k5aVar2 = this.z;
                if (k5aVar2 != null) {
                    k5aVar2.l();
                }
                this.B = k5aVar.getNextEventTimeIndex(j);
                this.z = k5aVar;
                this.A = null;
                z = true;
            }
        }
        if (z) {
            zi.e(this.z);
            G(this.z.getCues(j));
        }
        if (this.v == 2) {
            return;
        }
        while (!this.s) {
            try {
                y4a y4aVar = this.y;
                if (y4aVar == null) {
                    y4aVar = (y4a) ((o2a) zi.e(this.x)).dequeueInputBuffer();
                    if (y4aVar == null) {
                        return;
                    } else {
                        this.y = y4aVar;
                    }
                }
                if (this.v == 1) {
                    y4aVar.k(4);
                    ((o2a) zi.e(this.x)).queueInputBuffer(y4aVar);
                    this.y = null;
                    this.v = 2;
                    return;
                }
                int iU = u(this.r, y4aVar, 0);
                if (iU == -4) {
                    if (y4aVar.h()) {
                        this.s = true;
                        this.u = false;
                    } else {
                        k kVar = this.r.b;
                        if (kVar == null) {
                            return;
                        }
                        y4aVar.j = kVar.q;
                        y4aVar.n();
                        this.u &= !y4aVar.j();
                    }
                    if (!this.u) {
                        ((o2a) zi.e(this.x)).queueInputBuffer(y4aVar);
                        this.y = null;
                    }
                } else if (iU == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e2) {
                z(e2);
                return;
            }
        }
    }

    @Override
    public void t(k[] kVarArr, long j, long j2) {
        this.w = kVarArr[0];
        if (this.x != null) {
            this.v = 1;
        } else {
            A();
        }
    }

    public final void x() {
        G(Collections.emptyList());
    }

    public final long y() {
        if (this.B == -1) {
            return Long.MAX_VALUE;
        }
        zi.e(this.z);
        if (this.B >= this.z.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.z.getEventTime(this.B);
    }

    public final void z(SubtitleDecoderException subtitleDecoderException) {
        op5.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.w, subtitleDecoderException);
        x();
        E();
    }

    public lha(kha khaVar, Looper looper, p2a p2aVar) {
        super(3);
        this.p = (kha) zi.e(khaVar);
        this.o = looper == null ? null : blb.t(looper, this);
        this.q = p2aVar;
        this.r = new o44();
        this.C = C.TIME_UNSET;
    }
}

package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.DefaultLoadControl;
import java.util.HashMap;
import java.util.Iterator;

public final class f2j implements t7j {
    public final nrj a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final HashMap g;
    public long h;

    public f2j() {
        nrj nrjVar = new nrj(true, 65536);
        k(1000, 0, "bufferForPlaybackMs", "0");
        k(2000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        k(50000, 1000, "minBufferMs", "bufferForPlaybackMs");
        k(50000, 2000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        k(50000, 50000, "maxBufferMs", "minBufferMs");
        k(0, 0, "backBufferDurationMs", "0");
        this.a = nrjVar;
        this.b = kfh.N(50000L);
        this.c = kfh.N(50000L);
        this.d = kfh.N(1000L);
        this.e = kfh.N(2000L);
        this.f = kfh.N(0L);
        this.g = new HashMap();
        this.h = -1L;
    }

    public static void k(int i, int i2, String str, String str2) {
        n7g.e(i >= i2, str + " cannot be less than " + str2);
    }

    @Override
    public final void a(tfj tfjVar) {
        l(tfjVar);
    }

    @Override
    public final void b(tfj tfjVar) {
        long id = Thread.currentThread().getId();
        long j = this.h;
        boolean z = true;
        if (j != -1 && j != id) {
            z = false;
        }
        n7g.g(z, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.h = id;
        HashMap map = this.g;
        if (!map.containsKey(tfjVar)) {
            map.put(tfjVar, new z1j(null));
        }
        z1j z1jVar = (z1j) map.get(tfjVar);
        z1jVar.getClass();
        z1jVar.b = 13107200;
        z1jVar.a = false;
    }

    @Override
    public final void c(tfj tfjVar) {
        l(tfjVar);
        if (this.g.isEmpty()) {
            this.h = -1L;
        }
    }

    @Override
    public final long d(tfj tfjVar) {
        return this.f;
    }

    @Override
    public final boolean e(w4f w4fVar, bnj bnjVar, long j) {
        Iterator it = this.g.values().iterator();
        while (it.hasNext()) {
            if (((z1j) it.next()).a) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean f(r7j r7jVar) {
        boolean z = r7jVar.d;
        long jM = kfh.M(r7jVar.b, r7jVar.c);
        long jMin = z ? this.e : this.d;
        long j = r7jVar.e;
        if (j != C.TIME_UNSET) {
            jMin = Math.min(j / 2, jMin);
        }
        return jMin <= 0 || jM >= jMin || this.a.a() >= j();
    }

    @Override
    public final boolean g(r7j r7jVar) {
        z1j z1jVar = (z1j) this.g.get(r7jVar.a);
        z1jVar.getClass();
        int iA = this.a.a();
        int iJ = j();
        long jMin = this.b;
        float f = r7jVar.c;
        if (f > 1.0f) {
            jMin = Math.min(kfh.L(jMin, f), this.c);
        }
        long j = r7jVar.b;
        if (j < Math.max(jMin, 500000L)) {
            boolean z = iA < iJ;
            z1jVar.a = z;
            if (!z && j < 500000) {
                zrg.f("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j >= this.c || iA >= iJ) {
            z1jVar.a = false;
        }
        return z1jVar.a;
    }

    @Override
    public final void h(r7j r7jVar, npj npjVar, tqj[] tqjVarArr) {
        z1j z1jVar = (z1j) this.g.get(r7jVar.a);
        z1jVar.getClass();
        int length = tqjVarArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = 13107200;
            if (i >= length) {
                z1jVar.b = Math.max(13107200, i2);
                m();
                return;
            }
            tqj tqjVar = tqjVarArr[i];
            if (tqjVar != null) {
                switch (tqjVar.zzg().c) {
                    case -1:
                    case 1:
                        break;
                    case 0:
                        i3 = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
                        break;
                    case 2:
                        i3 = DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
                        break;
                    case 3:
                    case 4:
                    case 5:
                    default:
                        i3 = 131072;
                        break;
                }
                i2 += i3;
            }
            i++;
        }
    }

    @Override
    public final boolean i(tfj tfjVar) {
        return false;
    }

    public final int j() {
        Iterator it = this.g.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((z1j) it.next()).b;
        }
        return i;
    }

    public final void l(tfj tfjVar) {
        if (this.g.remove(tfjVar) != null) {
            m();
        }
    }

    public final void m() {
        if (this.g.isEmpty()) {
            this.a.e();
        } else {
            this.a.f(j());
        }
    }

    @Override
    public final nrj zzk() {
        return this.a;
    }
}

package androidx.media3.exoplayer;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.util.HashMap;
import java.util.Iterator;

public class m implements u2 {

    private final androidx.media3.exoplayer.upstream.h f11792a;

    private final long f11793b;

    private final long f11794c;

    private final long f11795d;

    private final long f11796e;

    private final int f11797f;

    private final boolean f11798g;

    private final long f11799h;

    private final boolean f11800i;

    private final HashMap f11801j;

    private long f11802k;

    public static final class b {

        private androidx.media3.exoplayer.upstream.h f11803a;

        private int f11804b = DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;

        private int f11805c = DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;

        private int f11806d = 1000;

        private int f11807e = 2000;

        private int f11808f = -1;

        private boolean f11809g = false;

        private int f11810h = 0;

        private boolean f11811i = false;

        private boolean f11812j;

        public m a() {
            androidx.media3.common.util.a.g(!this.f11812j);
            this.f11812j = true;
            if (this.f11803a == null) {
                this.f11803a = new androidx.media3.exoplayer.upstream.h(true, 65536);
            }
            return new m(this.f11803a, this.f11804b, this.f11805c, this.f11806d, this.f11807e, this.f11808f, this.f11809g, this.f11810h, this.f11811i);
        }

        public b b(int i10, int i11, int i12, int i13) {
            androidx.media3.common.util.a.g(!this.f11812j);
            m.k(i12, 0, "bufferForPlaybackMs", "0");
            m.k(i13, 0, "bufferForPlaybackAfterRebufferMs", "0");
            m.k(i10, i12, "minBufferMs", "bufferForPlaybackMs");
            m.k(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            m.k(i11, i10, "maxBufferMs", "minBufferMs");
            this.f11804b = i10;
            this.f11805c = i11;
            this.f11806d = i12;
            this.f11807e = i13;
            return this;
        }

        public b c(boolean z10) {
            androidx.media3.common.util.a.g(!this.f11812j);
            this.f11809g = z10;
            return this;
        }

        public b d(int i10) {
            androidx.media3.common.util.a.g(!this.f11812j);
            this.f11808f = i10;
            return this;
        }
    }

    private static class c {

        public boolean f11813a;

        public int f11814b;

        private c() {
        }
    }

    public m() {
        this(new androidx.media3.exoplayer.upstream.h(true, 65536), DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, 1000, 2000, -1, false, 0, false);
    }

    public static void k(int i10, int i11, String str, String str2) {
        androidx.media3.common.util.a.b(i10 >= i11, str + " cannot be less than " + str2);
    }

    private static int n(int i10) {
        switch (i10) {
            case -2:
                return 0;
            case -1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 0:
                return 144310272;
            case 1:
                return C.DEFAULT_VIDEO_BUFFER_SIZE;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
            default:
                throw new IllegalArgumentException();
        }
    }

    private void o(x1.f4 f4Var) {
        if (this.f11801j.remove(f4Var) != null) {
            q();
        }
    }

    private void p(x1.f4 f4Var) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f11801j.get(f4Var));
        int i10 = this.f11797f;
        if (i10 == -1) {
            i10 = C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        cVar.f11814b = i10;
        cVar.f11813a = false;
    }

    private void q() {
        if (this.f11801j.isEmpty()) {
            this.f11792a.d();
        } else {
            this.f11792a.e(m());
        }
    }

    @Override
    public boolean a(u2.a aVar) {
        long jL0 = androidx.media3.common.util.a1.l0(aVar.f12620e, aVar.f12621f);
        long jMin = aVar.f12623h ? this.f11796e : this.f11795d;
        long j10 = aVar.f12624i;
        if (j10 != C.TIME_UNSET) {
            jMin = Math.min(j10 / 2, jMin);
        }
        return jMin <= 0 || jL0 >= jMin || (!this.f11798g && this.f11792a.c() >= m());
    }

    @Override
    public void b(x1.f4 f4Var) {
        o(f4Var);
    }

    @Override
    public void c(u2.a aVar, f2.z zVar, i2.z[] zVarArr) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f11801j.get(aVar.f12616a));
        int iL = this.f11797f;
        if (iL == -1) {
            iL = l(zVarArr);
        }
        cVar.f11814b = iL;
        q();
    }

    @Override
    public void d(x1.f4 f4Var) {
        o(f4Var);
        if (this.f11801j.isEmpty()) {
            this.f11802k = -1L;
        }
    }

    @Override
    public boolean e(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar, long j10) {
        Iterator it = this.f11801j.values().iterator();
        while (it.hasNext()) {
            if (((c) it.next()).f11813a) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void f(x1.f4 f4Var) {
        long id2 = Thread.currentThread().getId();
        long j10 = this.f11802k;
        androidx.media3.common.util.a.h(j10 == -1 || j10 == id2, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.f11802k = id2;
        if (!this.f11801j.containsKey(f4Var)) {
            this.f11801j.put(f4Var, new c());
        }
        p(f4Var);
    }

    @Override
    public boolean g(u2.a aVar) {
        c cVar = (c) androidx.media3.common.util.a.e((c) this.f11801j.get(aVar.f12616a));
        boolean z10 = true;
        boolean z11 = this.f11792a.c() >= m();
        long jMin = this.f11793b;
        float f10 = aVar.f12621f;
        if (f10 > 1.0f) {
            jMin = Math.min(androidx.media3.common.util.a1.g0(jMin, f10), this.f11794c);
        }
        long jMax = Math.max(jMin, 500000L);
        long j10 = aVar.f12620e;
        if (j10 < jMax) {
            if (!this.f11798g && z11) {
                z10 = false;
            }
            cVar.f11813a = z10;
            if (!z10 && j10 < 500000) {
                androidx.media3.common.util.u.h("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j10 >= this.f11794c || z11) {
            cVar.f11813a = false;
        }
        return cVar.f11813a;
    }

    @Override
    public androidx.media3.exoplayer.upstream.b getAllocator() {
        return this.f11792a;
    }

    @Override
    public boolean h(x1.f4 f4Var) {
        return this.f11800i;
    }

    @Override
    public long i(x1.f4 f4Var) {
        return this.f11799h;
    }

    protected int l(i2.z[] zVarArr) {
        int iN = 0;
        for (i2.z zVar : zVarArr) {
            if (zVar != null) {
                iN += n(zVar.getTrackGroup().f9661c);
            }
        }
        return Math.max(C.DEFAULT_VIDEO_BUFFER_SIZE, iN);
    }

    int m() {
        Iterator it = this.f11801j.values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += ((c) it.next()).f11814b;
        }
        return i10;
    }

    protected m(androidx.media3.exoplayer.upstream.h hVar, int i10, int i11, int i12, int i13, int i14, boolean z10, int i15, boolean z11) {
        k(i12, 0, "bufferForPlaybackMs", "0");
        k(i13, 0, "bufferForPlaybackAfterRebufferMs", "0");
        k(i10, i12, "minBufferMs", "bufferForPlaybackMs");
        k(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        k(i11, i10, "maxBufferMs", "minBufferMs");
        k(i15, 0, "backBufferDurationMs", "0");
        this.f11792a = hVar;
        this.f11793b = androidx.media3.common.util.a1.R0(i10);
        this.f11794c = androidx.media3.common.util.a1.R0(i11);
        this.f11795d = androidx.media3.common.util.a1.R0(i12);
        this.f11796e = androidx.media3.common.util.a1.R0(i13);
        this.f11797f = i14;
        this.f11798g = z10;
        this.f11799h = androidx.media3.common.util.a1.R0(i15);
        this.f11800i = z11;
        this.f11801j = new HashMap();
        this.f11802k = -1L;
    }
}

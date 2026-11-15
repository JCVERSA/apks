package defpackage;

import androidx.media3.common.C;
import androidx.media3.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer2.w;

public class g22 implements gn5 {
    public final tu1 a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final int f;
    public final boolean g;
    public final long h;
    public final boolean i;
    public int j;
    public boolean k;

    public g22() {
        this(new tu1(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    public static void b(int i, int i2, String str, String str2) {
        zi.b(i >= i2, str + " cannot be less than " + str2);
    }

    public static int d(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
            case 1:
                return 13107200;
            case 2:
                return DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    @Override
    public void a(w[] wVarArr, eva evaVar, qi3[] qi3VarArr) {
        int iC = this.f;
        if (iC == -1) {
            iC = c(wVarArr, qi3VarArr);
        }
        this.j = iC;
        this.a.e(iC);
    }

    public int c(w[] wVarArr, qi3[] qi3VarArr) {
        int iD = 0;
        for (int i = 0; i < wVarArr.length; i++) {
            if (qi3VarArr[i] != null) {
                iD += d(wVarArr[i].getTrackType());
            }
        }
        return Math.max(13107200, iD);
    }

    public final void e(boolean z) {
        int i = this.f;
        if (i == -1) {
            i = 13107200;
        }
        this.j = i;
        this.k = false;
        if (z) {
            this.a.d();
        }
    }

    @Override
    public cb getAllocator() {
        return this.a;
    }

    @Override
    public long getBackBufferDurationUs() {
        return this.h;
    }

    @Override
    public void onPrepared() {
        e(false);
    }

    @Override
    public void onReleased() {
        e(true);
    }

    @Override
    public void onStopped() {
        e(true);
    }

    @Override
    public boolean retainBackBufferFromKeyframe() {
        return this.i;
    }

    @Override
    public boolean shouldContinueLoading(long j, long j2, float f) {
        boolean z = true;
        boolean z2 = this.a.c() >= this.j;
        long jMin = this.b;
        if (f > 1.0f) {
            jMin = Math.min(blb.T(jMin, f), this.c);
        }
        if (j2 < Math.max(jMin, 500000L)) {
            if (!this.g && z2) {
                z = false;
            }
            this.k = z;
            if (!z && j2 < 500000) {
                op5.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.c || z2) {
            this.k = false;
        }
        return this.k;
    }

    @Override
    public boolean shouldStartPlayback(long j, float f, boolean z, long j2) {
        long jY = blb.Y(j, f);
        long jMin = z ? this.e : this.d;
        if (j2 != C.TIME_UNSET) {
            jMin = Math.min(j2 / 2, jMin);
        }
        return jMin <= 0 || jY >= jMin || (!this.g && this.a.c() >= this.j);
    }

    public g22(tu1 tu1Var, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        b(i3, 0, "bufferForPlaybackMs", "0");
        b(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        b(i, i3, "minBufferMs", "bufferForPlaybackMs");
        b(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        b(i2, i, "maxBufferMs", "minBufferMs");
        b(i6, 0, "backBufferDurationMs", "0");
        this.a = tu1Var;
        this.b = blb.t0(i);
        this.c = blb.t0(i2);
        this.d = blb.t0(i3);
        this.e = blb.t0(i4);
        this.f = i5;
        this.j = i5 == -1 ? 13107200 : i5;
        this.g = z;
        this.h = blb.t0(i6);
        this.i = z2;
    }
}

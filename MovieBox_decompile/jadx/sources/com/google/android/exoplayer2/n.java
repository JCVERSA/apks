package com.google.android.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

public class n implements u1 {

    private final com.google.android.exoplayer2.upstream.o f24821a;

    private final long f24822b;

    private final long f24823c;

    private final long f24824d;

    private final long f24825e;

    private final int f24826f;

    private final boolean f24827g;

    private final long f24828h;

    private final boolean f24829i;

    private int f24830j;

    private boolean f24831k;

    public n() {
        this(new com.google.android.exoplayer2.upstream.o(true, 65536), DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, DefaultLoadControl.DEFAULT_MAX_BUFFER_MS, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 5000, -1, false, 0, false);
    }

    private static void d(int i10, int i11, String str, String str2) {
        com.google.android.exoplayer2.util.a.b(i10 >= i11, str + " cannot be less than " + str2);
    }

    private static int f(int i10) {
        switch (i10) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
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
        }
    }

    private void g(boolean z10) {
        int i10 = this.f24826f;
        if (i10 == -1) {
            i10 = C.DEFAULT_VIDEO_BUFFER_SIZE;
        }
        this.f24830j = i10;
        this.f24831k = false;
        if (z10) {
            this.f24821a.d();
        }
    }

    @Override
    public void a(y2[] y2VarArr, v9.y yVar, na.s[] sVarArr) {
        int iE = this.f24826f;
        if (iE == -1) {
            iE = e(y2VarArr, sVarArr);
        }
        this.f24830j = iE;
        this.f24821a.e(iE);
    }

    @Override
    public boolean b(long j10, float f10, boolean z10, long j11) {
        long jF0 = com.google.android.exoplayer2.util.p0.f0(j10, f10);
        long jMin = z10 ? this.f24825e : this.f24824d;
        if (j11 != C.TIME_UNSET) {
            jMin = Math.min(j11 / 2, jMin);
        }
        return jMin <= 0 || jF0 >= jMin || (!this.f24827g && this.f24821a.c() >= this.f24830j);
    }

    @Override
    public boolean c(long j10, long j11, float f10) {
        boolean z10 = true;
        boolean z11 = this.f24821a.c() >= this.f24830j;
        long jMin = this.f24822b;
        if (f10 > 1.0f) {
            jMin = Math.min(com.google.android.exoplayer2.util.p0.a0(jMin, f10), this.f24823c);
        }
        if (j11 < Math.max(jMin, 500000L)) {
            if (!this.f24827g && z11) {
                z10 = false;
            }
            this.f24831k = z10;
            if (!z10 && j11 < 500000) {
                com.google.android.exoplayer2.util.s.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.f24823c || z11) {
            this.f24831k = false;
        }
        return this.f24831k;
    }

    protected int e(y2[] y2VarArr, na.s[] sVarArr) {
        int iF = 0;
        for (int i10 = 0; i10 < y2VarArr.length; i10++) {
            if (sVarArr[i10] != null) {
                iF += f(y2VarArr[i10].getTrackType());
            }
        }
        return Math.max(C.DEFAULT_VIDEO_BUFFER_SIZE, iF);
    }

    @Override
    public com.google.android.exoplayer2.upstream.b getAllocator() {
        return this.f24821a;
    }

    @Override
    public long getBackBufferDurationUs() {
        return this.f24828h;
    }

    @Override
    public void onPrepared() {
        g(false);
    }

    @Override
    public void onReleased() {
        g(true);
    }

    @Override
    public void onStopped() {
        g(true);
    }

    @Override
    public boolean retainBackBufferFromKeyframe() {
        return this.f24829i;
    }

    protected n(com.google.android.exoplayer2.upstream.o oVar, int i10, int i11, int i12, int i13, int i14, boolean z10, int i15, boolean z11) {
        d(i12, 0, "bufferForPlaybackMs", "0");
        d(i13, 0, "bufferForPlaybackAfterRebufferMs", "0");
        d(i10, i12, "minBufferMs", "bufferForPlaybackMs");
        d(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        d(i11, i10, "maxBufferMs", "minBufferMs");
        d(i15, 0, "backBufferDurationMs", "0");
        this.f24821a = oVar;
        this.f24822b = com.google.android.exoplayer2.util.p0.B0(i10);
        this.f24823c = com.google.android.exoplayer2.util.p0.B0(i11);
        this.f24824d = com.google.android.exoplayer2.util.p0.B0(i12);
        this.f24825e = com.google.android.exoplayer2.util.p0.B0(i13);
        this.f24826f = i14;
        this.f24830j = i14 == -1 ? C.DEFAULT_VIDEO_BUFFER_SIZE : i14;
        this.f24827g = z10;
        this.f24828h = com.google.android.exoplayer2.util.p0.B0(i15);
        this.f24829i = z11;
    }
}

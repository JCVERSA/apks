package com.mbridge.msdk.tracker.network;

import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

public class e implements x {

    private int f37734a;

    private long f37735b;

    private int f37736c;

    private final int f37737d;

    public e() {
        this(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 1);
    }

    @Override
    public long a() {
        return this.f37735b;
    }

    @Override
    public int b() {
        return this.f37734a;
    }

    @Override
    public int c() {
        return this.f37736c;
    }

    public e(int i10, int i11) {
        this(i10, 60000L, i11);
    }

    @Override
    public boolean a(b0 b0Var) {
        int i10 = this.f37736c + 1;
        this.f37736c = i10;
        return i10 <= this.f37737d;
    }

    public e(int i10, long j10, int i11) {
        this.f37735b = j10;
        this.f37734a = i10;
        this.f37737d = i11;
    }
}

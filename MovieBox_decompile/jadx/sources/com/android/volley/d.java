package com.android.volley;

import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

public class d implements k {

    private int f18611a;

    private int f18612b;

    private final int f18613c;

    private final float f18614d;

    public d() {
        this(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS, 1, 1.0f);
    }

    @Override
    public int a() {
        return this.f18612b;
    }

    @Override
    public void b(VolleyError volleyError) throws VolleyError {
        this.f18612b++;
        int i10 = this.f18611a;
        this.f18611a = i10 + ((int) (i10 * this.f18614d));
        if (!d()) {
            throw volleyError;
        }
    }

    @Override
    public int c() {
        return this.f18611a;
    }

    protected boolean d() {
        return this.f18612b <= this.f18613c;
    }

    public d(int i10, int i11, float f10) {
        this.f18611a = i10;
        this.f18613c = i11;
        this.f18614d = f10;
    }
}

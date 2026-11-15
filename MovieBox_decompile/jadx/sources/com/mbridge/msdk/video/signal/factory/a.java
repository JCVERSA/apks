package com.mbridge.msdk.video.signal.factory;

import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.video.signal.impl.e;
import com.mbridge.msdk.video.signal.impl.h;
import com.mbridge.msdk.video.signal.j;

public class a implements IJSFactory {

    protected com.mbridge.msdk.video.signal.b f38964a;

    protected d f38965b;

    protected j f38966c;

    protected g f38967d;

    protected f f38968e;

    protected i f38969f;

    protected c f38970g;

    @Override
    public com.mbridge.msdk.video.signal.b getActivityProxy() {
        if (this.f38964a == null) {
            this.f38964a = new com.mbridge.msdk.video.signal.impl.b();
        }
        return this.f38964a;
    }

    @Override
    public i getIJSRewardVideoV1() {
        if (this.f38969f == null) {
            this.f38969f = new com.mbridge.msdk.video.signal.impl.g();
        }
        return this.f38969f;
    }

    @Override
    public c getJSBTModule() {
        if (this.f38970g == null) {
            this.f38970g = new com.mbridge.msdk.video.signal.impl.c();
        }
        return this.f38970g;
    }

    @Override
    public d getJSCommon() {
        if (this.f38965b == null) {
            this.f38965b = new com.mbridge.msdk.video.signal.impl.d();
        }
        return this.f38965b;
    }

    @Override
    public f getJSContainerModule() {
        if (this.f38968e == null) {
            this.f38968e = new e();
        }
        return this.f38968e;
    }

    @Override
    public g getJSNotifyProxy() {
        if (this.f38967d == null) {
            this.f38967d = new com.mbridge.msdk.video.signal.impl.f();
        }
        return this.f38967d;
    }

    @Override
    public j getJSVideoModule() {
        if (this.f38966c == null) {
            this.f38966c = new h();
        }
        return this.f38966c;
    }
}

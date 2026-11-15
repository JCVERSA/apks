package com.mbridge.msdk.util.timer;

import android.os.CountDownTimer;

public class b {

    private com.mbridge.msdk.util.timer.a f37933a;

    private long f37934b;

    private a f37935c;

    private long f37936d = 0;

    private static class a extends CountDownTimer {

        private com.mbridge.msdk.util.timer.a f37937a;

        public a(long j10, long j11) {
            super(j10, j11);
        }

        void a(com.mbridge.msdk.util.timer.a aVar) {
            this.f37937a = aVar;
        }

        @Override
        public void onFinish() {
            com.mbridge.msdk.util.timer.a aVar = this.f37937a;
            if (aVar != null) {
                aVar.onFinish();
            }
        }

        @Override
        public void onTick(long j10) {
            com.mbridge.msdk.util.timer.a aVar = this.f37937a;
            if (aVar != null) {
                aVar.onTick(j10);
            }
        }
    }

    public void a() {
        a aVar = this.f37935c;
        if (aVar != null) {
            aVar.cancel();
            this.f37935c = null;
        }
    }

    public b b(long j10) {
        this.f37936d = j10;
        return this;
    }

    public void c() {
        if (this.f37935c == null) {
            b();
        }
        this.f37935c.start();
    }

    public void b() {
        a aVar = this.f37935c;
        if (aVar != null) {
            aVar.cancel();
            this.f37935c = null;
        }
        if (this.f37934b <= 0) {
            this.f37934b = this.f37936d + 1000;
        }
        a aVar2 = new a(this.f37936d, this.f37934b);
        this.f37935c = aVar2;
        aVar2.a(this.f37933a);
    }

    public b a(long j10) {
        if (j10 < 0) {
            j10 = 1000;
        }
        this.f37934b = j10;
        return this;
    }

    public b a(com.mbridge.msdk.util.timer.a aVar) {
        this.f37933a = aVar;
        return this;
    }
}

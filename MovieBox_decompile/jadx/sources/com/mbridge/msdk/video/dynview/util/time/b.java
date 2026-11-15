package com.mbridge.msdk.video.dynview.util.time;

import android.os.CountDownTimer;

public class b {

    private long f38283a = 0;

    private long f38284b;

    private com.mbridge.msdk.video.dynview.util.time.a f38285c;

    private a f38286d;

    private static class a extends CountDownTimer {

        private com.mbridge.msdk.video.dynview.util.time.a f38287a;

        public a(long j10, long j11) {
            super(j10, j11);
        }

        void a(com.mbridge.msdk.video.dynview.util.time.a aVar) {
            this.f38287a = aVar;
        }

        @Override
        public void onFinish() {
            com.mbridge.msdk.video.dynview.util.time.a aVar = this.f38287a;
            if (aVar != null) {
                aVar.onFinish();
            }
        }

        @Override
        public void onTick(long j10) {
            com.mbridge.msdk.video.dynview.util.time.a aVar = this.f38287a;
            if (aVar != null) {
                aVar.onTick(j10);
            }
        }
    }

    public b a(long j10) {
        if (j10 < 0) {
            j10 = 1000;
        }
        this.f38284b = j10;
        return this;
    }

    public b b(long j10) {
        this.f38283a = j10;
        return this;
    }

    public void c() {
        if (this.f38286d == null) {
            b();
        }
        this.f38286d.start();
    }

    public b a(com.mbridge.msdk.video.dynview.util.time.a aVar) {
        this.f38285c = aVar;
        return this;
    }

    public void b() {
        a aVar = this.f38286d;
        if (aVar != null) {
            aVar.cancel();
            this.f38286d = null;
        }
        if (this.f38284b <= 0) {
            this.f38284b = this.f38283a + 1000;
        }
        a aVar2 = new a(this.f38283a, this.f38284b);
        this.f38286d = aVar2;
        aVar2.a(this.f38285c);
    }

    public void a(long j10, com.mbridge.msdk.video.dynview.util.time.a aVar) {
        this.f38283a = j10;
        this.f38285c = aVar;
        b();
        a aVar2 = this.f38286d;
        if (aVar2 != null) {
            aVar2.start();
        }
    }

    public void a() {
        a aVar = this.f38286d;
        if (aVar != null) {
            aVar.cancel();
            this.f38286d = null;
        }
    }
}

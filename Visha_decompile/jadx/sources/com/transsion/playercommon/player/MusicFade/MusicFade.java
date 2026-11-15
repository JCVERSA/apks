package com.transsion.playercommon.player.MusicFade;

import android.os.Handler;
import android.os.HandlerThread;

public class MusicFade {
    public float a;
    public float b;
    public long c;
    public long d;
    public Handler e;
    public HandlerThread f;

    public class AnonymousClass1 extends FadeRunnable {
        final float val$endVolume;
        final a val$fadeEvent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(float f, float f2, long j, long j2, a aVar, float f3) {
            super(f, f2, j, j2);
            this.val$fadeEvent = aVar;
            this.val$endVolume = f3;
        }

        @Override
        public void run() {
            float value = getValue(System.currentTimeMillis());
            this.val$fadeEvent.a(value);
            if (value != this.val$endVolume) {
                MusicFade.this.e.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.run();
                    }
                }, 100L);
            }
        }
    }

    public class FadeRunnable implements Runnable {
        private float endVolume;
        private long spendTime;
        private long startTime;
        private float startVolume;

        public FadeRunnable(float f, float f2, long j, long j2) {
            this.startVolume = f;
            this.endVolume = f2;
            this.spendTime = j;
            this.startTime = j2;
        }

        public float getValue(long j) {
            float f = ((j - this.startTime) * 1.0f) / this.spendTime;
            float f2 = this.startVolume;
            float f3 = this.endVolume;
            float f4 = (f * (f3 - f2)) + f2;
            if (Float.compare(f3, f2) == 1) {
                return Float.compare(f4, this.endVolume) == 1 ? this.endVolume : f4;
            }
            return Float.compare(f4, this.endVolume) == -1 ? this.endVolume : f4;
        }

        @Override
        public void run() {
        }
    }

    public interface a {
        void a(float f);
    }

    public MusicFade() {
        HandlerThread handlerThread = new HandlerThread("MusicFade");
        this.f = handlerThread;
        handlerThread.start();
        this.e = new Handler(this.f.getLooper());
    }

    public void b(a aVar) {
        this.e.removeCallbacksAndMessages(null);
        aVar.a(1.0f);
    }

    public void c(float f, float f2, long j, long j2, int i, int i2, a aVar) {
        this.a = f;
        this.b = f2;
        this.d = j2;
        this.c = j;
        int i3 = i2 - i;
        if ((i3 <= 0 || i3 >= 24000) && j >= 500) {
            d(f, f2, j, j2, aVar, 0L);
            long j3 = i3;
            d(this.b, this.a, this.c, (this.d + j3) - j, aVar, j3 - j);
        }
    }

    public final void d(float f, float f2, long j, long j2, a aVar, long j3) {
        if (aVar != null) {
            this.e.postDelayed(new AnonymousClass1(f, f2, j, j2, aVar, f2), j3);
        }
    }
}

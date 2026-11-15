package defpackage;

import android.os.CountDownTimer;

public class ml7 {
    public CountDownTimer a;
    public long b = 300000;
    public boolean c = false;
    public b d;

    public class a extends CountDownTimer {
        public a(long j, long j2) {
            super(j, j2);
        }

        @Override
        public void onFinish() {
            ml7.this.c = false;
            b bVar = ml7.this.d;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void onTick(long j) {
            b bVar = ml7.this.d;
            if (bVar != null) {
                bVar.C(j);
            }
        }
    }

    public interface b {
        void C(long j);

        void a();
    }

    public ml7(b bVar) {
        this.d = bVar;
    }

    public void a() {
        CountDownTimer countDownTimer = this.a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.a = null;
        }
        this.c = false;
    }

    public void c() {
        if (this.a == null) {
            this.a = new a(this.b, 1000L);
        }
        this.c = true;
        this.a.start();
    }
}

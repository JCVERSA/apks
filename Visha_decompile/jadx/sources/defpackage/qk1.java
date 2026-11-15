package defpackage;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

public abstract class qk1 {
    public final long a;
    public final long b;
    public long c;
    public boolean d = false;
    public final Handler e = new a();

    public class a extends Handler {
        public a() {
        }

        @Override
        public void handleMessage(Message message) {
            long j;
            synchronized (qk1.this) {
                try {
                    if (qk1.this.d) {
                        return;
                    }
                    long jElapsedRealtime = qk1.this.c - SystemClock.elapsedRealtime();
                    long j2 = 0;
                    if (jElapsedRealtime <= 0) {
                        qk1.this.e();
                    } else {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        qk1.this.f(jElapsedRealtime);
                        long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime < qk1.this.b) {
                            j = jElapsedRealtime - jElapsedRealtime3;
                            if (j < 0) {
                            }
                            sendMessageDelayed(obtainMessage(1), j2);
                        } else {
                            j = qk1.this.b - jElapsedRealtime3;
                            while (j < 0) {
                                j += qk1.this.b;
                            }
                        }
                        j2 = j;
                        sendMessageDelayed(obtainMessage(1), j2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public qk1(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final synchronized void d() {
        this.d = true;
        this.e.removeMessages(1);
    }

    public abstract void e();

    public abstract void f(long j);

    public final synchronized qk1 g() {
        this.d = false;
        if (this.a <= 0) {
            e();
            return this;
        }
        this.c = SystemClock.elapsedRealtime() + this.a;
        Handler handler = this.e;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }
}

package g7;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

public abstract class e {

    private final long f60691a;

    private final long f60692b;

    private long f60693c;

    private boolean f60694d = false;

    private final Handler f60695e = new a();

    class a extends Handler {
        a() {
        }

        @Override
        public void handleMessage(Message message) {
            long j10;
            synchronized (e.this) {
                try {
                    if (e.this.f60694d) {
                        return;
                    }
                    long jElapsedRealtime = e.this.f60693c - SystemClock.elapsedRealtime();
                    long j11 = 0;
                    if (jElapsedRealtime <= 0) {
                        e.this.e();
                    } else {
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        e.this.f(jElapsedRealtime);
                        long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime < e.this.f60692b) {
                            j10 = jElapsedRealtime - jElapsedRealtime3;
                            if (j10 < 0) {
                            }
                            sendMessageDelayed(obtainMessage(1), j11);
                        } else {
                            j10 = e.this.f60692b - jElapsedRealtime3;
                            while (j10 < 0) {
                                j10 += e.this.f60692b;
                            }
                        }
                        j11 = j10;
                        sendMessageDelayed(obtainMessage(1), j11);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public e(long j10, long j11) {
        this.f60691a = j10;
        this.f60692b = j11;
    }

    public final synchronized void d() {
        this.f60694d = true;
        this.f60695e.removeMessages(1);
    }

    public abstract void e();

    public abstract void f(long j10);

    public final synchronized e g() {
        this.f60694d = false;
        if (this.f60691a <= 0) {
            e();
            return this;
        }
        this.f60693c = SystemClock.elapsedRealtime() + this.f60691a;
        Handler handler = this.f60695e;
        handler.sendMessage(handler.obtainMessage(1));
        return this;
    }
}

package androidx.core.os;

import android.os.CancellationSignal;

public final class e {

    private boolean f7850a;

    private a f7851b;

    private Object f7852c;

    private boolean f7853d;

    public interface a {
        void onCancel();
    }

    private void c() {
        while (this.f7853d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void a() {
        synchronized (this) {
            try {
                if (this.f7850a) {
                    return;
                }
                this.f7850a = true;
                this.f7853d = true;
                a aVar = this.f7851b;
                Object obj = this.f7852c;
                if (aVar != null) {
                    try {
                        aVar.onCancel();
                    } catch (Throwable th2) {
                        synchronized (this) {
                            this.f7853d = false;
                            notifyAll();
                            throw th2;
                        }
                    }
                }
                if (obj != null) {
                    ((CancellationSignal) obj).cancel();
                }
                synchronized (this) {
                    this.f7853d = false;
                    notifyAll();
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void b(a aVar) {
        synchronized (this) {
            try {
                c();
                if (this.f7851b == aVar) {
                    return;
                }
                this.f7851b = aVar;
                if (this.f7850a && aVar != null) {
                    aVar.onCancel();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

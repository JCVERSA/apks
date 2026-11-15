package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class d {

    private static d f28975e;

    private final Object f28976a = new Object();

    private final Handler f28977b = new Handler(Looper.getMainLooper(), new a());

    private c f28978c;

    private c f28979d;

    class a implements Handler.Callback {
        a() {
        }

        @Override
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            d.this.d((c) message.obj);
            return true;
        }
    }

    interface b {
        void a(int i10);

        void show();
    }

    private static class c {

        final WeakReference f28981a;

        int f28982b;

        boolean f28983c;

        c(int i10, b bVar) {
            this.f28981a = new WeakReference(bVar);
            this.f28982b = i10;
        }

        boolean a(b bVar) {
            return bVar != null && this.f28981a.get() == bVar;
        }
    }

    private d() {
    }

    private boolean a(c cVar, int i10) {
        b bVar = (b) cVar.f28981a.get();
        if (bVar == null) {
            return false;
        }
        this.f28977b.removeCallbacksAndMessages(cVar);
        bVar.a(i10);
        return true;
    }

    static d c() {
        if (f28975e == null) {
            f28975e = new d();
        }
        return f28975e;
    }

    private boolean f(b bVar) {
        c cVar = this.f28978c;
        return cVar != null && cVar.a(bVar);
    }

    private boolean g(b bVar) {
        c cVar = this.f28979d;
        return cVar != null && cVar.a(bVar);
    }

    private void l(c cVar) {
        int i10 = cVar.f28982b;
        if (i10 == -2) {
            return;
        }
        if (i10 <= 0) {
            i10 = i10 == -1 ? 1500 : 2750;
        }
        this.f28977b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f28977b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i10);
    }

    private void n() {
        c cVar = this.f28979d;
        if (cVar != null) {
            this.f28978c = cVar;
            this.f28979d = null;
            b bVar = (b) cVar.f28981a.get();
            if (bVar != null) {
                bVar.show();
            } else {
                this.f28978c = null;
            }
        }
    }

    public void b(b bVar, int i10) {
        synchronized (this.f28976a) {
            try {
                if (f(bVar)) {
                    a(this.f28978c, i10);
                } else if (g(bVar)) {
                    a(this.f28979d, i10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void d(c cVar) {
        synchronized (this.f28976a) {
            try {
                if (this.f28978c == cVar || this.f28979d == cVar) {
                    a(cVar, 2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean e(b bVar) {
        boolean z10;
        synchronized (this.f28976a) {
            try {
                z10 = f(bVar) || g(bVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public void h(b bVar) {
        synchronized (this.f28976a) {
            try {
                if (f(bVar)) {
                    this.f28978c = null;
                    if (this.f28979d != null) {
                        n();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void i(b bVar) {
        synchronized (this.f28976a) {
            try {
                if (f(bVar)) {
                    l(this.f28978c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void j(b bVar) {
        synchronized (this.f28976a) {
            try {
                if (f(bVar)) {
                    c cVar = this.f28978c;
                    if (!cVar.f28983c) {
                        cVar.f28983c = true;
                        this.f28977b.removeCallbacksAndMessages(cVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void k(b bVar) {
        synchronized (this.f28976a) {
            try {
                if (f(bVar)) {
                    c cVar = this.f28978c;
                    if (cVar.f28983c) {
                        cVar.f28983c = false;
                        l(cVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m(int i10, b bVar) {
        synchronized (this.f28976a) {
            try {
                if (f(bVar)) {
                    c cVar = this.f28978c;
                    cVar.f28982b = i10;
                    this.f28977b.removeCallbacksAndMessages(cVar);
                    l(this.f28978c);
                    return;
                }
                if (g(bVar)) {
                    this.f28979d.f28982b = i10;
                } else {
                    this.f28979d = new c(i10, bVar);
                }
                c cVar2 = this.f28978c;
                if (cVar2 == null || !a(cVar2, 4)) {
                    this.f28978c = null;
                    n();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

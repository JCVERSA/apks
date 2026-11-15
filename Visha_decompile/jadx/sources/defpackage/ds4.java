package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import java.util.Map;

public abstract class ds4 implements dv4 {
    public Handler a;
    public boolean b;
    public boolean c;
    public Looper d;

    public static class a extends Handler {
        public final ds4 a;

        public a(ds4 ds4Var, Looper looper) {
            super(looper);
            this.a = ds4Var;
        }

        @Override
        public void handleMessage(Message message) {
            this.a.i(message);
        }
    }

    public ds4() {
        this((Looper) null);
    }

    public void A(int i, byte[] bArr, String str) {
        k(h(0, new Object[]{Integer.valueOf(i), bArr, str}));
    }

    public void B(int i, byte[] bArr, Map map) {
        k(h(0, new Object[]{Integer.valueOf(i), bArr, map}));
    }

    @Override
    public void a(int i, byte[] bArr, String str) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i >= 300) {
            e(i, bArr, new IOException());
        } else {
            A(i, bArr, str);
        }
    }

    @Override
    public void b(int i, byte[] bArr) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i >= 300) {
            e(i, bArr, new IOException());
        } else {
            z(i, bArr);
        }
    }

    @Override
    public void c() {
        k(h(2, null));
    }

    @Override
    public void d() {
        k(h(3, null));
    }

    @Override
    public void e(int i, byte[] bArr, Throwable th) {
        k(h(1, new Object[]{Integer.valueOf(i), bArr, th}));
    }

    @Override
    public final void f() {
        k(h(6, null));
    }

    @Override
    public void g(int i, byte[] bArr, Map map) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i >= 300) {
            y(i, bArr, new IOException(), map);
        } else {
            B(i, bArr, map);
        }
    }

    public Message h(int i, Object obj) {
        return Message.obtain(this.a, i, obj);
    }

    public void i(Message message) {
        try {
            switch (message.what) {
                case 0:
                    Object[] objArr = (Object[]) message.obj;
                    if (objArr == null || objArr.length < 2) {
                        hf1.a.e("HttpCallbackImpl", "SUCCESS_MESSAGE didn't got enough params");
                        return;
                    }
                    if (objArr.length < 3) {
                        v(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                        return;
                    }
                    Object obj = objArr[2];
                    if (obj instanceof String) {
                        w(((Integer) objArr[0]).intValue(), (byte[]) objArr[1], (String) objArr[2]);
                        return;
                    } else {
                        if (obj instanceof Map) {
                            v(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                            s((Map) objArr[2]);
                            return;
                        }
                        return;
                    }
                case 1:
                    Object[] objArr2 = (Object[]) message.obj;
                    if (objArr2 == null || objArr2.length < 3) {
                        hf1.a.e("HttpCallbackImpl", "FAILURE_MESSAGE didn't got enough params");
                        return;
                    }
                    if (objArr2.length >= 4) {
                        Object obj2 = objArr2[3];
                        if (obj2 instanceof Map) {
                            s((Map) obj2);
                        }
                    }
                    o(((Integer) objArr2[0]).intValue(), (byte[]) objArr2[1], (Throwable) objArr2[2]);
                    return;
                case 2:
                    u();
                    return;
                case 3:
                    p();
                    return;
                case 4:
                    Object[] objArr3 = (Object[]) message.obj;
                    if (objArr3 == null || objArr3.length < 2) {
                        hf1.a.e("HttpCallbackImpl", "PROGRESS_MESSAGE didn't got enough params");
                        return;
                    }
                    try {
                        r(((Long) objArr3[0]).longValue(), ((Long) objArr3[1]).longValue());
                        return;
                    } catch (Throwable th) {
                        hf1.a.e("HttpCallbackImpl", "custom onProgress contains an error", th);
                        return;
                    }
                case 5:
                    Object[] objArr4 = (Object[]) message.obj;
                    if (objArr4 == null || objArr4.length != 1) {
                        hf1.a.e("HttpCallbackImpl", "RETRY_MESSAGE didn't get enough params");
                        return;
                    } else {
                        t(((Integer) objArr4[0]).intValue());
                        return;
                    }
                case 6:
                    n();
                    return;
                case 7:
                    q();
                    return;
                default:
                    return;
            }
        } catch (Throwable th2) {
            x(th2);
        }
        x(th2);
    }

    public void j(Runnable runnable) {
        Handler handler;
        if (runnable != null) {
            if (m() || (handler = this.a) == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    public void k(Message message) {
        if (m() || this.a == null) {
            i(message);
        } else {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            sv0.a(this.a != null, "handler should not be null!");
            this.a.sendMessage(message);
        }
    }

    public boolean l() {
        return this.c;
    }

    public boolean m() {
        return this.b;
    }

    public void n() {
        hf1.a.d("HttpCallbackImpl", "Request got cancelled");
    }

    public abstract void o(int i, byte[] bArr, Throwable th);

    public void p() {
    }

    public void q() {
        hf1.a.d("HttpCallbackImpl", "Request got onPaused");
    }

    public void r(long j, long j2) {
        hf1.a.v("HttpCallbackImpl", String.format("Progress %d from %d (%2.0f%%)", Long.valueOf(j), Long.valueOf(j2), Double.valueOf(j2 > 0 ? ((j * 1.0d) / j2) * 100.0d : -1.0d)));
    }

    public void s(Map map) {
    }

    public void t(int i) {
        hf1.a.d("HttpCallbackImpl", String.format("Request retry no. %d", Integer.valueOf(i)));
    }

    public void u() {
    }

    public abstract void v(int i, byte[] bArr);

    public void w(int i, byte[] bArr, String str) {
    }

    public void x(Throwable th) {
        hf1.a.e("HttpCallbackImpl", "User-space exception detected!", th);
        throw new RuntimeException(th);
    }

    public void y(int i, byte[] bArr, Throwable th, Map map) {
        k(h(1, new Object[]{Integer.valueOf(i), bArr, th, map}));
    }

    public void z(int i, byte[] bArr) {
        k(h(0, new Object[]{Integer.valueOf(i), bArr}));
    }

    public ds4(Looper looper) {
        this(looper == null ? Looper.myLooper() : looper, false);
    }

    public ds4(boolean z) {
        this(z ? null : Looper.myLooper(), z);
    }

    public ds4(Looper looper, boolean z) {
        this.d = null;
        if (!z) {
            sv0.a(looper != null, "use looper thread, must call Looper.prepare() first!");
            this.d = looper;
            this.a = new a(this, looper);
        } else {
            sv0.a(looper == null, "use pool thread, looper should be null!");
            this.d = null;
            this.a = null;
        }
        this.c = z;
    }
}

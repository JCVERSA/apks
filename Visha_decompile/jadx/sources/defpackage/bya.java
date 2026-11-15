package defpackage;

import android.util.Log;
import com.transsion.tranplayer.MediaMetadataRetriever;
import java.util.concurrent.atomic.AtomicBoolean;

public final class bya {
    public static volatile boolean c;
    public static final bya a = new bya();
    public static final Object b = new Object();
    public static final AtomicBoolean d = new AtomicBoolean(false);
    public static final AtomicBoolean e = new AtomicBoolean(false);
    public static volatile c74 f = new c74() {
        @Override
        public final Object invoke() {
            return bya.d();
        }
    };
    public static volatile e74 g = bx9.a.q();

    public static final void c() {
        if (c) {
            return;
        }
        synchronized (b) {
            if (c) {
                return;
            }
            try {
                f.invoke();
                c = true;
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                a.e("ensureLoaded failed", th);
                throw th;
            }
        }
    }

    public static final zfb d() {
        int i = MediaMetadataRetriever.METADATA_SEEK_TYPE_FUZZY;
        return zfb.a;
    }

    public static final void f() {
        if (c || !d.compareAndSet(false, true)) {
            return;
        }
        g.invoke(new c74() {
            @Override
            public final Object invoke() {
                return bya.g();
            }
        });
    }

    public static final zfb g() {
        if (e.get()) {
            return zfb.a;
        }
        try {
            c();
        } catch (Throwable th) {
            a.e("warmup failed", th);
        }
        return zfb.a;
    }

    public static final void h() {
        e.set(true);
    }

    public final void e(String str, Throwable th) {
        try {
            Log.e("TranRetrieverNative", str, th);
        } catch (Throwable unused) {
        }
    }
}

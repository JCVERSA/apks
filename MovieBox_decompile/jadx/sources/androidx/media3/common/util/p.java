package androidx.media3.common.util;

import android.os.Looper;

public interface p {

    public interface a {
        void a();
    }

    boolean a(int i10);

    boolean b(a aVar);

    Looper getLooper();

    a obtainMessage(int i10);

    a obtainMessage(int i10, int i11, int i12);

    a obtainMessage(int i10, int i11, int i12, Object obj);

    a obtainMessage(int i10, Object obj);

    boolean post(Runnable runnable);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i10);

    boolean sendEmptyMessage(int i10);

    boolean sendEmptyMessageAtTime(int i10, long j10);
}

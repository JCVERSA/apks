package defpackage;

public interface xn4 {

    public interface a {
        void sendToTarget();
    }

    boolean a(a aVar);

    boolean hasMessages(int i);

    a obtainMessage(int i);

    a obtainMessage(int i, int i2, int i3);

    a obtainMessage(int i, int i2, int i3, Object obj);

    a obtainMessage(int i, Object obj);

    boolean post(Runnable runnable);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i);

    boolean sendEmptyMessage(int i);

    boolean sendEmptyMessageAtTime(int i, long j);
}

package defpackage;

import android.net.Uri;

public interface jxb {

    public interface a {
        default boolean onInfo(int i, int i2) {
            return false;
        }

        void onMediaPlayerStateChange(int i);

        default void onShowError(Uri uri, int i) {
        }

        default void onVideoSizeChanged(int i, int i2) {
        }
    }

    int a();

    void b(boolean z);

    int c();

    void d(a aVar);

    void e(boolean z);

    void f(long j);

    void g(Uri uri);

    int getVideoDuration();

    void h(boolean z);

    void i();
}

package defpackage;

import android.content.Context;
import com.cloud.hisavana.sdk.a0;
import com.cloud.hisavana.sdk.h;

public final class nrd {
    public static final nrd a = new nrd();
    public static volatile Boolean b;

    public final wsd a(Context context) {
        y45.j(context, "context");
        if (!b()) {
            ikd.b().d("VideoPlayerFactory", "creating NoOpVideoPlayer (ExoPlayer unavailable)");
            return new h();
        }
        try {
            ikd.b().d("VideoPlayerFactory", "creating ExoPlayerImpl");
            return new a0(context);
        } catch (Throwable th) {
            ikd.b().w("VideoPlayerFactory", "ExoPlayerImpl init failed, degrading to NoOp: " + th.getMessage());
            return new h();
        }
    }

    public final boolean b() {
        boolean zBooleanValue;
        boolean z = true;
        if (r6.k()) {
            return true;
        }
        Boolean bool = b;
        if (bool != null) {
            return bool.booleanValue();
        }
        synchronized (this) {
            Boolean bool2 = b;
            if (bool2 != null) {
                zBooleanValue = bool2.booleanValue();
            } else {
                try {
                    ikd.b().d("VideoPlayerFactory", "ExoPlayer is found");
                } catch (ClassNotFoundException unused) {
                    ikd.b().d("VideoPlayerFactory", "ExoPlayer not found, video ads will be degraded gracefully");
                    z = false;
                } catch (Throwable th) {
                    ikd.b().w("VideoPlayerFactory", "ExoPlayer probe failed: " + th.getMessage());
                    z = false;
                }
                b = Boolean.valueOf(z);
                zBooleanValue = z;
            }
        }
        return zBooleanValue;
    }
}

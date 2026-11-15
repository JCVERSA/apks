package defpackage;

import android.view.Surface;

public abstract class f7e {
    public static void a(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == 0.0f ? 0 : 1);
        } catch (IllegalStateException e) {
            zrg.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
        }
    }
}

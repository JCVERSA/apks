package n7;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;
import pl.droidsonroids.gif.GifDrawable;

public final class a {

    public static final a f66935a = new a();

    private static boolean f66936b;

    private a() {
    }

    public Drawable a(byte[] bytes) {
        Intrinsics.h(bytes, "bytes");
        if (!f66936b) {
            return null;
        }
        try {
            Drawable gifDrawable = new GifDrawable(bytes);
            com.cloud.sdk.commonutil.util.c.Log().d("HisavanaImageRender", "android-gif-drawable: getGifDrawableFromData succees");
            return gifDrawable;
        } catch (Exception e10) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "android-gif-drawable: getGifDrawableFromData failed, error=" + e10.getMessage());
            return null;
        }
    }

    public final void b() {
        try {
            Class.forName("pl.droidsonroids.gif.GifDrawable");
            f66936b = true;
            com.cloud.sdk.commonutil.util.c.Log().d("HisavanaImageRender", "init gif-drawable succeed");
        } catch (Throwable th2) {
            com.cloud.sdk.commonutil.util.c.Log().w("HisavanaImageRender", "init gif-drawable error=" + th2.getMessage());
        }
    }
}

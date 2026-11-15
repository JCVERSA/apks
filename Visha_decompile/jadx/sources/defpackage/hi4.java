package defpackage;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

public final class hi4 {
    public static final hi4 a = new hi4();
    public static boolean b = true;
    public static boolean c = true;

    public static final boolean e(String str, boolean z, ImageView imageView) {
        try {
            if (a.b() && str != null && !j1a.o0(str) && imageView != null) {
                RequestOptions requestOptionsDiskCacheStrategy = new RequestOptions().diskCacheStrategy(DiskCacheStrategy.NONE);
                y45.i(requestOptionsDiskCacheStrategy, "diskCacheStrategy(...)");
                RequestOptions requestOptions = requestOptionsDiskCacheStrategy;
                if (z) {
                    RequestOptions requestOptionsPriority = requestOptions.useUnlimitedSourceGeneratorsPool(true).priority(Priority.IMMEDIATE);
                    y45.i(requestOptionsPriority, "priority(...)");
                    requestOptions = requestOptionsPriority;
                }
                Glide.with(ul4.a()).load(str).apply((BaseRequestOptions<?>) requestOptions).into(imageView);
                ja1.Log().d("HisavanaImageRender", "loadImage with glide, url=" + str);
                return true;
            }
            return false;
        } catch (Throwable th) {
            ja1.Log().w("HisavanaImageRender", "loadImage with glide failed, error=" + th.getMessage());
            return false;
        }
    }

    public Drawable a(Drawable drawable) {
        try {
            if (b() && (drawable instanceof GifDrawable)) {
                ((GifDrawable) drawable).start();
            }
        } catch (Exception unused) {
        }
        return drawable;
    }

    public final boolean b() {
        return b && c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable c(byte[] bArr) {
        y45.j(bArr, "bytes");
        try {
            if (!b()) {
                return null;
            }
            GifDrawable gifDrawable = (GifDrawable) Glide.with(ul4.a()).asGif().useUnlimitedSourceGeneratorsPool(true).priority(Priority.IMMEDIATE).diskCacheStrategy(DiskCacheStrategy.NONE).load(bArr).submit().get();
            ja1.Log().d("HisavanaImageRender", "glide: getGifDrawableFromData succees");
            return gifDrawable;
        } catch (InterruptedException e) {
            ja1.Log().w("HisavanaImageRender", "glide: getGifDrawableFromData failed, error=" + e.getMessage());
            return null;
        }
    }

    public final boolean d() {
        return b;
    }
}

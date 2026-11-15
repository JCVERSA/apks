package q4;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.airbnb.lottie.l0;
import java.io.IOException;
import java.util.Map;
import x4.f;
import x4.l;

public class b {

    private static final Object f69392d = new Object();

    private final Context f69393a;

    private final String f69394b;

    private final Map f69395c;

    public b(Drawable.Callback callback, String str, com.airbnb.lottie.b bVar, Map map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f69394b = str;
        } else {
            this.f69394b = str + '/';
        }
        this.f69395c = map;
        d(bVar);
        if (callback instanceof View) {
            this.f69393a = ((View) callback).getContext().getApplicationContext();
        } else {
            this.f69393a = null;
        }
    }

    private Bitmap c(String str, Bitmap bitmap) {
        synchronized (f69392d) {
            ((l0) this.f69395c.get(str)).g(bitmap);
        }
        return bitmap;
    }

    public Bitmap a(String str) {
        l0 l0Var = (l0) this.f69395c.get(str);
        if (l0Var == null) {
            return null;
        }
        Bitmap bitmapB = l0Var.b();
        if (bitmapB != null) {
            return bitmapB;
        }
        Context context = this.f69393a;
        if (context == null) {
            return null;
        }
        String strC = l0Var.c();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                return c(str, l.m(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options), l0Var.f(), l0Var.d()));
            } catch (IllegalArgumentException e10) {
                f.d("data URL did not have correct base64 format.", e10);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.f69394b)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.f69394b + strC), null, options);
                if (bitmapDecodeStream != null) {
                    return c(str, l.m(bitmapDecodeStream, l0Var.f(), l0Var.d()));
                }
                f.c("Decoded image `" + str + "` is null.");
                return null;
            } catch (IllegalArgumentException e11) {
                f.d("Unable to decode image `" + str + "`.", e11);
                return null;
            }
        } catch (IOException e12) {
            f.d("Unable to open asset.", e12);
            return null;
        }
    }

    public boolean b(Context context) {
        if (this.f69393a instanceof Application) {
            context = context.getApplicationContext();
        }
        return context == this.f69393a;
    }

    public Bitmap e(String str, Bitmap bitmap) {
        if (bitmap != null) {
            Bitmap bitmapB = ((l0) this.f69395c.get(str)).b();
            c(str, bitmap);
            return bitmapB;
        }
        l0 l0Var = (l0) this.f69395c.get(str);
        Bitmap bitmapB2 = l0Var.b();
        l0Var.g(null);
        return bitmapB2;
    }

    public void d(com.airbnb.lottie.b bVar) {
    }
}

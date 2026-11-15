package defpackage;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import java.io.IOException;
import java.util.Map;
import org.apache.commons.io.IOUtils;

public class wx4 {
    public static final Object d = new Object();
    public final Context a;
    public final String b;
    public final Map c;

    public wx4(Drawable.Callback callback, String str, tx4 tx4Var, Map map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.b = str;
        } else {
            this.b = str + IOUtils.DIR_SEPARATOR_UNIX;
        }
        this.c = map;
        d(tx4Var);
        if (callback instanceof View) {
            this.a = ((View) callback).getContext().getApplicationContext();
        } else {
            this.a = null;
        }
    }

    public Bitmap a(String str) {
        ct5 ct5Var = (ct5) this.c.get(str);
        if (ct5Var == null) {
            return null;
        }
        Bitmap bitmapB = ct5Var.b();
        if (bitmapB != null) {
            return bitmapB;
        }
        Context context = this.a;
        if (context == null) {
            return null;
        }
        String strC = ct5Var.c();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                return c(str, plb.m(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options), ct5Var.f(), ct5Var.d()));
            } catch (IllegalArgumentException e) {
                mq5.d("data URL did not have correct base64 format.", e);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.b)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.b + strC), null, options);
                if (bitmapDecodeStream != null) {
                    return c(str, plb.m(bitmapDecodeStream, ct5Var.f(), ct5Var.d()));
                }
                mq5.c("Decoded image `" + str + "` is null.");
                return null;
            } catch (IllegalArgumentException e2) {
                mq5.d("Unable to decode image `" + str + "`.", e2);
                return null;
            }
        } catch (IOException e3) {
            mq5.d("Unable to open asset.", e3);
            return null;
        }
    }

    public boolean b(Context context) {
        if (context == null) {
            return this.a == null;
        }
        if (this.a instanceof Application) {
            context = context.getApplicationContext();
        }
        return context == this.a;
    }

    public final Bitmap c(String str, Bitmap bitmap) {
        synchronized (d) {
            ((ct5) this.c.get(str)).g(bitmap);
        }
        return bitmap;
    }

    public void d(tx4 tx4Var) {
    }

    public Bitmap e(String str, Bitmap bitmap) {
        if (bitmap != null) {
            Bitmap bitmapB = ((ct5) this.c.get(str)).b();
            c(str, bitmap);
            return bitmapB;
        }
        ct5 ct5Var = (ct5) this.c.get(str);
        Bitmap bitmapB2 = ct5Var.b();
        ct5Var.g(null);
        return bitmapB2;
    }
}

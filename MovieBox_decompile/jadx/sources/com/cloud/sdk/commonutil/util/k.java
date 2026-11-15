package com.cloud.sdk.commonutil.util;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public final class k {

    public static final k f22540a = new k();

    private k() {
    }

    public static final void a(ImageView imageView) {
        Bitmap bitmap;
        if (imageView != null) {
            try {
                if (imageView.getDrawable() == null || n7.b.f66937a.d()) {
                    return;
                }
                if (!(imageView.getDrawable() instanceof BitmapDrawable)) {
                    imageView.setImageDrawable(null);
                    return;
                }
                Drawable drawable = imageView.getDrawable();
                BitmapDrawable bitmapDrawable = drawable instanceof BitmapDrawable ? (BitmapDrawable) drawable : null;
                if (bitmapDrawable == null || (bitmap = bitmapDrawable.getBitmap()) == null || bitmap.isRecycled()) {
                    return;
                }
                bitmap.recycle();
            } catch (Throwable th2) {
                c.Log().w("HisavanaImageLoader", "destroyImageView error msg = " + th2.getMessage());
            }
        }
    }
}

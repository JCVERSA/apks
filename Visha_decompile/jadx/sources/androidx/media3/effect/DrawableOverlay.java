package androidx.media3.effect;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import androidx.media3.common.OverlaySettings;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public abstract class DrawableOverlay extends BitmapOverlay {
    private Bitmap lastBitmap;
    private Drawable lastDrawable;

    public static DrawableOverlay createStaticDrawableOverlay(final Drawable drawable, final StaticOverlaySettings staticOverlaySettings) {
        return new DrawableOverlay() {
            @Override
            public Drawable getDrawable(long j) {
                return drawable;
            }

            @Override
            public OverlaySettings getOverlaySettings(long j) {
                return staticOverlaySettings;
            }
        };
    }

    @Override
    public Bitmap getBitmap(long j) {
        Drawable drawable = getDrawable(j);
        if (!drawable.equals(this.lastDrawable)) {
            this.lastDrawable = drawable;
            Bitmap bitmap = this.lastBitmap;
            if (bitmap == null || bitmap.getWidth() != this.lastDrawable.getIntrinsicWidth() || this.lastBitmap.getHeight() != this.lastDrawable.getIntrinsicHeight()) {
                this.lastBitmap = Bitmap.createBitmap(this.lastDrawable.getIntrinsicWidth(), this.lastDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            }
            Canvas canvas = new Canvas(this.lastBitmap);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.lastDrawable.draw(canvas);
        }
        return (Bitmap) Assertions.checkNotNull(this.lastBitmap);
    }

    public abstract Drawable getDrawable(long j);
}

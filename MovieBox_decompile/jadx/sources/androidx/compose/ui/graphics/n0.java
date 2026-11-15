package androidx.compose.ui.graphics;

import android.graphics.Bitmap;

public final class n0 implements e4 {

    private final Bitmap f4297b;

    public n0(Bitmap bitmap) {
        this.f4297b = bitmap;
    }

    @Override
    public void a() {
        this.f4297b.prepareToDraw();
    }

    @Override
    public int b() {
        return q0.e(this.f4297b.getConfig());
    }

    public final Bitmap c() {
        return this.f4297b;
    }

    @Override
    public int getHeight() {
        return this.f4297b.getHeight();
    }

    @Override
    public int getWidth() {
        return this.f4297b.getWidth();
    }
}

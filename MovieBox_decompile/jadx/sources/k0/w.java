package k0;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;

final class w {

    public static final w f63472a = new w();

    private w() {
    }

    public final boolean a(Canvas canvas, float f10, float f11, float f12, float f13) {
        return canvas.quickReject(f10, f11, f12, f13);
    }

    public final boolean b(Canvas canvas, Path path) {
        return canvas.quickReject(path);
    }

    public final boolean c(Canvas canvas, RectF rectF) {
        return canvas.quickReject(rectF);
    }
}

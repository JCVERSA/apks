package k0;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;

final class m {

    public static final m f63468a = new m();

    private m() {
    }

    public final boolean a(Canvas canvas, Path path) {
        return canvas.clipOutPath(path);
    }

    public final boolean b(Canvas canvas, float f10, float f11, float f12, float f13) {
        return canvas.clipOutRect(f10, f11, f12, f13);
    }

    public final boolean c(Canvas canvas, int i10, int i11, int i12, int i13) {
        return canvas.clipOutRect(i10, i11, i12, i13);
    }

    public final boolean d(Canvas canvas, Rect rect) {
        return canvas.clipOutRect(rect);
    }

    public final boolean e(Canvas canvas, RectF rectF) {
        return canvas.clipOutRect(rectF);
    }
}

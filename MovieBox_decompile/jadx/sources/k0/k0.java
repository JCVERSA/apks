package k0;

import android.graphics.Paint;
import android.graphics.Rect;
import kotlin.jvm.JvmStatic;

final class k0 {

    public static final k0 f63467a = new k0();

    private k0() {
    }

    @JvmStatic
    public static final void a(Paint paint, CharSequence charSequence, int i10, int i11, Rect rect) {
        paint.getTextBounds(charSequence, i10, i11, rect);
    }
}

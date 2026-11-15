package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.PictureDrawable;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParseException;
import java.io.InputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f7a {
    public final boolean a;

    public f7a(boolean z) {
        this.a = z;
    }

    public final PictureDrawable a(InputStream inputStream) {
        float fH;
        float f;
        y45.j(inputStream, "source");
        try {
            SVG svgL = SVG.l(inputStream);
            y45.i(svgL, "getFromInputStream(source)");
            RectF rectFG = svgL.g();
            if (!this.a || rectFG == null) {
                fH = svgL.h();
                f = svgL.f();
            } else {
                fH = rectFG.width();
                f = rectFG.height();
            }
            if (rectFG == null && fH > 0.0f && f > 0.0f) {
                svgL.x(0.0f, 0.0f, fH, f);
            }
            return new PictureDrawable(svgL.r());
        } catch (SVGParseException unused) {
            return null;
        }
    }

    public f7a(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }
}

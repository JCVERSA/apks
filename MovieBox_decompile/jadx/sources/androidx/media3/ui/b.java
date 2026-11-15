package androidx.media3.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.ViewCompat;

public final class b {

    public static final b f13319g = new b(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    public final int f13320a;

    public final int f13321b;

    public final int f13322c;

    public final int f13323d;

    public final int f13324e;

    public final Typeface f13325f;

    public b(int i10, int i11, int i12, int i13, int i14, Typeface typeface) {
        this.f13320a = i10;
        this.f13321b = i11;
        this.f13322c = i12;
        this.f13323d = i13;
        this.f13324e = i14;
        this.f13325f = typeface;
    }

    public static b a(CaptioningManager.CaptionStyle captionStyle) {
        return new b(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f13319g.f13320a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f13319g.f13321b, captionStyle.hasWindowColor() ? captionStyle.windowColor : f13319g.f13322c, captionStyle.hasEdgeType() ? captionStyle.edgeType : f13319g.f13323d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f13319g.f13324e, captionStyle.getTypeface());
    }
}

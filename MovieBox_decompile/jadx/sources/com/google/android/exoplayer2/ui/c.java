package com.google.android.exoplayer2.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.core.view.ViewCompat;

public final class c {

    public static final c f26337g = new c(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    public final int f26338a;

    public final int f26339b;

    public final int f26340c;

    public final int f26341d;

    public final int f26342e;

    public final Typeface f26343f;

    public c(int i10, int i11, int i12, int i13, int i14, Typeface typeface) {
        this.f26338a = i10;
        this.f26339b = i11;
        this.f26340c = i12;
        this.f26341d = i13;
        this.f26342e = i14;
        this.f26343f = typeface;
    }

    public static c a(CaptioningManager.CaptionStyle captionStyle) {
        return com.google.android.exoplayer2.util.p0.f26854a >= 21 ? c(captionStyle) : b(captionStyle);
    }

    private static c b(CaptioningManager.CaptionStyle captionStyle) {
        return new c(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    private static c c(CaptioningManager.CaptionStyle captionStyle) {
        return new c(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f26337g.f26338a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f26337g.f26339b, captionStyle.hasWindowColor() ? captionStyle.windowColor : f26337g.f26340c, captionStyle.hasEdgeType() ? captionStyle.edgeType : f26337g.f26341d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f26337g.f26342e, captionStyle.getTypeface());
    }
}

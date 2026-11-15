package com.hunantv.media.a;

import android.annotation.TargetApi;
import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;

public final class a {
    public static final a a = new a(-1, 2130706432, 0, 0, -1, null);
    public int b;
    public int c;
    public final int d;
    public final int e;
    public final int f;
    public final Typeface g;

    public a(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = typeface;
    }

    @TargetApi(19)
    public static a a(CaptioningManager.CaptionStyle captionStyle) {
        return c(captionStyle);
    }

    @TargetApi(19)
    private static a b(CaptioningManager.CaptionStyle captionStyle) {
        return new a(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    @TargetApi(21)
    private static a c(CaptioningManager.CaptionStyle captionStyle) {
        return new a(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : a.b, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : a.c, captionStyle.hasWindowColor() ? captionStyle.windowColor : a.d, captionStyle.hasEdgeType() ? captionStyle.edgeType : a.e, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : a.f, captionStyle.getTypeface());
    }
}

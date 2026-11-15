package defpackage;

import android.content.Context;
import android.graphics.Typeface;

public final class l57 {
    public static final l57 a = new l57();
    public static Typeface b;

    public final Typeface a(Context context) {
        y45.j(context, "context");
        Typeface typeface = b;
        if (typeface != null) {
            return typeface;
        }
        try {
            Typeface typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), "tossymbol.ttf");
            b = typefaceCreateFromAsset;
            return typefaceCreateFromAsset;
        } catch (Exception unused) {
            bq5.f("font icon load error");
            return null;
        }
    }

    public final Typeface getCachedTypeface() {
        return b;
    }

    public final void setCachedTypeface(Typeface typeface) {
        b = typeface;
    }
}

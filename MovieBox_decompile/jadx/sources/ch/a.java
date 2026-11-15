package ch;

import android.content.res.Resources;
import android.util.TypedValue;

public final class a {

    public static final a f16932a = new a();

    private a() {
    }

    public final int a(float f10) {
        return (int) TypedValue.applyDimension(1, f10, Resources.getSystem().getDisplayMetrics());
    }
}

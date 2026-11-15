package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

class i0 extends c0 {

    private final WeakReference f1729b;

    public i0(Context context, Resources resources) {
        super(resources);
        this.f1729b = new WeakReference(context);
    }

    @Override
    public Drawable getDrawable(int i10) {
        Drawable drawableA = a(i10);
        Context context = (Context) this.f1729b.get();
        if (drawableA != null && context != null) {
            b0.h().x(context, i10, drawableA);
        }
        return drawableA;
    }
}

package me.zhanghai.android.materialratingbar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.content.res.AppCompatResources;
import defpackage.cy0;
import defpackage.lna;
import defpackage.uha;

public class a extends LayerDrawable {
    public a(Context context, boolean z) {
        super(new Drawable[]{c(z ? R.drawable.mrb_star_icon_black_36dp : R.drawable.mrb_star_border_icon_black_36dp, z ? R.attr.colorControlHighlight : R.attr.colorControlNormal, context), z ? b(R.drawable.mrb_star_icon_black_36dp, 0, context) : a(R.drawable.mrb_star_border_icon_black_36dp, R.attr.colorControlActivated, context), a(R.drawable.mrb_star_icon_black_36dp, R.attr.colorControlActivated, context)});
        setId(0, android.R.id.background);
        setId(1, android.R.id.secondaryProgress);
        setId(2, android.R.id.progress);
    }

    public static Drawable a(int i, int i2, Context context) {
        return new cy0(c(i, i2, context), 3, 1);
    }

    public static Drawable b(int i, int i2, Context context) {
        return new cy0(d(i, i2, context), 3, 1);
    }

    public static Drawable c(int i, int i2, Context context) {
        return d(i, uha.a(i2, context), context);
    }

    public static Drawable d(int i, int i2, Context context) {
        lna lnaVar = new lna(AppCompatResources.getDrawable(context, i));
        lnaVar.mutate();
        lnaVar.setTint(i2);
        return lnaVar;
    }

    public final lna e(int i) {
        Drawable drawableFindDrawableByLayerId = findDrawableByLayerId(i);
        if (i == 16908288) {
            return (lna) drawableFindDrawableByLayerId;
        }
        if (i == 16908301 || i == 16908303) {
            return (lna) ((cy0) drawableFindDrawableByLayerId).getDrawable();
        }
        throw new RuntimeException();
    }

    public float f() {
        Drawable drawableD = e(android.R.id.progress).d();
        return drawableD.getIntrinsicWidth() / drawableD.getIntrinsicHeight();
    }

    public void g(int i) {
        e(android.R.id.background).e(i);
        e(android.R.id.secondaryProgress).e(i);
        e(android.R.id.progress).e(i);
    }
}

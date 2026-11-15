package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;

public class cy0 extends ClipDrawable implements roa {
    public static final String d = "cy0";
    public Drawable b;
    public b c;

    public class b extends Drawable.ConstantState {
        public b() {
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        public Drawable newDrawable() {
            return cy0.this;
        }
    }

    public cy0(Drawable drawable, int i, int i2) {
        super(drawable, i, i2);
        this.c = new b();
        this.b = drawable;
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.c;
    }

    @Override
    public Drawable getDrawable() {
        return this.b;
    }

    @Override
    public void setTint(int i) {
        Object obj = this.b;
        if (obj instanceof roa) {
            ((roa) obj).setTint(i);
        } else {
            Log.w(d, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
            super.setTint(i);
        }
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        Object obj = this.b;
        if (obj instanceof roa) {
            ((roa) obj).setTintList(colorStateList);
        } else {
            Log.w(d, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
            super.setTintList(colorStateList);
        }
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        Object obj = this.b;
        if (obj instanceof roa) {
            ((roa) obj).setTintMode(mode);
        } else {
            Log.w(d, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
            super.setTintMode(mode);
        }
    }
}

package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;

class a extends Drawable {

    final ActionBarContainer f1641a;

    private static class C0015a {
        public static void a(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }
    }

    public a(ActionBarContainer actionBarContainer) {
        this.f1641a = actionBarContainer;
    }

    @Override
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f1641a;
        if (actionBarContainer.f1253h) {
            Drawable drawable = actionBarContainer.f1252g;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f1250e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f1641a;
        Drawable drawable3 = actionBarContainer2.f1251f;
        if (drawable3 == null || !actionBarContainer2.f1254i) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override
    public int getOpacity() {
        return 0;
    }

    @Override
    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f1641a;
        if (actionBarContainer.f1253h) {
            if (actionBarContainer.f1252g != null) {
                C0015a.a(actionBarContainer.f1250e, outline);
            }
        } else {
            Drawable drawable = actionBarContainer.f1250e;
            if (drawable != null) {
                C0015a.a(drawable, outline);
            }
        }
    }

    @Override
    public void setAlpha(int i10) {
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }
}

package y0;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.Toast;
import java.lang.reflect.Field;

public final class c extends Toast {

    public static final int f2306b = 0;

    public final Toast f2307a;

    public c(Context context, Toast toast) {
        super(context);
        this.f2307a = toast;
    }

    public static void a(View view, b bVar) {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                Field fieldT = a0.c.t(View.class, "mContext");
                if (fieldT != null) {
                    fieldT.set(view, bVar);
                    fieldT.setAccessible(true);
                    fieldT.set(view, bVar);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override
    public final int getDuration() {
        return this.f2307a.getDuration();
    }

    @Override
    public final int getGravity() {
        return this.f2307a.getGravity();
    }

    @Override
    public final float getHorizontalMargin() {
        return this.f2307a.getHorizontalMargin();
    }

    @Override
    public final float getVerticalMargin() {
        return this.f2307a.getVerticalMargin();
    }

    @Override
    public final View getView() {
        return this.f2307a.getView();
    }

    @Override
    public final int getXOffset() {
        return this.f2307a.getXOffset();
    }

    @Override
    public final int getYOffset() {
        return this.f2307a.getYOffset();
    }

    @Override
    public final void setDuration(int i2) {
        this.f2307a.setDuration(i2);
    }

    @Override
    public final void setGravity(int i2, int i3, int i4) {
        this.f2307a.setGravity(i2, i3, i4);
    }

    @Override
    public final void setMargin(float f2, float f3) {
        this.f2307a.setMargin(f2, f3);
    }

    @Override
    public final void setText(int i2) {
        this.f2307a.setText(i2);
    }

    @Override
    public final void setView(View view) {
        this.f2307a.setView(view);
        a(view, new b(view.getContext(), this));
    }

    @Override
    public final void show() {
        this.f2307a.show();
    }

    @Override
    public final void setText(CharSequence charSequence) {
        this.f2307a.setText(charSequence);
    }
}

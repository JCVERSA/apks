package ru.zdevs.zarchiver.ui.ctrl;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageView;
import ru.zdevs.zarchiver.R;
import t0.b;
import z0.c;

public class MenuToggleButton extends ImageView implements Checkable {

    public boolean f1782a;

    public final int f1783b;

    public final Paint f1784c;

    public MenuToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1783b = c.a(5);
        Paint paint = new Paint();
        this.f1784c = paint;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.c.f12d);
            setImageDrawable(c.h(getContext(), typedArrayObtainStyledAttributes.getResourceId(0, 0)));
            typedArrayObtainStyledAttributes.recycle();
        }
        if (!b.k(1536)) {
            setBackgroundDrawable(c.g(context, R.drawable.bg_selectable_button));
        }
        paint.setColor(c.c(getContext(), R.attr.colorPrimary));
        setClickable(true);
        int dimension = (int) getResources().getDimension(R.dimen.menu_item_toggle_padding);
        setPadding(dimension, dimension, dimension, dimension);
    }

    @Override
    public final boolean isChecked() {
        return this.f1782a;
    }

    @Override
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        if (this.f1782a) {
            int i2 = this.f1783b;
            canvas.drawRect(i2, measuredHeight - i2, measuredWidth - i2, measuredHeight, this.f1784c);
        }
    }

    @Override
    public final boolean performClick() {
        toggle();
        boolean zPerformClick = super.performClick();
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        return zPerformClick;
    }

    @Override
    public void setChecked(boolean z2) {
        this.f1782a = z2;
        invalidate();
    }

    @Override
    public final void toggle() {
        setChecked(!this.f1782a);
    }
}

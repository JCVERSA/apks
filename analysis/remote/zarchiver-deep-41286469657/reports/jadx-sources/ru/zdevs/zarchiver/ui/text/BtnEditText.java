package ru.zdevs.zarchiver.ui.text;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import z0.c;

public class BtnEditText extends ExEditText {

    public int f1972e;

    public View.OnClickListener f1973f;

    public BtnEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1972e = 0;
        this.f1973f = null;
    }

    public int getButton() {
        return this.f1972e;
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int right;
        if (this.f1973f != null && motionEvent.getAction() == 1 && isEnabled() && this.f1972e != 0) {
            Drawable[] compoundDrawables = getCompoundDrawables();
            int x2 = (int) motionEvent.getX();
            if (compoundDrawables[0] != null) {
                right = compoundDrawables[0].getBounds().width() + getLeft() + 50;
            } else {
                right = compoundDrawables[2] != null ? (getRight() - compoundDrawables[2].getBounds().width()) - 50 : 0;
            }
            if (compoundDrawables[0] == null ? x2 >= right : x2 <= right) {
                this.f1973f.onClick(this);
                motionEvent.setAction(3);
                performClick();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setButton(int i2) {
        this.f1972e = i2;
        if (i2 == 0) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        setMaxLines(1);
        Context context = getContext();
        int iD = c.d(context);
        Drawable drawableH = c.h(context, this.f1972e);
        if (drawableH == null) {
            return;
        }
        Drawable drawableMutate = drawableH.mutate();
        drawableMutate.setColorFilter(iD, PorterDuff.Mode.SRC_IN);
        boolean z2 = false;
        if (Build.VERSION.SDK_INT >= 17) {
            z2 = getResources().getConfiguration().getLayoutDirection() == 1;
        }
        Drawable drawable = z2 ? drawableMutate : null;
        if (z2) {
            drawableMutate = null;
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, drawableMutate, (Drawable) null);
    }

    public void setOnBtnClickListener(View.OnClickListener onClickListener) {
        this.f1973f = onClickListener;
    }
}

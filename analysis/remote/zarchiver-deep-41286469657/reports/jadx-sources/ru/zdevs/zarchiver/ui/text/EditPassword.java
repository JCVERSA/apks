package ru.zdevs.zarchiver.ui.text;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import ru.zdevs.zarchiver.R;
import z0.c;
import z0.f;

public class EditPassword extends ExEditText {

    public Drawable f1974e;

    public Drawable f1975f;

    public boolean f1976g;

    public boolean f1977h;

    public EditPassword(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setMaxLines(1);
        this.f1975f = c.h(getContext(), R.drawable.ic_visibility_off);
        this.f1974e = c.h(getContext(), R.drawable.ic_visibility);
        int iD = c.d(getContext());
        this.f1975f.setColorFilter(iD, PorterDuff.Mode.SRC_IN);
        this.f1974e.setColorFilter(iD, PorterDuff.Mode.SRC_IN);
        this.f1977h = f.d(this);
        if (!a0.c.K(getInputType(), 128)) {
            setInputType(128);
        }
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        if (this.f1976g) {
            setTransformationMethod(null);
        } else {
            setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        try {
            setSelection(selectionStart, selectionEnd);
        } catch (Exception unused) {
        }
        a();
        if (Build.VERSION.SDK_INT >= 26) {
            setAutofillHints(new String[]{"password"});
        }
    }

    public final void a() {
        Drawable drawable = this.f1976g ? this.f1975f : this.f1974e;
        boolean z2 = this.f1977h;
        Drawable drawable2 = z2 ? drawable : null;
        if (z2) {
            drawable = null;
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable2, (Drawable) null, drawable, (Drawable) null);
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int right;
        if (motionEvent.getAction() == 1 && isEnabled()) {
            Rect bounds = this.f1974e.getBounds();
            int x2 = (int) motionEvent.getX();
            if (this.f1977h) {
                right = bounds.width() + getLeft() + 50;
            } else {
                right = (getRight() - bounds.width()) - 50;
            }
            if (!this.f1977h ? x2 >= right : x2 <= right) {
                this.f1976g = !this.f1976g;
                int selectionStart = getSelectionStart();
                int selectionEnd = getSelectionEnd();
                if (this.f1976g) {
                    setTransformationMethod(null);
                } else {
                    setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                try {
                    setSelection(selectionStart, selectionEnd);
                } catch (Exception unused) {
                }
                a();
                motionEvent.setAction(3);
                performClick();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        if (z2) {
            a();
        } else {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }
}

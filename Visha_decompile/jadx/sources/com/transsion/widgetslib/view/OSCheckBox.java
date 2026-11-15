package com.transsion.widgetslib.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.bq5;
import defpackage.cv8;
import defpackage.d57;
import defpackage.olb;
import defpackage.yu8;

public class OSCheckBox extends CheckBox {
    public static final String TAG = "OSCheckBox";
    public cv8 b;
    public cv8 c;
    public cv8 d;
    public cv8 e;
    public StateListDrawable f;
    public boolean g;

    public OSCheckBox(Context context) {
        super(context);
        a(null);
    }

    public static yu8 getCheckDrawables(Context context) {
        yu8 yu8Var = new yu8();
        StateListDrawable stateListDrawable = new StateListDrawable();
        d57 d57VarC = d57.c(context, true);
        stateListDrawable.addState(new int[]{R.attr.state_checked, R.attr.state_enabled}, d57VarC);
        stateListDrawable.addState(new int[]{R.attr.state_checked, -16842910}, ContextCompat.getDrawable(context, com.transsion.widgetslib.R.drawable.os_check_drawable_end_checked));
        d57 d57VarD = d57.d(context, false, false);
        stateListDrawable.addState(new int[]{-16842912, -16842910}, d57VarD);
        d57 d57VarB = d57.b(context);
        stateListDrawable.addState(new int[0], d57VarB);
        yu8Var.setStateListDrawable(stateListDrawable);
        yu8Var.setCheckedDrawable(d57VarC);
        yu8Var.setNormalDrawable(d57VarB);
        yu8Var.setDisabledDrawable(d57VarD);
        return yu8Var;
    }

    public final void a(AttributeSet attributeSet) {
        if ((attributeSet == null ? -1 : attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", AuthInfo.Component.CODE_BUTTON, -1)) == -1) {
            setBackground(null);
            if (!olb.E) {
                b();
            }
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, com.transsion.widgetslib.R.styleable.OSCheckBox);
            setPictureMode(typedArrayObtainStyledAttributes.getBoolean(com.transsion.widgetslib.R.styleable.OSCheckBox_picture_mode, false));
            if (isChecked()) {
                this.b = this.c;
            } else {
                this.b = this.d;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void b() {
        yu8 checkDrawables = getCheckDrawables(getContext());
        if (checkDrawables.getStateListDrawable() != null) {
            StateListDrawable stateListDrawable = checkDrawables.getStateListDrawable();
            this.f = stateListDrawable;
            setButtonDrawable(stateListDrawable);
        }
        if (checkDrawables.getCheckedDrawable() instanceof d57) {
            this.c = checkDrawables.getCheckedDrawable();
        }
        if (checkDrawables.getNormalDrawable() instanceof d57) {
            this.d = checkDrawables.getNormalDrawable();
        }
        if (checkDrawables.getDisabledDrawable() instanceof d57) {
            this.e = checkDrawables.getDisabledDrawable();
        }
    }

    @Nullable
    public d57 getCheckedDrawable() {
        cv8 cv8Var = this.c;
        if (cv8Var instanceof d57) {
            return (d57) cv8Var;
        }
        return null;
    }

    @Nullable
    public d57 getDisabledDrawable() {
        cv8 cv8Var = this.e;
        if (cv8Var instanceof d57) {
            return (d57) cv8Var;
        }
        return null;
    }

    @Nullable
    public d57 getNormalDrawable() {
        cv8 cv8Var = this.d;
        if (cv8Var instanceof d57) {
            return (d57) cv8Var;
        }
        return null;
    }

    public boolean isStopAnimation() {
        return this.g;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cv8 cv8Var = this.b;
        if (cv8Var != null) {
            cv8Var.stop();
        }
    }

    @Override
    public void setButtonDrawable(@Nullable Drawable drawable) {
        super.setButtonDrawable(drawable);
        if (drawable != this.f) {
            this.c = null;
            this.d = null;
            this.e = null;
        }
    }

    @Override
    public void setChecked(boolean z) {
        cv8 cv8Var;
        cv8 cv8Var2;
        super.setChecked(z);
        String str = TAG;
        bq5.c(str, "setChecked, checked: " + z + ", getParent: " + getParent() + ", obj: " + this);
        cv8 cv8Var3 = this.b;
        if (cv8Var3 == null || (cv8Var = this.c) == null || (cv8Var2 = this.d) == null) {
            return;
        }
        if (z && cv8Var3 == cv8Var) {
            bq5.c(str, "setChecked, 111111: mCurrentDrawable: " + this.c);
            return;
        }
        if (!z && cv8Var3 == cv8Var2) {
            bq5.c(str, "setChecked, 222222: mCurrentDrawable: " + this.d);
            return;
        }
        if (!z) {
            cv8Var = cv8Var2;
        }
        this.b = cv8Var;
        if (cv8Var.isRunning()) {
            this.b.stop();
        }
        invalidate();
    }

    public void setCheckedFillColor(@ColorInt int i) {
        d57 normalDrawable = getNormalDrawable();
        if (normalDrawable != null) {
            normalDrawable.setCheckedFillColor(i);
        }
        d57 checkedDrawable = getCheckedDrawable();
        if (checkedDrawable != null) {
            checkedDrawable.setCheckedFillColor(i);
        }
    }

    public void setPictureMode(boolean z) {
        d57 normalDrawable = getNormalDrawable();
        if (normalDrawable != null) {
            normalDrawable.h(z, isEnabled());
        }
        d57 checkedDrawable = getCheckedDrawable();
        if (checkedDrawable != null) {
            checkedDrawable.h(z, isEnabled());
        }
        d57 disabledDrawable = getDisabledDrawable();
        if (disabledDrawable != null) {
            disabledDrawable.h(z, isEnabled());
        }
    }

    public void setShowBorderShadow(boolean z, boolean z2) {
        d57 normalDrawable = getNormalDrawable();
        if (normalDrawable != null) {
            normalDrawable.setShowBorderShadow(z);
        }
        d57 checkedDrawable = getCheckedDrawable();
        if (checkedDrawable != null) {
            checkedDrawable.setShowBorderShadow(z2);
        }
    }

    public void setStopAnimation(boolean z) {
        this.g = z;
    }

    public void setTickColor(@ColorInt int i) {
        d57 normalDrawable = getNormalDrawable();
        if (normalDrawable != null) {
            normalDrawable.setTickColor(i);
        }
        d57 checkedDrawable = getCheckedDrawable();
        if (checkedDrawable != null) {
            checkedDrawable.setTickColor(i);
        }
    }

    public void setUncheckedBorderColor(@ColorInt int i) {
        d57 normalDrawable = getNormalDrawable();
        if (normalDrawable != null) {
            normalDrawable.setUncheckedBorderColor(i);
        }
        d57 checkedDrawable = getCheckedDrawable();
        if (checkedDrawable != null) {
            checkedDrawable.setUncheckedBorderColor(i);
        }
    }

    public void setUncheckedFillColor(@ColorInt int i) {
        d57 normalDrawable = getNormalDrawable();
        if (normalDrawable != null) {
            normalDrawable.setUncheckedFillColor(i);
        }
        d57 checkedDrawable = getCheckedDrawable();
        if (checkedDrawable != null) {
            checkedDrawable.setUncheckedFillColor(i);
        }
    }

    public OSCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public OSCheckBox(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }
}

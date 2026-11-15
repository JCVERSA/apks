package com.transsion.widgetslib.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.CheckedTextView;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import defpackage.bq5;
import defpackage.cv8;
import defpackage.d57;
import defpackage.ha7;
import defpackage.olb;
import defpackage.yu8;

public class OSCheckedTextView extends CheckedTextView {
    public static final String TAG = "OSCheckedTextView";
    public int b;
    public cv8 c;
    public cv8 d;
    public cv8 e;
    public StateListDrawable f;
    public cv8 g;
    public cv8 h;
    public cv8 i;
    public StateListDrawable j;
    public cv8 k;
    public cv8 l;
    public cv8 m;
    public StateListDrawable n;
    public cv8 o;
    public cv8 p;
    public cv8 q;
    public StateListDrawable r;
    public cv8 s;
    public cv8 t;
    public cv8 u;
    public StateListDrawable v;

    public OSCheckedTextView(Context context) {
        super(context);
        this.b = 0;
        a(null);
    }

    private Drawable getDefaultCheckDrawable() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(R.attr.listChoiceIndicatorMultiple, typedValue, true)) {
            return olb.Z(getContext()) ? AppCompatResources.getDrawable(getContext(), com.transsion.widgetslib.R.drawable.os_ultra_small_btn_check_material_anim) : ContextCompat.getDrawable(getContext(), typedValue.resourceId);
        }
        return null;
    }

    private Drawable getDefaultSingleDrawable() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(R.attr.listChoiceIndicatorSingle, typedValue, true)) {
            return olb.Z(getContext()) ? AppCompatResources.getDrawable(getContext(), com.transsion.widgetslib.R.drawable.os_ultra_small_btn_radio_material_anim) : ContextCompat.getDrawable(getContext(), typedValue.resourceId);
        }
        return null;
    }

    private yu8 getReverseDrawableBean() {
        if (!olb.E && this.b == 2) {
            return OSCheckBox.getCheckDrawables(getContext());
        }
        return null;
    }

    public final void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, com.transsion.widgetslib.R.styleable.OSCheckedTextView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == com.transsion.widgetslib.R.styleable.OSCheckedTextView_check_mark_style) {
                    this.b = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (getCheckMarkDrawable() == null) {
            c();
        }
    }

    public final void b() {
        yu8 reverseDrawableBean = getReverseDrawableBean();
        if (reverseDrawableBean == null) {
            return;
        }
        if (reverseDrawableBean.getStateListDrawable() != null) {
            this.v = reverseDrawableBean.getStateListDrawable();
        }
        if (reverseDrawableBean.getCheckedDrawable() != null) {
            this.t = reverseDrawableBean.getCheckedDrawable();
        }
        if (reverseDrawableBean.getNormalDrawable() != null) {
            this.u = reverseDrawableBean.getNormalDrawable();
        }
        this.s = getCurrentDrawable(isChecked(), this.t, this.u);
    }

    public final void c() {
        yu8 reverseDrawableBean = getReverseDrawableBean();
        if (reverseDrawableBean == null) {
            if (this.b == 1) {
                setCheckMarkDrawable(getDefaultSingleDrawable());
            }
            if (this.b == 2) {
                setCheckMarkDrawable(getDefaultCheckDrawable());
                return;
            }
            return;
        }
        if (reverseDrawableBean.getStateListDrawable() != null) {
            StateListDrawable stateListDrawable = reverseDrawableBean.getStateListDrawable();
            this.f = stateListDrawable;
            setCheckMarkDrawable(stateListDrawable);
        }
        if (reverseDrawableBean.getCheckedDrawable() != null) {
            this.d = reverseDrawableBean.getCheckedDrawable();
        }
        if (reverseDrawableBean.getNormalDrawable() != null) {
            this.e = reverseDrawableBean.getNormalDrawable();
        }
        this.c = getCurrentDrawable(isChecked(), this.d, this.e);
    }

    public final void d() {
        yu8 reverseDrawableBean = getReverseDrawableBean();
        if (reverseDrawableBean == null) {
            return;
        }
        if (reverseDrawableBean.getStateListDrawable() != null) {
            this.n = reverseDrawableBean.getStateListDrawable();
        }
        if (reverseDrawableBean.getCheckedDrawable() != null) {
            this.l = reverseDrawableBean.getCheckedDrawable();
        }
        if (reverseDrawableBean.getNormalDrawable() != null) {
            this.m = reverseDrawableBean.getNormalDrawable();
        }
        this.k = getCurrentDrawable(isChecked(), this.l, this.m);
    }

    public final void e() {
        yu8 reverseDrawableBean = getReverseDrawableBean();
        if (reverseDrawableBean == null) {
            return;
        }
        if (reverseDrawableBean.getStateListDrawable() != null) {
            this.j = reverseDrawableBean.getStateListDrawable();
        }
        if (reverseDrawableBean.getCheckedDrawable() != null) {
            this.h = reverseDrawableBean.getCheckedDrawable();
        }
        if (reverseDrawableBean.getNormalDrawable() != null) {
            this.i = reverseDrawableBean.getNormalDrawable();
        }
        this.g = getCurrentDrawable(isChecked(), this.h, this.i);
    }

    public final void f() {
        yu8 reverseDrawableBean = getReverseDrawableBean();
        if (reverseDrawableBean == null) {
            return;
        }
        if (reverseDrawableBean.getStateListDrawable() != null) {
            this.r = reverseDrawableBean.getStateListDrawable();
        }
        if (reverseDrawableBean.getCheckedDrawable() != null) {
            this.p = reverseDrawableBean.getCheckedDrawable();
        }
        if (reverseDrawableBean.getNormalDrawable() != null) {
            this.q = reverseDrawableBean.getNormalDrawable();
        }
        this.o = getCurrentDrawable(isChecked(), this.p, this.q);
    }

    public final Drawable g(Drawable drawable) {
        if (!(drawable instanceof d57)) {
            return drawable instanceof ha7 ? getDefaultSingleDrawable() : drawable;
        }
        if (olb.E) {
            return getDefaultCheckDrawable();
        }
        this.b = 2;
        b();
        return this.v;
    }

    public cv8 getCurrentDrawable(boolean z, cv8 cv8Var, cv8 cv8Var2) {
        return z ? cv8Var : cv8Var2;
    }

    public final Drawable h(Drawable drawable) {
        if (!(drawable instanceof d57)) {
            return drawable instanceof ha7 ? getDefaultSingleDrawable() : drawable;
        }
        if (olb.E) {
            return getDefaultCheckDrawable();
        }
        this.b = 2;
        d();
        return this.n;
    }

    public final Drawable i(Drawable drawable) {
        if (!(drawable instanceof d57)) {
            return drawable instanceof ha7 ? getDefaultSingleDrawable() : drawable;
        }
        if (olb.E) {
            return getDefaultCheckDrawable();
        }
        this.b = 2;
        e();
        return this.j;
    }

    public final Drawable j(Drawable drawable) {
        if (!(drawable instanceof d57)) {
            return drawable instanceof ha7 ? getDefaultSingleDrawable() : drawable;
        }
        if (olb.E) {
            return getDefaultCheckDrawable();
        }
        this.b = 2;
        f();
        return this.r;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cv8 cv8Var = this.c;
        if (cv8Var != null) {
            cv8Var.stop();
        }
        cv8 cv8Var2 = this.g;
        if (cv8Var2 != null) {
            cv8Var2.stop();
        }
        cv8 cv8Var3 = this.k;
        if (cv8Var3 != null) {
            cv8Var3.stop();
        }
        cv8 cv8Var4 = this.o;
        if (cv8Var4 != null) {
            cv8Var4.stop();
        }
        cv8 cv8Var5 = this.s;
        if (cv8Var5 != null) {
            cv8Var5.stop();
        }
    }

    @Override
    public void setCheckMarkDrawable(@Nullable Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        if (drawable != this.f) {
            this.d = null;
            this.e = null;
        }
    }

    @Override
    public void setChecked(boolean z) {
        cv8 cv8Var;
        cv8 cv8Var2;
        cv8 cv8Var3;
        cv8 cv8Var4;
        cv8 cv8Var5;
        cv8 cv8Var6;
        cv8 cv8Var7;
        cv8 cv8Var8;
        cv8 cv8Var9;
        cv8 cv8Var10;
        super.setChecked(z);
        String str = TAG;
        bq5.c(str, "setChecked, checked: " + z + ", getParent: " + getParent() + ", obj: " + this);
        cv8 cv8Var11 = this.c;
        if (cv8Var11 != null && (cv8Var9 = this.d) != null && (cv8Var10 = this.e) != null) {
            if (z && cv8Var11 == cv8Var9) {
                bq5.c(str, "setChecked, 111111: mCurrentDrawableCheckMark: " + this.d);
                return;
            }
            if (!z && cv8Var11 == cv8Var10) {
                bq5.c(str, "setChecked, 222222: mCurrentDrawableCheckMark: " + this.e);
                return;
            }
            if (!z) {
                cv8Var9 = cv8Var10;
            }
            this.c = cv8Var9;
        }
        cv8 cv8Var12 = this.g;
        if (cv8Var12 != null && (cv8Var7 = this.h) != null && (cv8Var8 = this.i) != null) {
            if (z && cv8Var12 == cv8Var7) {
                bq5.c(str, "setChecked, 111111: mCurrentDrawableStart: " + this.h);
                return;
            }
            if (!z && cv8Var12 == cv8Var8) {
                bq5.c(str, "setChecked, 222222: mCurrentDrawableStart: " + this.i);
                return;
            }
            if (!z) {
                cv8Var7 = cv8Var8;
            }
            this.g = cv8Var7;
        }
        cv8 cv8Var13 = this.k;
        if (cv8Var13 != null && (cv8Var5 = this.l) != null && (cv8Var6 = this.m) != null) {
            if (z && cv8Var13 == cv8Var5) {
                bq5.c(str, "setChecked, 111111: mCurrentDrawableEnd: " + this.l);
                return;
            }
            if (!z && cv8Var13 == cv8Var6) {
                bq5.c(str, "setChecked, 222222: mCurrentDrawableEnd: " + this.m);
                return;
            }
            if (!z) {
                cv8Var5 = cv8Var6;
            }
            this.k = cv8Var5;
        }
        cv8 cv8Var14 = this.o;
        if (cv8Var14 != null && (cv8Var3 = this.p) != null && (cv8Var4 = this.q) != null) {
            if (z && cv8Var14 == cv8Var3) {
                bq5.c(str, "setChecked, 111111: mCurrentDrawableTop: " + this.p);
                return;
            }
            if (!z && cv8Var14 == cv8Var4) {
                bq5.c(str, "setChecked, 222222: mCurrentDrawableTop: " + this.q);
                return;
            }
            if (!z) {
                cv8Var3 = cv8Var4;
            }
            this.o = cv8Var3;
        }
        cv8 cv8Var15 = this.s;
        if (cv8Var15 == null || (cv8Var = this.t) == null || (cv8Var2 = this.u) == null) {
            return;
        }
        if (z && cv8Var15 == cv8Var) {
            bq5.c(str, "setChecked, 111111: mCurrentDrawableBottom: " + this.t);
            return;
        }
        if (z || cv8Var15 != cv8Var2) {
            if (!z) {
                cv8Var = cv8Var2;
            }
            this.s = cv8Var;
        } else {
            bq5.c(str, "setChecked, 222222: mCurrentDrawableBottom: " + this.u);
        }
    }

    @Override
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i(drawable), j(drawable2), h(drawable3), g(drawable4));
    }

    @Override
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(i(drawable), j(drawable2), h(drawable3), g(drawable4));
    }

    public OSCheckedTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        a(attributeSet);
    }

    public OSCheckedTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 0;
        a(attributeSet);
    }
}

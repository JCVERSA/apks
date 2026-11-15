package me.zhanghai.android.materialratingbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.RatingBar;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.TintTypedArray;
import defpackage.p23;
import defpackage.roa;

@SuppressLint({"AppCompatCustomView"})
public class MaterialRatingBar extends RatingBar {
    public static final String e = "MaterialRatingBar";
    public c b;
    public me.zhanghai.android.materialratingbar.a c;
    public float d;

    public interface b {
    }

    public static class c {
        public ColorStateList a;
        public PorterDuff.Mode b;
        public boolean c;
        public boolean d;
        public ColorStateList e;
        public PorterDuff.Mode f;
        public boolean g;
        public boolean h;
        public ColorStateList i;
        public PorterDuff.Mode j;
        public boolean k;
        public boolean l;
        public ColorStateList m;
        public PorterDuff.Mode n;
        public boolean o;
        public boolean p;

        public c() {
        }
    }

    public MaterialRatingBar(Context context) {
        super(context);
        this.b = new c();
        h(null, 0);
    }

    public final void a() {
        Drawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable == null) {
            return;
        }
        c cVar = this.b;
        if (cVar.o || cVar.p) {
            indeterminateDrawable.mutate();
            c cVar2 = this.b;
            f(indeterminateDrawable, cVar2.m, cVar2.o, cVar2.n, cVar2.p);
        }
    }

    public final void b() {
        Drawable drawableG;
        if (getProgressDrawable() == null) {
            return;
        }
        c cVar = this.b;
        if ((cVar.c || cVar.d) && (drawableG = g(android.R.id.progress, true)) != null) {
            c cVar2 = this.b;
            f(drawableG, cVar2.a, cVar2.c, cVar2.b, cVar2.d);
        }
    }

    public final void c() {
        Drawable drawableG;
        if (getProgressDrawable() == null) {
            return;
        }
        c cVar = this.b;
        if ((cVar.k || cVar.l) && (drawableG = g(android.R.id.background, false)) != null) {
            c cVar2 = this.b;
            f(drawableG, cVar2.i, cVar2.k, cVar2.j, cVar2.l);
        }
    }

    public final void d() {
        if (getProgressDrawable() == null) {
            return;
        }
        b();
        c();
        e();
    }

    public final void e() {
        Drawable drawableG;
        if (getProgressDrawable() == null) {
            return;
        }
        c cVar = this.b;
        if ((cVar.g || cVar.h) && (drawableG = g(android.R.id.secondaryProgress, false)) != null) {
            c cVar2 = this.b;
            f(drawableG, cVar2.e, cVar2.g, cVar2.f, cVar2.h);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(Drawable drawable, ColorStateList colorStateList, boolean z, PorterDuff.Mode mode, boolean z2) {
        if (z || z2) {
            if (z) {
                if (drawable instanceof roa) {
                    ((roa) drawable).setTintList(colorStateList);
                } else {
                    i();
                    drawable.setTintList(colorStateList);
                }
            }
            if (z2) {
                if (drawable instanceof roa) {
                    ((roa) drawable).setTintMode(mode);
                } else {
                    i();
                    drawable.setTintMode(mode);
                }
            }
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
        }
    }

    public final Drawable g(int i, boolean z) {
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable == null) {
            return null;
        }
        progressDrawable.mutate();
        Drawable drawableFindDrawableByLayerId = progressDrawable instanceof LayerDrawable ? ((LayerDrawable) progressDrawable).findDrawableByLayerId(i) : null;
        return (drawableFindDrawableByLayerId == null && z) ? progressDrawable : drawableFindDrawableByLayerId;
    }

    @Override
    @Nullable
    public ColorStateList getIndeterminateTintList() {
        j();
        return getSupportIndeterminateTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getIndeterminateTintMode() {
        j();
        return getSupportIndeterminateTintMode();
    }

    public b getOnRatingChangeListener() {
        return null;
    }

    @Override
    @Nullable
    public ColorStateList getProgressBackgroundTintList() {
        j();
        return getSupportProgressBackgroundTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getProgressBackgroundTintMode() {
        j();
        return getSupportProgressBackgroundTintMode();
    }

    @Override
    @Nullable
    public ColorStateList getProgressTintList() {
        if (this.b == null) {
            return null;
        }
        j();
        return getSupportProgressTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getProgressTintMode() {
        j();
        return getSupportProgressTintMode();
    }

    @Override
    @Nullable
    public ColorStateList getSecondaryProgressTintList() {
        j();
        return getSupportSecondaryProgressTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSecondaryProgressTintMode() {
        j();
        return getSupportSecondaryProgressTintMode();
    }

    @Nullable
    public ColorStateList getSupportIndeterminateTintList() {
        return this.b.m;
    }

    @Nullable
    public PorterDuff.Mode getSupportIndeterminateTintMode() {
        return this.b.n;
    }

    @Nullable
    public ColorStateList getSupportProgressBackgroundTintList() {
        return this.b.i;
    }

    @Nullable
    public PorterDuff.Mode getSupportProgressBackgroundTintMode() {
        return this.b.j;
    }

    @Nullable
    public ColorStateList getSupportProgressTintList() {
        return this.b.a;
    }

    @Nullable
    public PorterDuff.Mode getSupportProgressTintMode() {
        return this.b.b;
    }

    @Nullable
    public ColorStateList getSupportSecondaryProgressTintList() {
        return this.b.e;
    }

    @Nullable
    public PorterDuff.Mode getSupportSecondaryProgressTintMode() {
        return this.b.f;
    }

    public final void h(AttributeSet attributeSet, int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, R.styleable.MaterialRatingBar, i, 0);
        int i2 = R.styleable.MaterialRatingBar_mrb_progressTint;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
            this.b.a = tintTypedArrayObtainStyledAttributes.getColorStateList(i2);
            this.b.c = true;
        }
        int i3 = R.styleable.MaterialRatingBar_mrb_progressTintMode;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i3)) {
            this.b.b = p23.a(tintTypedArrayObtainStyledAttributes.getInt(i3, -1), null);
            this.b.d = true;
        }
        int i4 = R.styleable.MaterialRatingBar_mrb_secondaryProgressTint;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i4)) {
            this.b.e = tintTypedArrayObtainStyledAttributes.getColorStateList(i4);
            this.b.g = true;
        }
        int i5 = R.styleable.MaterialRatingBar_mrb_secondaryProgressTintMode;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i5)) {
            this.b.f = p23.a(tintTypedArrayObtainStyledAttributes.getInt(i5, -1), null);
            this.b.h = true;
        }
        int i6 = R.styleable.MaterialRatingBar_mrb_progressBackgroundTint;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i6)) {
            this.b.i = tintTypedArrayObtainStyledAttributes.getColorStateList(i6);
            this.b.k = true;
        }
        int i7 = R.styleable.MaterialRatingBar_mrb_progressBackgroundTintMode;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i7)) {
            this.b.j = p23.a(tintTypedArrayObtainStyledAttributes.getInt(i7, -1), null);
            this.b.l = true;
        }
        int i8 = R.styleable.MaterialRatingBar_mrb_indeterminateTint;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i8)) {
            this.b.m = tintTypedArrayObtainStyledAttributes.getColorStateList(i8);
            this.b.o = true;
        }
        int i9 = R.styleable.MaterialRatingBar_mrb_indeterminateTintMode;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i9)) {
            this.b.n = p23.a(tintTypedArrayObtainStyledAttributes.getInt(i9, -1), null);
            this.b.p = true;
        }
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialRatingBar_mrb_fillBackgroundStars, isIndicator());
        tintTypedArrayObtainStyledAttributes.recycle();
        me.zhanghai.android.materialratingbar.a aVar = new me.zhanghai.android.materialratingbar.a(getContext(), z);
        this.c = aVar;
        aVar.g(getNumStars());
        setProgressDrawable(this.c);
    }

    public final void i() {
        Log.w(e, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
    }

    public final void j() {
        Log.w(e, "Non-support version of tint method called, this is error-prone and will crash below Lollipop if you are calling it as a method of RatingBar instead of MaterialRatingBar");
    }

    @Override
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredHeight = getMeasuredHeight();
        setMeasuredDimension(View.resolveSizeAndState(Math.round(measuredHeight * this.c.f() * getNumStars()), i, 0), measuredHeight);
    }

    @Override
    public void setIndeterminateDrawable(Drawable drawable) {
        super.setIndeterminateDrawable(drawable);
        if (this.b != null) {
            a();
        }
    }

    @Override
    public void setIndeterminateTintList(@Nullable ColorStateList colorStateList) {
        j();
        setSupportIndeterminateTintList(colorStateList);
    }

    @Override
    public void setIndeterminateTintMode(@Nullable PorterDuff.Mode mode) {
        j();
        setSupportIndeterminateTintMode(mode);
    }

    @Override
    public void setNumStars(int i) {
        super.setNumStars(i);
        me.zhanghai.android.materialratingbar.a aVar = this.c;
        if (aVar != null) {
            aVar.g(i);
        }
    }

    public void setOnRatingChangeListener(b bVar) {
    }

    @Override
    public void setProgressBackgroundTintList(@Nullable ColorStateList colorStateList) {
        j();
        setSupportProgressBackgroundTintList(colorStateList);
    }

    @Override
    public void setProgressBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        j();
        setSupportProgressBackgroundTintMode(mode);
    }

    @Override
    public void setProgressDrawable(Drawable drawable) {
        super.setProgressDrawable(drawable);
        if (this.b != null) {
            d();
        }
    }

    @Override
    public void setProgressTintList(@Nullable ColorStateList colorStateList) {
        j();
        setSupportProgressTintList(colorStateList);
    }

    @Override
    public void setProgressTintMode(@Nullable PorterDuff.Mode mode) {
        j();
        setSupportProgressTintMode(mode);
    }

    @Override
    public synchronized void setSecondaryProgress(int i) {
        super.setSecondaryProgress(i);
        this.d = getRating();
    }

    @Override
    public void setSecondaryProgressTintList(@Nullable ColorStateList colorStateList) {
        j();
        setSupportSecondaryProgressTintList(colorStateList);
    }

    @Override
    public void setSecondaryProgressTintMode(@Nullable PorterDuff.Mode mode) {
        j();
        setSupportSecondaryProgressTintMode(mode);
    }

    public void setSupportIndeterminateTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.b;
        cVar.m = colorStateList;
        cVar.o = true;
        a();
    }

    public void setSupportIndeterminateTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.b;
        cVar.n = mode;
        cVar.p = true;
        a();
    }

    public void setSupportProgressBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.b;
        cVar.i = colorStateList;
        cVar.k = true;
        c();
    }

    public void setSupportProgressBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.b;
        cVar.j = mode;
        cVar.l = true;
        c();
    }

    public void setSupportProgressTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.b;
        cVar.a = colorStateList;
        cVar.c = true;
        b();
    }

    public void setSupportProgressTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.b;
        cVar.b = mode;
        cVar.d = true;
        b();
    }

    public void setSupportSecondaryProgressTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.b;
        cVar.e = colorStateList;
        cVar.g = true;
        e();
    }

    public void setSupportSecondaryProgressTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.b;
        cVar.f = mode;
        cVar.h = true;
        e();
    }

    public MaterialRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new c();
        h(attributeSet, 0);
    }

    public MaterialRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new c();
        h(attributeSet, i);
    }
}

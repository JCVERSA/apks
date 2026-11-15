package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;

final class a {

    private final Rect f28033a;

    private final ColorStateList f28034b;

    private final ColorStateList f28035c;

    private final ColorStateList f28036d;

    private final int f28037e;

    private final cb.n f28038f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, cb.n nVar, Rect rect) {
        androidx.core.util.i.d(rect.left);
        androidx.core.util.i.d(rect.top);
        androidx.core.util.i.d(rect.right);
        androidx.core.util.i.d(rect.bottom);
        this.f28033a = rect;
        this.f28034b = colorStateList2;
        this.f28035c = colorStateList;
        this.f28036d = colorStateList3;
        this.f28037e = i10;
        this.f28038f = nVar;
    }

    static a a(Context context, int i10) {
        androidx.core.util.i.b(i10 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R$styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA = za.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA2 = za.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA3 = za.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        cb.n nVarM = cb.n.b(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new a(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, nVarM, rect);
    }

    int b() {
        return this.f28033a.bottom;
    }

    int c() {
        return this.f28033a.top;
    }

    void d(TextView textView) {
        e(textView, null, null);
    }

    void e(TextView textView, ColorStateList colorStateList, ColorStateList colorStateList2) {
        cb.i iVar = new cb.i();
        cb.i iVar2 = new cb.i();
        iVar.setShapeAppearanceModel(this.f28038f);
        iVar2.setShapeAppearanceModel(this.f28038f);
        if (colorStateList == null) {
            colorStateList = this.f28035c;
        }
        iVar.d0(colorStateList);
        iVar.m0(this.f28037e, this.f28036d);
        if (colorStateList2 == null) {
            colorStateList2 = this.f28034b;
        }
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f28034b.withAlpha(30), iVar, iVar2);
        Rect rect = this.f28033a;
        ViewCompat.setBackground(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}

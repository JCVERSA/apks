package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

public class j0 {

    private final Context f1735a;

    private final TypedArray f1736b;

    private TypedValue f1737c;

    private j0(Context context, TypedArray typedArray) {
        this.f1735a = context;
        this.f1736b = typedArray;
    }

    public static j0 t(Context context, int i10, int[] iArr) {
        return new j0(context, context.obtainStyledAttributes(i10, iArr));
    }

    public static j0 u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new j0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static j0 v(Context context, AttributeSet attributeSet, int[] iArr, int i10, int i11) {
        return new j0(context, context.obtainStyledAttributes(attributeSet, iArr, i10, i11));
    }

    public boolean a(int i10, boolean z10) {
        return this.f1736b.getBoolean(i10, z10);
    }

    public int b(int i10, int i11) {
        return this.f1736b.getColor(i10, i11);
    }

    public ColorStateList c(int i10) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!this.f1736b.hasValue(i10) || (resourceId = this.f1736b.getResourceId(i10, 0)) == 0 || (colorStateListA = g.a.a(this.f1735a, resourceId)) == null) ? this.f1736b.getColorStateList(i10) : colorStateListA;
    }

    public float d(int i10, float f10) {
        return this.f1736b.getDimension(i10, f10);
    }

    public int e(int i10, int i11) {
        return this.f1736b.getDimensionPixelOffset(i10, i11);
    }

    public int f(int i10, int i11) {
        return this.f1736b.getDimensionPixelSize(i10, i11);
    }

    public Drawable g(int i10) {
        int resourceId;
        return (!this.f1736b.hasValue(i10) || (resourceId = this.f1736b.getResourceId(i10, 0)) == 0) ? this.f1736b.getDrawable(i10) : g.a.b(this.f1735a, resourceId);
    }

    public Drawable h(int i10) {
        int resourceId;
        if (!this.f1736b.hasValue(i10) || (resourceId = this.f1736b.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return f.b().d(this.f1735a, resourceId, true);
    }

    public float i(int i10, float f10) {
        return this.f1736b.getFloat(i10, f10);
    }

    public Typeface j(int i10, int i11, y0.h.e eVar) {
        int resourceId = this.f1736b.getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1737c == null) {
            this.f1737c = new TypedValue();
        }
        return y0.h.h(this.f1735a, resourceId, this.f1737c, i11, eVar);
    }

    public int k(int i10, int i11) {
        return this.f1736b.getInt(i10, i11);
    }

    public int l(int i10, int i11) {
        return this.f1736b.getInteger(i10, i11);
    }

    public int m(int i10, int i11) {
        return this.f1736b.getLayoutDimension(i10, i11);
    }

    public int n(int i10, int i11) {
        return this.f1736b.getResourceId(i10, i11);
    }

    public String o(int i10) {
        return this.f1736b.getString(i10);
    }

    public CharSequence p(int i10) {
        return this.f1736b.getText(i10);
    }

    public CharSequence[] q(int i10) {
        return this.f1736b.getTextArray(i10);
    }

    public TypedArray r() {
        return this.f1736b;
    }

    public boolean s(int i10) {
        return this.f1736b.hasValue(i10);
    }

    public TypedValue w(int i10) {
        return this.f1736b.peekValue(i10);
    }

    public void x() {
        this.f1736b.recycle();
    }
}

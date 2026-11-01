package ru.zdevs.zarchiver.ui.layout;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;
import v0.h;
import z0.c;
import z0.f;

public final class a extends LinearLayout implements View.OnClickListener {

    public int f1931a;

    public int f1932b;

    public static class C0039a {

        public final String f1933a;

        public final int f1934b;

        public final int f1935c;

        public final int f1936d;

        public final int f1937e;

        public C0039a(String str, int i2, int i3, int i4, int i5) {
            this.f1933a = str;
            this.f1934b = i2;
            this.f1935c = i3;
            this.f1936d = i4;
            this.f1937e = i5;
        }
    }

    public static class b extends TextView {

        public String f1938a;

        public final Drawable f1939b;

        public final Drawable f1940c;

        public Drawable f1941d;

        public Drawable f1942e;

        public final int f1943f;

        public final int f1944g;

        public b(Context context, Drawable drawable, int i2, int i3, int i4) {
            super(context, null);
            setClickable(true);
            this.f1939b = drawable;
            this.f1943f = i3;
            if (i2 != 0) {
                this.f1940c = c.i(getResources(), null, i2);
            }
            this.f1944g = i4;
            setTextColor(i4);
            Drawable drawable2 = getResources().getDrawable(R.drawable.bg_chips);
            this.f1941d = drawable2;
            drawable2.setColorFilter(i3, PorterDuff.Mode.MULTIPLY);
            Drawable drawable3 = getResources().getDrawable(R.drawable.bg_chips_select);
            this.f1942e = drawable3;
            drawable3.setColorFilter(i3, PorterDuff.Mode.MULTIPLY);
            if (Build.VERSION.SDK_INT >= 21) {
                StateListDrawable stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(new int[]{android.R.attr.state_selected}, this.f1942e);
                stateListDrawable.addState(new int[]{android.R.attr.state_enabled}, this.f1941d);
                f.f(this, stateListDrawable);
            }
        }

        @Override
        public final void setSelected(boolean z2) {
            Drawable drawable;
            super.setSelected(z2);
            if (!z2 || (drawable = this.f1940c) == null) {
                drawable = this.f1939b;
            }
            f.i(drawable, z2 ? -1 : this.f1943f);
            boolean zD = f.d(this);
            Drawable drawable2 = zD ? null : drawable;
            if (!zD) {
                drawable = null;
            }
            setCompoundDrawablesWithIntrinsicBounds(drawable2, (Drawable) null, drawable, (Drawable) null);
            setTextColor(z2 ? -1 : this.f1944g);
            if (Build.VERSION.SDK_INT < 21) {
                f.f(this, z2 ? this.f1942e : this.f1941d);
            }
        }
    }

    public a(Context context) {
        super(context, null);
        this.f1931a = 0;
        this.f1932b = 0;
        setOrientation(0);
        int iA = c.a(4);
        setPadding(iA, Build.VERSION.SDK_INT < 21 ? iA : 0, iA, iA);
    }

    public final void a(C0039a[] c0039aArr, String[] strArr) {
        boolean z2;
        int i2;
        int i3;
        C0039a[] c0039aArr2 = c0039aArr;
        removeAllViews();
        int i4 = 1;
        this.f1931a = 1;
        this.f1932b = 1;
        Resources resources = getResources();
        int dimension = (int) resources.getDimension(R.dimen.chips_item_height);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, dimension);
        layoutParams.leftMargin = 2;
        layoutParams.rightMargin = 2;
        int iC = c.c(getContext(), android.R.attr.actionMenuTextColor);
        int length = c0039aArr2.length;
        int i5 = 0;
        while (i5 < length) {
            C0039a c0039a = c0039aArr2[i5];
            Drawable drawableI = c.i(resources, null, c0039a.f1934b);
            if (drawableI == null) {
                i2 = length;
                i3 = i5;
            } else {
                String str = c0039a.f1933a;
                if (strArr != 0) {
                    int length2 = strArr.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length2) {
                            z2 = false;
                            break;
                        } else {
                            if (h.f(strArr[i6], str)) {
                                z2 = true;
                                break;
                            }
                            i6++;
                        }
                    }
                } else {
                    z2 = false;
                    break;
                }
                if (z2 && getChildCount() >= this.f1931a) {
                    this.f1932b += i4;
                }
                i2 = length;
                i3 = i5;
                b bVar = new b(getContext(), drawableI, c0039a.f1935c, c0039a.f1937e, iC);
                bVar.setLayoutParams(layoutParams);
                int i7 = dimension / 4;
                bVar.setPadding(i7, 0, i7, 0);
                int i8 = c0039a.f1936d;
                bVar.setText(i8 == 0 ? "" : resources.getString(i8));
                bVar.setSelected(z2);
                bVar.setGravity(17);
                bVar.setOnClickListener(this);
                bVar.f1938a = str;
                if (!z2 || getChildCount() < this.f1931a) {
                    addView(bVar);
                } else {
                    addView(bVar, this.f1932b - 1);
                }
            }
            i5 = i3 + 1;
            c0039aArr2 = c0039aArr;
            length = i2;
            i4 = 1;
        }
    }

    public String[] getChips() {
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3).isSelected()) {
                i2++;
            }
        }
        if (i2 == 0) {
            return null;
        }
        String[] strArr = new String[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            b bVar = (b) getChildAt(i5);
            if (bVar.isSelected()) {
                strArr[i4] = bVar.f1938a;
                i4++;
            }
        }
        return strArr;
    }

    @Override
    public final void onClick(View view) {
        int i2;
        view.setSelected(!view.isSelected());
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild < this.f1931a) {
            return;
        }
        if (view.isSelected()) {
            i2 = this.f1932b;
            int i3 = i2 + 1;
            this.f1932b = i3;
            if (iIndexOfChild < i3) {
                return;
            }
        } else {
            i2 = this.f1932b - 1;
            this.f1932b = i2;
            if (iIndexOfChild > i2) {
                return;
            }
        }
        removeViewAt(iIndexOfChild);
        addView(view, i2);
    }
}

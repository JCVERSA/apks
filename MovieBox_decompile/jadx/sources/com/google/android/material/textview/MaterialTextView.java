package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import db.a;
import za.b;
import za.c;

public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    private void b(Resources.Theme theme, int i10) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i10, R$styleable.MaterialTextAppearance);
        int iF = f(getContext(), typedArrayObtainStyledAttributes, R$styleable.MaterialTextAppearance_android_lineHeight, R$styleable.MaterialTextAppearance_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        if (iF >= 0) {
            setLineHeight(iF);
        }
    }

    private static boolean c(Context context) {
        return b.b(context, R$attr.textAppearanceLineHeightEnabled, true);
    }

    private static int d(Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R$styleable.MaterialTextView, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialTextView_android_textAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private void e(AttributeSet attributeSet, int i10, int i11) {
        int iD;
        Context context = getContext();
        if (c(context)) {
            Resources.Theme theme = context.getTheme();
            if (g(context, theme, attributeSet, i10, i11) || (iD = d(theme, attributeSet, i10, i11)) == -1) {
                return;
            }
            b(theme, iD);
        }
    }

    private static int f(Context context, TypedArray typedArray, int... iArr) {
        int iD = -1;
        for (int i10 = 0; i10 < iArr.length && iD < 0; i10++) {
            iD = c.d(context, typedArray, iArr[i10], -1);
        }
        return iD;
    }

    private static boolean g(Context context, Resources.Theme theme, AttributeSet attributeSet, int i10, int i11) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R$styleable.MaterialTextView, i10, i11);
        int iF = f(context, typedArrayObtainStyledAttributes, R$styleable.MaterialTextView_android_lineHeight, R$styleable.MaterialTextView_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        return iF != -1;
    }

    @Override
    public void setTextAppearance(@NonNull Context context, int i10) {
        super.setTextAppearance(context, i10);
        if (c(context)) {
            b(context.getTheme(), i10);
        }
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(a.c(context, attributeSet, i10, 0), attributeSet, i10);
        e(attributeSet, i10, 0);
    }

    @Deprecated
    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        e(attributeSet, i10, i11);
    }
}

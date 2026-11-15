package com.hisavana.mediation.ad;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.mediation.R;
import defpackage.hm4;

public class TStoreMarkView extends FrameLayout {
    public int a;
    public int b;
    public int c;

    public TStoreMarkView(@NonNull Context context) {
        this(context, null);
    }

    public int getSdkTypeSetStoreMark() {
        return this.a;
    }

    public int getTextColor() {
        return this.c;
    }

    public int getTextSize() {
        return this.b;
    }

    public TStoreMarkView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TStoreMarkView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TStoreMarkView);
            this.a = typedArrayObtainStyledAttributes.getInt(R.styleable.TStoreMarkView_sdkTypeSetStoreMark, 0);
            this.c = typedArrayObtainStyledAttributes.getColor(R.styleable.TStoreMarkView_storeTextColor, -1);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TStoreMarkView_storeTextSize, 0);
            this.b = dimensionPixelSize == 0 ? 8 : hm4.i(dimensionPixelSize);
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}

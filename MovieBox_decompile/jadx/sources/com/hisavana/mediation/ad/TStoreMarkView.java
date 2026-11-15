package com.hisavana.mediation.ad;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.mediation.R$styleable;

public class TStoreMarkView extends FrameLayout {

    public int f32355a;

    public int f32356b;

    public TStoreMarkView(@NonNull Context context) {
        this(context, null);
    }

    public int getTextColor() {
        return this.f32356b;
    }

    public int getTextSize() {
        return this.f32355a;
    }

    public TStoreMarkView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TStoreMarkView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TStoreMarkView);
            this.f32356b = typedArrayObtainStyledAttributes.getColor(R$styleable.TStoreMarkView_storeTextColor, -1);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.TStoreMarkView_storeTextSize, 0);
            this.f32355a = dimensionPixelSize == 0 ? 8 : h.h(dimensionPixelSize);
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}

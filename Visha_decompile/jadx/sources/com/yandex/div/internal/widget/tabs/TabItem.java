package com.yandex.div.internal.widget.tabs;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.yandex.div.R;

@SuppressLint({"RestrictedApi"})
class TabItem extends View {
    public final CharSequence b;
    public final Drawable c;
    public final int d;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TabItem);
        this.b = tintTypedArrayObtainStyledAttributes.getText(R.styleable.TabItem_android_text);
        this.c = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.TabItem_android_icon);
        this.d = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.TabItem_android_layout, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }
}

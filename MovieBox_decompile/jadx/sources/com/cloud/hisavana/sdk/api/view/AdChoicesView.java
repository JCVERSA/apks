package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;

@SuppressLint({"AppCompatCustomView"})
public class AdChoicesView extends ImageView {
    public AdChoicesView(Context context) {
        super(context);
        a();
    }

    private void a() {
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    }

    public AdChoicesView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public AdChoicesView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }
}

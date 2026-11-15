package com.transsion.liblan.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.transsion.liblan.R;

public class LANVideoLayout extends FrameLayout {
    public LANVideoLayout(@NonNull Context context) {
        super(context);
        setupLayout(context);
    }

    private void setupLayout(@NonNull Context context) {
        View.inflate(context, R.layout.lan_video_layout, this);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBackgroundResource(R.color.black);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        setLayoutParams(layoutParams);
    }

    public LANVideoLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setupLayout(context);
    }

    public LANVideoLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setupLayout(context);
    }

    @RequiresApi(api = 21)
    public LANVideoLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setupLayout(context);
    }
}

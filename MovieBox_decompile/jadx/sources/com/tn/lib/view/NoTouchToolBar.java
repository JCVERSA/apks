package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;

public class NoTouchToolBar extends Toolbar {
    private boolean U;

    public NoTouchToolBar(@NonNull Context context) {
        super(context);
        this.U = false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.U;
    }

    public void setIntercept(boolean z10) {
        this.U = z10;
    }

    public NoTouchToolBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.U = false;
    }
}

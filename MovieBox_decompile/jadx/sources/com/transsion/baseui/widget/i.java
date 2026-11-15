package com.transsion.baseui.widget;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;

public class i extends ViewOutlineProvider {

    private float f42471a;

    private int f42472b = 0;

    public i(float f10) {
        this.f42471a = f10;
    }

    @Override
    public void getOutline(View view, Outline outline) {
        Rect rect;
        view.getGlobalVisibleRect(new Rect());
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i10 = this.f42472b;
        if (i10 == 1) {
            rect = new Rect(0, 0, (int) Math.ceil(measuredWidth + (this.f42471a * 2.0f)), measuredHeight);
        } else if (i10 == 2) {
            rect = new Rect((int) Math.floor(this.f42471a * (-2.0f)), 0, measuredWidth, measuredHeight);
        } else if (i10 == 3) {
            rect = new Rect(0, 0, measuredWidth, (int) Math.ceil(measuredHeight + (this.f42471a * 2.0f)));
        } else {
            rect = i10 == 4 ? new Rect(0, (int) Math.floor(this.f42471a * (-2.0f)), measuredWidth, measuredHeight) : new Rect(0, 0, measuredWidth, measuredHeight);
        }
        outline.setRoundRect(rect, this.f42471a);
    }
}

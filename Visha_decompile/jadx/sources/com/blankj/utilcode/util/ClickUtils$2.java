package com.blankj.utilcode.util;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

class ClickUtils$2 implements Runnable {
    final int val$expandSizeBottom;
    final int val$expandSizeLeft;
    final int val$expandSizeRight;
    final int val$expandSizeTop;
    final View val$parentView;
    final View val$view;

    public ClickUtils$2(View view, int i, int i2, int i3, int i4, View view2) {
        this.val$view = view;
        this.val$expandSizeTop = i;
        this.val$expandSizeBottom = i2;
        this.val$expandSizeLeft = i3;
        this.val$expandSizeRight = i4;
        this.val$parentView = view2;
    }

    @Override
    public void run() {
        Rect rect = new Rect();
        this.val$view.getHitRect(rect);
        rect.top -= this.val$expandSizeTop;
        rect.bottom += this.val$expandSizeBottom;
        rect.left -= this.val$expandSizeLeft;
        rect.right += this.val$expandSizeRight;
        this.val$parentView.setTouchDelegate(new TouchDelegate(rect, this.val$view));
    }
}

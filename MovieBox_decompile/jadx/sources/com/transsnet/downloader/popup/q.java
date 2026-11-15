package com.transsnet.downloader.popup;

import android.view.View;
import com.blankj.utilcode.util.y;
import kotlin.jvm.internal.Intrinsics;

public final class q {

    public static final q f57348a = new q();

    private q() {
    }

    public final int[] a(View anchorView, View contentView) {
        Intrinsics.h(anchorView, "anchorView");
        Intrinsics.h(contentView, "contentView");
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        anchorView.getLocationOnScreen(iArr2);
        int height = anchorView.getHeight();
        int iC = y.c();
        int iE = y.e();
        contentView.measure(0, 0);
        int measuredHeight = contentView.getMeasuredHeight();
        int measuredWidth = contentView.getMeasuredWidth();
        int i10 = iArr2[1];
        if ((iC - i10) - height < measuredHeight) {
            iArr[0] = iE - measuredWidth;
            iArr[1] = i10 - measuredHeight;
        } else {
            iArr[0] = iE - measuredWidth;
            iArr[1] = i10 + height;
        }
        return iArr;
    }
}

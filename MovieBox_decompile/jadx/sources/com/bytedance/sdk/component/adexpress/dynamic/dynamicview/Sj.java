package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

public class Sj extends sP {
    private final Bitmap TKC;
    private final Rect sP = new Rect();
    private final Paint EjP = new Paint(1);

    public Sj(Bitmap bitmap, sP sPVar) {
        this.TKC = bitmap;
        if (sPVar != null) {
            this.Sj = sPVar.Sj;
        }
    }

    @Override
    protected void Sj(Canvas canvas) {
        canvas.drawBitmap(this.TKC, this.sP, getBounds(), this.EjP);
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int iHeight = rect.height();
        int iWidth = rect.width();
        int width = this.TKC.getWidth();
        int height = this.TKC.getHeight();
        this.sP.set(0, 0, width, height);
        if (height >= iHeight && width >= iWidth) {
            if (width > iWidth) {
                Rect rect2 = this.sP;
                int i10 = (width - iWidth) / 2;
                rect2.left = i10;
                rect2.right = i10 + iWidth;
            }
            if (height > iHeight) {
                Rect rect3 = this.sP;
                int i11 = (height - iHeight) / 2;
                rect3.top = i11;
                rect3.bottom = i11 + iHeight;
                return;
            }
            return;
        }
        float f10 = iHeight;
        float f11 = f10 * 1.0f;
        float f12 = height;
        float f13 = f11 / f12;
        float f14 = iWidth;
        float f15 = 1.0f * f14;
        float f16 = width;
        if (Math.max(f13, f15 / f16) > f13) {
            int i12 = (int) ((f11 / f14) * f16);
            Rect rect4 = this.sP;
            int i13 = (height - i12) / 2;
            rect4.top = i13;
            rect4.bottom = i13 + i12;
            return;
        }
        int i14 = (int) ((f15 / f10) * f12);
        Rect rect5 = this.sP;
        int i15 = (width - i14) / 2;
        rect5.left = i15;
        rect5.right = i15 + i14;
    }
}

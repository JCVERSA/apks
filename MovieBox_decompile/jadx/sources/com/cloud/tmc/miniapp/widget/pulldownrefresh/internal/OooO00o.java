package com.cloud.tmc.miniapp.widget.pulldownrefresh.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.annotation.NonNull;

public class OooO00o extends OooO0o {
    public int OooO0O0 = 0;
    public int OooO0OO = 0;
    public Path OooO0Oo = new Path();

    @Override
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (this.OooO0O0 != iWidth || this.OooO0OO != iHeight) {
            this.OooO0Oo.reset();
            float f10 = (iWidth * 30) / 225;
            float f11 = f10 * 0.70710677f;
            float f12 = f10 / 0.70710677f;
            float f13 = iWidth;
            float f14 = f13 / 2.0f;
            float f15 = iHeight;
            this.OooO0Oo.moveTo(f14, f15);
            float f16 = f15 / 2.0f;
            this.OooO0Oo.lineTo(0.0f, f16);
            float f17 = f16 - f11;
            this.OooO0Oo.lineTo(f11, f17);
            float f18 = f10 / 2.0f;
            float f19 = f14 - f18;
            float f20 = (f15 - f12) - f18;
            this.OooO0Oo.lineTo(f19, f20);
            this.OooO0Oo.lineTo(f19, 0.0f);
            float f21 = f14 + f18;
            this.OooO0Oo.lineTo(f21, 0.0f);
            this.OooO0Oo.lineTo(f21, f20);
            this.OooO0Oo.lineTo(f13 - f11, f17);
            this.OooO0Oo.lineTo(f13, f16);
            this.OooO0Oo.close();
            this.OooO0O0 = iWidth;
            this.OooO0OO = iHeight;
        }
        canvas.drawPath(this.OooO0Oo, this.OooO00o);
    }
}

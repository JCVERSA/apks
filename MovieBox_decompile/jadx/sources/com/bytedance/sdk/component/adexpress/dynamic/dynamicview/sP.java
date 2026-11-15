package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.NonNull;

public class sP extends GradientDrawable {
    protected Path Sj;
    private final Paint sP;

    public sP() {
        this.Sj = new Path();
        Paint paint = new Paint(1);
        this.sP = paint;
        paint.setColor(-1);
    }

    protected void Sj(Canvas canvas) {
        super.draw(canvas);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Path path = this.Sj;
        if (path == null || path.isEmpty()) {
            Sj(canvas);
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.sP, 31);
        Sj(canvas);
        this.sP.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(this.Sj, this.sP);
        this.sP.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }

    public void Sj(int i10, int i11, int i12, int i13) {
        this.Sj.addRect(i10, i11, i12, i13, Path.Direction.CW);
        invalidateSelf();
    }

    public sP(GradientDrawable.Orientation orientation, int[] iArr) {
        super(orientation, iArr);
        this.Sj = new Path();
        Paint paint = new Paint(1);
        this.sP = paint;
        paint.setColor(-1);
    }
}

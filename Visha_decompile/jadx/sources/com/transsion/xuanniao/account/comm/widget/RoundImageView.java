package com.transsion.xuanniao.account.comm.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.transsion.xuanniao.account.R;

@SuppressLint({"AppCompatCustomView"})
public class RoundImageView extends ImageView {
    public RoundImageView(Context context) {
        this(context, null);
    }

    @Override
    public void onDraw(Canvas canvas) {
        Path path = new Path();
        int measuredWidth = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight() / 2;
        path.addCircle(measuredWidth / 2, measuredHeight, measuredHeight, Path.Direction.CW);
        canvas.clipPath(path);
        super.onDraw(canvas);
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(1.0f);
        paint.setColor(getContext().getColor(R.color.xn_circle_bg));
        canvas.drawPath(path, paint);
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}

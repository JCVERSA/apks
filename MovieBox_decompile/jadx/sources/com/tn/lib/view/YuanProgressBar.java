package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Looper;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.tn.lib.widget.R$styleable;

public class YuanProgressBar extends AppCompatButton {

    private Paint f40108a;

    private float f40109b;

    private RectF f40110c;

    private RectF f40111d;

    private int f40112e;

    private int f40113f;

    private Paint f40114g;

    private int f40115h;

    private int f40116i;

    private int f40117j;

    private int f40118k;

    private int f40119l;

    public YuanProgressBar(Context context) {
        super(context);
        this.f40112e = 100;
        this.f40113f = 0;
        this.f40116i = Color.parseColor("#99ffffff");
        this.f40117j = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        this.f40118k = 0;
        this.f40119l = 0;
        init(context, null);
    }

    private void a(Canvas canvas) {
        Paint paint;
        canvas.save();
        if (this.f40115h == 0) {
            this.f40115h = zg.h.f76787a.a(getContext(), 1.0f);
        }
        int i10 = this.f40113f;
        if (i10 != 0 && (paint = this.f40114g) != null) {
            paint.setColor(i10);
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, (getWidth() / 2.0f) - this.f40115h, this.f40114g);
        }
        this.f40108a.setColor(this.f40116i);
        if (this.f40118k <= 0) {
            this.f40118k = this.f40115h;
        }
        this.f40108a.setStrokeWidth(this.f40118k);
        canvas.drawArc(this.f40110c, -90.0f, 360.0f, false, this.f40108a);
        this.f40108a.setColor(this.f40117j);
        if (this.f40119l <= 0) {
            this.f40119l = this.f40115h * 3;
        }
        this.f40108a.setStrokeWidth(this.f40119l);
        canvas.drawArc(this.f40110c, -90.0f, (this.f40109b * 360.0f) / this.f40112e, false, this.f40108a);
        canvas.restore();
    }

    private void init(Context context, AttributeSet attributeSet) {
        setWillNotDraw(false);
        Paint paint = new Paint();
        this.f40108a = paint;
        paint.setAntiAlias(true);
        this.f40108a.setColor(Color.parseColor("#2f9ceb"));
        this.f40110c = new RectF();
        this.f40111d = new RectF();
        this.f40108a.setStyle(Paint.Style.STROKE);
        this.f40108a.setStrokeWidth(zg.h.f76787a.a(getContext(), 2.0f));
        this.f40108a.setStrokeCap(Paint.Cap.ROUND);
        setBackground(null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Base_YuanProgressBar);
            this.f40113f = typedArrayObtainStyledAttributes.getColor(R$styleable.Base_YuanProgressBar_base_insideColor, 0);
            this.f40116i = typedArrayObtainStyledAttributes.getColor(R$styleable.Base_YuanProgressBar_base_circleColor, this.f40116i);
            this.f40117j = typedArrayObtainStyledAttributes.getColor(R$styleable.Base_YuanProgressBar_base_yuan_progressColor, this.f40117j);
            this.f40118k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Base_YuanProgressBar_base_yuanCircleStrokeWidth, this.f40118k);
            this.f40119l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Base_YuanProgressBar_base_yuanProgressStrokeWidth, this.f40119l);
            Paint paint2 = new Paint();
            this.f40114g = paint2;
            paint2.setAntiAlias(true);
            typedArrayObtainStyledAttributes.recycle();
        }
        setTextSize(2, 12.0f);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        a(canvas);
        super.onDraw(canvas);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        RectF rectF = this.f40110c;
        zg.h hVar = zg.h.f76787a;
        rectF.left = hVar.a(getContext(), 2.0f);
        this.f40110c.top = hVar.a(getContext(), 2.0f);
        this.f40110c.right = i10 - hVar.a(getContext(), 2.0f);
        this.f40110c.bottom = i11 - hVar.a(getContext(), 2.0f);
        this.f40111d.left = hVar.a(getContext(), 4.0f);
        this.f40111d.top = hVar.a(getContext(), 4.0f);
        this.f40111d.right = i10 - hVar.a(getContext(), 4.0f);
        this.f40111d.bottom = i11 - hVar.a(getContext(), 4.0f);
    }

    public void setColorNetDetect() {
        this.f40116i = Color.parseColor("#33000000");
        this.f40117j = Color.parseColor("#3ECAF2");
    }

    public void setProgress(float f10) {
        this.f40109b = f10;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }

    public YuanProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40112e = 100;
        this.f40113f = 0;
        this.f40116i = Color.parseColor("#99ffffff");
        this.f40117j = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        this.f40118k = 0;
        this.f40119l = 0;
        init(context, attributeSet);
    }

    public YuanProgressBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40112e = 100;
        this.f40113f = 0;
        this.f40116i = Color.parseColor("#99ffffff");
        this.f40117j = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        this.f40118k = 0;
        this.f40119l = 0;
        init(context, attributeSet);
    }
}

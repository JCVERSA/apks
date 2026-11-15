package com.transsion.transfer.wifi.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import androidx.core.view.InputDeviceCompat;
import com.journeyapps.barcodescanner.CameraPreview;
import com.journeyapps.barcodescanner.ViewfinderView;
import com.transsion.transfer.R$styleable;

public class CustomViewfinderView extends ViewfinderView {
    public static final long INT_ANIMATION_DELAY = 12;
    public Paint mBitmapPaint;
    public int mLineColor;
    public float mLineDepth;
    public float mLineRate;
    public LinearGradient mLinearGradient;
    public float[] mPositions;
    public float mScanFrameHeight;
    public float mScanFrameWidth;
    public int[] mScanLineColor;
    public float mScanLineDepth;
    public float mScanLineDy;
    public int mScanLinePosition;

    public CustomViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLineRate = 0.1f;
        this.mLineDepth = b(4);
        this.mScanLinePosition = 0;
        this.mScanLineDepth = b(4);
        this.mScanLineDy = b(3);
        this.mPositions = new float[]{0.0f, 0.5f, 1.0f};
        this.mScanLineColor = new int[]{0, InputDeviceCompat.SOURCE_ANY, 0};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CustomViewfinderView);
        this.mLineColor = typedArrayObtainStyledAttributes.getColor(R$styleable.CustomViewfinderView_lineColor, InputDeviceCompat.SOURCE_ANY);
        this.mScanLineColor[1] = typedArrayObtainStyledAttributes.getColor(R$styleable.CustomViewfinderView_cornerColor, InputDeviceCompat.SOURCE_ANY);
        this.mScanFrameWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomViewfinderView_scanFrameWidth, b(160));
        this.mScanFrameHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomViewfinderView_scanFrameHeight, b(160));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.mBitmapPaint = paint;
        paint.setAntiAlias(true);
    }

    private int b(int i10) {
        return (int) ((i10 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override
    protected void a() {
        CameraPreview cameraPreview = this.f33095k;
        if (cameraPreview == null) {
            return;
        }
        cameraPreview.setFramingRectSize(new af.q((int) this.mScanFrameWidth, (int) this.mScanFrameHeight));
        Rect framingRect = this.f33095k.getFramingRect();
        af.q previewSize = this.f33095k.getPreviewSize();
        if (framingRect == null || previewSize == null) {
            return;
        }
        this.f33096l = framingRect;
        this.f33097m = previewSize;
    }

    @Override
    @SuppressLint({"DrawAllocation"})
    public void onDraw(Canvas canvas) {
        a();
        Rect rect = this.f33096l;
        if (rect == null || this.f33097m == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        this.f33085a.setColor(this.f33086b != null ? this.f33088d : this.f33087c);
        float f10 = width;
        canvas.drawRect(0.0f, 0.0f, f10, rect.top, this.f33085a);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.f33085a);
        canvas.drawRect(rect.right + 1, rect.top, f10, rect.bottom + 1, this.f33085a);
        canvas.drawRect(0.0f, rect.bottom + 1, f10, height, this.f33085a);
        this.f33085a.setColor(this.mLineColor);
        int i10 = rect.left;
        canvas.drawRect(i10, rect.top, i10 + (rect.width() * this.mLineRate), rect.top + this.mLineDepth, this.f33085a);
        int i11 = rect.left;
        int i12 = rect.top;
        canvas.drawRect(i11, i12, this.mLineDepth + i11, i12 + (rect.height() * this.mLineRate), this.f33085a);
        float fWidth = rect.right - (rect.width() * this.mLineRate);
        int i13 = rect.top;
        canvas.drawRect(fWidth, i13, rect.right, i13 + this.mLineDepth, this.f33085a);
        int i14 = rect.right;
        float f11 = i14 - this.mLineDepth;
        int i15 = rect.top;
        canvas.drawRect(f11, i15, i14, i15 + (rect.height() * this.mLineRate), this.f33085a);
        int i16 = rect.left;
        canvas.drawRect(i16, rect.bottom - this.mLineDepth, i16 + (rect.width() * this.mLineRate), rect.bottom, this.f33085a);
        canvas.drawRect(rect.left, rect.bottom - (rect.height() * this.mLineRate), rect.left + this.mLineDepth, rect.bottom, this.f33085a);
        float fWidth2 = rect.right - (rect.width() * this.mLineRate);
        int i17 = rect.bottom;
        canvas.drawRect(fWidth2, i17 - this.mLineDepth, rect.right, i17, this.f33085a);
        canvas.drawRect(rect.right - this.mLineDepth, rect.bottom - (rect.height() * this.mLineRate), rect.right, rect.bottom, this.f33085a);
        if (this.f33086b != null) {
            this.f33085a.setAlpha(160);
            canvas.drawBitmap(this.f33086b, (Rect) null, rect, this.f33085a);
        } else {
            int i18 = (int) (this.mScanLinePosition + this.mScanLineDy);
            this.mScanLinePosition = i18;
            if (i18 >= rect.height()) {
                this.mScanLinePosition = 0;
            }
            float f12 = rect.left;
            int i19 = rect.top;
            int i20 = this.mScanLinePosition;
            LinearGradient linearGradient = new LinearGradient(f12, i19 + i20, rect.right, i19 + i20, this.mScanLineColor, this.mPositions, Shader.TileMode.CLAMP);
            this.mLinearGradient = linearGradient;
            this.f33085a.setShader(linearGradient);
            float f13 = rect.left;
            int i21 = rect.top;
            int i22 = this.mScanLinePosition;
            canvas.drawRect(f13, i21 + i22, rect.right, i21 + i22 + this.mScanLineDepth, this.f33085a);
            this.f33085a.setShader(null);
        }
        postInvalidateDelayed(12L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }
}

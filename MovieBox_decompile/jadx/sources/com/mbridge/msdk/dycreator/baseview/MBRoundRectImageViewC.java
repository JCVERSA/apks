package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.mbridge.msdk.foundation.tools.o0;

public class MBRoundRectImageViewC extends MBImageView {

    private Paint f33666d;

    public MBRoundRectImageViewC(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33666d = new Paint();
    }

    private Bitmap a(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            try {
                int width = getWidth();
                int height = getHeight();
                float width2 = width / bitmap.getWidth();
                float height2 = height / bitmap.getHeight();
                Matrix matrix = new Matrix();
                matrix.postScale(width2, height2);
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            } catch (Exception e10) {
                o0.b("MBRoundRectImageViewC", e10.getMessage());
            }
        }
        return bitmap;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        try {
            Drawable drawable = getDrawable();
            if (drawable == null) {
                super.onDraw(canvas);
                return;
            }
            Bitmap bitmapA = a(((BitmapDrawable) drawable).getBitmap());
            if (bitmapA != null && !bitmapA.isRecycled()) {
                Bitmap bitmapA2 = a(bitmapA, 30);
                if (bitmapA2 != null && !bitmapA2.isRecycled()) {
                    Rect rect = new Rect(0, 0, bitmapA2.getWidth(), bitmapA2.getHeight());
                    this.f33666d.reset();
                    canvas.drawBitmap(bitmapA2, rect, rect, this.f33666d);
                    return;
                }
                super.onDraw(canvas);
                return;
            }
            super.onDraw(canvas);
        } catch (Exception e10) {
            o0.b("MBRoundRectImageViewC", e10.getMessage());
        }
    }

    private Bitmap a(Bitmap bitmap, int i10) {
        if (bitmap != null && !bitmap.isRecycled()) {
            try {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setShader(bitmapShader);
                float f10 = i10;
                canvas.drawRoundRect(new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), f10, f10, paint);
                return bitmapCreateBitmap;
            } catch (Exception e10) {
                o0.b("MBRoundRectImageViewC", e10.getMessage());
            }
        }
        return bitmap;
    }
}

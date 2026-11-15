package com.mbridge.msdk.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.same.image.b;
import com.mbridge.msdk.foundation.same.image.c;
import com.mbridge.msdk.foundation.tools.o0;

@SuppressLint({"AppCompatCustomView"})
public class MBImageView extends ImageView {

    private Bitmap f39199a;

    private String f39200b;

    class a implements c {
        a() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            o0.b("mb-widget-imageview", str2 + " load failed:" + str);
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            MBImageView.this.setImageBitmap(bitmap);
        }
    }

    public MBImageView(Context context) {
        super(context);
        this.f39199a = null;
    }

    private void a() {
        if (getContext() != null) {
            b.a(getContext()).a(this.f39200b, new a());
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap = this.f39199a;
        if (bitmap == null || !bitmap.isRecycled()) {
            super.onDraw(canvas);
        } else {
            o0.b("mb-widget-imageview", "onDraw bitmap recycled");
            a();
        }
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        this.f39199a = bitmap;
        if (bitmap == null) {
            super.setImageBitmap(bitmap);
        } else {
            if (!bitmap.isRecycled()) {
                super.setImageBitmap(bitmap);
                return;
            }
            this.f39199a = null;
            super.setImageBitmap(null);
            o0.b("mb-widget-imageview", "setImageBitmap recycled");
        }
    }

    public void setImageUrl(String str) {
        this.f39200b = str;
    }

    public MBImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39199a = null;
    }

    public MBImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f39199a = null;
    }
}

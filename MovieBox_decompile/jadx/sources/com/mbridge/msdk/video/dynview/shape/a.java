package com.mbridge.msdk.video.dynview.shape;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;

public class a extends ShapeDrawable {

    private int f38238a;

    private float f38239b;

    private float f38240c;

    private int f38241d;

    private int f38242e;

    private Bitmap f38243f;

    private Bitmap f38244g;

    private boolean f38245h;

    private Paint f38246i;

    private Matrix f38247j;

    public static class b implements c {

        private RectShape f38248a;

        private Bitmap f38249b;

        private Bitmap f38250c;

        private boolean f38251d;

        private int f38252e;

        private int f38253f;

        private int f38254g;

        private float f38255h;

        private float f38256i;

        private b() {
            this.f38253f = 100;
            this.f38254g = 10;
            this.f38248a = new RectShape();
        }

        @Override
        public c a(Bitmap bitmap) {
            this.f38250c = bitmap;
            return this;
        }

        @Override
        public c b(Bitmap bitmap) {
            this.f38249b = bitmap;
            return this;
        }

        @Override
        public c a(boolean z10) {
            this.f38251d = z10;
            return this;
        }

        public c b(float f10) {
            this.f38255h = f10;
            return this;
        }

        public c a(int i10) {
            this.f38252e = i10;
            return this;
        }

        @Override
        public c a(float f10) {
            this.f38256i = f10;
            return this;
        }

        public a a() {
            return new a(this);
        }
    }

    public interface c {
        c a(float f10);

        c a(Bitmap bitmap);

        c a(boolean z10);

        c b(Bitmap bitmap);
    }

    private void a(Canvas canvas) {
        float f10 = this.f38239b / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, this.f38240c);
        path.lineTo((f10 - this.f38241d) - this.f38242e, this.f38240c);
        path.lineTo((this.f38241d + f10) - this.f38242e, 0.0f);
        if (this.f38245h) {
            try {
                a(canvas, path);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            Bitmap bitmap = this.f38243f;
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    a(canvas, path, this.f38243f);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        Path path2 = new Path();
        path2.moveTo(this.f38241d + f10 + this.f38242e, 0.0f);
        path2.lineTo(this.f38239b, 0.0f);
        path2.lineTo(this.f38239b, this.f38240c);
        path2.lineTo((f10 - this.f38241d) + this.f38242e, this.f38240c);
        if (this.f38245h) {
            try {
                a(canvas, path2);
                return;
            } catch (Exception e12) {
                e12.printStackTrace();
                return;
            }
        }
        Bitmap bitmap2 = this.f38244g;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        try {
            a(canvas, path2, this.f38244g);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    private void b(Canvas canvas) {
        float f10 = this.f38240c / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, (this.f38241d + f10) - this.f38242e);
        path.lineTo(this.f38239b, (f10 - this.f38241d) - this.f38242e);
        path.lineTo(this.f38239b, 0.0f);
        if (this.f38245h) {
            try {
                a(canvas, path);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            Bitmap bitmap = this.f38243f;
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    a(canvas, path, this.f38243f);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        Path path2 = new Path();
        path2.moveTo(0.0f, this.f38241d + f10 + this.f38242e);
        path2.lineTo(0.0f, this.f38240c);
        path2.lineTo(this.f38239b, this.f38240c);
        path2.lineTo(this.f38239b, (f10 - this.f38241d) + this.f38242e);
        if (this.f38245h) {
            try {
                a(canvas, path2);
                return;
            } catch (Exception e12) {
                e12.printStackTrace();
                return;
            }
        }
        Bitmap bitmap2 = this.f38244g;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        try {
            a(canvas, path2, this.f38244g);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f38238a == 1) {
            b(canvas);
        } else {
            a(canvas);
        }
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    private a(b bVar) {
        super(bVar.f38248a);
        this.f38245h = false;
        this.f38243f = bVar.f38249b;
        this.f38244g = bVar.f38250c;
        this.f38245h = bVar.f38251d;
        this.f38238a = bVar.f38252e;
        this.f38241d = bVar.f38253f;
        this.f38242e = bVar.f38254g;
        this.f38239b = bVar.f38255h;
        this.f38240c = bVar.f38256i;
        Paint paint = new Paint();
        this.f38246i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f38246i.setAntiAlias(true);
        this.f38247j = new Matrix();
    }

    private void a(Canvas canvas, Path path, Bitmap bitmap) {
        if (canvas == null || path == null || bitmap == null || bitmap.isRecycled()) {
            return;
        }
        if (bitmap.getWidth() != 0 && bitmap.getHeight() != 0) {
            float fMax = Math.max(this.f38239b / bitmap.getWidth(), this.f38240c / bitmap.getHeight());
            if (this.f38247j == null) {
                this.f38247j = new Matrix();
            }
            this.f38247j.reset();
            this.f38247j.preScale(fMax, fMax);
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(this.f38247j);
        this.f38246i.setShader(bitmapShader);
        canvas.drawPath(path, this.f38246i);
    }

    private void a(Canvas canvas, Path path) {
        this.f38246i.setColor(Color.parseColor("#40EAEAEA"));
        canvas.drawPath(path, this.f38246i);
    }

    public static b a() {
        return new b();
    }
}

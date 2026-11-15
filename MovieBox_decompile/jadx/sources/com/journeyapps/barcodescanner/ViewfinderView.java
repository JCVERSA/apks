package com.journeyapps.barcodescanner;

import af.q;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.client.android.R$color;
import com.google.zxing.client.android.R$styleable;
import com.google.zxing.k;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.List;

public class ViewfinderView extends View {

    protected static final int[] f33084n = {0, 64, 128, PsExtractor.AUDIO_STREAM, 255, PsExtractor.AUDIO_STREAM, 128, 64};

    protected final Paint f33085a;

    protected Bitmap f33086b;

    protected int f33087c;

    protected final int f33088d;

    protected final int f33089e;

    protected final int f33090f;

    protected boolean f33091g;

    protected int f33092h;

    protected List f33093i;

    protected List f33094j;

    protected CameraPreview f33095k;

    protected Rect f33096l;

    protected q f33097m;

    class a implements CameraPreview.f {
        a() {
        }

        @Override
        public void a() {
            ViewfinderView.this.a();
            ViewfinderView.this.invalidate();
        }

        @Override
        public void b() {
        }

        @Override
        public void c(Exception exc) {
        }

        @Override
        public void d() {
        }

        @Override
        public void e() {
        }
    }

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33085a = new Paint(1);
        Resources resources = getResources();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.zxing_finder);
        this.f33087c = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_viewfinder_mask, resources.getColor(R$color.zxing_viewfinder_mask));
        this.f33088d = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_result_view, resources.getColor(R$color.zxing_result_view));
        this.f33089e = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_viewfinder_laser, resources.getColor(R$color.zxing_viewfinder_laser));
        this.f33090f = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_possible_result_points, resources.getColor(R$color.zxing_possible_result_points));
        this.f33091g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.zxing_finder_zxing_viewfinder_laser_visibility, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f33092h = 0;
        this.f33093i = new ArrayList(20);
        this.f33094j = new ArrayList(20);
    }

    protected void a() {
        CameraPreview cameraPreview = this.f33095k;
        if (cameraPreview == null) {
            return;
        }
        Rect framingRect = cameraPreview.getFramingRect();
        q previewSize = this.f33095k.getPreviewSize();
        if (framingRect == null || previewSize == null) {
            return;
        }
        this.f33096l = framingRect;
        this.f33097m = previewSize;
    }

    public void addPossibleResultPoint(k kVar) {
        if (this.f33093i.size() < 20) {
            this.f33093i.add(kVar);
        }
    }

    public void drawResultBitmap(Bitmap bitmap) {
        this.f33086b = bitmap;
        invalidate();
    }

    public void drawViewfinder() {
        Bitmap bitmap = this.f33086b;
        this.f33086b = null;
        if (bitmap != null) {
            bitmap.recycle();
        }
        invalidate();
    }

    @Override
    public void onDraw(Canvas canvas) {
        q qVar;
        a();
        Rect rect = this.f33096l;
        if (rect == null || (qVar = this.f33097m) == null) {
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
        if (this.f33086b != null) {
            this.f33085a.setAlpha(160);
            canvas.drawBitmap(this.f33086b, (Rect) null, rect, this.f33085a);
            return;
        }
        if (this.f33091g) {
            this.f33085a.setColor(this.f33089e);
            Paint paint = this.f33085a;
            int[] iArr = f33084n;
            paint.setAlpha(iArr[this.f33092h]);
            this.f33092h = (this.f33092h + 1) % iArr.length;
            int iHeight = (rect.height() / 2) + rect.top;
            canvas.drawRect(rect.left + 2, iHeight - 1, rect.right - 1, iHeight + 2, this.f33085a);
        }
        float width2 = getWidth() / qVar.f336a;
        float height2 = getHeight() / qVar.f337b;
        if (!this.f33094j.isEmpty()) {
            this.f33085a.setAlpha(80);
            this.f33085a.setColor(this.f33090f);
            for (k kVar : this.f33094j) {
                canvas.drawCircle((int) (kVar.c() * width2), (int) (kVar.d() * height2), 3.0f, this.f33085a);
            }
            this.f33094j.clear();
        }
        if (!this.f33093i.isEmpty()) {
            this.f33085a.setAlpha(160);
            this.f33085a.setColor(this.f33090f);
            for (k kVar2 : this.f33093i) {
                canvas.drawCircle((int) (kVar2.c() * width2), (int) (kVar2.d() * height2), 6.0f, this.f33085a);
            }
            List list = this.f33093i;
            List list2 = this.f33094j;
            this.f33093i = list2;
            this.f33094j = list;
            list2.clear();
        }
        postInvalidateDelayed(80L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }

    public void setCameraPreview(CameraPreview cameraPreview) {
        this.f33095k = cameraPreview;
        cameraPreview.addStateListener(new a());
    }

    public void setLaserVisibility(boolean z10) {
        this.f33091g = z10;
    }

    public void setMaskColor(int i10) {
        this.f33087c = i10;
    }
}

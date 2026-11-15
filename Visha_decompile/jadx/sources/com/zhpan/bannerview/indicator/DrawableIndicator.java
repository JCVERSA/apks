package com.zhpan.bannerview.indicator;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.zhpan.indicator.base.BaseIndicatorView;
import defpackage.wn8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001EB)\b\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\u0013\u001a\u00020\u00062\b\b\u0001\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0015\u0010\u0016J-\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ1\u0010$\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\fH\u0002¢\u0006\u0004\b&\u0010'J!\u0010)\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u0006H\u0002¢\u0006\u0004\b)\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010/\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00104\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00101R\u0016\u00106\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00101R\u0016\u00108\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00101R\u0016\u0010:\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00101R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010B\u001a\u00020?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010A¨\u0006F"}, d2 = {"Lcom/zhpan/bannerview/indicator/DrawableIndicator;", "Lcom/zhpan/indicator/base/BaseIndicatorView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "normalDrawable", "checkedDrawable", "setIndicatorDrawable", "(II)Lcom/zhpan/bannerview/indicator/DrawableIndicator;", "normalWidth", "normalHeight", "checkedWidth", "checkedHeight", "setIndicatorSize", "(IIII)Lcom/zhpan/bannerview/indicator/DrawableIndicator;", "padding", "setIndicatorGap", "(I)Lcom/zhpan/bannerview/indicator/DrawableIndicator;", TtmlNode.LEFT, "top", "Landroid/graphics/Bitmap;", "icon", "c", "(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V", "e", "()V", "drawableId", "d", "(Landroid/content/Context;I)Landroid/graphics/Bitmap;", "f", "Landroid/graphics/Bitmap;", "mCheckedBitmap", GslbInterceptor.HEADER_KEY_GSLB, "mNormalBitmap", CmcdData.STREAMING_FORMAT_HLS, "I", "mIndicatorPadding", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "mCheckedBitmapWidth", "j", "mCheckedBitmapHeight", "k", "mNormalBitmapWidth", CmcdData.STREAM_TYPE_LIVE, "mNormalBitmapHeight", "Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/zhpan/bannerview/indicator/DrawableIndicator$a;", "mIndicatorSize", "", "n", "Z", "normalCanResize", "o", "checkCanResize", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "bannerview_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DrawableIndicator extends BaseIndicatorView {

    public Bitmap mCheckedBitmap;

    public Bitmap mNormalBitmap;

    public int mIndicatorPadding;

    public int mCheckedBitmapWidth;

    public int mCheckedBitmapHeight;

    public int mNormalBitmapWidth;

    public int mNormalBitmapHeight;

    public a mIndicatorSize;

    public boolean normalCanResize;

    public boolean checkCanResize;

    public static final class a {
        public int a;
        public int b;
        public int c;
        public int d;

        public a(int i, int i2, int i3, int i4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }

        public final int a() {
            return this.d;
        }

        public final int b() {
            return this.c;
        }

        public final int c() {
            return this.b;
        }

        public final int d() {
            return this.a;
        }
    }

    public DrawableIndicator(Context context) {
        this(context, null, 0, 6, null);
    }

    public final void c(Canvas canvas, int left, int top, Bitmap icon) {
        if (icon == null) {
            return;
        }
        canvas.drawBitmap(icon, left, top, (Paint) null);
    }

    public final Bitmap d(Context context, int drawableId) {
        Drawable drawable = ContextCompat.getDrawable(context, drawableId);
        if (drawable == null) {
            return null;
        }
        y45.g(drawable);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public final void e() {
        Bitmap bitmap = this.mCheckedBitmap;
        if (bitmap != null) {
            if (this.mIndicatorSize != null) {
                y45.g(bitmap);
                if (bitmap.isMutable() && this.checkCanResize) {
                    Bitmap bitmap2 = this.mCheckedBitmap;
                    y45.g(bitmap2);
                    a aVar = this.mIndicatorSize;
                    y45.g(aVar);
                    bitmap2.setWidth(aVar.b());
                    Bitmap bitmap3 = this.mCheckedBitmap;
                    y45.g(bitmap3);
                    a aVar2 = this.mIndicatorSize;
                    y45.g(aVar2);
                    bitmap3.setHeight(aVar2.a());
                } else {
                    Bitmap bitmap4 = this.mCheckedBitmap;
                    y45.g(bitmap4);
                    int width = bitmap4.getWidth();
                    Bitmap bitmap5 = this.mCheckedBitmap;
                    y45.g(bitmap5);
                    int height = bitmap5.getHeight();
                    a aVar3 = this.mIndicatorSize;
                    y45.g(aVar3);
                    float fB = aVar3.b() / width;
                    a aVar4 = this.mIndicatorSize;
                    y45.g(aVar4);
                    float fA = aVar4.a() / height;
                    Matrix matrix = new Matrix();
                    matrix.postScale(fB, fA);
                    Bitmap bitmap6 = this.mCheckedBitmap;
                    y45.g(bitmap6);
                    this.mCheckedBitmap = Bitmap.createBitmap(bitmap6, 0, 0, width, height, matrix, true);
                }
            }
            Bitmap bitmap7 = this.mCheckedBitmap;
            y45.g(bitmap7);
            this.mCheckedBitmapWidth = bitmap7.getWidth();
            Bitmap bitmap8 = this.mCheckedBitmap;
            y45.g(bitmap8);
            this.mCheckedBitmapHeight = bitmap8.getHeight();
        }
        Bitmap bitmap9 = this.mNormalBitmap;
        if (bitmap9 != null) {
            if (this.mIndicatorSize != null) {
                y45.g(bitmap9);
                if (bitmap9.isMutable() && this.normalCanResize) {
                    Bitmap bitmap10 = this.mNormalBitmap;
                    y45.g(bitmap10);
                    a aVar5 = this.mIndicatorSize;
                    y45.g(aVar5);
                    bitmap10.setWidth(aVar5.d());
                    Bitmap bitmap11 = this.mNormalBitmap;
                    y45.g(bitmap11);
                    a aVar6 = this.mIndicatorSize;
                    y45.g(aVar6);
                    bitmap11.setHeight(aVar6.c());
                } else {
                    Bitmap bitmap12 = this.mNormalBitmap;
                    y45.g(bitmap12);
                    int width2 = bitmap12.getWidth();
                    Bitmap bitmap13 = this.mNormalBitmap;
                    y45.g(bitmap13);
                    int height2 = bitmap13.getHeight();
                    a aVar7 = this.mIndicatorSize;
                    y45.g(aVar7);
                    float fD = aVar7.d();
                    Bitmap bitmap14 = this.mNormalBitmap;
                    y45.g(bitmap14);
                    float width3 = fD / bitmap14.getWidth();
                    a aVar8 = this.mIndicatorSize;
                    y45.g(aVar8);
                    float fC = aVar8.c();
                    Bitmap bitmap15 = this.mNormalBitmap;
                    y45.g(bitmap15);
                    float height3 = fC / bitmap15.getHeight();
                    Matrix matrix2 = new Matrix();
                    matrix2.postScale(width3, height3);
                    Bitmap bitmap16 = this.mNormalBitmap;
                    y45.g(bitmap16);
                    this.mNormalBitmap = Bitmap.createBitmap(bitmap16, 0, 0, width2, height2, matrix2, true);
                }
            }
            Bitmap bitmap17 = this.mNormalBitmap;
            y45.g(bitmap17);
            this.mNormalBitmapWidth = bitmap17.getWidth();
            Bitmap bitmap18 = this.mNormalBitmap;
            y45.g(bitmap18);
            this.mNormalBitmapHeight = bitmap18.getHeight();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        int i;
        int measuredHeight;
        int i2;
        int measuredHeight2;
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        if (getPageSize() <= 1 || this.mCheckedBitmap == null || this.mNormalBitmap == null) {
            return;
        }
        int pageSize = getPageSize() + 1;
        for (int i3 = 1; i3 < pageSize; i3++) {
            Bitmap bitmap = this.mNormalBitmap;
            int i4 = i3 - 1;
            if (i4 < getCurrentPosition()) {
                i = i4 * (this.mNormalBitmapWidth + this.mIndicatorPadding);
                measuredHeight = getMeasuredHeight() / 2;
                i2 = this.mNormalBitmapHeight / 2;
            } else {
                if (i4 == getCurrentPosition()) {
                    i = i4 * (this.mNormalBitmapWidth + this.mIndicatorPadding);
                    measuredHeight2 = (getMeasuredHeight() / 2) - (this.mCheckedBitmapHeight / 2);
                    bitmap = this.mCheckedBitmap;
                } else {
                    i = (i4 * this.mIndicatorPadding) + ((i3 - 2) * this.mNormalBitmapWidth) + this.mCheckedBitmapWidth;
                    measuredHeight = getMeasuredHeight() / 2;
                    i2 = this.mNormalBitmapHeight / 2;
                }
                c(canvas, i, measuredHeight2, bitmap);
            }
            measuredHeight2 = measuredHeight - i2;
            c(canvas, i, measuredHeight2, bitmap);
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(this.mCheckedBitmapWidth + ((this.mNormalBitmapWidth + this.mIndicatorPadding) * (getPageSize() - 1)), wn8.d(this.mCheckedBitmapHeight, this.mNormalBitmapHeight));
    }

    public final DrawableIndicator setIndicatorDrawable(@DrawableRes int normalDrawable, @DrawableRes int checkedDrawable) {
        this.mNormalBitmap = BitmapFactory.decodeResource(getResources(), normalDrawable);
        this.mCheckedBitmap = BitmapFactory.decodeResource(getResources(), checkedDrawable);
        if (this.mNormalBitmap == null) {
            Context context = getContext();
            y45.i(context, "context");
            this.mNormalBitmap = d(context, normalDrawable);
            this.normalCanResize = false;
        }
        if (this.mCheckedBitmap == null) {
            Context context2 = getContext();
            y45.i(context2, "context");
            this.mCheckedBitmap = d(context2, checkedDrawable);
            this.checkCanResize = false;
        }
        e();
        postInvalidate();
        return this;
    }

    public final DrawableIndicator setIndicatorGap(int padding) {
        if (padding >= 0) {
            this.mIndicatorPadding = padding;
            postInvalidate();
        }
        return this;
    }

    public final DrawableIndicator setIndicatorSize(int normalWidth, int normalHeight, int checkedWidth, int checkedHeight) {
        this.mIndicatorSize = new a(normalWidth, normalHeight, checkedWidth, checkedHeight);
        e();
        postInvalidate();
        return this;
    }

    public DrawableIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public DrawableIndicator(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawableIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.g(context);
        this.normalCanResize = true;
        this.checkCanResize = true;
    }
}

package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010#\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001c¨\u0006$"}, d2 = {"Lcom/tn/lib/view/RoundedArrowImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", RequestParameters.POSITION, "", "setArrowPosition", "(F)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Landroid/graphics/Paint;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/graphics/Paint;", "paint", "Landroid/graphics/Path;", "e", "Landroid/graphics/Path;", "path", "f", "F", "arrowHeight", "g", "cornerRadius", "h", "arrowWidth", "i", "arrowPosition", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RoundedArrowImageView extends AppCompatImageView {

    private final Paint paint;

    private final Path path;

    private float arrowHeight;

    private float cornerRadius;

    private float arrowWidth;

    private float arrowPosition;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedArrowImageView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        float width = getWidth();
        float height = getHeight() - this.arrowHeight;
        float f10 = this.arrowPosition;
        this.path.reset();
        float f11 = 2;
        this.path.moveTo(f10 - (this.arrowWidth / f11), this.arrowHeight);
        this.path.lineTo(f10, 0.0f);
        this.path.lineTo(f10 + (this.arrowWidth / f11), this.arrowHeight);
        this.path.lineTo(width - this.cornerRadius, this.arrowHeight);
        Path path = this.path;
        float f12 = this.cornerRadius;
        float f13 = this.arrowHeight;
        path.arcTo(new RectF(width - (f12 * f11), f13, width, (f12 * f11) + f13), -90.0f, 90.0f);
        this.path.lineTo(width, (height - this.cornerRadius) + this.arrowHeight);
        Path path2 = this.path;
        float f14 = this.cornerRadius;
        float f15 = this.arrowHeight;
        path2.arcTo(new RectF(width - (f14 * f11), (height - (f14 * f11)) + f15, width, f15 + height), 0.0f, 90.0f);
        this.path.lineTo(this.cornerRadius, this.arrowHeight + height);
        Path path3 = this.path;
        float f16 = this.cornerRadius;
        float f17 = this.arrowHeight;
        path3.arcTo(new RectF(0.0f, (height - (f16 * f11)) + f17, f16 * f11, height + f17), 90.0f, 90.0f);
        this.path.lineTo(0.0f, this.cornerRadius + this.arrowHeight);
        Path path4 = this.path;
        float f18 = this.arrowHeight;
        float f19 = this.cornerRadius;
        path4.arcTo(new RectF(0.0f, f18, f19 * f11, (f19 * f11) + f18), 180.0f, 90.0f);
        this.path.close();
        canvas.save();
        canvas.clipPath(this.path);
        super.onDraw(canvas);
        canvas.restore();
    }

    public final void setArrowPosition(float position) {
        this.arrowPosition = RangesKt.k(position, 0.0f, getWidth());
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedArrowImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public RoundedArrowImageView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedArrowImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        Paint paint = new Paint(1);
        this.paint = paint;
        this.path = new Path();
        this.arrowHeight = com.blankj.utilcode.util.a0.a(8.0f);
        this.cornerRadius = com.blankj.utilcode.util.a0.a(8.0f);
        this.arrowWidth = com.blankj.utilcode.util.a0.a(16.0f);
        this.arrowPosition = com.blankj.utilcode.util.a0.a(200.0f);
        paint.setStyle(Paint.Style.FILL);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RoundedArrowImageView, 0, 0);
            Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            this.arrowHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_arrowIVHeight, this.arrowHeight);
            this.cornerRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_cornerRadius, this.cornerRadius);
            this.arrowWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_arrowIVWidth, this.arrowWidth);
            this.arrowPosition = typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedArrowImageView_arrowIVPositionOffset, this.arrowPosition);
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}

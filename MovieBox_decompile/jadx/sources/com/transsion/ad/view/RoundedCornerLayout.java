package com.transsion.ad.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.ad.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\fB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR*\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/transsion/ad/view/RoundedCornerLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "a", "F", "getCornerRadius", "()F", "setCornerRadius", "(F)V", "cornerRadius", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoundedCornerLayout extends FrameLayout {

    private float cornerRadius;

    private static final class a extends ViewOutlineProvider {

        private final float f41300a;

        public a(float f10) {
            this.f41300a = f10;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            Intrinsics.h(view, "view");
            Intrinsics.h(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f41300a);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedCornerLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final void setCornerRadius(float f10) {
        this.cornerRadius = f10;
        setOutlineProvider(new a(f10));
        setClipToOutline(f10 > 0.0f);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedCornerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public RoundedCornerLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundedCornerLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        int[] RoundedCornerLayout = R$styleable.RoundedCornerLayout;
        Intrinsics.g(RoundedCornerLayout, "RoundedCornerLayout");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, RoundedCornerLayout, 0, 0);
        setCornerRadius(typedArrayObtainStyledAttributes.getDimension(R$styleable.RoundedCornerLayout_cornerRadius, 0.0f));
        typedArrayObtainStyledAttributes.recycle();
        setOutlineProvider(new a(this.cornerRadius));
        setClipToOutline(this.cornerRadius > 0.0f);
    }
}

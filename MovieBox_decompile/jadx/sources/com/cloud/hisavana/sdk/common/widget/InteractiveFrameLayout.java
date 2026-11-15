package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.cloud.hisavana.sdk.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001:\u0002\u0018\u001bB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u0019¨\u0006!"}, d2 = {"Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "", "scale", "", "setScale", "(Ljava/lang/String;)V", "Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;", "globalLayoutListener", "registerGlobalLayoutListener", "(Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "a", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "widthScale", "c", "heightScale", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InteractiveFrameLayout extends FrameLayout {

    private final String TAG;

    private int widthScale;

    private int heightScale;

    private String scale;

    public interface a {
        void a(int i10, int i11);
    }

    public final class b implements ViewTreeObserver.OnGlobalLayoutListener {

        private final a f21639a;

        public b(a aVar) {
            this.f21639a = aVar;
        }

        @Override
        public void onGlobalLayout() {
            int width = InteractiveFrameLayout.this.getWidth();
            int height = InteractiveFrameLayout.this.getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            ViewTreeObserver viewTreeObserver = InteractiveFrameLayout.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            a aVar = this.f21639a;
            if (aVar != null) {
                aVar.a(width, height);
            }
        }
    }

    public InteractiveFrameLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.widthScale <= 0 || this.heightScale <= 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        b4.b().d(this.TAG, "widthSpecMode is " + mode + ", heightSpecMode is heightSpecMode");
        if (mode == 1073741824 && mode2 == 1073741824) {
            int i10 = this.widthScale;
            int i11 = i10 * size2;
            int i12 = this.heightScale;
            int i13 = size * i12;
            if (i11 < i13) {
                size = i11 / i12;
            } else if (i11 > i13) {
                size2 = i13 / i10;
            }
            b4.b().w(this.TAG, "width 1 is " + size + ", height is " + size2);
        } else if (mode2 == 1073741824) {
            int i14 = this.widthScale;
            int i15 = this.heightScale;
            int i16 = (size2 * i14) / i15;
            if (mode != Integer.MIN_VALUE || i16 <= size) {
                size = i16;
            } else {
                size2 = (i15 * size) / i14;
            }
            b4.b().w(this.TAG, "width 3 is " + size + ", height is " + size2);
        } else if (mode == 1073741824) {
            int i17 = this.heightScale;
            int i18 = this.widthScale;
            int i19 = (size * i17) / i18;
            if (mode2 != Integer.MIN_VALUE || i19 <= size2) {
                size2 = i19;
            } else {
                size = (i18 * size2) / i17;
            }
            b4.b().w(this.TAG, "width 2 is " + size + ", height is " + size2);
        } else {
            if (size > 0 || size2 > 0) {
                int i20 = this.widthScale;
                int i21 = size / i20;
                int i22 = this.heightScale;
                if (i21 >= size2 / i22) {
                    size = (i20 * size2) / i22;
                } else {
                    size2 = (i22 * size) / i20;
                }
            }
            b4.b().w(this.TAG, "width 4 is " + size + ", height is " + size2);
        }
        setMeasuredDimension(size, size2);
    }

    public final void registerGlobalLayoutListener(a globalLayoutListener) {
        getViewTreeObserver().addOnGlobalLayoutListener(new b(globalLayoutListener));
    }

    public final void setScale(String scale) {
        if (TextUtils.equals(this.scale, scale)) {
            return;
        }
        if (scale != null) {
            try {
                if (!new Regex("^[1-9]\\d*:[1-9]\\d*$").matches(scale)) {
                    return;
                }
                List listS0 = StringsKt.S0(scale, new String[]{":"}, false, 0, 6, null);
                if (listS0.size() < 2) {
                    return;
                }
                this.widthScale = Integer.parseInt((String) listS0.get(0));
                this.heightScale = Integer.parseInt((String) listS0.get(1));
                requestLayout();
            } catch (Exception e10) {
                b4.b().w(this.TAG, "scale is " + scale + ", error meg is " + e10.getMessage());
                return;
            }
        }
        b4.b().w(this.TAG, "width is " + this.widthScale + ", height is " + this.heightScale);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InteractiveFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "InteractiveFrameLayout";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InteractiveFrameLayout(Context context) {
        this(context, null, 0);
        Intrinsics.h(context, "context");
    }
}

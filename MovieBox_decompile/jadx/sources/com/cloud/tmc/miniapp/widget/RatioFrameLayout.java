package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.cloud.tmc.miniapp.R;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@SourceDebugExtension
public final class RatioFrameLayout extends FrameLayout {
    public float OooO00o;
    public float OooO0O0;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RatioFrameLayout(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    public final float getHeightRatio() {
        return this.OooO0O0;
    }

    public final float getSizeRatio() {
        return this.OooO00o / this.OooO0O0;
    }

    public final float getWidthRatio() {
        return this.OooO00o;
    }

    @Override
    public void onMeasure(int i10, int i11) {
        if (this.OooO00o != 0.0f && this.OooO0O0 != 0.0f) {
            float sizeRatio = getSizeRatio();
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            if (getLayoutParams().width != -2 && getLayoutParams().height != -2 && mode == 1073741824 && mode2 == 1073741824) {
                float f10 = size;
                float f11 = f10 / sizeRatio;
                float f12 = size2;
                if (f11 <= f12) {
                    i11 = View.MeasureSpec.makeMeasureSpec((int) f11, 1073741824);
                } else {
                    float f13 = f12 * sizeRatio;
                    if (f13 <= f10) {
                        i10 = View.MeasureSpec.makeMeasureSpec((int) f13, 1073741824);
                    }
                }
            } else if (getLayoutParams().width != -2 && mode == 1073741824 && mode2 != 1073741824) {
                i11 = View.MeasureSpec.makeMeasureSpec((int) (size / sizeRatio), 1073741824);
            } else if (getLayoutParams().height != -2 && mode2 == 1073741824 && mode != 1073741824) {
                i10 = View.MeasureSpec.makeMeasureSpec((int) (size2 * sizeRatio), 1073741824);
            }
        }
        super.onMeasure(i10, i11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RatioFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RatioFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    public RatioFrameLayout(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RatioFrameLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Intrinsics.h(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RatioFrameLayout);
        Intrinsics.g(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…yleable.RatioFrameLayout)");
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.RatioFrameLayout_sizeRatio);
        if (!TextUtils.isEmpty(string)) {
            Intrinsics.e(string);
            String[] strArr = (String[]) StringsKt.S0(string, new String[]{":"}, false, 0, 6, null).toArray(new String[0]);
            int length = strArr.length;
            if (length == 1) {
                this.OooO00o = Float.parseFloat(strArr[0]);
                this.OooO0O0 = 1.0f;
            } else if (length == 2) {
                this.OooO00o = Float.parseFloat(strArr[0]);
                this.OooO0O0 = Float.parseFloat(strArr[1]);
            } else {
                throw new IllegalArgumentException("are you ok?");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}

package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.ViewUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public final class NativeTitleBar extends ConstraintLayout {
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public Function0<Unit> OooO0Oo;

    public static final class OooO00o extends Lambda implements Function0<FrameLayout> {
        public OooO00o() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (FrameLayout) NativeTitleBar.this.findViewById(R.id.fl_title_back);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<TextView> {
        public OooO0O0() {
            super(0);
        }

        @Override
        public Object invoke() {
            return (TextView) NativeTitleBar.this.findViewById(R.id.tv_title);
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<View> {
        public OooO0OO() {
            super(0);
        }

        @Override
        public Object invoke() {
            return NativeTitleBar.this.findViewById(R.id.view_title_line);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeTitleBar(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    public static final void OooO00o(NativeTitleBar this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        Function0<Unit> function0 = this$0.OooO0Oo;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final FrameLayout getMFlTitleBack() {
        Object value = this.OooO00o.getValue();
        Intrinsics.g(value, "<get-mFlTitleBack>(...)");
        return (FrameLayout) value;
    }

    private final TextView getMTvTitle() {
        Object value = this.OooO0O0.getValue();
        Intrinsics.g(value, "<get-mTvTitle>(...)");
        return (TextView) value;
    }

    private final View getMViewTitleLine() {
        Object value = this.OooO0OO.getValue();
        Intrinsics.g(value, "<get-mViewTitleLine>(...)");
        return (View) value;
    }

    public final void setLineVisible(boolean z10) {
        getMViewTitleLine().setVisibility(z10 ? 0 : 8);
    }

    public final void setTitle(String str) {
        getMTvTitle().setText(str);
    }

    public final void setTitleLineHeight(int i10) {
        try {
            getMViewTitleLine().getLayoutParams().height = i10;
        } catch (Throwable th2) {
            TmcLogger.e("", th2);
        }
    }

    public final void setonBackClickListener(Function0<Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.OooO0Oo = callback;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeTitleBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeTitleBar(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    public NativeTitleBar(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeTitleBar(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooO00o());
        this.OooO0O0 = LazyKt.b(new OooO0O0());
        this.OooO0OO = LazyKt.b(new OooO0OO());
        try {
            LayoutInflater.from(context).inflate(R.layout.mini_layout_native_title_bar, this);
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.Mini_NativeTitleBar);
            Intrinsics.g(typedArrayObtainStyledAttributes, "getContext().obtainStyle…able.Mini_NativeTitleBar)");
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_NativeTitleBar_bar_title)) {
                setTitle(typedArrayObtainStyledAttributes.getString(R.styleable.Mini_NativeTitleBar_bar_title));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.Mini_NativeTitleBar_bar_line)) {
                setLineVisible(typedArrayObtainStyledAttributes.getBoolean(R.styleable.Mini_NativeTitleBar_bar_line, true));
            }
            typedArrayObtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                getMFlTitleBack().setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
            }
            getMFlTitleBack().setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    NativeTitleBar.OooO00o(this.f23213a, view);
                }
            });
        } catch (Throwable unused) {
        }
    }
}

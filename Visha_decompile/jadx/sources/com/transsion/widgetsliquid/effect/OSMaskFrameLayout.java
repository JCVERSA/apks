package com.transsion.widgetsliquid.effect;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RenderEffect;
import android.graphics.RuntimeShader;
import android.os.Build;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.DoNotInline;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetsliquid.R;
import defpackage.olb;
import defpackage.umb;
import defpackage.v57;
import defpackage.xlb;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000 B2\u00020\u0001:\u0003,+*B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u0017J\u0015\u0010 \u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0006¢\u0006\u0004\b \u0010\u0017J\u0015\u0010\"\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\n¢\u0006\u0004\b\"\u0010#J\u0015\u0010%\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\n¢\u0006\u0004\b%\u0010#J\u0015\u0010'\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0006¢\u0006\u0004\b'\u0010\u0017J\u000f\u0010(\u001a\u00020\u0012H\u0014¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b*\u0010\u001cJ\u0017\u0010+\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b+\u0010\u001cJ\u0017\u0010,\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b,\u0010\u001cJ\u001f\u0010/\u001a\u00020\u00122\u0006\u0010-\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u0006H\u0002¢\u0006\u0004\b/\u00100R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u00101R\u0016\u00105\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u00104R\u0016\u00107\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00106R\u0016\u00109\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00101R\u0014\u0010>\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010A\u001a\u0004\u0018\u00010?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010@¨\u0006C"}, d2 = {"Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "adapterOn", "()Z", "isGestureNavigationBarOn", "(Landroid/content/Context;)Z", "height", "", "strength", "Lzfb;", "setFadeEffect", "(IF)V", "position", "setMaskPosition", "(I)V", "setMaskLayerPosition", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "color", "setMaskColor", "fadeHeight", "setMaskHeight", "use", "setUseBlur", "(Z)V", "adapter", "setAdapterNavi", "visibility", "setMaskVisibility", "onDetachedFromWindow", "()V", "c", "b", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "w", CmcdData.STREAMING_FORMAT_HLS, "d", "(II)V", "I", "maskLayerPosition", "Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;", "Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;", "maskDrawable", "Z", "useBlur", "e", "adapterNavi", "f", "defaultMaskHeight", GslbInterceptor.HEADER_KEY_GSLB, "F", "maxBlurRadius", "Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$b;", "Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$b;", "blurState", "Companion", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSMaskFrameLayout extends FrameLayout {
    public static final int OS_MASK_LAYER_POSITION_BOTTOM = 1;
    public static final int OS_MASK_LAYER_POSITION_TOP = 0;

    public int maskLayerPosition;

    public OSMaskDrawable maskDrawable;

    public boolean useBlur;

    public boolean adapterNavi;

    public int defaultMaskHeight;

    public final float maxBlurRadius;

    public final b blurState;

    public static final class a {
        public static final a a = new a();

        public static final class C0267a implements b {
            public final float a;
            public final RuntimeShader b;
            public final RuntimeShader c;
            public RenderEffect d;

            public C0267a(String str, float f) {
                y45.j(str, "shaderText");
                this.a = f;
                this.b = umb.a(str);
                this.c = umb.a(str);
            }

            @Override
            public void a(View view) {
                y45.j(view, "view");
                this.d = null;
                c(view, null);
            }

            @Override
            public void b(View view, int i, int i2, int i3) {
                y45.j(view, "view");
                if (this.d == null) {
                    this.b.setFloatUniform("u_maxRadius", this.a);
                    this.b.setFloatUniform("u_blurDirection", 0.0f, 1.0f);
                    float f = i3;
                    this.b.setFloatUniform("u_gradientStart", 0.0f, f);
                    this.b.setFloatUniform("u_gradientEnd", 0.0f, 0.0f);
                    this.c.setFloatUniform("u_maxRadius", this.a);
                    this.c.setFloatUniform("u_blurDirection", 1.0f, 0.0f);
                    this.c.setFloatUniform("u_gradientStart", 0.0f, f);
                    this.c.setFloatUniform("u_gradientEnd", 0.0f, 0.0f);
                    float f2 = i;
                    float f3 = i2;
                    this.c.setFloatUniform("u_size", f2, f3);
                    this.b.setFloatUniform("u_size", f2, f3);
                    RenderEffect renderEffectCreateRuntimeShaderEffect = RenderEffect.createRuntimeShaderEffect(this.b, "inputImage");
                    y45.i(renderEffectCreateRuntimeShaderEffect, "createRuntimeShaderEffec…BlurShader, \"inputImage\")");
                    RenderEffect renderEffectCreateRuntimeShaderEffect2 = RenderEffect.createRuntimeShaderEffect(this.c, "inputImage");
                    y45.i(renderEffectCreateRuntimeShaderEffect2, "createRuntimeShaderEffec…BlurShader, \"inputImage\")");
                    RenderEffect renderEffectCreateChainEffect = RenderEffect.createChainEffect(renderEffectCreateRuntimeShaderEffect2, renderEffectCreateRuntimeShaderEffect);
                    this.d = renderEffectCreateChainEffect;
                    c(view, renderEffectCreateChainEffect);
                }
            }

            public final void c(View view, RenderEffect renderEffect) {
                try {
                    View.class.getDeclaredMethod("setBackdropRenderEffectWrapper", v57.a()).invoke(view, renderEffect);
                } catch (Exception e) {
                    Log.e("OSMaskFrameLayout", "set backdrop render effect failed", e);
                }
            }
        }

        @DoNotInline
        public final b a(String str, float f) {
            y45.j(str, "shaderText");
            return new C0267a(str, f);
        }
    }

    public interface b {
        void a(View view);

        void b(View view, int i, int i2, int i3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSMaskFrameLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static void setFadeEffect$default(OSMaskFrameLayout oSMaskFrameLayout, int i, float f, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setFadeEffect");
        }
        if ((i2 & 2) != 0) {
            f = 1.0f;
        }
        oSMaskFrameLayout.setFadeEffect(i, f);
    }

    public final void a(Canvas canvas) {
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        OSMaskDrawable oSMaskDrawable2 = null;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.setBounds(0, 0, getWidth(), getHeight());
        OSMaskDrawable oSMaskDrawable3 = this.maskDrawable;
        if (oSMaskDrawable3 == null) {
            y45.B("maskDrawable");
        } else {
            oSMaskDrawable2 = oSMaskDrawable3;
        }
        oSMaskDrawable2.draw(canvas);
    }

    public final boolean adapterOn() {
        Context context = getContext();
        y45.i(context, "context");
        return !isGestureNavigationBarOn(context) && this.adapterNavi && this.maskLayerPosition == 1;
    }

    public final void b(Canvas canvas) {
        super.dispatchDraw(canvas);
        a(canvas);
    }

    public final void c(Canvas canvas) {
        a(canvas);
        super.dispatchDraw(canvas);
    }

    public final void d(int w, int h) {
        b bVar;
        if (Build.VERSION.SDK_INT < 33 || !xlb.a.a() || (bVar = this.blurState) == null) {
            return;
        }
        bVar.b(this, w, h, getMeasuredHeight());
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (this.maskLayerPosition == 1) {
            c(canvas);
        } else {
            b(canvas);
        }
        if (this.useBlur && olb.o && Build.VERSION.SDK_INT >= 33) {
            d(getWidth(), getHeight());
        }
    }

    public final boolean isGestureNavigationBarOn(Context context) {
        y45.j(context, "context");
        return Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
    }

    @Override
    public void onDetachedFromWindow() {
        b bVar = this.blurState;
        if (bVar != null) {
            bVar.a(this);
        }
        super.onDetachedFromWindow();
    }

    public final void setAdapterNavi(boolean adapter) {
        if (adapter == this.adapterNavi) {
            return;
        }
        this.adapterNavi = adapter;
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        OSMaskDrawable oSMaskDrawable2 = null;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.q(this.adapterNavi);
        int dimensionPixelSize = adapterOn() ? getContext().getResources().getDimensionPixelSize(R.dimen.os_liquid_mask_length_threenav) : this.defaultMaskHeight;
        OSMaskDrawable oSMaskDrawable3 = this.maskDrawable;
        if (oSMaskDrawable3 == null) {
            y45.B("maskDrawable");
        } else {
            oSMaskDrawable2 = oSMaskDrawable3;
        }
        oSMaskDrawable2.t(dimensionPixelSize);
        invalidate();
    }

    public final void setFadeEffect(int height, float strength) {
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.r(height, strength);
        invalidate();
    }

    public final void setMaskColor(int color) {
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.s(color);
        invalidate();
    }

    public final void setMaskHeight(int fadeHeight) {
        this.defaultMaskHeight = fadeHeight;
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.t(fadeHeight);
        invalidate();
    }

    public final void setMaskLayerPosition(int position) {
        if (position != this.maskLayerPosition) {
            this.maskLayerPosition = position;
            invalidate();
        }
    }

    public final void setMaskPosition(int position) {
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.u(position);
        invalidate();
    }

    public final void setMaskVisibility(int visibility) {
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.w(visibility);
        invalidate();
    }

    public final void setUseBlur(boolean use) {
        boolean z = use && Build.VERSION.SDK_INT >= 33;
        if (z == this.useBlur) {
            return;
        }
        this.useBlur = z;
        OSMaskDrawable oSMaskDrawable = this.maskDrawable;
        if (oSMaskDrawable == null) {
            y45.B("maskDrawable");
            oSMaskDrawable = null;
        }
        oSMaskDrawable.x(this.useBlur);
        if (!this.useBlur) {
            b bVar = this.blurState;
            if (bVar != null) {
                bVar.a(this);
            }
        } else if (getWidth() > 0 && getHeight() > 0) {
            d(getWidth(), getHeight());
        }
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSMaskFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSMaskFrameLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSMaskFrameLayout(Context context, AttributeSet attributeSet, int i) {
        b bVarA;
        int dimensionPixelSize;
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.maskLayerPosition = 1;
        this.maxBlurRadius = 35.0f;
        int i2 = Build.VERSION.SDK_INT;
        OSMaskDrawable oSMaskDrawable = null;
        if (i2 >= 33) {
            a aVar = a.a;
            Context context2 = getContext();
            y45.i(context2, "getContext()");
            bVarA = aVar.a(xlb.d(context2, R.raw.lineargradient_blur), 35.0f);
        } else {
            bVarA = null;
        }
        this.blurState = bVarA;
        setWillNotDraw(false);
        int[] iArr = R.styleable.OSMaskFrameLayout;
        y45.i(iArr, "OSMaskFrameLayout");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.OSMaskFrameLayout_os_mask_color, olb.l(R.attr.os_bg_primary, context.getColor(R.color.os_bg_primary_hios), context));
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.OSMaskFrameLayout_os_mask_position, 1);
        this.maskLayerPosition = typedArrayObtainStyledAttributes.getInt(R.styleable.OSMaskFrameLayout_os_mask_layer_position, 1);
        int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.OSMaskFrameLayout_os_mask_scene, 0);
        this.useBlur = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSMaskFrameLayout_os_mask_blur, this.useBlur);
        if (i2 < 33) {
            this.useBlur = false;
        }
        this.adapterNavi = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSMaskFrameLayout_os_mask_adapter_navi, this.adapterNavi);
        if (adapterOn()) {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.os_liquid_mask_length_threenav);
        } else {
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSMaskFrameLayout_os_mask_length, context.getResources().getDimensionPixelSize(R.dimen.os_liquid_mask_length));
        }
        this.defaultMaskHeight = dimensionPixelSize;
        OSMaskDrawable oSMaskDrawable2 = new OSMaskDrawable(context);
        this.maskDrawable = oSMaskDrawable2;
        oSMaskDrawable2.q(this.adapterNavi);
        OSMaskDrawable oSMaskDrawable3 = this.maskDrawable;
        if (oSMaskDrawable3 == null) {
            y45.B("maskDrawable");
            oSMaskDrawable3 = null;
        }
        oSMaskDrawable3.x(this.useBlur);
        OSMaskDrawable oSMaskDrawable4 = this.maskDrawable;
        if (oSMaskDrawable4 == null) {
            y45.B("maskDrawable");
            oSMaskDrawable4 = null;
        }
        oSMaskDrawable4.v(i4);
        OSMaskDrawable oSMaskDrawable5 = this.maskDrawable;
        if (oSMaskDrawable5 == null) {
            y45.B("maskDrawable");
            oSMaskDrawable5 = null;
        }
        oSMaskDrawable5.s(color);
        OSMaskDrawable oSMaskDrawable6 = this.maskDrawable;
        if (oSMaskDrawable6 == null) {
            y45.B("maskDrawable");
            oSMaskDrawable6 = null;
        }
        oSMaskDrawable6.u(i3);
        OSMaskDrawable oSMaskDrawable7 = this.maskDrawable;
        if (oSMaskDrawable7 == null) {
            y45.B("maskDrawable");
        } else {
            oSMaskDrawable = oSMaskDrawable7;
        }
        oSMaskDrawable.t(dimensionPixelSize);
        typedArrayObtainStyledAttributes.recycle();
    }
}

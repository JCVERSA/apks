package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.graphics.RenderEffect;
import android.graphics.RuntimeShader;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetsliquid.R;
import defpackage.umb;
import defpackage.v57;
import defpackage.wn8;
import defpackage.xlb;
import defpackage.y45;
import defpackage.y87;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ/\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0015J#\u0010!\u001a\u00020\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00012\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0003¢\u0006\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010.\u001a\u00020)8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b-\u0010+R$\u00105\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0016\u00108\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107¨\u00069"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "Lzfb;", "onSizeChanged", "(IIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "", "radius", "setMaxBlurRadius", "(F)V", "height", "setDefaultSize", "(I)V", "b", "view", "Landroid/graphics/RenderEffect;", "renderEffect", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Landroid/view/View;Landroid/graphics/RenderEffect;)V", "F", "maxBlurRadius", "", "c", "Ljava/lang/String;", "LINEAR_GRADIENT_SHADER", "Landroid/graphics/RuntimeShader;", "d", "Landroid/graphics/RuntimeShader;", "vBlurShader", "e", "hBlurShader", "f", "Landroid/graphics/RenderEffect;", "getLinearGradientBlurEffect", "()Landroid/graphics/RenderEffect;", "setLinearGradientBlurEffect", "(Landroid/graphics/RenderEffect;)V", "linearGradientBlurEffect", GslbInterceptor.HEADER_KEY_GSLB, "I", "mDefaultSize", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSEdgeLinearGradientBlurView extends View {

    public float maxBlurRadius;

    public final String LINEAR_GRADIENT_SHADER;

    public final RuntimeShader vBlurShader;

    public final RuntimeShader hBlurShader;

    public RenderEffect linearGradientBlurEffect;

    public int mDefaultSize;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSEdgeLinearGradientBlurView(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public final void a(View view, RenderEffect renderEffect) {
        try {
            View.class.getDeclaredMethod("setBackdropRenderEffectWrapper", v57.a()).invoke(view, renderEffect);
        } catch (Exception e) {
            Log.e("ddd", "reflect call setBackdropRenderEffect fail:", e);
        }
    }

    public final void b(int w, int h) {
        if (Build.VERSION.SDK_INT >= 33 && xlb.a.a() && this.linearGradientBlurEffect == null) {
            this.vBlurShader.setFloatUniform("u_maxRadius", this.maxBlurRadius);
            this.vBlurShader.setFloatUniform("u_blurDirection", 0.0f, 1.0f);
            this.vBlurShader.setFloatUniform("u_gradientStart", 0.0f, getMeasuredHeight());
            this.vBlurShader.setFloatUniform("u_gradientEnd", 0.0f, 0.0f);
            this.hBlurShader.setFloatUniform("u_maxRadius", this.maxBlurRadius);
            this.hBlurShader.setFloatUniform("u_blurDirection", 1.0f, 0.0f);
            this.hBlurShader.setFloatUniform("u_gradientStart", 0.0f, getMeasuredHeight());
            this.hBlurShader.setFloatUniform("u_gradientEnd", 0.0f, 0.0f);
            float f = w * 1.0f;
            float f2 = h * 1.0f;
            this.hBlurShader.setFloatUniform("u_size", f, f2);
            this.vBlurShader.setFloatUniform("u_size", f, f2);
            RenderEffect renderEffectCreateRuntimeShaderEffect = RenderEffect.createRuntimeShaderEffect(this.vBlurShader, "inputImage");
            y45.i(renderEffectCreateRuntimeShaderEffect, "createRuntimeShaderEffec…BlurShader, \"inputImage\")");
            RenderEffect renderEffectCreateRuntimeShaderEffect2 = RenderEffect.createRuntimeShaderEffect(this.hBlurShader, "inputImage");
            y45.i(renderEffectCreateRuntimeShaderEffect2, "createRuntimeShaderEffec…BlurShader, \"inputImage\")");
            RenderEffect renderEffectCreateChainEffect = RenderEffect.createChainEffect(renderEffectCreateRuntimeShaderEffect2, renderEffectCreateRuntimeShaderEffect);
            this.linearGradientBlurEffect = renderEffectCreateChainEffect;
            a(this, renderEffectCreateChainEffect);
        }
    }

    public final RenderEffect getLinearGradientBlurEffect() {
        return this.linearGradientBlurEffect;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (View.MeasureSpec.getMode(heightMeasureSpec) == Integer.MIN_VALUE || View.MeasureSpec.getMode(heightMeasureSpec) == 0) {
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mDefaultSize, 1073741824) + getPaddingTop() + getPaddingBottom();
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        b(w, h);
    }

    public final void setDefaultSize(int height) {
        this.mDefaultSize = height;
    }

    public final void setLinearGradientBlurEffect(RenderEffect renderEffect) {
        this.linearGradientBlurEffect = renderEffect;
    }

    public final void setMaxBlurRadius(float radius) {
        this.maxBlurRadius = wn8.c(radius, 0.0f);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSEdgeLinearGradientBlurView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSEdgeLinearGradientBlurView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSEdgeLinearGradientBlurView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSEdgeLinearGradientBlurView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.maxBlurRadius = 50.0f;
        Context context2 = getContext();
        y45.i(context2, "getContext()");
        String strD = xlb.d(context2, R.raw.lineargradient_blur);
        this.LINEAR_GRADIENT_SHADER = strD;
        y87.a();
        this.vBlurShader = umb.a(strD);
        y87.a();
        this.hBlurShader = umb.a(strD);
        this.mDefaultSize = context.getResources().getDimensionPixelSize(R.dimen.os_list_edge_blur_length);
    }
}

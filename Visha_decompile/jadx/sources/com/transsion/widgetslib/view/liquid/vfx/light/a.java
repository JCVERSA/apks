package com.transsion.widgetslib.view.liquid.vfx.light;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RuntimeShader;
import android.graphics.RuntimeXfermode;
import android.graphics.Xfermode;
import android.os.Build;
import android.view.View;
import defpackage.umb;

public class a implements VFXLightAnimHelper.a {
    public Paint a;
    public RuntimeShader b;
    public LightTypeConfig c;
    public boolean d;
    public Xfermode e;
    public Xfermode f;
    public Xfermode g;
    public View h;

    public a() {
        g();
    }

    @Override
    public void a(float f, float f2) {
        if (Build.VERSION.SDK_INT < 33 || this.h == null) {
            return;
        }
        this.b.setFloatUniform("LightPos", f, f2);
        this.h.invalidate();
    }

    @Override
    public void b(float f) {
        if (Build.VERSION.SDK_INT < 33 || this.h == null) {
            return;
        }
        this.b.setFloatUniform("LightBrightness", f);
        this.h.invalidate();
    }

    @Override
    public void c(float f) {
        if (Build.VERSION.SDK_INT < 33 || this.h == null) {
            return;
        }
        this.b.setFloatUniform("LightAlpha", f);
        this.h.invalidate();
    }

    @Override
    public void d(float f) {
        if (Build.VERSION.SDK_INT < 33 || this.h == null) {
            return;
        }
        this.b.setFloatUniform("LightSize", f);
        this.h.invalidate();
    }

    public final void e() {
        Xfermode xfermode;
        if (Build.VERSION.SDK_INT >= 33) {
            int darkModeType = this.d ? this.c.getDarkModeType() : this.c.getLightModeType();
            this.b.setFloatUniform("LightStrength", this.d ? this.c.getDarkStrength() : this.c.getLightStrength());
            if (darkModeType == 1001) {
                xfermode = this.e;
            } else {
                xfermode = darkModeType == 3 ? this.f : null;
            }
            if (xfermode != this.g) {
                this.a.setXfermode(xfermode);
                this.g = xfermode;
            }
            View view = this.h;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public void f(View view) {
        this.h = view;
    }

    public final void g() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            Paint paint = new Paint();
            this.a = paint;
            paint.setAntiAlias(true);
            RuntimeShader runtimeShaderA = umb.a("uniform float2 LightPos;\nuniform float LightSigma;\nuniform float LightAlpha;\nuniform float LightSize;\nuniform float LightBrightness;\nuniform float LightScopeFactor;\nuniform float LightStrength;\nconst half3 l_glow = half3(1.0);\nfloat fastDither(float2 st) {\n    return fract(sin(dot(st, float2(12.9898, 78.233))) * 43758.5453);\n}\nhalf4 main(float2 coord) {\n    float dist = length(coord - LightPos) / LightSize;\n    float glow = exp(-(dist * dist) / (2.0 * LightSigma * LightSigma));\n    glow = clamp(glow, 0.0, 1.0);\n    glow = pow(glow, LightScopeFactor) * LightStrength * LightAlpha * LightBrightness;\n    glow += (fastDither(coord) - 0.5) * 0.0078;\n    half3 l = l_glow * glow;\n    return half4(l, glow);\n}");
            this.b = runtimeShaderA;
            runtimeShaderA.setFloatUniform("LightSigma", 150.0f);
            this.b.setFloatUniform("LightScopeFactor", 0.3f);
            this.b.setFloatUniform("LightSize", 1.0f);
            this.b.setFloatUniform("LightBrightness", 1.0f);
            this.a.setShader(this.b);
            if (i >= 36) {
                this.e = new RuntimeXfermode("half blend_overlay_component(half2 s, half2 d) {\n    return (2.0*d.x <= d.y) ? 2.0*s.x*d.x\n                        : s.y*d.y - 2.0*(d.y - d.x)*(s.y - s.x);\n}\n// 可调参数区\nconst half BRIGHT_BOOST_FACTOR = 0.22;    // 整体提亮强度 0.0~0.5\nconst half DARK_LIMIT = 0.4;              // 暗部识别上限\nconst half OVER_EXP_START = 0.1;         // 防过曝起始亮度\nconst half OVER_EXP_END = 0.92;          // 防过曝完全压制亮度\nvec4 main(half4 src, half4 dst) {\n    half4 result = half4(\n        blend_overlay_component(half2(src.r, src.a), half2(dst.r, dst.a)),\n        blend_overlay_component(half2(src.g, src.a), half2(dst.g, dst.a)),\n        blend_overlay_component(half2(src.b, src.a), half2(dst.b, dst.a)),\n        src.a + (1.0 - src.a)*dst.a\n    );\n    result.rgb += dst.rgb*(1.0 - src.a) + src.rgb*(1.0 - dst.a);\n    half dstLuma = dot(dst.rgb, half3(0.299, 0.587, 0.114));\n    half blendStrength = 1.0 - smoothstep(OVER_EXP_START, OVER_EXP_END, dstLuma);\n    half darkLevel = smoothstep(0.0, DARK_LIMIT, 1.0 - dstLuma);\n    half realBoost = darkLevel * BRIGHT_BOOST_FACTOR;\n    result.rgb += realBoost * src.a;\n    // 高光区域回落保护，杜绝过曝泛白\n    result.rgb = mix(dst.rgb, result.rgb, blendStrength);\n    return result;\n}");
                this.f = new RuntimeXfermode("half4 main(half4 src, half4 dst) {\n    return src + (1 - src.a)*dst;\n}");
            }
            setLightTypeConfig(LightTypeConfig.DEFAULT);
        }
    }

    public void h(Canvas canvas, float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT < 33 || this.h == null) {
            return;
        }
        canvas.save();
        if (f3 > 0.0f) {
            canvas.drawRoundRect(0.0f, 0.0f, f, f2, f3, f3, this.a);
        } else {
            float f4 = f / 2.0f;
            canvas.drawCircle(f4, f2 / 2.0f, f4, this.a);
        }
        canvas.restore();
    }

    public void i() {
        this.h = null;
    }

    public void j(int i, int i2) {
        if (Build.VERSION.SDK_INT < 33 || this.h == null) {
            return;
        }
        this.b.setFloatUniform("LightSigma", Math.max(60.0f, Math.max(i, i2) / 8.0f));
        this.h.invalidate();
    }

    public void k(boolean z) {
        this.d = z;
        e();
    }

    public void setLightTypeConfig(LightTypeConfig lightTypeConfig) {
        this.c = lightTypeConfig;
        e();
    }
}

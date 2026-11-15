.class public Lcom/transsion/widgetslib/view/liquid/vfx/light/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$a;


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/RuntimeShader;

.field public c:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

.field public d:Z

.field public e:Landroid/graphics/Xfermode;

.field public f:Landroid/graphics/Xfermode;

.field public g:Landroid/graphics/Xfermode;

.field public h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->g()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v1, "LightPos"

    invoke-static {v0, v1, p1, p2}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v1, "LightBrightness"

    invoke-static {v0, v1, p1}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v1, "LightAlpha"

    invoke-static {v0, v1, p1}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v1, "LightSize"

    invoke-static {v0, v1, p1}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->c:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->getDarkModeType()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->c:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->getLightModeType()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->c:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->getDarkStrength()F

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->c:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->getLightStrength()F

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v3, "LightStrength"

    invoke-static {v2, v3, v1}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->e:Landroid/graphics/Xfermode;

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->f:Landroid/graphics/Xfermode;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->g:Landroid/graphics/Xfermode;

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->g:Landroid/graphics/Xfermode;

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    return-void
.end method

.method public final g()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "uniform float2 LightPos;\nuniform float LightSigma;\nuniform float LightAlpha;\nuniform float LightSize;\nuniform float LightBrightness;\nuniform float LightScopeFactor;\nuniform float LightStrength;\nconst half3 l_glow = half3(1.0);\nfloat fastDither(float2 st) {\n    return fract(sin(dot(st, float2(12.9898, 78.233))) * 43758.5453);\n}\nhalf4 main(float2 coord) {\n    float dist = length(coord - LightPos) / LightSize;\n    float glow = exp(-(dist * dist) / (2.0 * LightSigma * LightSigma));\n    glow = clamp(glow, 0.0, 1.0);\n    glow = pow(glow, LightScopeFactor) * LightStrength * LightAlpha * LightBrightness;\n    glow += (fastDither(coord) - 0.5) * 0.0078;\n    half3 l = l_glow * glow;\n    return half4(l, glow);\n}"

    invoke-static {v1}, Lumb;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v2, "LightSigma"

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v1, v2, v3}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v2, "LightScopeFactor"

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v1, v2, v3}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v2, "LightSize"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v2, "LightBrightness"

    invoke-static {v1, v2, v3}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/RuntimeXfermode;

    const-string v1, "half blend_overlay_component(half2 s, half2 d) {\n    return (2.0*d.x <= d.y) ? 2.0*s.x*d.x\n                        : s.y*d.y - 2.0*(d.y - d.x)*(s.y - s.x);\n}\n// \u53ef\u8c03\u53c2\u6570\u533a\nconst half BRIGHT_BOOST_FACTOR = 0.22;    // \u6574\u4f53\u63d0\u4eae\u5f3a\u5ea6 0.0~0.5\nconst half DARK_LIMIT = 0.4;              // \u6697\u90e8\u8bc6\u522b\u4e0a\u9650\nconst half OVER_EXP_START = 0.1;         // \u9632\u8fc7\u66dd\u8d77\u59cb\u4eae\u5ea6\nconst half OVER_EXP_END = 0.92;          // \u9632\u8fc7\u66dd\u5b8c\u5168\u538b\u5236\u4eae\u5ea6\nvec4 main(half4 src, half4 dst) {\n    half4 result = half4(\n        blend_overlay_component(half2(src.r, src.a), half2(dst.r, dst.a)),\n        blend_overlay_component(half2(src.g, src.a), half2(dst.g, dst.a)),\n        blend_overlay_component(half2(src.b, src.a), half2(dst.b, dst.a)),\n        src.a + (1.0 - src.a)*dst.a\n    );\n    result.rgb += dst.rgb*(1.0 - src.a) + src.rgb*(1.0 - dst.a);\n    half dstLuma = dot(dst.rgb, half3(0.299, 0.587, 0.114));\n    half blendStrength = 1.0 - smoothstep(OVER_EXP_START, OVER_EXP_END, dstLuma);\n    half darkLevel = smoothstep(0.0, DARK_LIMIT, 1.0 - dstLuma);\n    half realBoost = darkLevel * BRIGHT_BOOST_FACTOR;\n    result.rgb += realBoost * src.a;\n    // \u9ad8\u5149\u533a\u57df\u56de\u843d\u4fdd\u62a4\uff0c\u675c\u7edd\u8fc7\u66dd\u6cdb\u767d\n    result.rgb = mix(dst.rgb, result.rgb, blendStrength);\n    return result;\n}"

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->e:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/RuntimeXfermode;

    const-string v1, "half4 main(half4 src, half4 dst) {\n    return src + (1 - src.a)*dst;\n}"

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeXfermode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->f:Landroid/graphics/Xfermode;

    :cond_0
    sget-object v0, Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;->DEFAULT:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V

    :cond_1
    return-void
.end method

.method public h(Landroid/graphics/Canvas;FFF)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    div-float/2addr p3, p4

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    return-void
.end method

.method public j(II)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x41000000    # 8.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->b:Landroid/graphics/RuntimeShader;

    const-string v0, "LightSigma"

    invoke-static {p2, v0, p1}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->d:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->e()V

    return-void
.end method

.method public setLightTypeConfig(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->c:Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/a;->e()V

    return-void
.end method

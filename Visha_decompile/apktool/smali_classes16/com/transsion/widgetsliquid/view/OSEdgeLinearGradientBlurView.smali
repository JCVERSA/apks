.class public final Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ/\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0015J#\u0010!\u001a\u00020\u000f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00012\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0003\u00a2\u0006\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010.\u001a\u00020)8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010+R$\u00105\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0016\u00108\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "w",
        "h",
        "oldw",
        "oldh",
        "Lzfb;",
        "onSizeChanged",
        "(IIII)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "",
        "radius",
        "setMaxBlurRadius",
        "(F)V",
        "height",
        "setDefaultSize",
        "(I)V",
        "b",
        "view",
        "Landroid/graphics/RenderEffect;",
        "renderEffect",
        "a",
        "(Landroid/view/View;Landroid/graphics/RenderEffect;)V",
        "F",
        "maxBlurRadius",
        "",
        "c",
        "Ljava/lang/String;",
        "LINEAR_GRADIENT_SHADER",
        "Landroid/graphics/RuntimeShader;",
        "d",
        "Landroid/graphics/RuntimeShader;",
        "vBlurShader",
        "e",
        "hBlurShader",
        "f",
        "Landroid/graphics/RenderEffect;",
        "getLinearGradientBlurEffect",
        "()Landroid/graphics/RenderEffect;",
        "setLinearGradientBlurEffect",
        "(Landroid/graphics/RenderEffect;)V",
        "linearGradientBlurEffect",
        "g",
        "I",
        "mDefaultSize",
        "widgetsliquid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:F

.field public final c:Ljava/lang/String;

.field public final d:Landroid/graphics/RuntimeShader;

.field public final e:Landroid/graphics/RuntimeShader;

.field public f:Landroid/graphics/RenderEffect;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, 0x42480000    # 50.0f

    .line 6
    iput p2, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->b:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext()"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/transsion/widgetsliquid/R$raw;->lineargradient_blur:I

    invoke-static {p2, p3}, Lxlb;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->c:Ljava/lang/String;

    .line 8
    invoke-static {}, Ly87;->a()V

    invoke-static {p2}, Lumb;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->d:Landroid/graphics/RuntimeShader;

    .line 9
    invoke-static {}, Ly87;->a()V

    invoke-static {p2}, Lumb;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->e:Landroid/graphics/RuntimeShader;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetsliquid/R$dimen;->os_list_edge_blur_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 11
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/RenderEffect;)V
    .locals 2

    :try_start_0
    const-class p0, Landroid/view/View;

    const-string v0, "setBackdropRenderEffectWrapper"

    invoke-static {}, Lv57;->a()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ddd"

    const-string p2, "reflect call setBackdropRenderEffect fail:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final b(II)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-object v0, Lxlb;->a:Lxlb;

    invoke-virtual {v0}, Lxlb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->f:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->d:Landroid/graphics/RuntimeShader;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->b:F

    const-string v2, "u_maxRadius"

    invoke-static {v0, v2, v1}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->d:Landroid/graphics/RuntimeShader;

    const-string v1, "u_blurDirection"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->d:Landroid/graphics/RuntimeShader;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const-string v6, "u_gradientStart"

    invoke-static {v0, v6, v3, v5}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->d:Landroid/graphics/RuntimeShader;

    const-string v5, "u_gradientEnd"

    invoke-static {v0, v5, v3, v3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->e:Landroid/graphics/RuntimeShader;

    iget v7, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->b:F

    invoke-static {v0, v2, v7}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->e:Landroid/graphics/RuntimeShader;

    invoke-static {v0, v1, v4, v3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->e:Landroid/graphics/RuntimeShader;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v6, v3, v1}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->e:Landroid/graphics/RuntimeShader;

    invoke-static {v0, v5, v3, v3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->e:Landroid/graphics/RuntimeShader;

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p2

    mul-float/2addr p2, v4

    const-string v1, "u_size"

    invoke-static {v0, v1, p1, p2}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->d:Landroid/graphics/RuntimeShader;

    invoke-static {v0, v1, p1, p2}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object p1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->d:Landroid/graphics/RuntimeShader;

    const-string p2, "inputImage"

    invoke-static {p1, p2}, Lx87;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p1

    const-string v0, "createRuntimeShaderEffec\u2026BlurShader, \"inputImage\")"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->e:Landroid/graphics/RuntimeShader;

    invoke-static {v1, p2}, Lx87;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lu57;->a(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->f:Landroid/graphics/RenderEffect;

    invoke-virtual {p0, p0, p1}, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->a(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    :cond_0
    return-void
.end method

.method public final getLinearGradientBlurEffect()Landroid/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->f:Landroid/graphics/RenderEffect;

    return-object p0
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget p2, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->g:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->b(II)V

    return-void
.end method

.method public final setDefaultSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->g:I

    return-void
.end method

.method public final setLinearGradientBlurEffect(Landroid/graphics/RenderEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->f:Landroid/graphics/RenderEffect;

    return-void
.end method

.method public final setMaxBlurRadius(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lwn8;->c(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSEdgeLinearGradientBlurView;->b:F

    return-void
.end method

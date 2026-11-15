.class public final Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:F

.field public final b:Landroid/graphics/RuntimeShader;

.field public final c:Landroid/graphics/RuntimeShader;

.field public d:Landroid/graphics/RenderEffect;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "shaderText"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->a:F

    invoke-static {p1}, Lumb;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->b:Landroid/graphics/RuntimeShader;

    invoke-static {p1}, Lumb;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c:Landroid/graphics/RuntimeShader;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->d:Landroid/graphics/RenderEffect;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    return-void
.end method

.method public b(Landroid/view/View;III)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->d:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->b:Landroid/graphics/RuntimeShader;

    iget v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->a:F

    const-string v2, "u_maxRadius"

    invoke-static {v0, v2, v1}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->b:Landroid/graphics/RuntimeShader;

    const-string v1, "u_blurDirection"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->b:Landroid/graphics/RuntimeShader;

    int-to-float p4, p4

    const-string v5, "u_gradientStart"

    invoke-static {v0, v5, v3, p4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->b:Landroid/graphics/RuntimeShader;

    const-string v6, "u_gradientEnd"

    invoke-static {v0, v6, v3, v3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c:Landroid/graphics/RuntimeShader;

    iget v7, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->a:F

    invoke-static {v0, v2, v7}, Lsmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c:Landroid/graphics/RuntimeShader;

    invoke-static {v0, v1, v4, v3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c:Landroid/graphics/RuntimeShader;

    invoke-static {v0, v5, v3, p4}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object p4, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c:Landroid/graphics/RuntimeShader;

    invoke-static {p4, v6, v3, v3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object p4, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c:Landroid/graphics/RuntimeShader;

    int-to-float p2, p2

    int-to-float p3, p3

    const-string v0, "u_size"

    invoke-static {p4, v0, p2, p3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object p4, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->b:Landroid/graphics/RuntimeShader;

    invoke-static {p4, v0, p2, p3}, Ltmb;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object p2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->b:Landroid/graphics/RuntimeShader;

    const-string p3, "inputImage"

    invoke-static {p2, p3}, Lx87;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p2

    const-string p4, "createRuntimeShaderEffec\u2026BlurShader, \"inputImage\")"

    invoke-static {p2, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c:Landroid/graphics/RuntimeShader;

    invoke-static {v0, p3}, Lx87;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p3

    invoke-static {p3, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lu57;->a(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->d:Landroid/graphics/RenderEffect;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/effect/OSMaskFrameLayout$a$a;->c(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;Landroid/graphics/RenderEffect;)V
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

    const-string p1, "OSMaskFrameLayout"

    const-string p2, "set backdrop render effect failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

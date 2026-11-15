.class public final Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/effect/OSMaskDrawable$a;
    }
.end annotation


# static fields
.field public static final q:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:I

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:Lyi5;

.field public final k:Landroid/graphics/Matrix;

.field public l:Landroid/graphics/LinearGradient;

.field public m:Landroid/graphics/LinearGradient;

.field public n:Landroid/graphics/LinearGradient;

.field public o:Landroid/graphics/LinearGradient;

.field public p:Landroid/graphics/LinearGradient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->q:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->a:Landroid/content/Context;

    const/16 v0, 0x70

    iput v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->c:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->e:I

    sget-object v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable$paint$2;->INSTANCE:Lcom/transsion/widgetsliquid/effect/OSMaskDrawable$paint$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j:Lyi5;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetsliquid/R$dimen;->os_liquid_mask_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    sget v0, Lcom/transsion/widgetsliquid/R$attr;->os_bg_primary:I

    sget v1, Lcom/transsion/widgetsliquid/R$color;->os_bg_primary_hios:I

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->h:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    iget v2, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget v3, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->a()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    new-instance v6, Landroid/graphics/LinearGradient;

    invoke-static {v7, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    int-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v8, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    filled-new-array {v7, v8, v2}, [I

    move-result-object v13

    new-array v14, v1, [F

    fill-array-data v14, :array_0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v8, v6

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->g:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v6, :cond_1

    new-instance v6, Landroid/graphics/LinearGradient;

    invoke-static {v7, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    int-to-float v2, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v9, v2

    float-to-int v9, v9

    invoke-static {v9, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    filled-new-array {v7, v9, v2}, [I

    move-result-object v14

    new-array v15, v1, [F

    fill-array-data v15, :array_1

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v6, v1, :cond_2

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-static {v7, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    int-to-float v2, v2

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-static {v7, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v9, v2

    float-to-int v9, v9

    invoke-static {v9, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    filled-new-array {v6, v7, v9, v2}, [I

    move-result-object v14

    const/4 v2, 0x4

    new-array v15, v2, [F

    fill-array-data v15, :array_2

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l:Landroid/graphics/LinearGradient;

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c()V
    .locals 13

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v0, v0

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    filled-new-array {v4, v5, v0}, [I

    move-result-object v9

    const/4 v0, 0x3

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o:Landroid/graphics/LinearGradient;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final d()V
    .locals 13

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-static {v6, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v7, 0x0

    invoke-static {v7, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    filled-new-array {v4, v5, v6, v0, v1}, [I

    move-result-object v9

    const/4 v0, 0x5

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->n:Landroid/graphics/LinearGradient;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f0ccccd    # 0.55f
        0x3f266666    # 0.65f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->f:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->e:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->g(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->h(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->g(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->h(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 13

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v4, v0

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    int-to-double v6, v0

    const-wide/16 v8, 0x0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    filled-new-array {v5, v4, v0}, [I

    move-result-object v9

    const/4 v0, 0x3

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->p:Landroid/graphics/LinearGradient;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final f()V
    .locals 13

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v0, v0

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-static {v6, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const v7, 0x3f266666    # 0.65f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v7, 0x0

    invoke-static {v7, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    filled-new-array {v4, v5, v6, v0, v1}, [I

    move-result-object v9

    const/4 v0, 0x5

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->m:Landroid/graphics/LinearGradient;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f0ccccd    # 0.55f
        0x3f266666    # 0.65f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    const/4 v0, 0x0

    cmpg-float v1, v5, v0

    if-lez v1, :cond_2

    cmpg-float v1, v4, v0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->i()Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->c:F

    mul-float/2addr v3, v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    sub-float v3, v5, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->i()Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_radius_xxxl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v8

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final h(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v5, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_4

    cmpg-float v0, v5, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    int-to-float v6, v0

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->c:F

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->a:Landroid/content/Context;

    invoke-static {v0}, Lolb;->e0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->i:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lolb;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->m()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->m()Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->n()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->n()Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->i:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lolb;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k()Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l()Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final i()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l:Landroid/graphics/LinearGradient;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final j()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public final k()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->c()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o:Landroid/graphics/LinearGradient;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final l()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->n:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->n:Landroid/graphics/LinearGradient;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final m()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->p:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->e()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->p:Landroid/graphics/LinearGradient;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final n()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->m:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->f()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->m:Landroid/graphics/LinearGradient;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->l:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->m:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->n:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public final p(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "navigation_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final q(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->h:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->h:Z

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final r(IF)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0}, Lwn8;->j(FFF)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->c:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final s(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->d:I

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->j()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final t(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->b:I

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final u(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->e:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->e:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final v(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->g:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->g:I

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final w(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->f:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->f:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final x(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->i:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->i:Z

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/effect/OSMaskDrawable;->o()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

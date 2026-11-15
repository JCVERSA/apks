.class public final La67;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La67$a;
    }
.end annotation


# static fields
.field public static final O:La67$a;


# instance fields
.field public A:F

.field public B:F

.field public C:I

.field public D:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

.field public E:I

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:[F

.field public K:Ljava/lang/Integer;

.field public L:Landroid/graphics/Shader;

.field public M:Z

.field public final N:Landroid/graphics/Paint;

.field public final a:Landroid/content/Context;

.field public b:F

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/String;

.field public final h:F

.field public i:F

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public l:F

.field public m:Landroid/graphics/Path;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public q:Z

.field public r:F

.field public s:F

.field public t:F

.field public u:I

.field public v:F

.field public w:F

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La67$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La67$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, La67;->O:La67$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 8

    const-string v0, "mContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La67;->a:Landroid/content/Context;

    iput p2, p0, La67;->b:F

    const/4 p2, 0x1

    iput-boolean p2, p0, La67;->d:Z

    iput-boolean p2, p0, La67;->e:Z

    const-string v0, "OSLiquidDrawable"

    iput-object v0, p0, La67;->g:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, La67;->h:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, La67;->i:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, La67;->j:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, La67;->k:Landroid/graphics/RectF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, La67;->l:F

    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getInstance()Lcom/transsion/hubsdk/api/graphics/TranPath;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, La67;->b:F

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getSmoothCapsule(FFFFF)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, La67;->m:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, La67;->n:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, La67;->o:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v2, p0, La67;->p:Landroid/graphics/Paint;

    iput v4, p0, La67;->u:I

    const/4 v2, -0x1

    iput v2, p0, La67;->y:I

    iput v2, p0, La67;->z:I

    iput v2, p0, La67;->C:I

    new-instance v4, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {v4}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object v4, p0, La67;->D:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    const/16 v4, 0xff

    iput v4, p0, La67;->E:I

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, La67;->F:F

    iput v4, p0, La67;->G:F

    iput v4, p0, La67;->H:F

    iput v4, p0, La67;->I:F

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    iput-object v5, p0, La67;->J:[F

    invoke-static {p1, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, La67;->i:F

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p1, p0, La67;->i:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, La67;->N:Landroid/graphics/Paint;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, La67;->I:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, La67;->I:F

    const/4 v0, 0x0

    iput-object v0, p0, La67;->L:Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, La67;->H:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, La67;->H:F

    const/4 v0, 0x0

    iput-object v0, p0, La67;->L:Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;FFZ)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p4, p0, La67;->M:Z

    const/4 p4, 0x0

    cmpg-float v0, p2, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, p3, p4

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v0, p0, La67;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    int-to-float p3, v0

    :cond_2
    iget v0, p0, La67;->y:I

    if-eq v0, v1, :cond_3

    int-to-float p2, v0

    :cond_3
    iget-boolean v0, p0, La67;->q:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2, p3}, La67;->p(FF)V

    :cond_4
    float-to-int v0, p2

    float-to-int v1, p3

    iget-object v2, p0, La67;->L:Landroid/graphics/Shader;

    if-nez v2, :cond_5

    invoke-virtual {p0, v0, v1}, La67;->o(II)V

    :cond_5
    const-string v0, "GradientBorder"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, La67;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, La67;->k()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p0, p1, p2, p3}, La67;->e(Landroid/graphics/Canvas;FF)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, La67;->d(Landroid/graphics/Canvas;FF)V

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;FF)V
    .locals 2

    iget-boolean v0, p0, La67;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, La67;->f(Landroid/graphics/Canvas;FF)V

    :cond_0
    iget-object p2, p0, La67;->o:Landroid/graphics/Paint;

    iget p3, p0, La67;->c:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, La67;->o:Landroid/graphics/Paint;

    iget p3, p0, La67;->c:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, La67;->E:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, La67;->j:Landroid/graphics/RectF;

    iget p3, p0, La67;->b:F

    iget-object v0, p0, La67;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3, v0}, La67;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    invoke-virtual {p0}, La67;->m()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lolb;->r:Z

    if-nez p2, :cond_1

    iget-object p2, p0, La67;->n:Landroid/graphics/Paint;

    iget p3, p0, La67;->E:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, La67;->n:Landroid/graphics/Paint;

    iget-object p3, p0, La67;->L:Landroid/graphics/Shader;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, La67;->j:Landroid/graphics/RectF;

    iget p3, p0, La67;->b:F

    iget-object v0, p0, La67;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3, v0}, La67;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;FF)V
    .locals 2

    iget-boolean v0, p0, La67;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lolb;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La67;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, La67;->f(Landroid/graphics/Canvas;FF)V

    :cond_0
    sget-boolean v0, Lolb;->O:Z

    if-eqz v0, :cond_4

    iget-boolean v1, p0, La67;->f:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    iget-object p2, p0, La67;->n:Landroid/graphics/Paint;

    invoke-virtual {p0}, La67;->i()Landroid/graphics/BlendMode;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, La67;->n:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :goto_0
    invoke-virtual {p0}, La67;->m()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, La67;->n:Landroid/graphics/Paint;

    iget p3, p0, La67;->E:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, La67;->n:Landroid/graphics/Paint;

    iget-object p3, p0, La67;->L:Landroid/graphics/Shader;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, La67;->j:Landroid/graphics/RectF;

    iget p3, p0, La67;->b:F

    iget-object v0, p0, La67;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3, v0}, La67;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, La67;->d(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;FF)V
    .locals 7

    iget v0, p0, La67;->r:F

    iget v1, p0, La67;->s:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, La67;->t:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    neg-float v3, v0

    add-float v4, p2, v0

    add-float v5, p3, v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p2

    iget-object p3, p0, La67;->N:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, La67;->N:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, La67;->N:Landroid/graphics/Paint;

    iget v0, p0, La67;->E:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, La67;->j:Landroid/graphics/RectF;

    iget v0, p0, La67;->b:F

    iget-object v1, p0, La67;->N:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p3, v0, v1}, La67;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    iget p3, p0, La67;->i:F

    neg-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget-object v0, p0, La67;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, p3, p3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, La67;->j:Landroid/graphics/RectF;

    iget v1, p0, La67;->b:F

    sub-float/2addr v1, p3

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, La67;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v1, v2}, La67;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    iget-object p0, p0, La67;->j:Landroid/graphics/RectF;

    neg-float p3, p3

    invoke-virtual {p0, p3, p3}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Lnl5;->a:Lnl5;

    invoke-virtual {v0, p2, p3}, Lnl5;->d(Landroid/graphics/RectF;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, La67;->n(Landroid/graphics/RectF;F)V

    iget-object p0, p0, La67;->m:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final getCornerRadius()F
    .locals 0

    iget p0, p0, La67;->b:F

    return p0
.end method

.method public final getPositionsLT()[F
    .locals 0

    iget-object p0, p0, La67;->J:[F

    return-object p0
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, La67;->q:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, La67;->x:Z

    :cond_0
    return-void
.end method

.method public final i()Landroid/graphics/BlendMode;
    .locals 0

    iget-object p0, p0, La67;->n:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0
.end method

.method public final j(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    iput-object p3, p0, La67;->L:Landroid/graphics/Shader;

    iget-object p3, p0, La67;->k:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->setEmpty()V

    const/high16 p3, 0x7fc00000    # Float.NaN

    iput p3, p0, La67;->l:F

    sget-object p3, Ly77;->a:Ly77;

    int-to-float p1, p1

    int-to-float p2, p2

    iget p4, p0, La67;->b:F

    invoke-virtual {p3, p1, p2, p4}, Ly77;->d(FFF)I

    move-result p1

    iput p1, p0, La67;->C:I

    return-void
.end method

.method public final k()Z
    .locals 0

    sget-boolean p0, Lolb;->R:Z

    return p0
.end method

.method public final l(II)V
    .locals 0

    iput p1, p0, La67;->y:I

    iput p2, p0, La67;->z:I

    return-void
.end method

.method public final m()Z
    .locals 1

    sget-boolean v0, Lolb;->U:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, La67;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Landroid/graphics/RectF;F)V
    .locals 7

    iget-object v0, p0, La67;->k:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, La67;->l:F

    cmpg-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getInstance()Lcom/transsion/hubsdk/api/graphics/TranPath;

    move-result-object v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/hubsdk/api/graphics/TranPath;->getSmoothCapsule(FFFFF)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, La67;->m:Landroid/graphics/Path;

    iget-object v0, p0, La67;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iput p2, p0, La67;->l:F

    return-void
.end method

.method public final o(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-lez v1, :cond_5

    if-gtz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v3, Ly77;->a:Ly77;

    int-to-float v4, v1

    int-to-float v5, v2

    iget v6, v0, La67;->b:F

    invoke-virtual {v3, v4, v5, v6}, Ly77;->d(FFF)I

    move-result v4

    iput v4, v0, La67;->C:I

    iget-object v5, v0, La67;->a:Landroid/content/Context;

    invoke-virtual {v3, v5, v4}, Ly77;->c(Landroid/content/Context;I)Lr67;

    move-result-object v6

    iget v9, v0, La67;->F:F

    const/4 v3, 0x0

    cmpg-float v4, v3, v9

    const/high16 v5, 0x3f800000    # 1.0f

    if-gtz v4, :cond_1

    cmpg-float v4, v9, v5

    if-gtz v4, :cond_1

    const/16 v14, 0x7b

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v15}, Lr67;->b(Lr67;FFFFIFFILjava/lang/Object;)Lr67;

    move-result-object v6

    :cond_1
    move-object v7, v6

    iget v14, v0, La67;->G:F

    cmpg-float v4, v3, v14

    if-gtz v4, :cond_2

    cmpg-float v4, v14, v5

    if-gtz v4, :cond_2

    const/16 v15, 0x3f

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v16}, Lr67;->b(Lr67;FFFFIFFILjava/lang/Object;)Lr67;

    move-result-object v7

    :cond_2
    move-object v8, v7

    iget v10, v0, La67;->H:F

    cmpg-float v4, v3, v10

    if-gtz v4, :cond_3

    cmpg-float v4, v10, v5

    if-gtz v4, :cond_3

    const/16 v16, 0x7d

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v17}, Lr67;->b(Lr67;FFFFIFFILjava/lang/Object;)Lr67;

    move-result-object v8

    :cond_3
    move-object v9, v8

    iget v10, v0, La67;->I:F

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_4

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v3, v10, v3

    if-gtz v3, :cond_4

    const/16 v17, 0x7e

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v18}, Lr67;->b(Lr67;FFFFIFFILjava/lang/Object;)Lr67;

    move-result-object v9

    :cond_4
    invoke-virtual {v0, v1, v2, v9}, La67;->q(IILr67;)V

    return-void

    :cond_5
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, La67;->L:Landroid/graphics/Shader;

    return-void
.end method

.method public final p(FF)V
    .locals 7

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_3

    cmpg-float p1, p2, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, La67;->x:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, La67;->a:Landroid/content/Context;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lolb;->I(Landroid/content/Context;I)[F

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    aget v2, p1, v1

    iput v2, p0, La67;->w:F

    const/4 v3, 0x1

    aget v4, p1, v3

    iput v4, p0, La67;->v:F

    aget p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, La67;->u:I

    const p1, 0x3f19999a    # 0.6f

    mul-float/2addr v2, p1

    const/high16 p1, 0x42480000    # 50.0f

    invoke-static {v2, p1}, Lwn8;->f(FF)F

    move-result p1

    iput p1, p0, La67;->r:F

    iput v0, p0, La67;->s:F

    iput v0, p0, La67;->t:F

    iget p1, p0, La67;->u:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, La67;->v:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/16 p2, 0xff

    invoke-static {p1, v1, p2}, Lwn8;->k(III)I

    move-result p1

    iget-object p2, p0, La67;->N:Landroid/graphics/Paint;

    iget v0, p0, La67;->r:F

    iget v1, p0, La67;->s:F

    iget v2, p0, La67;->t:F

    iget v4, p0, La67;->u:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, La67;->u:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, La67;->u:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iput-boolean v3, p0, La67;->x:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final q(IILr67;)V
    .locals 3

    sget-object v0, Ly77;->a:Ly77;

    int-to-float p1, p1

    int-to-float p2, p2

    iget-object v1, p0, La67;->K:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, p1, p2, p3, v1}, Ly77;->a(FFLr67;I)Lz77;

    move-result-object p3

    new-instance v0, Landroid/graphics/SweepGradient;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    mul-float/2addr p2, v1

    invoke-virtual {p3}, Lz77;->getColors()[I

    move-result-object v1

    invoke-virtual {p3}, Lz77;->getPositions()[F

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {p3}, Lz77;->getRotationDegrees()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p3}, Lz77;->getRotationDegrees()F

    move-result p3

    invoke-virtual {v1, p3, p1, p2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_1
    iput-object v0, p0, La67;->L:Landroid/graphics/Shader;

    return-void
.end method

.method public final setActualHeight(I)V
    .locals 0

    iput p1, p0, La67;->z:I

    return-void
.end method

.method public final setActualWidth(I)V
    .locals 0

    iput p1, p0, La67;->y:I

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, La67;->E:I

    iget-object p0, p0, La67;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    iput p1, p0, La67;->b:F

    return-void
.end method

.method public final setDefaultBgColor(I)V
    .locals 4

    iget-object v0, p0, La67;->g:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultBgColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, La67;->c:I

    return-void
.end method

.method public final setEndsLeftTop(F)V
    .locals 0

    iput p1, p0, La67;->A:F

    return-void
.end method

.method public final setEndsRightBottom(F)V
    .locals 0

    iput p1, p0, La67;->B:F

    return-void
.end method

.method public final setForceBCEffect(Z)V
    .locals 2

    iput-boolean p1, p0, La67;->f:Z

    iget-object p0, p0, La67;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceBCEffect: mForceBCEffect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setGapBrightness(F)V
    .locals 1

    iget v0, p0, La67;->G:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, La67;->G:F

    const/4 p1, 0x0

    iput-object p1, p0, La67;->L:Landroid/graphics/Shader;

    :goto_0
    return-void
.end method

.method public final setGapRotationDegrees(F)V
    .locals 1

    iget v0, p0, La67;->I:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, La67;->I:F

    const/4 p1, 0x0

    iput-object p1, p0, La67;->L:Landroid/graphics/Shader;

    :goto_0
    return-void
.end method

.method public final setGapSizeRatio(F)V
    .locals 1

    iget v0, p0, La67;->H:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, La67;->H:F

    const/4 p1, 0x0

    iput-object p1, p0, La67;->L:Landroid/graphics/Shader;

    :goto_0
    return-void
.end method

.method public final setGradientStrokeColor([I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lhi;->X([I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, La67;->K:Ljava/lang/Integer;

    iput-object v0, p0, La67;->L:Landroid/graphics/Shader;

    return-void
.end method

.method public final setGradientStrokePosition([F)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, La67;->L:Landroid/graphics/Shader;

    return-void
.end method

.method public final setPositionsLT([F)V
    .locals 0

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    iput-object p1, p0, La67;->J:[F

    const/4 p1, 0x0

    iput-object p1, p0, La67;->L:Landroid/graphics/Shader;

    return-void
.end method

.method public final setRadius(F)V
    .locals 5

    iget v0, p0, La67;->b:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, La67;->y:I

    if-lez v0, :cond_1

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, La67;->j:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_0
    iget v1, p0, La67;->z:I

    if-lez v1, :cond_2

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, La67;->j:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    :goto_1
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, -0x1

    if-lez v3, :cond_3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    sget-object v2, Ly77;->a:Ly77;

    invoke-virtual {v2, v0, v1, p1}, Ly77;->d(FFF)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    iput p1, p0, La67;->b:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, La67;->l:F

    if-eq v0, v4, :cond_4

    iget p1, p0, La67;->C:I

    if-eq v0, p1, :cond_4

    iput v0, p0, La67;->C:I

    const/4 p1, 0x0

    iput-object p1, p0, La67;->L:Landroid/graphics/Shader;

    :cond_4
    return-void
.end method

.method public final setShowOutline(Z)V
    .locals 2

    iput-boolean p1, p0, La67;->d:Z

    iget-object p0, p0, La67;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowOutline: mShowOutLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setShowOutlineMixColor(Z)V
    .locals 2

    iput-boolean p1, p0, La67;->e:Z

    iget-object p0, p0, La67;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowOutline: mShowOutLineMixColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setStrokeBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string v0, "blendMode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La67;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public final setStrokeBrightness(F)V
    .locals 1

    iget v0, p0, La67;->F:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, La67;->F:F

    const/4 p1, 0x0

    iput-object p1, p0, La67;->L:Landroid/graphics/Shader;

    :goto_0
    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, La67;->i:F

    iget-object p0, p0, La67;->n:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

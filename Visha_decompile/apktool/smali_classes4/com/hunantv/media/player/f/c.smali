.class public final Lcom/hunantv/media/player/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

.field private k:Z

.field private l:Lcom/hunantv/media/player/l;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/f/c;->i:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/c;->k:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/f/c;->m:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/media/player/f/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/media/player/f/c;->f:I

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/hunantv/media/player/f/c;->b:I

    iput p2, p0, Lcom/hunantv/media/player/f/c;->c:I

    return-void
.end method

.method public a(Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    iget-object p1, p0, Lcom/hunantv/media/player/f/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x13

    :goto_0
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p1, 0x11

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/hunantv/media/player/l;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/hunantv/media/player/f/c;->l:Lcom/hunantv/media/player/l;

    return-void
.end method

.method public b()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/player/f/c;->g:I

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/media/player/f/c;->i:I

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/hunantv/media/player/f/c;->d:I

    iput p2, p0, Lcom/hunantv/media/player/f/c;->e:I

    return-void
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/media/player/f/c;->h:I

    return p0
.end method

.method public c(II)V
    .locals 16

    .line 2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/hunantv/media/player/f/c;->f:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    move/from16 v4, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v4, p1

    move/from16 v1, p2

    :goto_1
    iget v5, v0, Lcom/hunantv/media/player/f/c;->b:I

    iget v6, v0, Lcom/hunantv/media/player/f/c;->c:I

    iget-object v7, v0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    if-lez v5, :cond_2

    if-lez v6, :cond_2

    iput-boolean v8, v0, Lcom/hunantv/media/player/f/c;->k:Z

    iget-object v9, v7, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->rb:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v10, v9, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    iget-object v7, v7, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->lt:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v11, v7, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    sub-float/2addr v10, v11

    iget v9, v9, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->y:F

    iget v7, v7, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->y:F

    sub-float/2addr v9, v7

    goto :goto_2

    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    move v9, v10

    :goto_2
    invoke-static {v5, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    invoke-static {v6, v4}, Landroid/view/View;->getDefaultSize(II)I

    move-result v11

    iget v12, v0, Lcom/hunantv/media/player/f/c;->i:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    goto/16 :goto_d

    :cond_3
    if-lez v5, :cond_1c

    if-lez v6, :cond_1c

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v12, -0x80000000

    if-ne v7, v12, :cond_14

    if-ne v11, v12, :cond_14

    int-to-float v7, v1

    int-to-float v11, v4

    div-float v12, v7, v11

    iget v13, v0, Lcom/hunantv/media/player/f/c;->i:I

    const/4 v14, 0x5

    const/4 v15, 0x4

    if-eq v13, v15, :cond_7

    if-eq v13, v14, :cond_4

    int-to-float v2, v5

    int-to-float v3, v6

    div-float/2addr v2, v3

    iget v3, v0, Lcom/hunantv/media/player/f/c;->d:I

    if-lez v3, :cond_a

    iget v14, v0, Lcom/hunantv/media/player/f/c;->e:I

    if-lez v14, :cond_a

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v14

    div-float/2addr v2, v3

    goto :goto_5

    :cond_4
    iget v14, v0, Lcom/hunantv/media/player/f/c;->f:I

    if-eq v14, v3, :cond_6

    if-ne v14, v2, :cond_5

    goto :goto_3

    :cond_5
    const v2, 0x3faaaaab

    goto :goto_5

    :cond_6
    :goto_3
    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_5

    :cond_7
    iget v14, v0, Lcom/hunantv/media/player/f/c;->f:I

    if-eq v14, v3, :cond_9

    if-ne v14, v2, :cond_8

    goto :goto_4

    :cond_8
    const v2, 0x3fe38e39

    goto :goto_5

    :cond_9
    :goto_4
    const/high16 v2, 0x3f100000    # 0.5625f

    :cond_a
    :goto_5
    cmpl-float v3, v2, v12

    const/4 v14, 0x0

    if-lez v3, :cond_b

    move v3, v8

    goto :goto_6

    :cond_b
    move v3, v14

    :goto_6
    iput-boolean v3, v0, Lcom/hunantv/media/player/f/c;->m:Z

    iget-boolean v3, v0, Lcom/hunantv/media/player/f/c;->k:Z

    if-eqz v3, :cond_e

    if-eqz v13, :cond_c

    if-ne v13, v8, :cond_e

    :cond_c
    int-to-float v3, v5

    mul-float/2addr v3, v10

    int-to-float v5, v6

    mul-float/2addr v5, v9

    div-float/2addr v3, v5

    cmpl-float v3, v3, v12

    if-lez v3, :cond_d

    move v14, v8

    :cond_d
    iput-boolean v14, v0, Lcom/hunantv/media/player/f/c;->m:Z

    :cond_e
    if-eqz v13, :cond_13

    if-eq v13, v8, :cond_10

    if-eq v13, v15, :cond_13

    const/4 v3, 0x5

    if-eq v13, v3, :cond_13

    iget-boolean v3, v0, Lcom/hunantv/media/player/f/c;->m:Z

    if-eqz v3, :cond_f

    iget v3, v0, Lcom/hunantv/media/player/f/c;->b:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_7
    int-to-float v3, v1

    div-float/2addr v3, v2

    float-to-int v2, v3

    goto :goto_a

    :cond_f
    iget v1, v0, Lcom/hunantv/media/player/f/c;->c:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_8
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move v4, v1

    goto :goto_b

    :cond_10
    iget-boolean v1, v0, Lcom/hunantv/media/player/f/c;->m:Z

    if-eqz v1, :cond_12

    :cond_11
    div-float/2addr v11, v9

    float-to-int v1, v11

    goto :goto_8

    :cond_12
    :goto_9
    div-float/2addr v7, v10

    float-to-int v1, v7

    goto :goto_7

    :cond_13
    iget-boolean v1, v0, Lcom/hunantv/media/player/f/c;->m:Z

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_14
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v7, v2, :cond_16

    if-ne v11, v2, :cond_16

    mul-int v2, v5, v4

    mul-int v3, v1, v6

    if-ge v2, v3, :cond_15

    div-int v1, v2, v6

    goto :goto_d

    :cond_15
    if-le v2, v3, :cond_1d

    div-int v4, v3, v5

    goto :goto_d

    :cond_16
    if-ne v7, v2, :cond_18

    mul-int/2addr v6, v1

    div-int v2, v6, v5

    if-ne v11, v12, :cond_17

    if-le v2, v4, :cond_17

    goto :goto_d

    :cond_17
    :goto_a
    move v4, v2

    goto :goto_d

    :cond_18
    if-ne v11, v2, :cond_1a

    mul-int/2addr v5, v4

    div-int v2, v5, v6

    if-ne v7, v12, :cond_19

    if-le v2, v1, :cond_19

    goto :goto_d

    :cond_19
    :goto_b
    move v1, v2

    goto :goto_d

    :cond_1a
    if-ne v11, v12, :cond_1b

    if-le v6, v4, :cond_1b

    mul-int v2, v4, v5

    div-int/2addr v2, v6

    goto :goto_c

    :cond_1b
    move v2, v5

    move v4, v6

    :goto_c
    if-ne v7, v12, :cond_19

    if-le v2, v1, :cond_19

    mul-int/2addr v6, v1

    div-int v4, v6, v5

    goto :goto_d

    :cond_1c
    move v1, v7

    move v4, v11

    :cond_1d
    :goto_d
    iput v1, v0, Lcom/hunantv/media/player/f/c;->g:I

    iput v4, v0, Lcom/hunantv/media/player/f/c;->h:I

    return-void
.end method

.method public d(II)V
    .locals 7

    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/f/c;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->lt:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->rb:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/f/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/hunantv/media/player/f/c;->m:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    iget-object v4, v2, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->rb:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v4, v4, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    iget-object v2, v2, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->lt:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v2, v2, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    sub-float/2addr v4, v2

    iget v2, p0, Lcom/hunantv/media/player/f/c;->g:I

    int-to-float v2, v2

    mul-float/2addr v4, v2

    int-to-float v2, p1

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    sub-float/2addr v2, v4

    div-float v1, v2, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    iget-object v4, v2, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->lt:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v5, v4, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    iget v6, p0, Lcom/hunantv/media/player/f/c;->g:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    neg-float v5, v5

    add-float/2addr v5, v1

    iget v1, p0, Lcom/hunantv/media/player/f/c;->h:I

    int-to-float v1, v1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v1, v6

    iget v4, v4, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v4

    iget-object v2, v2, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->rb:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v2, v2, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->y:F

    sub-float/2addr v6, v2

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/hunantv/media/player/f/c;->i:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/hunantv/media/player/f/c;->g:I

    int-to-float p2, p2

    iget-object v2, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    iget-object v4, v2, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->rb:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v4, v4, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    iget-object v2, v2, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->lt:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v2, v2, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    sub-float/2addr v4, v2

    mul-float/2addr p2, v4

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v3

    sub-float/2addr v5, p1

    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/player/f/c;->l:Lcom/hunantv/media/player/l;

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/hunantv/media/player/f/c;->g:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/hunantv/media/player/f/c;->j:Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;

    iget-object v1, v0, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->rb:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v2, v1, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    iget-object v0, v0, Lcom/hunantv/media/player/IMgtvRenderView$FloatRect;->lt:Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;

    iget v3, v0, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr p2, v2

    iget p0, p0, Lcom/hunantv/media/player/f/c;->h:I

    int-to-float p0, p0

    iget v1, v1, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->y:F

    iget v0, v0, Lcom/hunantv/media/player/IMgtvRenderView$Coordinate;->y:F

    sub-float/2addr v1, v0

    mul-float/2addr p0, v1

    invoke-virtual {p1, p2, p0}, Lcom/hunantv/media/player/l;->a(FF)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/f/c;->l:Lcom/hunantv/media/player/l;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1, v1}, Lcom/hunantv/media/player/l;->a(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.class public final Lz31;
.super Lzs2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz31$a;
    }
.end annotation


# static fields
.field public static final e:Lz31$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Loj3;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz31$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz31$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz31;->e:Lz31$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Loj3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lzs2;-><init>()V

    iput-object p1, p0, Lz31;->a:Landroid/content/Context;

    iput-object p2, p0, Lz31;->b:Loj3;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lz31;->c:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lz31;->d:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V
    .locals 9

    const-string v0, "canvas"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/yandex/div2/DivTextRangeBackground;->b()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v4, v1, Lcom/yandex/div2/DivCloudBackground;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/yandex/div2/DivCloudBackground;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_1
    if-nez v8, :cond_2

    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lz31;->l(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivCloudBackground;)V

    return-void
.end method

.method public final f([Landroid/graphics/Rect;II)[I
    .locals 12

    add-int p0, p2, p3

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p3, v0, :cond_0

    aget-object p2, p1, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    neg-int p0, p0

    filled-new-array {p2, p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, p1, p0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p3, p3, 0x2

    new-array p3, p3, [I

    const/4 v3, 0x0

    if-gt p2, p0, :cond_5

    move v4, v3

    :goto_0
    aget-object v5, p1, p0

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-eq v6, v2, :cond_1

    mul-int/lit8 v7, v4, 0x2

    sub-int v2, v6, v2

    aput v2, p3, v7

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    :cond_1
    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v1

    add-int/lit8 v7, p0, -0x1

    :goto_1
    if-lt v7, p2, :cond_3

    aget-object v8, p1, v7

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_3

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    if-gt v8, v11, :cond_2

    sub-int/2addr v10, v9

    sub-int/2addr v6, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v6, v3}, Lwn8;->g(II)I

    move-result v5

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v0

    aget v7, p3, v6

    add-int/2addr v7, v5

    aput v7, p3, v6

    add-int/2addr v1, v5

    if-eq p0, p2, :cond_4

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_4
    move v3, v4

    :cond_5
    mul-int/lit8 p0, v3, 0x2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    aput p1, p3, p0

    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {p3, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string p1, "copyOf(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(Landroid/text/Layout;IIIIILandroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    sub-int v3, p3, p2

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-array v0, v5, [Landroid/graphics/Rect;

    return-object v0

    :cond_0
    new-array v6, v4, [Landroid/graphics/Rect;

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_3

    new-instance v8, Landroid/graphics/Rect;

    if-nez v7, :cond_1

    move/from16 v9, p4

    goto :goto_1

    :cond_1
    add-int v9, p2, v7

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    invoke-static {v9}, Ls86;->c(F)I

    move-result v9

    :goto_1
    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    add-int v10, p2, v7

    invoke-virtual {p1, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    if-ne v7, v3, :cond_2

    move/from16 v12, p5

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Ls86;->c(F)I

    move-result v12

    :goto_2
    iget v13, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    invoke-virtual {p1, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v13

    invoke-direct {v8, v9, v11, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Lz31;->j([Landroid/graphics/Rect;)V

    invoke-virtual {p0, v6}, Lz31;->k([Landroid/graphics/Rect;)V

    new-array v1, v4, [I

    new-array v2, v4, [I

    move v3, v5

    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v7, v6, v3

    iget v8, v7, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    aput v8, v1, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    aput v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    mul-int/lit8 v3, p6, 0x2

    invoke-virtual {p0, v1, v3}, Lz31;->i([II)V

    invoke-virtual {p0, v2, v3}, Lz31;->i([II)V

    :goto_4
    if-ge v5, v4, :cond_5

    aget-object v0, v6, v5

    aget v3, v1, v5

    neg-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    aget v3, v2, v5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    return-object v6
.end method

.method public final h([Landroid/graphics/Rect;II)[I
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    add-int v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v3, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v4, p1, v0

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v6, 0x0

    if-gt v0, v2, :cond_5

    move v7, v6

    :goto_0
    aget-object v8, p1, v0

    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-eq v9, v5, :cond_1

    mul-int/lit8 v10, v7, 0x2

    sub-int v5, v9, v5

    aput v5, v1, v10

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    :cond_1
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v4

    add-int/lit8 v10, v0, 0x1

    move v11, v10

    :goto_1
    if-gt v11, v2, :cond_3

    aget-object v12, p1, v11

    iget v13, v12, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v14, :cond_3

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    if-lt v12, v15, :cond_2

    sub-int/2addr v14, v13

    sub-int/2addr v9, v14

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v9, v6}, Lwn8;->d(II)I

    move-result v8

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v3

    aget v11, v1, v9

    add-int/2addr v11, v8

    aput v11, v1, v9

    add-int/2addr v4, v8

    if-eq v0, v2, :cond_4

    move v0, v10

    goto :goto_0

    :cond_4
    move v6, v7

    :cond_5
    mul-int/lit8 v0, v6, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    aput v2, v1, v0

    add-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i([II)V
    .locals 8

    const/4 p0, 0x0

    move v0, p0

    :cond_0
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    invoke-static {p1}, Lhi;->Z([I)Lu15;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lhi;->Z([I)Lu15;

    move-result-object v1

    invoke-static {v1}, Lwn8;->o(Ls15;)Ls15;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ls15;->b()I

    move-result v2

    invoke-virtual {v1}, Ls15;->c()I

    move-result v3

    invoke-virtual {v1}, Ls15;->f()I

    move-result v1

    if-lez v1, :cond_2

    if-le v2, v3, :cond_3

    :cond_2
    if-gez v1, :cond_a

    if-gt v3, v2, :cond_a

    :cond_3
    move v4, p0

    :goto_1
    if-nez v2, :cond_4

    move v5, p0

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v2, -0x1

    aget v5, p1, v5

    aget v6, p1, v2

    sub-int/2addr v5, v6

    :goto_2
    invoke-static {p1}, Lhi;->b0([I)I

    move-result v6

    if-ne v2, v6, :cond_5

    move v6, p0

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    aget v7, p1, v2

    sub-int/2addr v6, v7

    :goto_3
    if-lez v5, :cond_6

    if-lt v5, p2, :cond_9

    :cond_6
    if-lez v6, :cond_7

    if-lt v6, p2, :cond_9

    :cond_7
    const/4 v7, 0x1

    if-eqz v2, :cond_8

    if-gez v5, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p2, :cond_8

    add-int/lit8 v4, v2, -0x1

    aget v5, p1, v2

    aput v5, p1, v4

    move v4, v7

    :cond_8
    invoke-static {p1}, Lhi;->b0([I)I

    move-result v5

    if-eq v2, v5, :cond_9

    if-gez v6, :cond_9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, p2, :cond_9

    add-int/lit8 v4, v2, 0x1

    aget v5, p1, v2

    aput v5, p1, v4

    move v4, v7

    :cond_9
    if-eq v2, v3, :cond_b

    add-int/2addr v2, v1

    goto :goto_1

    :cond_a
    move v4, p0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    if-nez v4, :cond_0

    return-void
.end method

.method public final j([Landroid/graphics/Rect;)V
    .locals 12

    array-length p0, p1

    invoke-static {p1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    :goto_1
    if-ge v7, p0, :cond_1

    aget-object v8, p1, v7

    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_1

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    if-gt v8, v11, :cond_0

    sub-int/2addr v10, v9

    sub-int/2addr v6, v10

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/high16 v8, -0x80000000

    :goto_2
    if-gtz v6, :cond_2

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    move v6, v3

    goto :goto_3

    :cond_2
    iget v0, v5, Landroid/graphics/Rect;->left:I

    :goto_3
    add-int/2addr v1, v6

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final k([Landroid/graphics/Rect;)V
    .locals 12

    array-length p0, p1

    invoke-static {p1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    :goto_1
    if-ge v7, p0, :cond_1

    aget-object v8, p1, v7

    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_1

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    if-lt v8, v11, :cond_0

    sub-int/2addr v10, v9

    sub-int/2addr v6, v10

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const v8, 0x7fffffff

    :goto_2
    if-gtz v6, :cond_2

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    move v6, v3

    goto :goto_3

    :cond_2
    iget v0, v5, Landroid/graphics/Rect;->right:I

    :goto_3
    add-int/2addr v1, v6

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivCloudBackground;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p7

    invoke-virtual {p0}, Lz31;->n()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/div2/DivCloudBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v3, v8, Lz31;->b:Loj3;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    iget-object v2, v0, Lcom/yandex/div2/DivCloudBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object v3, v8, Lz31;->b:Loj3;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v10

    iget-object v2, v0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/yandex/div2/DivEdgeInsets;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_0

    iget-object v3, v8, Lz31;->b:Loj3;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivSizeUnit;

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/yandex/div2/DivSizeUnit;->DP:Lcom/yandex/div2/DivSizeUnit;

    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    iget-object v4, v8, Lz31;->b:Loj3;

    invoke-virtual {v3, v4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v11

    :goto_0
    iget-object v4, v0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_3

    iget-object v5, v8, Lz31;->b:Loj3;

    invoke-virtual {v4, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v11

    :goto_1
    iget-object v5, v0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v5, :cond_4

    iget-object v6, v8, Lz31;->b:Loj3;

    invoke-virtual {v5, v6}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v11

    :goto_2
    iget-object v0, v0, Lcom/yandex/div2/DivCloudBackground;->c:Lcom/yandex/div2/DivEdgeInsets;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_5

    iget-object v6, v8, Lz31;->b:Loj3;

    invoke-virtual {v0, v6}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v11

    :goto_3
    invoke-direct {v7, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, v10

    invoke-virtual/range {v0 .. v7}, Lz31;->g(Landroid/text/Layout;IIIIILandroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v7

    array-length v0, v7

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    const/4 v3, 0x0

    array-length v4, v7

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move v5, v10

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lz31;->m(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIII)V

    goto :goto_5

    :cond_6
    array-length v0, v7

    const/4 v12, 0x1

    add-int/lit8 v13, v0, -0x1

    move v0, v11

    move v3, v0

    move v4, v12

    :goto_4
    if-ge v0, v13, :cond_8

    aget-object v1, v7, v0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v14, v0, 0x1

    aget-object v0, v7, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v0, :cond_7

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move v5, v10

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lz31;->m(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIII)V

    move v4, v11

    move v3, v14

    :cond_7
    add-int/2addr v4, v12

    move v0, v14

    goto :goto_4

    :cond_8
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move v5, v10

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lz31;->m(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIII)V

    :goto_5
    return-void
.end method

.method public final m(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    aget-object v5, v1, v2

    add-int v6, v2, v3

    sub-int/2addr v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v0, v1, v2, v3}, Lz31;->f([Landroid/graphics/Rect;II)[I

    move-result-object v7

    invoke-virtual {v0, v1, v2, v3}, Lz31;->h([Landroid/graphics/Rect;II)[I

    move-result-object v1

    iget-object v2, v0, Lz31;->c:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move/from16 v2, p5

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    aget v9, v1, v4

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v9, v0, Lz31;->c:Landroid/graphics/Path;

    iget v10, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v9, v10, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lz31;->c:Landroid/graphics/Path;

    const v9, 0x3f666666    # 0.9f

    mul-float v10, v3, v9

    const v11, 0x3dcccccd    # 0.1f

    mul-float v12, v3, v11

    invoke-virtual {v5, v10, v12, v3, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x2

    invoke-static {v10, v5, v12}, Lxh8;->c(III)I

    move-result v5

    const/4 v13, 0x0

    if-ltz v5, :cond_4

    move v14, v10

    :goto_0
    array-length v15, v1

    sub-int/2addr v15, v12

    if-lt v14, v15, :cond_1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v10

    :goto_1
    aget v10, v1, v14

    int-to-float v10, v10

    add-int/lit8 v16, v14, 0x1

    aget v12, v1, v16

    int-to-float v12, v12

    if-eqz v15, :cond_2

    move v4, v13

    goto :goto_2

    :cond_2
    add-int/lit8 v16, v14, 0x3

    aget v4, v1, v16

    int-to-float v4, v4

    :goto_2
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v16

    div-float v9, v16, v8

    div-float v11, v12, v8

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v11, v0, Lz31;->c:Landroid/graphics/Path;

    sub-float/2addr v12, v3

    sub-float/2addr v12, v9

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v11, v0, Lz31;->c:Landroid/graphics/Path;

    const v12, 0x3dcccccd    # 0.1f

    mul-float v16, v3, v12

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v12

    mul-float v12, v12, v16

    const v16, 0x3f666666    # 0.9f

    mul-float v13, v9, v16

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v16

    mul-float v8, v9, v16

    invoke-virtual {v11, v12, v13, v8, v9}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    if-nez v15, :cond_3

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    div-float/2addr v4, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, v0, Lz31;->c:Landroid/graphics/Path;

    add-float v8, v3, v9

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v11

    mul-float/2addr v8, v11

    sub-float v8, v10, v8

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v4, v0, Lz31;->c:Landroid/graphics/Path;

    const v8, 0x3f666666    # 0.9f

    mul-float v11, v3, v8

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v11, v8

    const v8, 0x3dcccccd    # 0.1f

    mul-float v12, v3, v8

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v8

    mul-float/2addr v8, v3

    invoke-virtual {v4, v11, v12, v8, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    :cond_3
    if-eq v14, v5, :cond_5

    add-int/lit8 v14, v14, 0x2

    const/4 v4, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const v9, 0x3f666666    # 0.9f

    const/4 v10, 0x0

    const v11, 0x3dcccccd    # 0.1f

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    :cond_5
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/4 v4, 0x1

    aget v5, v7, v4

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v3, v0, Lz31;->c:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    neg-float v5, v5

    add-float/2addr v5, v9

    add-float/2addr v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v3, v0, Lz31;->c:Landroid/graphics/Path;

    const v5, -0x4099999a    # -0.9f

    mul-float v6, v1, v5

    const v8, -0x42333333    # -0.1f

    mul-float v9, v1, v8

    neg-float v10, v1

    invoke-virtual {v3, v6, v9, v10, v10}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v3, v9}, Lxh8;->c(III)I

    move-result v3

    if-ltz v3, :cond_9

    move v10, v6

    :goto_3
    array-length v11, v7

    sub-int/2addr v11, v9

    if-lt v10, v11, :cond_6

    move v11, v4

    goto :goto_4

    :cond_6
    move v11, v6

    :goto_4
    aget v12, v7, v10

    int-to-float v12, v12

    add-int/lit8 v13, v10, 0x1

    aget v13, v7, v13

    int-to-float v13, v13

    if-eqz v11, :cond_7

    const/4 v14, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v14, v10, 0x3

    aget v14, v7, v14

    int-to-float v14, v14

    :goto_5
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    neg-float v4, v13

    div-float v4, v4, v16

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v15, v0, Lz31;->c:Landroid/graphics/Path;

    add-float/2addr v13, v1

    add-float/2addr v13, v4

    const/4 v6, 0x0

    invoke-virtual {v15, v6, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v6, v0, Lz31;->c:Landroid/graphics/Path;

    const v13, 0x3dcccccd    # 0.1f

    mul-float v15, v4, v13

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v16

    mul-float v15, v15, v16

    mul-float v9, v4, v5

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v16

    mul-float v5, v4, v16

    neg-float v13, v4

    invoke-virtual {v6, v15, v9, v5, v13}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    if-nez v11, :cond_8

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    neg-float v6, v14

    div-float/2addr v6, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v6, v0, Lz31;->c:Landroid/graphics/Path;

    add-float/2addr v4, v1

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v9

    mul-float/2addr v4, v9

    sub-float v4, v12, v4

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v4, v0, Lz31;->c:Landroid/graphics/Path;

    const v6, 0x3f666666    # 0.9f

    mul-float v11, v1, v6

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v13

    mul-float/2addr v11, v13

    mul-float v13, v1, v8

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v12

    mul-float/2addr v12, v1

    neg-float v14, v1

    invoke-virtual {v4, v11, v13, v12, v14}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_6

    :cond_8
    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x3f666666    # 0.9f

    const/4 v9, 0x0

    :goto_6
    if-eq v10, v3, :cond_9

    add-int/lit8 v10, v10, 0x2

    const/4 v4, 0x1

    const v5, -0x4099999a    # -0.9f

    const/4 v6, 0x0

    const/4 v9, 0x2

    goto/16 :goto_3

    :cond_9
    iget-object v1, v0, Lz31;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lz31;->d:Landroid/graphics/Paint;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lz31;->c:Landroid/graphics/Path;

    iget-object v0, v0, Lz31;->d:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final n()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object p0, p0, Lz31;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "context.resources.displayMetrics"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

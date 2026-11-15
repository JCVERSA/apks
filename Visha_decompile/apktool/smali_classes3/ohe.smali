.class public final Lohe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu4h;

.field public final b:[I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lohe;->a:Lu4h;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lohe;->b:[I

    return-void
.end method

.method public static bridge synthetic b(Lohe;Lu4h;I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    add-int/lit8 v2, p2, -0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    if-lt v2, v1, :cond_2

    invoke-virtual {p1}, Lu4h;->I()I

    move-result v1

    if-lt v1, v0, :cond_2

    invoke-virtual {p1}, Lu4h;->K()I

    move-result v0

    iput v0, p0, Lohe;->h:I

    invoke-virtual {p1}, Lu4h;->K()I

    move-result v0

    iput v0, p0, Lohe;->i:I

    iget-object v0, p0, Lohe;->a:Lu4h;

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lu4h;->i(I)V

    add-int/lit8 v2, p2, -0xb

    :cond_1
    iget-object p0, p0, Lohe;->a:Lu4h;

    invoke-virtual {p0}, Lu4h;->w()I

    move-result p2

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v0

    if-ge p2, v0, :cond_2

    if-lez v2, :cond_2

    sub-int/2addr v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lu4h;->h([BII)V

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lu4h;->l(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic c(Lohe;Lu4h;I)V
    .locals 1

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lu4h;->K()I

    move-result p2

    iput p2, p0, Lohe;->d:I

    invoke-virtual {p1}, Lu4h;->K()I

    move-result p2

    iput p2, p0, Lohe;->e:I

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->K()I

    move-result p2

    iput p2, p0, Lohe;->f:I

    invoke-virtual {p1}, Lu4h;->K()I

    move-result p1

    iput p1, p0, Lohe;->g:I

    return-void
.end method

.method public static bridge synthetic d(Lohe;Lu4h;I)V
    .locals 20

    move-object/from16 v0, p0

    rem-int/lit8 v2, p2, 0x5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p1

    invoke-virtual {v2, v3}, Lu4h;->m(I)V

    iget-object v3, v0, Lohe;->b:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v5, p2, 0x5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v11

    int-to-double v12, v8

    add-int/lit8 v9, v9, -0x80

    add-int/lit8 v10, v10, -0x80

    shl-int/lit8 v8, v11, 0x18

    sget v11, Lkfh;->a:I

    int-to-double v14, v9

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v16, v16, v14

    add-double v1, v12, v16

    double-to-int v1, v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    int-to-double v10, v10

    const-wide v16, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v16, v16, v10

    sub-double v16, v12, v16

    const-wide v18, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v14, v14, v18

    sub-double v14, v16, v14

    double-to-int v14, v14

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    const-wide v15, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v10, v15

    add-double/2addr v12, v10

    double-to-int v10, v12

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    or-int/2addr v1, v8

    or-int/2addr v1, v14

    or-int/2addr v1, v2

    aput v1, v3, v7

    const/4 v1, 0x1

    add-int/2addr v6, v1

    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lohe;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lfyf;
    .locals 8

    iget v0, p0, Lohe;->d:I

    if-eqz v0, :cond_6

    iget v0, p0, Lohe;->e:I

    if-eqz v0, :cond_6

    iget v0, p0, Lohe;->h:I

    if-eqz v0, :cond_6

    iget v0, p0, Lohe;->i:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lohe;->a:Lu4h;

    invoke-virtual {v0}, Lu4h;->x()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lu4h;->w()I

    move-result v1

    invoke-virtual {v0}, Lu4h;->x()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lohe;->c:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu4h;->l(I)V

    iget v2, p0, Lohe;->h:I

    iget v3, p0, Lohe;->i:I

    mul-int/2addr v2, v3

    new-array v3, v2, [I

    move v4, v1

    :cond_1
    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {v0}, Lu4h;->G()I

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lohe;->b:[I

    aget v5, v7, v5

    aput v5, v3, v4

    :goto_1
    move v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lu4h;->G()I

    move-result v5

    if-eqz v5, :cond_1

    and-int/lit8 v6, v5, 0x3f

    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_3

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Lu4h;->G()I

    move-result v7

    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    iget-object v5, p0, Lohe;->b:[I

    aget v5, v5, v1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lohe;->b:[I

    invoke-virtual {v0}, Lu4h;->G()I

    move-result v7

    aget v5, v5, v7

    :goto_2
    add-int/2addr v6, v4

    invoke-static {v3, v4, v6, v5}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lohe;->h:I

    iget v2, p0, Lohe;->i:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lzvf;

    invoke-direct {v2}, Lzvf;-><init>()V

    invoke-virtual {v2, v0}, Lzvf;->c(Landroid/graphics/Bitmap;)Lzvf;

    iget v0, p0, Lohe;->f:I

    int-to-float v0, v0

    iget v3, p0, Lohe;->d:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lzvf;->h(F)Lzvf;

    invoke-virtual {v2, v1}, Lzvf;->i(I)Lzvf;

    iget v0, p0, Lohe;->g:I

    int-to-float v0, v0

    iget v3, p0, Lohe;->e:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lzvf;->e(FI)Lzvf;

    invoke-virtual {v2, v1}, Lzvf;->f(I)Lzvf;

    iget v0, p0, Lohe;->h:I

    int-to-float v0, v0

    iget v1, p0, Lohe;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lzvf;->k(F)Lzvf;

    iget v0, p0, Lohe;->i:I

    int-to-float v0, v0

    iget p0, p0, Lohe;->e:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-virtual {v2, v0}, Lzvf;->d(F)Lzvf;

    invoke-virtual {v2}, Lzvf;->p()Lfyf;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lohe;->d:I

    iput v0, p0, Lohe;->e:I

    iput v0, p0, Lohe;->f:I

    iput v0, p0, Lohe;->g:I

    iput v0, p0, Lohe;->h:I

    iput v0, p0, Lohe;->i:I

    iget-object v1, p0, Lohe;->a:Lu4h;

    invoke-virtual {v1, v0}, Lu4h;->i(I)V

    iput-boolean v0, p0, Lohe;->c:Z

    return-void
.end method

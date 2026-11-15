.class public final Llie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public b:Z

.field public c:Z

.field public d:[I

.field public e:I

.field public f:I

.field public g:Landroid/graphics/Rect;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Llie;->a:[I

    const/4 v0, -0x1

    iput v0, p0, Llie;->h:I

    iput v0, p0, Llie;->i:I

    return-void
.end method

.method public static e([II)I
    .locals 1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public static f(II)I
    .locals 1

    mul-int/lit8 p1, p1, 0x11

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final a(Lu4h;)Lfyf;
    .locals 5

    iget-object v0, p0, Llie;->d:[I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Llie;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Llie;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llie;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v1, p0, Llie;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Llie;->i:I

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Llie;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llie;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    new-instance v2, Lp3h;

    invoke-direct {v2}, Lp3h;-><init>()V

    iget v3, p0, Llie;->h:I

    invoke-virtual {p1, v3}, Lu4h;->l(I)V

    invoke-virtual {v2, p1}, Lp3h;->j(Lu4h;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Llie;->g(Lp3h;ZLandroid/graphics/Rect;[I)V

    iget v3, p0, Llie;->i:I

    invoke-virtual {p1, v3}, Lu4h;->l(I)V

    invoke-virtual {v2, p1}, Lp3h;->j(Lu4h;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Llie;->g(Lp3h;ZLandroid/graphics/Rect;[I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lzvf;

    invoke-direct {v2}, Lzvf;-><init>()V

    invoke-virtual {v2, v1}, Lzvf;->c(Landroid/graphics/Bitmap;)Lzvf;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, p0, Llie;->e:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lzvf;->h(F)Lzvf;

    invoke-virtual {v2, p1}, Lzvf;->i(I)Lzvf;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v3, p0, Llie;->f:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v1, p1}, Lzvf;->e(FI)Lzvf;

    invoke-virtual {v2, p1}, Lzvf;->f(I)Lzvf;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Llie;->e:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v2, p1}, Lzvf;->k(F)Lzvf;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Llie;->f:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-virtual {v2, p1}, Lzvf;->d(F)Lzvf;

    invoke-virtual {v2}, Lzvf;->p()Lfyf;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget v1, Lkfh;->a:I

    const-string v1, "\\r?\\n"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p1, v4

    const-string v6, "palette: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Llie;->d:[I

    move v6, v3

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Llie;->d:[I

    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v8, v3

    :goto_2
    aput v8, v7, v6

    add-int/2addr v6, v0

    goto :goto_1

    :cond_0
    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    :try_start_1
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Llie;->e:I

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Llie;->f:I

    iput-boolean v0, p0, Llie;->b:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v6, "VobsubParser"

    const-string v7, "Parsing IDX failed"

    invoke-static {v6, v7, v5}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Lu4h;)V
    .locals 11

    iget-object v0, p0, Llie;->d:[I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Llie;->b:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lu4h;->K()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->K()I

    move-result v1

    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lu4h;->w()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v2

    if-lt v2, v7, :cond_1

    invoke-virtual {p1}, Lu4h;->K()I

    move-result v2

    iput v2, p0, Llie;->h:I

    invoke-virtual {p1}, Lu4h;->K()I

    move-result v2

    iput v2, p0, Llie;->i:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v2

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v3

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v4

    shl-int/2addr v2, v7

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v4

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v8

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v9

    shl-int/2addr v4, v7

    shr-int/lit8 v7, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    new-instance v9, Landroid/graphics/Rect;

    or-int/2addr v2, v5

    or-int/2addr v4, v7

    add-int/2addr v3, v6

    add-int/2addr v8, v6

    invoke-direct {v9, v2, v4, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Llie;->g:Landroid/graphics/Rect;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v2

    if-lt v2, v5, :cond_1

    iget-boolean v2, p0, Llie;->c:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v2

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v7

    iget-object v8, p0, Llie;->a:[I

    aget v9, v8, v3

    shr-int/lit8 v10, v2, 0x4

    invoke-static {v9, v10}, Llie;->f(II)I

    move-result v9

    aput v9, v8, v3

    aget v3, v8, v5

    and-int/lit8 v2, v2, 0xf

    invoke-static {v3, v2}, Llie;->f(II)I

    move-result v2

    aput v2, v8, v5

    aget v2, v8, v6

    shr-int/lit8 v3, v7, 0x4

    invoke-static {v2, v3}, Llie;->f(II)I

    move-result v2

    aput v2, v8, v6

    aget v2, v8, v4

    and-int/lit8 v3, v7, 0xf

    invoke-static {v2, v3}, Llie;->f(II)I

    move-result v2

    aput v2, v8, v4

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v2

    if-lt v2, v5, :cond_1

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v2

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v7

    iget-object v8, p0, Llie;->a:[I

    shr-int/lit8 v9, v2, 0x4

    invoke-static {v0, v9}, Llie;->e([II)I

    move-result v9

    aput v9, v8, v3

    and-int/lit8 v2, v2, 0xf

    invoke-static {v0, v2}, Llie;->e([II)I

    move-result v2

    aput v2, v8, v5

    shr-int/lit8 v2, v7, 0x4

    invoke-static {v0, v2}, Llie;->e([II)I

    move-result v2

    aput v2, v8, v6

    and-int/lit8 v2, v7, 0xf

    invoke-static {v0, v2}, Llie;->e([II)I

    move-result v2

    aput v2, v8, v4

    iput-boolean v6, p0, Llie;->c:Z

    goto/16 :goto_0

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Llie;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Llie;->g:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Llie;->h:I

    iput v0, p0, Llie;->i:I

    return-void
.end method

.method public final g(Lp3h;ZLandroid/graphics/Rect;[I)V
    .locals 9

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v2, p2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    const/4 v3, 0x0

    :goto_0
    move v4, v3

    :cond_0
    move v6, v0

    move v5, v3

    :goto_1
    const/4 v7, 0x4

    if-ge v5, v6, :cond_2

    const/16 v8, 0x40

    if-gt v6, v8, :cond_2

    invoke-virtual {p1}, Lp3h;->a()I

    move-result v8

    if-ge v8, v7, :cond_1

    const/4 v5, -0x1

    move v6, v5

    move v5, v3

    goto :goto_2

    :cond_1
    shl-int/lit8 v5, v5, 0x4

    invoke-virtual {p1, v7}, Lp3h;->d(I)I

    move-result v7

    or-int/2addr v5, v7

    shl-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_2
    and-int/lit8 v6, v5, 0x3

    if-ge v5, v7, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    shr-int/lit8 v5, v5, 0x2

    :goto_2
    sub-int v7, v1, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_4

    add-int v7, v2, v5

    iget-object v8, p0, Llie;->a:[I

    aget v6, v8, v6

    invoke-static {p4, v2, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v4, v5

    move v2, v7

    :cond_4
    if-lt v4, v1, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-lt p2, p3, :cond_5

    return-void

    :cond_5
    mul-int v2, p2, v1

    invoke-virtual {p1}, Lp3h;->f()V

    goto :goto_0
.end method

.class public Lcom/yalantis/ucrop/task/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/RectF;

.field public d:F

.field public e:F

.field public final f:I

.field public final g:I

.field public final h:Landroid/graphics/Bitmap$CompressFormat;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lnf3;

.field public final m:Lye0;

.field public n:I

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ucrop"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ldy4;Lql1;Lye0;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Ldy4;->a()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    invoke-virtual {p2}, Ldy4;->c()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    invoke-virtual {p2}, Ldy4;->d()F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    invoke-virtual {p2}, Ldy4;->b()F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->e:F

    invoke-virtual {p3}, Lql1;->f()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->f:I

    invoke-virtual {p3}, Lql1;->g()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->g:I

    invoke-virtual {p3}, Lql1;->a()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->h:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3}, Lql1;->b()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->i:I

    invoke-virtual {p3}, Lql1;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->j:Ljava/lang/String;

    invoke-virtual {p3}, Lql1;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->k:Ljava/lang/String;

    invoke-virtual {p3}, Lql1;->c()Lnf3;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->l:Lnf3;

    iput-object p4, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->m:Lye0;

    return-void
.end method

.method public static native cropCImg(Ljava/lang/String;Ljava/lang/String;IIIIFFIIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method


# virtual methods
.method public final a(F)Z
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->p:I

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->q:I

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->n:I

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->o:I

    iget v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->n:I

    invoke-virtual {v0, v3, v2}, Lcom/yalantis/ucrop/task/BitmapCropTask;->e(II)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should crop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BitmapCropTask"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    iget-object v5, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->j:Ljava/lang/String;

    iget-object v6, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->k:Ljava/lang/String;

    iget v7, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->p:I

    iget v8, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->q:I

    iget v9, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->n:I

    iget v10, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->o:I

    iget v11, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->e:F

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->h:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    iget v14, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->i:I

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->l:Lnf3;

    invoke-virtual {v2}, Lnf3;->a()I

    move-result v15

    iget-object v2, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->l:Lnf3;

    invoke-virtual {v2}, Lnf3;->b()I

    move-result v16

    move/from16 v12, p1

    invoke-static/range {v5 .. v16}, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropCImg(Ljava/lang/String;Ljava/lang/String;IIIIFFIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->h:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->n:I

    iget v4, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->o:I

    iget-object v0, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->k:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0}, Lzx4;->b(Landroidx/exifinterface/media/ExifInterface;IILjava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    iget-object v1, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->j:Ljava/lang/String;

    iget-object v0, v0, Lcom/yalantis/ucrop/task/BitmapCropTask;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lbv3;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public varargs b([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 0

    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->a:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ViewBitmap is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ViewBitmap is recycled"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "CurrentImageRect is empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/yalantis/ucrop/task/BitmapCropTask;->d()F

    move-result p1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->a(F)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    return-object p0
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 7

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->m:Lye0;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->k:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->m:Lye0;

    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->p:I

    iget v4, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->q:I

    iget v5, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->n:I

    iget v6, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->o:I

    invoke-interface/range {v1 .. v6}, Lye0;->a(Landroid/net/Uri;IIII)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lye0;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()F
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->l:Lnf3;

    invoke-virtual {v2}, Lnf3;->a()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->l:Lnf3;

    invoke-virtual {v2}, Lnf3;->a()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    :cond_2
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_1
    int-to-float v2, v2

    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    if-eqz v1, :cond_3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_2

    :cond_3
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_2
    int-to-float v0, v0

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->f:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->g:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->f:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->g:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    :cond_4
    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->d:F

    goto :goto_3

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    return v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->b([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public final e(II)Z
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->g:I

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_2

    iget p0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->e:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->c(Ljava/lang/Throwable;)V

    return-void
.end method

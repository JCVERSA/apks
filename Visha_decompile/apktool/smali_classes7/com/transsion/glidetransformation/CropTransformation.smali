.class public Lcom/transsion/glidetransformation/CropTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/glidetransformation/CropTransformation$CropType;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/transsion/glidetransformation/CropTransformation$CropType;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/glidetransformation/CropTransformation$CropType;->CENTER:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/glidetransformation/CropTransformation;-><init>(IILcom/transsion/glidetransformation/CropTransformation$CropType;)V

    return-void
.end method

.method public constructor <init>(IILcom/transsion/glidetransformation/CropTransformation$CropType;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 3
    sget-object v0, Lcom/transsion/glidetransformation/CropTransformation$CropType;->TOP:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    .line 4
    iput p1, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    .line 5
    iput p2, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    .line 6
    iput-object p3, p0, Lcom/transsion/glidetransformation/CropTransformation;->c:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    sget-object v0, Lcom/transsion/glidetransformation/CropTransformation$a;->a:[I

    iget-object v1, p0, Lcom/transsion/glidetransformation/CropTransformation;->c:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    return p0

    :cond_1
    iget p0, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/transsion/glidetransformation/CropTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/glidetransformation/CropTransformation;

    iget v0, p1, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    iget v1, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    iget v1, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/transsion/glidetransformation/CropTransformation;->c:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    iget-object p0, p0, Lcom/transsion/glidetransformation/CropTransformation;->c:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    const v1, -0x5729574d

    add-int/2addr v1, v0

    iget v0, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/transsion/glidetransformation/CropTransformation;->c:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CropTransformation(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cropType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/glidetransformation/CropTransformation;->c:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    if-lez v0, :cond_0

    move p3, v0

    :cond_0
    iget v0, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    if-lez v0, :cond_1

    move p4, v0

    :cond_1
    if-lez p3, :cond_4

    if-gtz p4, :cond_2

    goto :goto_1

    :cond_2
    iput p3, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    iput p4, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    goto :goto_0

    :cond_3
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget p4, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    iget v0, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    invoke-interface {p1, p4, v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget p3, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    iget p4, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    iget v0, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, p3}, Lcom/transsion/glidetransformation/CropTransformation;->a(F)F

    move-result p0

    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr p4, v0

    add-float/2addr p3, p0

    invoke-direct {v1, v0, p0, p4, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p1

    :cond_4
    :goto_1
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jp.wasabeef.glide.transformations.CropTransformation.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/glidetransformation/CropTransformation;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/glidetransformation/CropTransformation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/glidetransformation/CropTransformation;->c:Lcom/transsion/glidetransformation/CropTransformation$CropType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

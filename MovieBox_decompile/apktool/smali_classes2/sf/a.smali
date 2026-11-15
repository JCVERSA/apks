.class public Lsf/a;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lsf/a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsf/a;->c:Z

    .line 4
    iput p1, p0, Lsf/a;->a:I

    .line 5
    iput p2, p0, Lsf/a;->b:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 7
    iput p1, p0, Lsf/a;->a:I

    .line 8
    iput p2, p0, Lsf/a;->b:I

    .line 9
    iput-boolean p3, p0, Lsf/a;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lsf/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lsf/a;

    .line 6
    .line 7
    iget v0, p1, Lsf/a;->a:I

    .line 8
    .line 9
    iget v1, p0, Lsf/a;->a:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget p1, p1, Lsf/a;->b:I

    .line 14
    .line 15
    iget v0, p0, Lsf/a;->b:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lsf/a;->a:I

    .line 2
    .line 3
    mul-int/lit16 v0, v0, 0x3e8

    .line 4
    .line 5
    const v1, 0x231c7533

    .line 6
    .line 7
    .line 8
    add-int/2addr v1, v0

    .line 9
    iget v0, p0, Lsf/a;->b:I

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0xa

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BlurTransformation(radius="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lsf/a;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", sampling="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lsf/a;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    iget v0, p0, Lsf/a;->b:I

    .line 10
    .line 11
    div-int/2addr p3, v0

    .line 12
    div-int/2addr p4, v0

    .line 13
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p3, Landroid/graphics/Canvas;

    .line 20
    .line 21
    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    iget p4, p0, Lsf/a;->b:I

    .line 25
    .line 26
    int-to-float v0, p4

    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    div-float v0, v1, v0

    .line 30
    .line 31
    int-to-float p4, p4

    .line 32
    div-float p4, v1, p4

    .line 33
    .line 34
    invoke-virtual {p3, v0, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 35
    .line 36
    .line 37
    new-instance p4, Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p3, p2, v0, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p2, p0, Lsf/a;->c:Z

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    iget p2, p0, Lsf/a;->a:I

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    invoke-static {p1, p2, p3}, Lsf/b;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget p2, p0, Lsf/a;->a:I

    .line 63
    .line 64
    int-to-float p2, p2

    .line 65
    invoke-static {p1, v1, p2}, Lcom/blankj/utilcode/util/ImageUtils;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BlurTransformation.1"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lsf/a;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lsf/a;->b:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

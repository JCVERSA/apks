.class public Laf/r;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Laf/n;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>([BIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Laf/r;->e:I

    .line 6
    .line 7
    new-instance v0, Laf/n;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3}, Laf/n;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Laf/r;->a:Laf/n;

    .line 13
    .line 14
    iput p5, p0, Laf/r;->c:I

    .line 15
    .line 16
    iput p4, p0, Laf/r;->b:I

    .line 17
    .line 18
    mul-int p4, p2, p3

    .line 19
    .line 20
    array-length p5, p1

    .line 21
    if-gt p4, p5, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p4, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance p5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "Image data does not match the resolution. "

    .line 32
    .line 33
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, "x"

    .line 40
    .line 41
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, " > "

    .line 48
    .line 49
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    array-length p1, p1

    .line 53
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p4
.end method


# virtual methods
.method public a()Lcom/google/zxing/h;
    .locals 11

    .line 1
    iget-object v0, p0, Laf/r;->a:Laf/n;

    .line 2
    .line 3
    iget v1, p0, Laf/r;->c:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Laf/n;->h(I)Laf/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Laf/r;->d:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget v2, p0, Laf/r;->e:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Laf/n;->a(Landroid/graphics/Rect;I)Laf/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v10, Lcom/google/zxing/h;

    .line 18
    .line 19
    invoke-virtual {v0}, Laf/n;->b()[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Laf/n;->d()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0}, Laf/n;->c()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0}, Laf/n;->d()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    invoke-virtual {v0}, Laf/n;->c()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    move-object v1, v10

    .line 43
    invoke-direct/range {v1 .. v9}, Lcom/google/zxing/h;-><init>([BIIIIIIZ)V

    .line 44
    .line 45
    .line 46
    return-object v10
.end method

.method public b(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    .line 6
    iget-object v1, p0, Laf/r;->a:Laf/n;

    .line 7
    .line 8
    invoke-virtual {v1}, Laf/n;->d()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Laf/r;->a:Laf/n;

    .line 13
    .line 14
    invoke-virtual {v2}, Laf/n;->c()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Laf/r;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    .line 30
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    .line 40
    .line 41
    move-object p1, v1

    .line 42
    :cond_1
    :goto_0
    new-instance v7, Landroid/graphics/YuvImage;

    .line 43
    .line 44
    iget-object v1, p0, Laf/r;->a:Laf/n;

    .line 45
    .line 46
    invoke-virtual {v1}, Laf/n;->b()[B

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v3, p0, Laf/r;->b:I

    .line 51
    .line 52
    iget-object v1, p0, Laf/r;->a:Laf/n;

    .line 53
    .line 54
    invoke-virtual {v1}, Laf/n;->d()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-object v1, p0, Laf/r;->a:Laf/n;

    .line 59
    .line 60
    invoke-virtual {v1}, Laf/n;->c()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v1, v7

    .line 66
    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .line 73
    .line 74
    const/16 v2, 0x5a

    .line 75
    .line 76
    invoke-virtual {v7, p1, v2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 84
    .line 85
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .line 87
    .line 88
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 89
    .line 90
    array-length p2, p1

    .line 91
    invoke-static {p1, v0, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget p1, p0, Laf/r;->c:I

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    new-instance v7, Landroid/graphics/Matrix;

    .line 100
    .line 101
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 102
    .line 103
    .line 104
    iget p1, p0, Laf/r;->c:I

    .line 105
    .line 106
    int-to-float p1, p1

    .line 107
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v4, 0x0

    .line 121
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :cond_2
    return-object v2
.end method

.method public c()Z
    .locals 1

    .line 1
    iget v0, p0, Laf/r;->c:I

    .line 2
    .line 3
    rem-int/lit16 v0, v0, 0xb4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laf/r;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Laf/r;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public f(Lcom/google/zxing/k;)Lcom/google/zxing/k;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Laf/r;->e:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    mul-float/2addr v0, v1

    .line 9
    iget-object v1, p0, Laf/r;->d:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    add-float/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/k;->d()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v1, p0, Laf/r;->e:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    mul-float/2addr p1, v1

    .line 23
    iget-object v1, p0, Laf/r;->d:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    add-float/2addr p1, v1

    .line 29
    iget-boolean v1, p0, Laf/r;->f:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Laf/r;->a:Laf/n;

    .line 34
    .line 35
    invoke-virtual {v1}, Laf/n;->d()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    sub-float v0, v1, v0

    .line 41
    .line 42
    :cond_0
    new-instance v1, Lcom/google/zxing/k;

    .line 43
    .line 44
    invoke-direct {v1, v0, p1}, Lcom/google/zxing/k;-><init>(FF)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.class public abstract Lw1/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p3, v0, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 14
    .line 15
    invoke-static {p0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 19
    .line 20
    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 21
    .line 22
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 27
    .line 28
    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    .line 30
    :goto_0
    if-le v0, p3, :cond_1

    .line 31
    .line 32
    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 33
    .line 34
    mul-int/lit8 v3, v3, 0x2

    .line 35
    .line 36
    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 37
    .line 38
    div-int/lit8 v0, v0, 0x2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p0, v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    iput v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 48
    .line 49
    :cond_2
    if-eqz v3, :cond_4

    .line 50
    .line 51
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    new-instance p0, Landroidx/exifinterface/media/a;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/a;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/exifinterface/media/a;->l()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    new-instance v8, Landroid/graphics/Matrix;

    .line 71
    .line 72
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .line 74
    .line 75
    int-to-float p0, p0

    .line 76
    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :cond_3
    return-object v3

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    throw p0

    .line 105
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string p1, "Could not decode image data"

    .line 111
    .line 112
    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    throw p0
.end method

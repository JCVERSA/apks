.class public Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final IN_TEMP_BUFFER_SIZE:I = 0x2000

.field private static final MAX_WEBP_HEADER_SIZE:I = 0x15


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "glide-webp"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createBitmap(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    or-int v0, p1, p2

    if-ltz v0, :cond_1

    .line 2
    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->webpSupportRequired([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result v5

    invoke-static {p3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 5
    invoke-static/range {v1 .. v6}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6
    invoke-static {p0, p3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {v1, v0, p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 5
    :goto_1
    :try_start_3
    const-string p1, "WebpBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_2
    :cond_0
    :goto_2
    return-object v0

    :goto_3
    if-eqz v0, :cond_1

    .line 6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 7
    :catch_3
    :cond_1
    throw p0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .line 2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getImageHeader(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x15

    .line 4
    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->webpSupportRequired([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result p0

    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v1

    invoke-static {v0, p2, p0, v1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6
    invoke-static {p0, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setDefaultPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object p0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    :catchall_2
    throw p0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p0, v1, p1, v0, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-object p1, v0

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6
    :catch_1
    :cond_0
    throw p0

    :catch_2
    :goto_2
    if-eqz p1, :cond_1

    goto :goto_0

    :catch_3
    :cond_1
    :goto_3
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 7
    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Problem decoding into existing bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_4
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .line 4
    .line 5
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget p1, p1, Landroid/util/TypedValue;->density:I

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const/16 p1, 0xa0

    .line 19
    .line 20
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const v0, 0xffff

    .line 24
    .line 25
    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 29
    .line 30
    :cond_2
    :goto_0
    iget p1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 41
    .line 42
    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 43
    .line 44
    :cond_3
    invoke-static {p2, p3, p4}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getImageHeader(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 4
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->webpSupportRequired([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result v0

    .line 6
    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v1

    .line 7
    invoke-static {p0, p2, v0, v1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 8
    invoke-static {p0, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    .line 9
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setDefaultPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getImageHeader(Ljava/io/InputStream;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x15

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 16
    .line 17
    .line 18
    new-array v0, v1, [B

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method private static getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/16 p0, 0x2000

    .line 9
    .line 10
    new-array p0, p0, [B

    .line 11
    .line 12
    return-object p0
.end method

.method private static getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    :cond_0
    iget-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    if-eq v1, p0, :cond_1

    .line 27
    .line 28
    int-to-float p0, v2

    .line 29
    int-to-float v0, v1

    .line 30
    div-float v0, p0, v0

    .line 31
    .line 32
    :cond_1
    return v0
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;
.end method

.method private static setDefaultPadding(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 5
    .line 6
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 9
    .line 10
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 20
    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 25
    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    return-void

    .line 33
    :cond_3
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    const/16 p1, 0xa0

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 40
    .line 41
    .line 42
    :cond_4
    :goto_1
    return-void
.end method

.method private static setOutDimensions(Landroid/graphics/BitmapFactory$Options;II)Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4
    .line 5
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    .line 7
    iget-boolean p0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private static setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string p0, "image/webp"

    .line 7
    .line 8
    iput-object p0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static webpSupportRequired([BII)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->getType([BII)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 6
    .line 7
    :goto_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method private static wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    const/16 v1, 0x2000

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :cond_0
    return-object p0
.end method

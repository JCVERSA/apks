.class public Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaDataSource;


# instance fields
.field private mDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mMediaBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    new-instance p1, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;-><init>(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private readBytes(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    return-void
.end method

.method public getSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    :cond_0
    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/RawDataSourceProvider;->mMediaBytes:[B

    array-length v2, p0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    int-to-long v2, p5

    add-long/2addr v2, p1

    array-length v0, p0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length p5, p0

    int-to-long v2, p5

    sub-long/2addr v2, p1

    long-to-int p5, v2

    array-length v0, p3

    if-le p5, v0, :cond_2

    array-length p5, p3

    :cond_2
    add-int/2addr p5, v1

    :goto_0
    long-to-int p1, p1

    invoke-static {p0, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p5
.end method

.class public final Lorg/chromium/net/UploadDataProviders;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/net/UploadDataProvider;
    .locals 0

    .line 2
    invoke-static {p0}, Lqz/a;->a(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/net/UploadDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;)Lorg/chromium/net/UploadDataProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lqz/a;->b(Ljava/io/File;)Lorg/chromium/net/UploadDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/nio/ByteBuffer;)Lorg/chromium/net/UploadDataProvider;
    .locals 0

    .line 3
    invoke-static {p0}, Lqz/a;->c(Ljava/nio/ByteBuffer;)Lorg/chromium/net/UploadDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static create([B)Lorg/chromium/net/UploadDataProvider;
    .locals 0

    .line 5
    invoke-static {p0}, Lqz/a;->d([B)Lorg/chromium/net/UploadDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public static create([BII)Lorg/chromium/net/UploadDataProvider;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lqz/a;->e([BII)Lorg/chromium/net/UploadDataProvider;

    move-result-object p0

    return-object p0
.end method

.class public final Ljkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpkj;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk3i;Lk3i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljkj;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lokj;)Lrkj;
    .locals 4

    sget v0, Lkfh;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljkj;->a:Landroid/content/Context;

    if-eqz p0, :cond_2

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.amazon.hardware.tv_screen"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p1, Lokj;->c:Lerj;

    iget-object p0, p0, Lerj;->o:Ljava/lang/String;

    invoke-static {p0}, Lbue;->b(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lkfh;->d(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMCodecAdapterFactory"

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lakj;

    invoke-direct {v0, p0}, Lakj;-><init>(I)V

    invoke-virtual {v0, p1}, Lakj;->d(Lokj;)Lckj;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :try_start_0
    iget-object v0, p1, Lokj;->a:Ltkj;

    iget-object v0, v0, Ltkj;->a:Ljava/lang/String;

    const-string v1, "createCodec:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "configureCodec"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p1, Lokj;->d:Landroid/view/Surface;

    iget-object v2, p1, Lokj;->b:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "startCodec"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v1, Lslj;

    iget-object p1, p1, Lokj;->f:Lnkj;

    invoke-direct {v1, v0, p1, p0}, Lslj;-><init>(Landroid/media/MediaCodec;Lnkj;Lrlj;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    :cond_3
    throw p1
.end method

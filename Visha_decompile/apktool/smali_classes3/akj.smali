.class public final Lakj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpkj;


# instance fields
.field public final a:Lk3i;

.field public final b:Lk3i;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lyjj;

    invoke-direct {v0, p1}, Lyjj;-><init>(I)V

    new-instance v1, Lzjj;

    invoke-direct {v1, p1}, Lzjj;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lakj;->a:Lk3i;

    iput-object v1, p0, Lakj;->b:Lk3i;

    return-void
.end method

.method public static synthetic b(I)Landroid/os/HandlerThread;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lckj;->j(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(I)Landroid/os/HandlerThread;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lckj;->k(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lokj;)Lrkj;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Lokj;)Lckj;
    .locals 10

    iget-object v0, p1, Lokj;->a:Ltkj;

    iget-object v1, v0, Ltkj;->a:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCodec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v7, Lgkj;

    iget-object v3, p0, Lakj;->b:Lk3i;

    check-cast v3, Lzjj;

    iget v3, v3, Lzjj;->b:I

    invoke-static {v3}, Lakj;->c(I)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-direct {v7, v1, v3}, Lgkj;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    new-instance v3, Lckj;

    iget-object p0, p0, Lakj;->a:Lk3i;

    check-cast p0, Lyjj;

    iget p0, p0, Lyjj;->b:I

    invoke-static {p0}, Lakj;->b(I)Landroid/os/HandlerThread;

    move-result-object v6

    iget-object v8, p1, Lokj;->f:Lnkj;

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lckj;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lskj;Lnkj;Lbkj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p0, p1, Lokj;->d:Landroid/view/Surface;

    const/4 v4, 0x0

    if-nez p0, :cond_0

    iget-boolean v0, v0, Ltkj;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lkfh;->a:I

    const/16 v5, 0x23

    if-lt v0, v5, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Lokj;->b:Landroid/media/MediaFormat;

    invoke-static {v3, p1, p0, v2, v4}, Lckj;->l(Lckj;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :goto_1
    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v2

    :goto_2
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lckj;->zzm()V

    :cond_2
    :goto_3
    throw p0
.end method

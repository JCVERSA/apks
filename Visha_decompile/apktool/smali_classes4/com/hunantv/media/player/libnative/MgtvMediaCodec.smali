.class public Lcom/hunantv/media/player/libnative/MgtvMediaCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;,
        Lcom/hunantv/media/player/libnative/MgtvMediaCodec$CreateCodecRunnable;
    }
.end annotation


# static fields
.field private static final MAX_WAITING_TIME_MS:I = 0x3e8

.field private static final OPPO_OSIE_ENABLE_KEY:Ljava/lang/String; = "vendor.oplus-osie-enable.value"

.field private static final OPPO_SR_ENABLE_KEY:Ljava/lang/String; = "vendor.oplus-sr-enable.value"

.field private static final STATUS_OK:I = 0x0

.field private static final STATUS_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MgtvMediaCodec"


# instance fields
.field private mCodecName:Ljava/lang/String;

.field private volatile mFlushStatus:I

.field private mMediaCodec:Landroid/media/MediaCodec;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mFlushStatus:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    iput-object p2, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mCodecName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaCodec is NULL"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createByCodecName(Ljava/lang/String;)Lcom/hunantv/media/player/libnative/MgtvMediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "createByCodecName:"

    const-string v2, "MgtvMediaCodec"

    if-nez v0, :cond_0

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sCreateCodecBlackList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already in blacklist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not in blacklist.try create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$CreateCodecRunnable;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$CreateCodecRunnable;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "mgtvmp_jMCCre"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$CreateCodecRunnable;->getMediaCodec()Landroid/media/MediaCodec;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$CreateCodecRunnable;->release()V

    :cond_1
    move-object v0, v1

    :goto_1
    new-instance v1, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;

    invoke-direct {v1, v0, p0}, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public final dequeueInputBuffer(J)I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0

    return p0
.end method

.method public final dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p0

    return p0
.end method

.method public final declared-synchronized flush()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mFlushStatus:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sFlushCodecBlackList:Ljava/util/Set;

    iget-object v1, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mCodecName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;

    iget-object v1, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v0, v1}, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;-><init>(Landroid/media/MediaCodec;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "mgtvmp_jMCFlush"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;->access$000(Lcom/hunantv/media/player/libnative/MgtvMediaCodec$FlushRunnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mFlushStatus:I

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sFlushCodecBlackList:Ljava/util/Set;

    iget-object v1, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mCodecName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "MgtvMediaCodec"

    const-string v1, "flush add into blacklist"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "flush timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "flush timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getFlushStatus()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mFlushStatus:I

    return p0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getOutputBuffers()[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputFormat()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public getOutputImage(I)Landroid/media/Image;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object p0

    return-object p0
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 7

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 7

    iget-object v0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public final release()V
    .locals 2

    const-string v0, "release in"

    const-string v1, "MgtvMediaCodec"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    const-string p0, "release out"

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final releaseOutputBuffer(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters oppo_sr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vendor.oplus-sr-enable.value"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvMediaCodec"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters oppo_osie:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vendor.oplus-osie-enable.value"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public final stop()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/MgtvMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V

    return-void
.end method

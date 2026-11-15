.class public final Lslj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrkj;


# instance fields
.field public final a:Landroid/media/MediaCodec;

.field public final b:Lnkj;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec;Lnkj;Lrlj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lslj;->a:Landroid/media/MediaCodec;

    iput-object p2, p0, Lslj;->b:Lnkj;

    sget p0, Lkfh;->a:I

    const/16 p3, 0x23

    if-lt p0, p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lnkj;->a(Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IIIJI)V
    .locals 7

    iget-object v0, p0, Lslj;->a:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final b(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final synthetic c(Lqkj;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d(IILpzi;JI)V
    .locals 7

    invoke-virtual {p3}, Lpzi;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    iget-object v0, p0, Lslj;->a:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public final e(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final f(IJ)V
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final g(I)V
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final h(IZ)V
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final i(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 3

    :cond_0
    iget-object v0, p0, Lslj;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    return v0
.end method

.method public final zza()I
    .locals 2

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0

    return p0
.end method

.method public final zzc()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public final zzg(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()V
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-static {p0}, Lhj;->a(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public final zzj()V
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public final zzm()V
    .locals 3

    const/16 v0, 0x23

    :try_start_0
    sget v1, Lkfh;->a:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lslj;->b:Lnkj;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lnkj;->c(Landroid/media/MediaCodec;)V

    :cond_1
    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    return-void

    :goto_1
    sget v2, Lkfh;->a:I

    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lslj;->b:Lnkj;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Lnkj;->c(Landroid/media/MediaCodec;)V

    :cond_3
    :goto_2
    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    throw v1
.end method

.method public final zzq(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lslj;->a:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

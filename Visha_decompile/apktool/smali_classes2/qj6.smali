.class public final Lqj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnb;
.implements Ld88$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqj6$b;,
        Lqj6$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public final a:Landroid/content/Context;

.field public final b:Ld88;

.field public final c:Landroid/media/metrics/PlaybackSession;

.field public final d:J

.field public final e:Lcom/google/android/exoplayer2/a0$d;

.field public final f:Lcom/google/android/exoplayer2/a0$b;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public i:Ljava/lang/String;

.field public j:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public k:I

.field public l:I

.field public m:I

.field public n:Lcom/google/android/exoplayer2/PlaybackException;

.field public o:Lqj6$b;

.field public p:Lqj6$b;

.field public q:Lqj6$b;

.field public r:Lcom/google/android/exoplayer2/k;

.field public s:Lcom/google/android/exoplayer2/k;

.field public t:Lcom/google/android/exoplayer2/k;

.field public u:Z

.field public v:I

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lqj6;->a:Landroid/content/Context;

    iput-object p2, p0, Lqj6;->c:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    iput-object p1, p0, Lqj6;->e:Lcom/google/android/exoplayer2/a0$d;

    new-instance p1, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iput-object p1, p0, Lqj6;->f:Lcom/google/android/exoplayer2/a0$b;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lqj6;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lqj6;->g:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lqj6;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lqj6;->l:I

    iput p1, p0, Lqj6;->m:I

    new-instance p1, Lf32;

    invoke-direct {p1}, Lf32;-><init>()V

    iput-object p1, p0, Lqj6;->b:Ld88;

    invoke-interface {p1, p0}, Ld88;->f(Ld88$a;)V

    return-void
.end method

.method public static A0(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ldgb;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/b0$a;

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/b0$a;->b:I

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b0$a;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b0$a;->b(I)Lcom/google/android/exoplayer2/k;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static B0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    sget-object v2, Lto0;->d:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    sget-object v2, Lto0;->e:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget-object v2, Lto0;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static C0(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)Lqj6$a;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance p0, Lqj6$a;

    const/16 p1, 0x14

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    goto :goto_1

    :cond_2
    move v0, v2

    move v3, v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    instance-of v5, v4, Ljava/io/IOException;

    const/4 v6, 0x3

    const/16 v7, 0x12

    const/16 v8, 0x17

    if-eqz v5, :cond_17

    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_3

    check-cast v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    new-instance p1, Lqj6$a;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lqj6$a;-><init>(II)V

    return-object p1

    :cond_3
    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    if-nez v0, :cond_15

    instance-of v0, v4, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    instance-of p2, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-nez p2, :cond_10

    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    if-eqz v0, :cond_5

    goto/16 :goto_2

    :cond_5
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 p1, 0x3ea

    const/16 p2, 0x15

    if-ne p0, p1, :cond_6

    new-instance p0, Lqj6$a;

    invoke-direct {p0, p2, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_6
    instance-of p0, v4, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    if-eqz p0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    sget p1, Lblb;->a:I

    if-lt p1, p2, :cond_7

    instance-of p2, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz p2, :cond_7

    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lblb;->P(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lqj6;->z0(I)I

    move-result p1

    new-instance p2, Lqj6$a;

    invoke-direct {p2, p1, p0}, Lqj6$a;-><init>(II)V

    return-object p2

    :cond_7
    if-lt p1, v8, :cond_8

    instance-of p2, p0, Landroid/media/MediaDrmResetException;

    if-eqz p2, :cond_8

    new-instance p0, Lqj6$a;

    const/16 p1, 0x1b

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_8
    if-lt p1, v7, :cond_9

    instance-of p2, p0, Landroid/media/NotProvisionedException;

    if-eqz p2, :cond_9

    new-instance p0, Lqj6$a;

    const/16 p1, 0x18

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_9
    if-lt p1, v7, :cond_a

    instance-of p1, p0, Landroid/media/DeniedByServerException;

    if-eqz p1, :cond_a

    new-instance p0, Lqj6$a;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_a
    instance-of p1, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz p1, :cond_b

    new-instance p0, Lqj6$a;

    invoke-direct {p0, v8, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_b
    instance-of p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz p0, :cond_c

    new-instance p0, Lqj6$a;

    const/16 p1, 0x1c

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_c
    new-instance p0, Lqj6$a;

    const/16 p1, 0x1e

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_d
    instance-of p0, v4, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    if-eqz p0, :cond_f

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_f

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    sget p1, Lblb;->a:I

    if-lt p1, p2, :cond_e

    instance-of p1, p0, Landroid/system/ErrnoException;

    if-eqz p1, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget p1, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, p1, :cond_e

    new-instance p0, Lqj6$a;

    const/16 p1, 0x20

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_e
    new-instance p0, Lqj6$a;

    const/16 p1, 0x1f

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_f
    new-instance p0, Lqj6$a;

    const/16 p1, 0x9

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_10
    :goto_2
    invoke-static {p1}, Lyz6;->d(Landroid/content/Context;)Lyz6;

    move-result-object p0

    invoke-virtual {p0}, Lyz6;->f()I

    move-result p0

    if-ne p0, v1, :cond_11

    new-instance p0, Lqj6$a;

    invoke-direct {p0, v6, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_12

    new-instance p0, Lqj6$a;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_12
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_13

    new-instance p0, Lqj6$a;

    const/4 p1, 0x7

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_13
    if-eqz p2, :cond_14

    check-cast v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget p0, v4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    if-ne p0, v1, :cond_14

    new-instance p0, Lqj6$a;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_14
    new-instance p0, Lqj6$a;

    const/16 p1, 0x8

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_15
    :goto_3
    new-instance p0, Lqj6$a;

    if-eqz p2, :cond_16

    const/16 p1, 0xa

    goto :goto_4

    :cond_16
    const/16 p1, 0xb

    :goto_4
    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_17
    if-eqz v3, :cond_19

    if-eqz v0, :cond_18

    if-ne v0, v1, :cond_19

    :cond_18
    new-instance p0, Lqj6$a;

    const/16 p1, 0x23

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_19
    if-eqz v3, :cond_1a

    if-ne v0, v6, :cond_1a

    new-instance p0, Lqj6$a;

    const/16 p1, 0xf

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_1a
    if-eqz v3, :cond_1b

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1b

    new-instance p0, Lqj6$a;

    invoke-direct {p0, v8, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_1b
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz p0, :cond_1c

    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    invoke-static {p0}, Lblb;->P(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lqj6$a;

    const/16 p2, 0xd

    invoke-direct {p1, p2, p0}, Lqj6$a;-><init>(II)V

    return-object p1

    :cond_1c
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    const/16 p1, 0xe

    if-eqz p0, :cond_1d

    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;

    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    invoke-static {p0}, Lblb;->P(Ljava/lang/String;)I

    move-result p0

    new-instance p2, Lqj6$a;

    invoke-direct {p2, p1, p0}, Lqj6$a;-><init>(II)V

    return-object p2

    :cond_1d
    instance-of p0, v4, Ljava/lang/OutOfMemoryError;

    if-eqz p0, :cond_1e

    new-instance p0, Lqj6$a;

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0

    :cond_1e
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    if-eqz p0, :cond_1f

    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->audioTrackState:I

    new-instance p1, Lqj6$a;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lqj6$a;-><init>(II)V

    return-object p1

    :cond_1f
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    if-eqz p0, :cond_20

    check-cast v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    iget p0, v4, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->errorCode:I

    new-instance p1, Lqj6$a;

    invoke-direct {p1, v7, p0}, Lqj6$a;-><init>(II)V

    return-object p1

    :cond_20
    sget p0, Lblb;->a:I

    const/16 p1, 0x10

    if-lt p0, p1, :cond_21

    instance-of p0, v4, Landroid/media/MediaCodec$CryptoException;

    if-eqz p0, :cond_21

    check-cast v4, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v4}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lqj6;->z0(I)I

    move-result p1

    new-instance p2, Lqj6$a;

    invoke-direct {p2, p1, p0}, Lqj6$a;-><init>(II)V

    return-object p2

    :cond_21
    new-instance p0, Lqj6$a;

    const/16 p1, 0x16

    invoke-direct {p0, p1, v2}, Lqj6$a;-><init>(II)V

    return-object p0
.end method

.method public static D0(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3

    const-string v0, "-"

    invoke-static {p0, v0}, Lblb;->F0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lyz6;->d(Landroid/content/Context;)Lyz6;

    move-result-object p0

    invoke-virtual {p0}, Lyz6;->f()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static G0(Lcom/google/android/exoplayer2/n;)I
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$h;->a:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/exoplayer2/n$h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lblb;->i0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method public static H0(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static x0(Landroid/content/Context;)Lqj6;
    .locals 2

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lli6;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lqj6;

    invoke-static {v0}, Lmi6;->a(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lqj6;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static z0(I)I
    .locals 0

    invoke-static {p0}, Lblb;->O(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public E0()Landroid/media/metrics/LogSessionId;
    .locals 0

    iget-object p0, p0, Lqj6;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {p0}, Lzi6;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object p0

    return-object p0
.end method

.method public I(Lcom/google/android/exoplayer2/t;Lnb$b;)V
    .locals 2

    invoke-virtual {p2}, Lnb$b;->d()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lqj6;->I0(Lnb$b;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lqj6;->O0(Lcom/google/android/exoplayer2/t;Lnb$b;)V

    invoke-virtual {p0, v0, v1}, Lqj6;->K0(J)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lqj6;->M0(Lcom/google/android/exoplayer2/t;Lnb$b;J)V

    invoke-virtual {p0, v0, v1}, Lqj6;->J0(J)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lqj6;->L0(Lcom/google/android/exoplayer2/t;Lnb$b;J)V

    const/16 p1, 0x404

    invoke-virtual {p2, p1}, Lnb$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lqj6;->b:Ld88;

    invoke-virtual {p2, p1}, Lnb$b;->c(I)Lnb$a;

    move-result-object p1

    invoke-interface {p0, p1}, Ld88;->c(Lnb$a;)V

    :cond_1
    return-void
.end method

.method public final I0(Lnb$b;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lnb$b;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lnb$b;->b(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lnb$b;->c(I)Lnb$a;

    move-result-object v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lqj6;->b:Ld88;

    invoke-interface {v1, v2}, Ld88;->a(Lnb$a;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lqj6;->b:Ld88;

    iget v3, p0, Lqj6;->k:I

    invoke-interface {v1, v2, v3}, Ld88;->b(Lnb$a;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lqj6;->b:Ld88;

    invoke-interface {v1, v2}, Ld88;->d(Lnb$a;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final J0(J)V
    .locals 4

    iget-object v0, p0, Lqj6;->a:Landroid/content/Context;

    invoke-static {v0}, Lqj6;->F0(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lqj6;->m:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lqj6;->m:I

    iget-object v1, p0, Lqj6;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lbj6;->a()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    invoke-static {v2, v0}, Lth6;->a(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v0

    iget-wide v2, p0, Lqj6;->d:J

    sub-long/2addr p1, v2

    invoke-static {v0, p1, p2}, Luh6;->a(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object p0

    invoke-static {p0}, Lwh6;->a(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object p0

    invoke-static {v1, p0}, Lkh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    :cond_0
    return-void
.end method

.method public final K0(J)V
    .locals 7

    iget-object v0, p0, Lqj6;->n:Lcom/google/android/exoplayer2/PlaybackException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lqj6;->a:Landroid/content/Context;

    iget v2, p0, Lqj6;->v:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lqj6;->C0(Lcom/google/android/exoplayer2/PlaybackException;Landroid/content/Context;Z)Lqj6$a;

    move-result-object v1

    iget-object v2, p0, Lqj6;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lej6;->a()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    iget-wide v5, p0, Lqj6;->d:J

    sub-long/2addr p1, v5

    invoke-static {v3, p1, p2}, Lfi6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, Lqj6$a;->a:I

    invoke-static {p1, p2}, Lhi6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, Lqj6$a;->b:I

    invoke-static {p1, p2}, Lii6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    invoke-static {p1, v0}, Lji6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    invoke-static {p1}, Lki6;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object p1

    invoke-static {v2, p1}, Lrh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    iput-boolean v4, p0, Lqj6;->A:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lqj6;->n:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method

.method public final L0(Lcom/google/android/exoplayer2/t;Lnb$b;J)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Lqj6;->u:Z

    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lqj6;->w:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lnb$b;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-boolean v1, p0, Lqj6;->w:Z

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lqj6;->T0(Lcom/google/android/exoplayer2/t;)I

    move-result p1

    iget p2, p0, Lqj6;->l:I

    if-eq p2, p1, :cond_3

    iput p1, p0, Lqj6;->l:I

    iput-boolean v1, p0, Lqj6;->A:Z

    iget-object p1, p0, Lqj6;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lfj6;->a()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    iget v0, p0, Lqj6;->l:I

    invoke-static {p2, v0}, Lvi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    iget-wide v0, p0, Lqj6;->d:J

    sub-long/2addr p3, v0

    invoke-static {p2, p3, p4}, Lwi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p0

    invoke-static {p0}, Lxi6;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object p0

    invoke-static {p1, p0}, Lsh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_3
    return-void
.end method

.method public final M0(Lcom/google/android/exoplayer2/t;Lnb$b;J)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lnb$b;->a(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getCurrentTracks()Lcom/google/android/exoplayer2/b0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b0;->c(I)Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/b0;->c(I)Z

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/b0;->c(I)Z

    move-result p1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0, p3, p4, v1, v2}, Lqj6;->R0(JLcom/google/android/exoplayer2/k;I)V

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p3, p4, v1, v2}, Lqj6;->N0(JLcom/google/android/exoplayer2/k;I)V

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0, p3, p4, v1, v2}, Lqj6;->P0(JLcom/google/android/exoplayer2/k;I)V

    :cond_3
    iget-object p1, p0, Lqj6;->o:Lqj6$b;

    invoke-virtual {p0, p1}, Lqj6;->w0(Lqj6$b;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lqj6;->o:Lqj6$b;

    iget-object p2, p1, Lqj6$b;->a:Lcom/google/android/exoplayer2/k;

    iget v0, p2, Lcom/google/android/exoplayer2/k;->s:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget p1, p1, Lqj6$b;->b:I

    invoke-virtual {p0, p3, p4, p2, p1}, Lqj6;->R0(JLcom/google/android/exoplayer2/k;I)V

    iput-object v1, p0, Lqj6;->o:Lqj6$b;

    :cond_4
    iget-object p1, p0, Lqj6;->p:Lqj6$b;

    invoke-virtual {p0, p1}, Lqj6;->w0(Lqj6$b;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lqj6;->p:Lqj6$b;

    iget-object p2, p1, Lqj6$b;->a:Lcom/google/android/exoplayer2/k;

    iget p1, p1, Lqj6$b;->b:I

    invoke-virtual {p0, p3, p4, p2, p1}, Lqj6;->N0(JLcom/google/android/exoplayer2/k;I)V

    iput-object v1, p0, Lqj6;->p:Lqj6$b;

    :cond_5
    iget-object p1, p0, Lqj6;->q:Lqj6$b;

    invoke-virtual {p0, p1}, Lqj6;->w0(Lqj6$b;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lqj6;->q:Lqj6$b;

    iget-object p2, p1, Lqj6$b;->a:Lcom/google/android/exoplayer2/k;

    iget p1, p1, Lqj6$b;->b:I

    invoke-virtual {p0, p3, p4, p2, p1}, Lqj6;->P0(JLcom/google/android/exoplayer2/k;I)V

    iput-object v1, p0, Lqj6;->q:Lqj6$b;

    :cond_6
    return-void
.end method

.method public final N0(JLcom/google/android/exoplayer2/k;I)V
    .locals 6

    iget-object v0, p0, Lqj6;->s:Lcom/google/android/exoplayer2/k;

    invoke-static {v0, p3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqj6;->s:Lcom/google/android/exoplayer2/k;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    iput-object p3, p0, Lqj6;->s:Lcom/google/android/exoplayer2/k;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lqj6;->S0(IJLcom/google/android/exoplayer2/k;I)V

    return-void
.end method

.method public O(Lnb$a;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 0

    iget p1, p3, Lih6;->a:I

    iput p1, p0, Lqj6;->v:I

    return-void
.end method

.method public final O0(Lcom/google/android/exoplayer2/t;Lnb$b;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lnb$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lnb$b;->c(I)Lnb$a;

    move-result-object v0

    iget-object v1, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iget-object v0, v0, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v1, v0}, Lqj6;->Q0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lnb$b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getCurrentTracks()Lcom/google/android/exoplayer2/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b0;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lqj6;->A0(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbi6;->a(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v0

    invoke-static {p1}, Lqj6;->B0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I

    move-result p1

    invoke-static {v0, p1}, Lci6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_1
    const/16 p1, 0x3f3

    invoke-virtual {p2, p1}, Lnb$b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lqj6;->z:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lqj6;->z:I

    :cond_2
    return-void
.end method

.method public final P0(JLcom/google/android/exoplayer2/k;I)V
    .locals 6

    iget-object v0, p0, Lqj6;->t:Lcom/google/android/exoplayer2/k;

    invoke-static {v0, p3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqj6;->t:Lcom/google/android/exoplayer2/k;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    iput-object p3, p0, Lqj6;->t:Lcom/google/android/exoplayer2/k;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lqj6;->S0(IJLcom/google/android/exoplayer2/k;I)V

    return-void
.end method

.method public final Q0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)V
    .locals 5

    iget-object v0, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lqj6;->f:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    iget-object p2, p0, Lqj6;->f:Lcom/google/android/exoplayer2/a0$b;

    iget p2, p2, Lcom/google/android/exoplayer2/a0$b;->d:I

    iget-object v1, p0, Lqj6;->e:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    iget-object p1, p0, Lqj6;->e:Lcom/google/android/exoplayer2/a0$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/a0$d;->d:Lcom/google/android/exoplayer2/n;

    invoke-static {p1}, Lqj6;->G0(Lcom/google/android/exoplayer2/n;)I

    move-result p1

    invoke-static {v0, p1}, Lyh6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p0, Lqj6;->e:Lcom/google/android/exoplayer2/a0$d;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/a0$d;->o:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/a0$d;->m:Z

    if-nez p2, :cond_2

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/a0$d;->j:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0$d;->i()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lqj6;->e:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0$d;->g()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lzh6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_2
    iget-object p1, p0, Lqj6;->e:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0$d;->i()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move p1, p2

    :goto_0
    invoke-static {v0, p1}, Lai6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean p2, p0, Lqj6;->A:Z

    return-void
.end method

.method public final R0(JLcom/google/android/exoplayer2/k;I)V
    .locals 6

    iget-object v0, p0, Lqj6;->r:Lcom/google/android/exoplayer2/k;

    invoke-static {v0, p3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqj6;->r:Lcom/google/android/exoplayer2/k;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    iput-object p3, p0, Lqj6;->r:Lcom/google/android/exoplayer2/k;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lqj6;->S0(IJLcom/google/android/exoplayer2/k;I)V

    return-void
.end method

.method public final S0(IJLcom/google/android/exoplayer2/k;I)V
    .locals 2

    invoke-static {p1}, Laj6;->a(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Lqj6;->d:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lvh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_9

    invoke-static {p1, p2}, Lhj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-static {p5}, Lqj6;->H0(I)I

    move-result p3

    invoke-static {p1, p3}, Ljj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p3, p4, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-static {p1, p3}, Lkj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_0
    iget-object p3, p4, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-static {p1, p3}, Llh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_1
    iget-object p3, p4, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Lmh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_2
    iget p3, p4, Lcom/google/android/exoplayer2/k;->i:I

    const/4 p5, -0x1

    if-eq p3, p5, :cond_3

    invoke-static {p1, p3}, Lnh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget p3, p4, Lcom/google/android/exoplayer2/k;->r:I

    if-eq p3, p5, :cond_4

    invoke-static {p1, p3}, Loh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget p3, p4, Lcom/google/android/exoplayer2/k;->s:I

    if-eq p3, p5, :cond_5

    invoke-static {p1, p3}, Lph6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    iget p3, p4, Lcom/google/android/exoplayer2/k;->z:I

    if-eq p3, p5, :cond_6

    invoke-static {p1, p3}, Lqh6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget p3, p4, Lcom/google/android/exoplayer2/k;->A:I

    if-eq p3, p5, :cond_7

    invoke-static {p1, p3}, Lgi6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget-object p3, p4, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    if-eqz p3, :cond_8

    invoke-static {p3}, Lqj6;->D0(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Lri6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_8

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lcj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8
    iget p3, p4, Lcom/google/android/exoplayer2/k;->t:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_a

    invoke-static {p1, p3}, Lgj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_0

    :cond_9
    const/4 p3, 0x0

    invoke-static {p1, p3}, Lhj6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_a
    :goto_0
    iput-boolean p2, p0, Lqj6;->A:Z

    iget-object p0, p0, Lqj6;->c:Landroid/media/metrics/PlaybackSession;

    invoke-static {p1}, Lij6;->a(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-static {p0, p1}, Lyi6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public final T0(Lcom/google/android/exoplayer2/t;)I
    .locals 3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getPlaybackState()I

    move-result v0

    iget-boolean v1, p0, Lqj6;->u:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    iget-boolean v1, p0, Lqj6;->w:Z

    if-eqz v1, :cond_1

    const/16 p0, 0xd

    return p0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 p0, 0xb

    return p0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget p0, p0, Lqj6;->l:I

    if-eqz p0, :cond_6

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x7

    return p0

    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getPlaybackSuppressionReason()I

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xa

    goto :goto_0

    :cond_5
    const/4 p0, 0x6

    :goto_0
    return p0

    :cond_6
    :goto_1
    return v2

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getPlaybackSuppressionReason()I

    move-result p0

    if-eqz p0, :cond_9

    const/16 v2, 0x9

    :cond_9
    return v2

    :cond_a
    const/4 p1, 0x1

    if-ne v0, p1, :cond_b

    iget p1, p0, Lqj6;->l:I

    if-eqz p1, :cond_b

    const/16 p0, 0xc

    return p0

    :cond_b
    iget p0, p0, Lqj6;->l:I

    return p0
.end method

.method public V(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    iput-object p2, p0, Lqj6;->n:Lcom/google/android/exoplayer2/PlaybackException;

    return-void
.end method

.method public W(Lnb$a;Lju1;)V
    .locals 1

    iget p1, p0, Lqj6;->x:I

    iget v0, p2, Lju1;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lqj6;->x:I

    iget p1, p0, Lqj6;->y:I

    iget p2, p2, Lju1;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lqj6;->y:I

    return-void
.end method

.method public a0(Lnb$a;Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Lqj6;->u:Z

    :cond_0
    iput p4, p0, Lqj6;->k:I

    return-void
.end method

.method public b0(Lnb$a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d0(Lnb$a;Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lxk6;->b()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lqj6;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lqj6;->y0()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lqj6;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lqj6;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lnb$a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxk6;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lqj6;->y0()V

    iput-object p2, p0, Lqj6;->i:Ljava/lang/String;

    invoke-static {}, Ldj6;->a()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "ExoPlayerLib"

    invoke-static {p2, v0}, Ldi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "2.18.1"

    invoke-static {p2, v0}, Lei6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p2, p1, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iget-object p1, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, p2, p1}, Lqj6;->Q0(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)V

    return-void
.end method

.method public g(Lnb$a;Lf7c;)V
    .locals 3

    iget-object p1, p0, Lqj6;->o:Lqj6$b;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lqj6$b;->a:Lcom/google/android/exoplayer2/k;

    iget v1, v0, Lcom/google/android/exoplayer2/k;->s:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v1, p2, Lf7c;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->j0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget p2, p2, Lf7c;->c:I

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/k$b;->Q(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p2

    new-instance v0, Lqj6$b;

    iget v1, p1, Lqj6$b;->b:I

    iget-object p1, p1, Lqj6$b;->c:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Lqj6$b;-><init>(Lcom/google/android/exoplayer2/k;ILjava/lang/String;)V

    iput-object v0, p0, Lqj6;->o:Lqj6$b;

    :cond_0
    return-void
.end method

.method public i(Lnb$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public o0(Lnb$a;IJJ)V
    .locals 5

    iget-object p5, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-eqz p5, :cond_2

    iget-object p6, p0, Lqj6;->b:Ld88;

    iget-object p1, p1, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    invoke-static {p5}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p6, p1, p5}, Ld88;->e(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lqj6;->h:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    iget-object p6, p0, Lqj6;->g:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Lqj6;->h:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    if-nez p5, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    add-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lqj6;->g:Ljava/util/HashMap;

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    int-to-long p2, p2

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public p0(Lnb$a;Lih6;)V
    .locals 5

    iget-object v0, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lqj6$b;

    iget-object v1, p2, Lih6;->c:Lcom/google/android/exoplayer2/k;

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/k;

    iget v2, p2, Lih6;->d:I

    iget-object v3, p0, Lqj6;->b:Ld88;

    iget-object v4, p1, Lnb$a;->b:Lcom/google/android/exoplayer2/a0;

    iget-object p1, p1, Lnb$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {v3, v4, p1}, Ld88;->e(Lcom/google/android/exoplayer2/a0;Lcom/google/android/exoplayer2/source/i$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lqj6$b;-><init>(Lcom/google/android/exoplayer2/k;ILjava/lang/String;)V

    iget p1, p2, Lih6;->b:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lqj6;->q:Lqj6$b;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lqj6;->p:Lqj6$b;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lqj6;->o:Lqj6$b;

    :goto_0
    return-void
.end method

.method public final w0(Lqj6$b;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lqj6$b;->c:Ljava/lang/String;

    iget-object p0, p0, Lqj6;->b:Ld88;

    invoke-interface {p0}, Ld88;->getActiveSessionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final y0()V
    .locals 7

    iget-object v0, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lqj6;->A:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lqj6;->z:I

    invoke-static {v0, v2}, Lni6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lqj6;->x:I

    invoke-static {v0, v2}, Loi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lqj6;->y:I

    invoke-static {v0, v2}, Lpi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lqj6;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lqj6;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Lqi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lqj6;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lqj6;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Lsi6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v2, v0}, Lti6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lqj6;->c:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v2}, Lui6;->a(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Lxh6;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lqj6;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lqj6;->i:Ljava/lang/String;

    iput v1, p0, Lqj6;->z:I

    iput v1, p0, Lqj6;->x:I

    iput v1, p0, Lqj6;->y:I

    iput-object v0, p0, Lqj6;->r:Lcom/google/android/exoplayer2/k;

    iput-object v0, p0, Lqj6;->s:Lcom/google/android/exoplayer2/k;

    iput-object v0, p0, Lqj6;->t:Lcom/google/android/exoplayer2/k;

    iput-boolean v1, p0, Lqj6;->A:Z

    return-void
.end method

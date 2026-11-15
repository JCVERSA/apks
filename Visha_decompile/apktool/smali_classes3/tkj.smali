.class public final Ltkj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ltkj;->a:Ljava/lang/String;

    iput-object p2, p0, Ltkj;->b:Ljava/lang/String;

    iput-object p3, p0, Ltkj;->c:Ljava/lang/String;

    iput-object p4, p0, Ltkj;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, Ltkj;->g:Z

    iput-boolean p8, p0, Ltkj;->e:Z

    iput-boolean p10, p0, Ltkj;->f:Z

    iput-boolean p11, p0, Ltkj;->h:Z

    invoke-static {p2}, Lbue;->j(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ltkj;->i:Z

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Ltkj;
    .locals 13

    move-object/from16 v4, p3

    new-instance v12, Ltkj;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    const-string v2, "adaptive-playback"

    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lkfh;->a:I

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    if-eqz v4, :cond_1

    const-string v2, "tunneled-playback"

    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    if-nez p8, :cond_2

    if-eqz v4, :cond_3

    const-string v2, "secure-playback"

    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v10, v0

    goto :goto_2

    :cond_3
    move v10, v1

    :goto_2
    sget v2, Lkfh;->a:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_4

    if-eqz v4, :cond_4

    const-string v2, "detached-surface"

    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "OPPO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v11, v1

    goto :goto_3

    :cond_5
    move v11, v0

    :goto_3
    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v11}, Ltkj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V

    return-object v12
.end method

.method public static i(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 3

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    sget v2, Lkfh;->a:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    add-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p2, p0

    mul-int/2addr p2, p0

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static k(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 2

    invoke-static {p0, p1, p2}, Ltkj;->i(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Ltkj;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2}, Ltkj;->i(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lerj;Lerj;)Lg1j;
    .locals 9

    const/4 v1, 0x2

    iget-object v4, p1, Lerj;->o:Ljava/lang/String;

    iget-object v5, p2, Lerj;->o:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v5, v4, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-boolean v6, p0, Ltkj;->i:Z

    if-eqz v6, :cond_9

    iget v6, p1, Lerj;->y:I

    iget v7, p2, Lerj;->y:I

    if-eq v6, v7, :cond_1

    or-int/lit16 v4, v4, 0x400

    :cond_1
    iget-boolean v6, p0, Ltkj;->e:Z

    if-nez v6, :cond_3

    iget v6, p1, Lerj;->v:I

    iget v7, p2, Lerj;->v:I

    if-ne v6, v7, :cond_2

    iget v6, p1, Lerj;->w:I

    iget v7, p2, Lerj;->w:I

    if-eq v6, v7, :cond_3

    :cond_2
    or-int/lit16 v4, v4, 0x200

    :cond_3
    iget-object v6, p1, Lerj;->C:Lh6j;

    invoke-static {v6}, Lh6j;->g(Lh6j;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p2, Lerj;->C:Lh6j;

    invoke-static {v7}, Lh6j;->g(Lh6j;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    iget-object v7, p2, Lerj;->C:Lh6j;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    or-int/lit16 v4, v4, 0x800

    :cond_5
    iget-object v6, p0, Ltkj;->a:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "SM-T230"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, p2}, Lerj;->d(Lerj;)Z

    move-result v7

    if-nez v7, :cond_6

    or-int/2addr v4, v1

    :cond_6
    if-nez v4, :cond_8

    new-instance v7, Lg1j;

    invoke-virtual {p1, p2}, Lerj;->d(Lerj;)Z

    move-result v0

    if-eq v5, v0, :cond_7

    move v4, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    move v4, v0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lg1j;-><init>(Ljava/lang/String;Lerj;Lerj;II)V

    return-object v7

    :cond_8
    move v5, v4

    goto/16 :goto_3

    :cond_9
    iget v5, p1, Lerj;->E:I

    iget v6, p2, Lerj;->E:I

    if-eq v5, v6, :cond_a

    or-int/lit16 v4, v4, 0x1000

    :cond_a
    iget v5, p1, Lerj;->F:I

    iget v6, p2, Lerj;->F:I

    if-eq v5, v6, :cond_b

    or-int/lit16 v4, v4, 0x2000

    :cond_b
    iget v5, p1, Lerj;->G:I

    iget v6, p2, Lerj;->G:I

    if-eq v5, v6, :cond_c

    or-int/lit16 v4, v4, 0x4000

    :cond_c
    if-nez v4, :cond_e

    iget-object v5, p0, Ltkj;->b:Ljava/lang/String;

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lqlj;->a:Ljava/util/HashMap;

    invoke-static {p1}, Lvcg;->a(Lerj;)Landroid/util/Pair;

    move-result-object v5

    invoke-static {p2}, Lvcg;->a(Lerj;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_e

    if-eq v6, v7, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, p0, Ltkj;->a:Ljava/lang/String;

    new-instance v6, Lg1j;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lg1j;-><init>(Ljava/lang/String;Lerj;Lerj;II)V

    return-object v6

    :cond_e
    :goto_2
    invoke-virtual {p1, p2}, Lerj;->d(Lerj;)Z

    move-result v5

    if-nez v5, :cond_f

    or-int/lit8 v4, v4, 0x20

    :cond_f
    iget-object v5, p0, Ltkj;->b:Ljava/lang/String;

    const-string v6, "audio/opus"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    or-int/2addr v4, v1

    :cond_10
    if-nez v4, :cond_8

    iget-object v1, p0, Ltkj;->a:Ljava/lang/String;

    new-instance v6, Lg1j;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lg1j;-><init>(Ljava/lang/String;Lerj;Lerj;II)V

    return-object v6

    :goto_3
    iget-object v1, p0, Ltkj;->a:Ljava/lang/String;

    new-instance v6, Lg1j;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lg1j;-><init>(Ljava/lang/String;Lerj;Lerj;II)V

    return-object v6
.end method

.method public final d(Lerj;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ltkj;->n(Lerj;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Ltkj;->l(Lerj;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ltkj;->m(Lerj;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final e(Lerj;)Z
    .locals 7

    invoke-virtual {p0, p1}, Ltkj;->n(Lerj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ltkj;->l(Lerj;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Ltkj;->m(Lerj;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Ltkj;->i:Z

    if-eqz v2, :cond_5

    iget v1, p1, Lerj;->v:I

    if-lez v1, :cond_4

    iget v2, p1, Lerj;->w:I

    if-gtz v2, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p1, Lerj;->x:F

    float-to-double v3, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Ltkj;->g(IID)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0

    :cond_5
    iget v2, p1, Lerj;->F:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v4, p0, Ltkj;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v4, :cond_6

    const-string p1, "sampleRate.caps"

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    if-nez v4, :cond_7

    const-string p1, "sampleRate.aCaps"

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sampleRate.support, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    iget p1, p1, Lerj;->E:I

    if-eq p1, v3, :cond_11

    iget-object v2, p0, Ltkj;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v2, :cond_9

    const-string p1, "channelCount.caps"

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v2

    if-nez v2, :cond_a

    const-string p1, "channelCount.aCaps"

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    iget-object v3, p0, Ltkj;->a:Ljava/lang/String;

    iget-object v4, p0, Ltkj;->b:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v2

    if-gt v2, v0, :cond_f

    sget v5, Lkfh;->a:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_b

    if-lez v2, :cond_b

    goto/16 :goto_2

    :cond_b
    const-string v5, "audio/mpeg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/3gpp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/amr-wb"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/vorbis"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/opus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/raw"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/flac"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/g711-alaw"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/g711-mlaw"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/gsm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    const-string v5, "audio/ac3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v4, 0x6

    goto :goto_1

    :cond_d
    const-string v5, "audio/eac3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x10

    goto :goto_1

    :cond_e
    const/16 v4, 0x1e

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecInfo"

    invoke-static {v3, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :cond_f
    :goto_2
    if-ge v2, p1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelCount.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    return v0

    :cond_11
    move v1, v0

    :goto_3
    return v1
.end method

.method public final f(Lerj;)Z
    .locals 1

    iget-boolean v0, p0, Ltkj;->i:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Ltkj;->e:Z

    return p0

    :cond_0
    sget-object p0, Lqlj;->a:Ljava/util/HashMap;

    invoke-static {p1}, Lvcg;->a(Lerj;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x2a

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final g(IID)Z
    .locals 8

    iget-object v0, p0, Ltkj;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sizeAndRate.caps"

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    return v1

    :cond_1
    sget v2, Lkfh;->a:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    const-string v5, "@"

    const-string v6, "x"

    if-lt v2, v3, :cond_4

    invoke-static {v0, p1, p2, p3, p4}, Lblj;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeAndRate.cover, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Ltkj;->k(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_8

    if-ge p1, p2, :cond_7

    iget-object v2, p0, Ltkj;->a:Ljava/lang/String;

    const-string v3, "OMX.MTK.VIDEO.DECODER.HEVC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "mcv5a"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    invoke-static {v0, p2, p1, p3, p4}, Ltkj;->k(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ltkj;->b:Ljava/lang/String;

    sget-object p2, Lkfh;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AssumedSupport ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecInfo"

    invoke-static {p1, p0}, Lzrg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeAndRate.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_2
    return v4
.end method

.method public final h()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 0

    iget-object p0, p0, Ltkj;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_1
    return-object p0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lkfh;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSupport ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltkj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ltkj;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecInfo"

    invoke-static {p1, p0}, Lzrg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final l(Lerj;Z)Z
    .locals 11

    sget-object v0, Lqlj;->a:Ljava/util/HashMap;

    invoke-static {p1}, Lvcg;->a(Lerj;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p1, Lerj;->o:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "video/hevc"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const-string v5, "video/mv-hevc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Ltkj;->c:Ljava/lang/String;

    invoke-static {v6}, Lbue;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p1, Lerj;->r:Ljava/util/List;

    invoke-static {v0}, Ljzh;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget v6, Lkfh;->a:I

    const-string v6, "\\."

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lerj;->C:Lh6j;

    invoke-static {v0, v5, v6}, Lvcg;->b(Ljava/lang/String;[Ljava/lang/String;Lh6j;)Landroid/util/Pair;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_1a

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v6, "video/dolby-vision"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Ltkj;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x631b55f6

    if-eq v9, v10, :cond_5

    const v10, -0x63185e82

    if-eq v9, v10, :cond_4

    const v10, 0x4f62373a

    if-eq v9, v10, :cond_3

    goto :goto_1

    :cond_3
    const-string v9, "video/avc"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v4

    goto :goto_1

    :cond_5
    const-string v9, "video/av01"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v7

    :cond_6
    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v7, :cond_7

    goto :goto_3

    :cond_7
    move v5, v7

    :goto_2
    move v0, v8

    goto :goto_3

    :cond_8
    move v5, v6

    goto :goto_2

    :cond_9
    :goto_3
    iget-boolean v1, p0, Ltkj;->i:Z

    if-nez v1, :cond_a

    const/16 v1, 0x2a

    if-ne v5, v1, :cond_1a

    move v5, v1

    :cond_a
    invoke-virtual {p0}, Ltkj;->h()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v1

    sget v2, Lkfh;->a:I

    const/16 v9, 0x17

    if-gt v2, v9, :cond_16

    iget-object v2, p0, Ltkj;->b:Ljava/lang/String;

    const-string v9, "video/x-vnd.on2.vp9"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    array-length v2, v1

    if-nez v2, :cond_16

    iget-object v1, p0, Ltkj;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_b
    move v1, v8

    :goto_4
    const v2, 0xaba9500

    if-lt v1, v2, :cond_c

    const/16 v6, 0x400

    goto :goto_5

    :cond_c
    const v2, 0x7270e00

    if-lt v1, v2, :cond_d

    const/16 v6, 0x200

    goto :goto_5

    :cond_d
    const v2, 0x3938700

    if-lt v1, v2, :cond_e

    const/16 v6, 0x100

    goto :goto_5

    :cond_e
    const v2, 0x1c9c380

    if-lt v1, v2, :cond_f

    const/16 v6, 0x80

    goto :goto_5

    :cond_f
    const v2, 0x112a880

    if-lt v1, v2, :cond_10

    const/16 v6, 0x40

    goto :goto_5

    :cond_10
    const v2, 0xb71b00

    if-lt v1, v2, :cond_11

    const/16 v6, 0x20

    goto :goto_5

    :cond_11
    const v2, 0x6ddd00

    if-lt v1, v2, :cond_12

    const/16 v6, 0x10

    goto :goto_5

    :cond_12
    const v2, 0x36ee80

    if-lt v1, v2, :cond_13

    goto :goto_5

    :cond_13
    const v2, 0x1b7740

    if-lt v1, v2, :cond_14

    const/4 v6, 0x4

    goto :goto_5

    :cond_14
    const v2, 0xc3500

    if-lt v1, v2, :cond_15

    move v6, v7

    goto :goto_5

    :cond_15
    move v6, v4

    :goto_5
    new-array v1, v4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    new-instance v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    iput v4, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput v6, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    aput-object v2, v1, v8

    :cond_16
    array-length v2, v1

    move v6, v8

    :goto_6
    if-ge v6, v2, :cond_19

    aget-object v9, v1, v6

    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v5, :cond_18

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v9, v0, :cond_17

    if-nez p2, :cond_18

    :cond_17
    iget-object v9, p0, Ltkj;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    if-ne v5, v7, :cond_1a

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "sailfish"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    const-string v10, "marlin"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_18
    add-int/2addr v6, v4

    goto :goto_6

    :cond_19
    iget-object p1, p1, Lerj;->k:Ljava/lang/String;

    iget-object p2, p0, Ltkj;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codec.profileLevel, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltkj;->j(Ljava/lang/String;)V

    return v8

    :cond_1a
    :goto_7
    return v4
.end method

.method public final m(Lerj;)Z
    .locals 2

    iget-object v0, p1, Lerj;->o:Ljava/lang/String;

    const-string v1, "audio/flac"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lerj;->G:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    sget p1, Lkfh;->a:I

    const/16 v0, 0x22

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Ltkj;->a:Ljava/lang/String;

    const-string p1, "c2.android.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final n(Lerj;)Z
    .locals 1

    iget-object p0, p0, Ltkj;->b:Ljava/lang/String;

    iget-object v0, p1, Lerj;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lqlj;->b(Lerj;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltkj;->a:Ljava/lang/String;

    return-object p0
.end method

.class public final Landroidx/media3/transformer/DefaultEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/Codec$EncoderFactory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/DefaultEncoderFactory$Builder;,
        Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;,
        Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;,
        Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUDIO_BITRATE:I = 0x20000

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final PRIORITY_BEST_EFFORT:I = 0x1


# instance fields
.field private final codecPriority:I

.field private final context:Landroid/content/Context;

.field private final enableFallback:Z

.field private final requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

.field private final requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

.field private final videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->access$100(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->context:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->access$200(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroidx/media3/transformer/EncoderSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;

    .line 5
    invoke-static {p1}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->access$300(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroidx/media3/transformer/VideoEncoderSettings;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    .line 6
    invoke-static {p1}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->access$400(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Landroidx/media3/transformer/AudioEncoderSettings;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    .line 7
    invoke-static {p1}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->access$500(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->enableFallback:Z

    .line 8
    invoke-static {p1}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->access$600(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)I

    move-result p1

    iput p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->codecPriority:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;Landroidx/media3/transformer/DefaultEncoderFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/transformer/DefaultEncoderFactory;-><init>(Landroidx/media3/transformer/DefaultEncoderFactory$Builder;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/DefaultEncoderFactory;->lambda$filterEncodersByBitrateMode$2(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method private static adjustMediaFormatForEncoderPerformanceSettings(Landroid/media/MediaFormat;)V
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "priority"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    const-string v2, "operating-rate"

    if-ne v0, v1, :cond_1

    const/16 v0, 0x1e

    invoke-virtual {p0, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/media3/transformer/DefaultEncoderFactory;->deviceNeedsLowerOperatingRateAvoidingOverflowWorkaround()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const v0, 0x7fffffff

    invoke-virtual {p0, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static adjustMediaFormatForH264EncoderSettings(Landroidx/media3/common/ColorInfo;Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V
    .locals 8
    .param p0    # Landroidx/media3/common/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "profile"

    const/4 v5, -0x1

    const-string v6, "level"

    const-string/jumbo v7, "video/avc"

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-static {v7, p0}, Landroidx/media3/transformer/EncoderUtil;->getCodecProfilesForHdrFormat(Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    invoke-static {p1, v7, v3}, Landroidx/media3/transformer/EncoderUtil;->findHighestSupportedEncodingLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v5, :cond_5

    invoke-virtual {p2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, v6, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x1a

    const/4 v1, 0x1

    if-lt v0, p0, :cond_3

    invoke-static {}, Landroidx/media3/transformer/DefaultEncoderFactory;->deviceNeedsNoH264HighProfileWorkaround()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1, v7, v3}, Landroidx/media3/transformer/EncoderUtil;->findHighestSupportedEncodingLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v5, :cond_5

    invoke-virtual {p2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, v6, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    const-string p0, "latency"

    invoke-virtual {p2, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x18

    if-lt v0, p0, :cond_5

    invoke-static {p1, v7, v1}, Landroidx/media3/transformer/EncoderUtil;->findHighestSupportedEncodingLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v5, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-virtual {p2, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, v6, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Landroidx/media3/common/ColorInfo;Landroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/DefaultEncoderFactory;->lambda$filterEncodersByHdrEditingSupport$3(Ljava/lang/String;Landroidx/media3/common/ColorInfo;Landroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;IILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/transformer/DefaultEncoderFactory;->lambda$filterEncodersByResolution$0(Ljava/lang/String;IILandroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method private static createExportException(Landroidx/media3/common/Format;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;
    .locals 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroidx/media3/transformer/ExportException$CodecInfo;

    invoke-virtual {p0}, Landroidx/media3/common/Format;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v1, p0, v2, v3}, Landroidx/media3/transformer/ExportException$CodecInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/16 p0, 0xfa3

    invoke-static {v0, p0, p1}, Landroidx/media3/transformer/ExportException;->createForCodec(Ljava/lang/Throwable;ILandroidx/media3/transformer/ExportException$CodecInfo;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    return-object p0
.end method

.method private static createNoSupportedMimeTypeException(Landroidx/media3/common/Format;Z)Landroidx/media3/transformer/ExportException;
    .locals 4

    const-string v0, "No MIME type is supported by both encoder and muxer."

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Requested HDR colorInfo: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/transformer/ExportException$CodecInfo;

    invoke-virtual {p0}, Landroidx/media3/common/Format;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v2, v3}, Landroidx/media3/transformer/ExportException$CodecInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    const/16 p0, 0xfa3

    invoke-static {v1, p0, v0}, Landroidx/media3/transformer/ExportException;->createForCodec(Ljava/lang/Throwable;ILandroidx/media3/transformer/ExportException$CodecInfo;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/DefaultEncoderFactory;->lambda$filterEncodersByBitrate$1(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method private static deviceNeedsDefaultFrameRateWorkaround()Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "joyeuse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static deviceNeedsLowerOperatingRateAvoidingOverflowWorkaround()Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    const/16 v1, 0x22

    if-gt v0, v1, :cond_1

    invoke-static {}, Lq02;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM8550"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lq02;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM7450"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lq02;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM6450"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lq02;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SC9863A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lq02;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T612"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lq02;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lq02;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static deviceNeedsNoH264HighProfileWorkaround()Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ASUS_X00T_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TC77"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic e(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/DefaultEncoderFactory;->lambda$filterEncodersBySampleRate$4(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method private static filterEncoders(Ljava/util/List;Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const v1, 0x7fffffff

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodecInfo;

    invoke-interface {p1, v4}, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;->getParameterSupportGap(Landroid/media/MediaCodecInfo;)I

    move-result v5

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ge v5, v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_1

    :cond_1
    if-ne v5, v3, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static filterEncodersByBitrate(Ljava/util/List;Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/transformer/w;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/w;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncoders(Ljava/util/List;Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static filterEncodersByBitrateMode(Ljava/util/List;Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/transformer/x;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/x;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncoders(Ljava/util/List;Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static filterEncodersByHdrEditingSupport(Ljava/util/List;Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .param p2    # Landroidx/media3/common/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/ColorInfo;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    invoke-static {p2}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/transformer/y;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/y;-><init>(Ljava/lang/String;Landroidx/media3/common/ColorInfo;)V

    invoke-static {p0, v0}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncoders(Ljava/util/List;Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static filterEncodersByResolution(Ljava/util/List;Ljava/lang/String;II)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/transformer/z;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media3/transformer/z;-><init>(Ljava/lang/String;II)V

    invoke-static {p0, v0}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncoders(Ljava/util/List;Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static filterEncodersBySampleRate(Ljava/util/List;Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/transformer/a0;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/a0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncoders(Ljava/util/List;Landroidx/media3/transformer/DefaultEncoderFactory$EncoderFallbackCost;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static findAudioEncoderWithClosestSupportedFormat(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/media/MediaCodecInfo;",
            ">;)",
            "Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {p1, v0, v1}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncodersBySampleRate(Ljava/util/List;Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodecInfo;

    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {p1, v0, v1}, Landroidx/media3/transformer/EncoderUtil;->getClosestSupportedSampleRate(Landroid/media/MediaCodecInfo;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    new-instance v0, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;

    invoke-direct {v0, p1, p0}, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;-><init>(Landroid/media/MediaCodecInfo;Landroidx/media3/common/Format;)V

    return-object v0
.end method

.method private static findVideoEncoderWithClosestSupportedFormat(Landroidx/media3/common/Format;Landroidx/media3/transformer/VideoEncoderSettings;Landroidx/media3/transformer/EncoderSelector;Z)Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Landroidx/media3/transformer/EncoderSelector;->selectEncoderInfos(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    new-instance p3, Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaCodecInfo;

    invoke-direct {p3, p2, p0, p1}, Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;-><init>(Landroid/media/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/transformer/VideoEncoderSettings;)V

    return-object p3

    :cond_1
    iget-object p3, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {p2, v0, p3}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncodersByHdrEditingSupport(Ljava/util/List;Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    return-object v2

    :cond_2
    iget p3, p0, Landroidx/media3/common/Format;->width:I

    iget v3, p0, Landroidx/media3/common/Format;->height:I

    invoke-static {p2, v0, p3, v3}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncodersByResolution(Ljava/util/List;Ljava/lang/String;II)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    return-object v2

    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/MediaCodecInfo;

    iget v3, p0, Landroidx/media3/common/Format;->width:I

    iget v4, p0, Landroidx/media3/common/Format;->height:I

    invoke-static {p3, v0, v3, v4}, Landroidx/media3/transformer/EncoderUtil;->getSupportedResolution(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)Landroid/util/Size;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Size;

    iget-boolean v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->enableHighQualityTargeting:Z

    const/4 v4, -0x1

    if-nez v3, :cond_6

    iget v3, p1, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    iget v3, p0, Landroidx/media3/common/Format;->averageBitrate:I

    if-eq v3, v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v3, v5, v6}, Landroidx/media3/transformer/DefaultEncoderFactory;->getSuggestedBitrate(IIF)I

    move-result v3

    :goto_0
    invoke-static {p2, v0, v3}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncodersByBitrate(Ljava/util/List;Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    return-object v2

    :cond_6
    move v3, v4

    :cond_7
    iget v5, p1, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    invoke-static {p2, v0, v5}, Landroidx/media3/transformer/DefaultEncoderFactory;->filterEncodersByBitrateMode(Ljava/util/List;Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p1}, Landroidx/media3/transformer/VideoEncoderSettings;->buildUpon()Landroidx/media3/transformer/VideoEncoderSettings$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaCodecInfo;

    iget-boolean v6, p1, Landroidx/media3/transformer/VideoEncoderSettings;->enableHighQualityTargeting:Z

    if-eqz v6, :cond_9

    new-instance v3, Landroidx/media3/transformer/DeviceMappedEncoderBitrateProvider;

    invoke-direct {v3}, Landroidx/media3/transformer/DeviceMappedEncoderBitrateProvider;-><init>()V

    invoke-virtual {p2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    iget p0, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v3, v6, v7, p3, p0}, Landroidx/media3/transformer/DeviceMappedEncoderBitrateProvider;->getBitrate(Ljava/lang/String;IIF)I

    move-result v3

    invoke-virtual {v2, v1}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->experimentalSetEnableHighQualityTargeting(Z)Landroidx/media3/transformer/VideoEncoderSettings$Builder;

    :cond_9
    invoke-static {p2, v0}, Landroidx/media3/transformer/EncoderUtil;->getSupportedBitrateRange(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/util/Range;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->setBitrate(I)Landroidx/media3/transformer/VideoEncoderSettings$Builder;

    invoke-virtual {v5, p0}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    iget p0, p1, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    if-eq p0, v4, :cond_a

    iget p1, p1, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    if-eq p1, v4, :cond_a

    invoke-static {p2, v0, p0}, Landroidx/media3/transformer/EncoderUtil;->findHighestSupportedEncodingLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;I)I

    move-result p0

    if-le p1, p0, :cond_b

    :cond_a
    invoke-virtual {v2, v4, v4}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->setEncodingProfileLevel(II)Landroidx/media3/transformer/VideoEncoderSettings$Builder;

    :cond_b
    new-instance p0, Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    invoke-virtual {v2}, Landroidx/media3/transformer/VideoEncoderSettings$Builder;->build()Landroidx/media3/transformer/VideoEncoderSettings;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;-><init>(Landroid/media/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/transformer/VideoEncoderSettings;)V

    return-object p0
.end method

.method private static getSuggestedBitrate(IIF)I
    .locals 2

    mul-int/2addr p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-double p0, p0

    const-wide v0, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static synthetic lambda$filterEncodersByBitrate$1(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p2, p0}, Landroidx/media3/transformer/EncoderUtil;->getSupportedBitrateRange(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Landroid/util/Range;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$filterEncodersByBitrateMode$2(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p2, p0, p1}, Landroidx/media3/transformer/EncoderUtil;->isBitrateModeSupported(Landroid/media/MediaCodecInfo;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method private static synthetic lambda$filterEncodersByHdrEditingSupport$3(Ljava/lang/String;Landroidx/media3/common/ColorInfo;Landroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/ColorInfo;

    invoke-static {p2, p0, p1}, Landroidx/media3/transformer/EncoderUtil;->isHdrEditingSupported(Landroid/media/MediaCodecInfo;Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method private static synthetic lambda$filterEncodersByResolution$0(Ljava/lang/String;IILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p3, p0, p1, p2}, Landroidx/media3/transformer/EncoderUtil;->getSupportedResolution(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    mul-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p2, p0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$filterEncodersBySampleRate$4(Ljava/lang/String;ILandroid/media/MediaCodecInfo;)I
    .locals 0

    invoke-static {p2, p0, p1}, Landroidx/media3/transformer/EncoderUtil;->getClosestSupportedSampleRate(Landroid/media/MediaCodecInfo;Ljava/lang/String;I)I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public audioNeedsEncoding()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    sget-object v0, Landroidx/media3/transformer/AudioEncoderSettings;->DEFAULT:Landroidx/media3/transformer/AudioEncoderSettings;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic createForAudioEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/Codec;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/DefaultEncoderFactory;->createForAudioEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/DefaultCodec;

    move-result-object p0

    return-object p0
.end method

.method public createForAudioEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/DefaultCodec;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 2
    iget v0, p1, Landroidx/media3/common/Format;->bitrate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/MediaFormatUtil;->createMediaFormatFromFormat(Landroidx/media3/common/Format;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 6
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Landroidx/media3/transformer/EncoderUtil;->getSupportedEncoders(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 9
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaCodecInfo;

    .line 10
    iget-object v5, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    iget v5, v5, Landroidx/media3/transformer/AudioEncoderSettings;->profile:I

    if-eq v5, v1, :cond_3

    move v5, v2

    .line 11
    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 12
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaCodecInfo;

    .line 13
    iget-object v7, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Landroidx/media3/transformer/EncoderUtil;->findSupportedEncodingProfiles(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v7

    iget-object v8, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    iget v8, v8, Landroidx/media3/transformer/AudioEncoderSettings;->profile:I

    .line 14
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 15
    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    iget-object v2, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    iget v2, v2, Landroidx/media3/transformer/AudioEncoderSettings;->profile:I

    const-string v4, "aac-profile"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 17
    :cond_1
    iget-object v2, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    iget v2, v2, Landroidx/media3/transformer/AudioEncoderSettings;->profile:I

    const-string v4, "profile"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x1

    move-object v4, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 18
    iget-boolean v2, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->enableFallback:Z

    if-eqz v2, :cond_4

    .line 19
    invoke-static {p1, v3}, Landroidx/media3/transformer/DefaultEncoderFactory;->findAudioEncoderWithClosestSupportedFormat(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 20
    iget-object v4, v2, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;->encoder:Landroid/media/MediaCodecInfo;

    .line 21
    iget-object p1, v2, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;->supportedFormat:Landroidx/media3/common/Format;

    .line 22
    invoke-static {p1}, Landroidx/media3/common/util/MediaFormatUtil;->createMediaFormatFromFormat(Landroidx/media3/common/Format;)Landroid/media/MediaFormat;

    move-result-object v0

    :cond_4
    move-object v7, p1

    move-object v8, v0

    .line 23
    iget-object p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedAudioEncoderSettings:Landroidx/media3/transformer/AudioEncoderSettings;

    iget p1, p1, Landroidx/media3/transformer/AudioEncoderSettings;->bitrate:I

    if-eq p1, v1, :cond_5

    .line 24
    const-string v0, "bitrate"

    invoke-virtual {v8, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 25
    :cond_5
    new-instance p1, Landroidx/media3/transformer/DefaultCodec;

    iget-object v6, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Landroidx/media3/transformer/DefaultCodec;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;Landroid/media/MediaFormat;Ljava/lang/String;ZLandroid/view/Surface;)V

    return-object p1

    .line 27
    :cond_6
    const-string p0, "No audio media codec found"

    invoke-static {p1, p0}, Landroidx/media3/transformer/DefaultEncoderFactory;->createExportException(Landroidx/media3/common/Format;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0

    .line 28
    :cond_7
    invoke-static {p1, v2}, Landroidx/media3/transformer/DefaultEncoderFactory;->createNoSupportedMimeTypeException(Landroidx/media3/common/Format;Z)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic createForVideoEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/Codec;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/DefaultEncoderFactory;->createForVideoEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/DefaultCodec;

    move-result-object p0

    return-object p0
.end method

.method public createForVideoEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/DefaultCodec;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 2
    iget v0, p1, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/media3/transformer/DefaultEncoderFactory;->deviceNeedsDefaultFrameRateWorkaround()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 4
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 5
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 6
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    if-eq v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 7
    iget v0, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 8
    iget-object v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    iget-object v4, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->videoEncoderSelector:Landroidx/media3/transformer/EncoderSelector;

    iget-boolean v5, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->enableFallback:Z

    .line 10
    invoke-static {p1, v0, v4, v5}, Landroidx/media3/transformer/DefaultEncoderFactory;->findVideoEncoderWithClosestSupportedFormat(Landroidx/media3/common/Format;Landroidx/media3/transformer/VideoEncoderSettings;Landroidx/media3/transformer/EncoderSelector;Z)Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 11
    iget-object v4, v0, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;->encoder:Landroid/media/MediaCodecInfo;

    .line 12
    iget-object v5, v0, Landroidx/media3/transformer/DefaultEncoderFactory$EncoderQueryResult;->supportedFormat:Landroidx/media3/common/Format;

    .line 13
    iget-object v0, v0, Landroidx/media3/transformer/DefaultEncoderFactory$VideoEncoderQueryResult;->supportedEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    .line 14
    iget-object v6, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    iget-boolean v7, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->enableFallback:Z

    if-eqz v7, :cond_5

    .line 16
    iget v7, v0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    goto :goto_3

    .line 17
    :cond_5
    iget v7, v0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrate:I

    if-eq v7, v3, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget-boolean v7, v0, Landroidx/media3/transformer/VideoEncoderSettings;->enableHighQualityTargeting:Z

    if-eqz v7, :cond_7

    .line 19
    new-instance v7, Landroidx/media3/transformer/DeviceMappedEncoderBitrateProvider;

    invoke-direct {v7}, Landroidx/media3/transformer/DeviceMappedEncoderBitrateProvider;-><init>()V

    .line 20
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    iget v9, v5, Landroidx/media3/common/Format;->width:I

    iget v10, v5, Landroidx/media3/common/Format;->height:I

    iget v11, v5, Landroidx/media3/common/Format;->frameRate:F

    .line 21
    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/media3/transformer/DeviceMappedEncoderBitrateProvider;->getBitrate(Ljava/lang/String;IIF)I

    move-result v7

    goto :goto_3

    .line 22
    :cond_7
    iget v7, v5, Landroidx/media3/common/Format;->averageBitrate:I

    if-eq v7, v3, :cond_8

    goto :goto_3

    .line 23
    :cond_8
    iget v7, v5, Landroidx/media3/common/Format;->width:I

    iget v8, v5, Landroidx/media3/common/Format;->height:I

    iget v9, v5, Landroidx/media3/common/Format;->frameRate:F

    .line 24
    invoke-static {v7, v8, v9}, Landroidx/media3/transformer/DefaultEncoderFactory;->getSuggestedBitrate(IIF)I

    move-result v7

    .line 25
    :goto_3
    invoke-virtual {v5}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    .line 26
    invoke-static {v9}, Landroidx/media3/common/util/MediaFormatUtil;->createMediaFormatFromFormat(Landroidx/media3/common/Format;)Landroid/media/MediaFormat;

    move-result-object v10

    .line 27
    iget v5, v0, Landroidx/media3/transformer/VideoEncoderSettings;->bitrateMode:I

    const-string v7, "bitrate-mode"

    invoke-virtual {v10, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 28
    iget v5, v9, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const-string v7, "frame-rate"

    invoke-virtual {v10, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 29
    iget v5, v0, Landroidx/media3/transformer/VideoEncoderSettings;->profile:I

    const-string v7, "profile"

    const/16 v8, 0x18

    if-eq v5, v3, :cond_9

    iget v11, v0, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    if-eq v11, v3, :cond_9

    sget v11, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v11, v8, :cond_9

    .line 30
    invoke-virtual {v10, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    const-string v5, "level"

    iget v7, v0, Landroidx/media3/transformer/VideoEncoderSettings;->level:I

    invoke-virtual {v10, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_4

    .line 32
    :cond_9
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v5, v8, :cond_a

    iget-object v5, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v5}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 33
    iget-object v5, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 34
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/ColorInfo;

    iget v5, v5, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-static {v6, v5}, Landroidx/media3/transformer/EncoderUtil;->getCodecProfilesForHdrFormat(Ljava/lang/String;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 35
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    :cond_a
    :goto_4
    const-string/jumbo v5, "video/avc"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 37
    iget-object v5, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v5, v4, v10}, Landroidx/media3/transformer/DefaultEncoderFactory;->adjustMediaFormatForH264EncoderSettings(Landroidx/media3/common/ColorInfo;Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    .line 38
    :cond_b
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v7, 0x1f

    const-string v8, "color-format"

    if-lt v5, v7, :cond_d

    iget-object v7, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 39
    invoke-static {v4, v6}, Landroidx/media3/transformer/EncoderUtil;->getSupportedColorFormats(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    const v7, 0x7f00aaa2

    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 41
    invoke-virtual {v10, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_5

    .line 42
    :cond_c
    const-string p0, "Encoding HDR is not supported on this device."

    invoke-static {p1, p0}, Landroidx/media3/transformer/DefaultEncoderFactory;->createExportException(Landroidx/media3/common/Format;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0

    :cond_d
    const p1, 0x7f000789

    .line 43
    invoke-virtual {v10, v8, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_5
    const/16 p1, 0x19

    .line 44
    const-string v6, "i-frame-interval"

    if-lt v5, p1, :cond_e

    .line 45
    iget p1, v0, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    invoke-virtual {v10, v6, p1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_7

    .line 46
    :cond_e
    iget p1, v0, Landroidx/media3/transformer/VideoEncoderSettings;->iFrameIntervalSeconds:F

    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-lez v7, :cond_f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_f

    goto :goto_6

    :cond_f
    float-to-double v7, p1

    .line 47
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    .line 48
    :goto_6
    invoke-virtual {v10, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 49
    :goto_7
    iget p1, v0, Landroidx/media3/transformer/VideoEncoderSettings;->operatingRate:I

    .line 50
    iget v1, v0, Landroidx/media3/transformer/VideoEncoderSettings;->priority:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_12

    if-ne p1, v3, :cond_10

    if-ne v1, v3, :cond_10

    .line 51
    invoke-static {v10}, Landroidx/media3/transformer/DefaultEncoderFactory;->adjustMediaFormatForEncoderPerformanceSettings(Landroid/media/MediaFormat;)V

    goto :goto_8

    :cond_10
    const/4 v3, -0x2

    if-eq p1, v3, :cond_11

    .line 52
    const-string v6, "operating-rate"

    invoke-virtual {v10, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_11
    if-eq v1, v3, :cond_12

    .line 53
    const-string p1, "priority"

    invoke-virtual {v10, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 54
    :cond_12
    :goto_8
    iget-wide v0, v0, Landroidx/media3/transformer/VideoEncoderSettings;->repeatPreviousFrameIntervalUs:J

    const-wide/16 v6, -0x1

    cmp-long p1, v0, v6

    if-eqz p1, :cond_13

    .line 55
    const-string p1, "repeat-previous-frame-after"

    invoke-virtual {v10, p1, v0, v1}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    :cond_13
    const/16 p1, 0x23

    if-lt v5, p1, :cond_14

    .line 56
    iget p1, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->codecPriority:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string v0, "importance"

    invoke-virtual {v10, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 57
    :cond_14
    new-instance p1, Landroidx/media3/transformer/DefaultCodec;

    iget-object v8, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->context:Landroid/content/Context;

    .line 58
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Landroidx/media3/transformer/DefaultCodec;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;Landroid/media/MediaFormat;Ljava/lang/String;ZLandroid/view/Surface;)V

    return-object p1

    .line 59
    :cond_15
    const-string p0, "The requested video encoding format is not supported."

    invoke-static {p1, p0}, Landroidx/media3/transformer/DefaultEncoderFactory;->createExportException(Landroidx/media3/common/Format;Ljava/lang/String;)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0

    .line 60
    :cond_16
    invoke-static {p1, v1}, Landroidx/media3/transformer/DefaultEncoderFactory;->createNoSupportedMimeTypeException(Landroidx/media3/common/Format;Z)Landroidx/media3/transformer/ExportException;

    move-result-object p0

    throw p0
.end method

.method public videoNeedsEncoding()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/transformer/DefaultEncoderFactory;->requestedVideoEncoderSettings:Landroidx/media3/transformer/VideoEncoderSettings;

    sget-object v0, Landroidx/media3/transformer/VideoEncoderSettings;->DEFAULT:Landroidx/media3/transformer/VideoEncoderSettings;

    invoke-virtual {p0, v0}, Landroidx/media3/transformer/VideoEncoderSettings;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

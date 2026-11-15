.class public Lcom/hunantv/media/player/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x3e8

.field public static b:I = 0x320

.field public static c:I = 0x2bc

.field public static d:I = 0x258

.field public static e:I = 0x12c

.field public static f:I = 0xc8

.field public static g:I = 0x64

.field public static h:I = 0x0

.field private static m:Ljava/lang/String; = "video/avc"

.field private static n:Ljava/lang/String; = "video/hevc"

.field private static o:Ljava/lang/String; = "video/mp4v-es"

.field private static p:I = 0x200

.field private static q:I = 0x800

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public i:Landroid/media/MediaCodecInfo;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x200

    or-int/lit8 v0, v0, 0x42

    sput v0, Lcom/hunantv/media/player/e;->r:I

    const/16 v0, 0x800

    or-int/lit8 v1, v0, 0x6e

    sput v1, Lcom/hunantv/media/player/e;->s:I

    or-int/lit8 v1, v0, 0x7a

    sput v1, Lcom/hunantv/media/player/e;->t:I

    or-int/lit16 v0, v0, 0xf4

    sput v0, Lcom/hunantv/media/player/e;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/e;->j:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/e;->l:Z

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)Lcom/hunantv/media/player/e;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    const/4 v0, 0x0

    const-string v1, "ImgoMediaCodecInfo"

    if-eqz p0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "chodison codecInfo.getName is empty"

    :goto_0
    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lcom/hunantv/media/player/e;->j(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chodison ff_profile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",profile:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3}, Lcom/hunantv/media/player/e;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v4, v5, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v4, "chodison codecname:%s,current profile:%s,current level:%d"

    invoke-static {p2, v4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "chodison profile"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "omx."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "c2."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    sget p2, Lcom/hunantv/media/player/e;->g:I

    goto/16 :goto_5

    :cond_3
    const-string p3, "omx.pv"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_1
    sget p2, Lcom/hunantv/media/player/e;->f:I

    goto/16 :goto_5

    :cond_4
    const-string p3, "sw"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const-string p3, "omx.google."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    const-string p3, "omx.ffmpeg."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    const-string p3, "omx.k3.ffmpeg."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_1

    :cond_8
    const-string p3, "omx.avcodec."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_1

    :cond_9
    const-string p3, "omx.ittiam."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    :goto_2
    sget p2, Lcom/hunantv/media/player/e;->h:I

    goto/16 :goto_5

    :cond_a
    const-string p3, "omx.mtk."

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_c

    invoke-static {p0, p1, v3, v0}, Lcom/hunantv/media/player/e;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;IZ)Z

    move-result p2

    if-eqz p2, :cond_b

    sget p2, Lcom/hunantv/media/player/e;->b:I

    goto/16 :goto_5

    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chodison MTK checkProfileSupported failed, rank set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/hunantv/media/player/e;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/hunantv/media/player/e;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, p1, v3, v0}, Lcom/hunantv/media/player/e;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;IZ)Z

    move-result p3

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p3, :cond_10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chodison knownRank checkProfileSupported failed, rank set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/hunantv/media/player/e;->f:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/hunantv/media/player/e;->f:I

    goto :goto_4

    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_f

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chodison no knownRank checkProfileSupported success, rank set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/hunantv/media/player/e;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/hunantv/media/player/e;->c:I

    goto :goto_4

    :cond_f
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chodison no knownRank checkProfileSupported failed, rank set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/hunantv/media/player/e;->d:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p2, Lcom/hunantv/media/player/e;->d:I

    :cond_10
    :goto_4
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GT-N710"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :goto_5
    new-instance p3, Lcom/hunantv/media/player/e;

    invoke-direct {p3}, Lcom/hunantv/media/player/e;-><init>()V

    iput-object p0, p3, Lcom/hunantv/media/player/e;->i:Landroid/media/MediaCodecInfo;

    iput p2, p3, Lcom/hunantv/media/player/e;->j:I

    iput-object p1, p3, Lcom/hunantv/media/player/e;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/player/e;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    iput-boolean p0, p3, Lcom/hunantv/media/player/e;->l:Z

    return-object p3

    :cond_11
    :goto_6
    const-string p0, "chodison ImgoMediaCodecInfo setupCandidate noaccess"

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 2
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "HEVC Unknown 21"

    return-object p0

    :cond_0
    const-string p0, "HEVC Main10"

    return-object p0

    :cond_1
    const-string p0, "HEVC Main"

    return-object p0
.end method

.method public static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Lcom/hunantv/media/player/e;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/hunantv/media/player/e;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v1, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, " max: [%s Profile] [Level %s] (value: %d,%d)"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4
    const-class v0, Lcom/hunantv/media/player/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.Nvidia.h264.decode"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.Nvidia.h264.decode.secure"

    sget v3, Lcom/hunantv/media/player/e;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.Intel.hw_vd.h264"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.Intel.VideoDecoder.AVC"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.qcom.video.decoder.avc"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.ittiam.video.decoder.avc"

    sget v3, Lcom/hunantv/media/player/e;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.SEC.avc.dec"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.SEC.AVC.Decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.SEC.avcdec"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.SEC.avc.sw.dec"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.Exynos.avc.dec"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.Exynos.AVC.Decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.k3.video.decoder.avc"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.IMG.MSVDX.Decoder.AVC"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.TI.DUCATI1.VIDEO.DECODER"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.rk.video_decoder.avc"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.rk.video_decoder.hevc"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.rk.video_decoder.m2v"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.amlogic.avc.decoder.awesome"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.MARVELL.VIDEO.H264DECODER"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.BRCM.vc4.decoder.avc"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.brcm.video.h264.hw.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.brcm.video.h264.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.ST.VFM.H264Dec"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.allwinner.video.decoder.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.MS.AVC.Decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.hantro.81x0.video.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.hisi.video.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.cosmo.video.decoder.avc"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.duos.h264.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.bluestacks.hw.decoder"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.google.h264.decoder"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.google.h264.lc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.k3.ffmpeg.decoder"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.ffmpeg.video.decoder"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.qcom.video.decoder.hevcswvdec"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "OMX.SEC.hevc.sw.dec"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.android.avc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.android.hevc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.qti.avc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.qti.hevc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.mtk.avc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.mtk.hevc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.exynos.avc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;

    const-string v2, "c2.exynos.hevc.decoder"

    sget v3, Lcom/hunantv/media/player/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hunantv/media/player/e;->v:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 6
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/player/e;->b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;IZ)Z
    .locals 11

    .line 7
    const-string v0, "chodison %s don\'t find supported profile:%d(%s profile supported:false)"

    const-string v1, "ImgoMediaCodecInfo"

    const/4 v2, 0x0

    if-eqz p0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move v4, v2

    :goto_0
    array-length v5, v3

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v5, p2, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "chodison %s find profile-level:%d-%s"

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v3, v4

    iget v10, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {p1, v10}, Lcom/hunantv/media/player/e;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "chodison %s find supported profile:%d(%s profile supported:true)"

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1, p2}, Lcom/hunantv/media/player/e;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_1
    array-length v7, v3

    if-nez v7, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "chodison %s hasn\'t valid find supported profile:%d(%s profile supported:true)"

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, p2}, Lcom/hunantv/media/player/e;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v6

    goto :goto_4

    :cond_4
    array-length p3, v3

    if-ne v4, p3, :cond_5

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/hunantv/media/player/e;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v4, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v2, v5

    goto :goto_4

    :cond_6
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "chodison %s getCapabilitiesForType failed,don\'t find supported profile:%d(%s profile supported:false)"

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, p2}, Lcom/hunantv/media/player/e;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v4, "chodison getCapabilitiesForType exception:%s "

    invoke-static {v3, v4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/hunantv/media/player/e;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p3, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return v2
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1000

    if-eq p1, p0, :cond_0

    const-string p0, "HEVC Unknown 24"

    return-object p0

    :cond_0
    const-string p0, "HEVC Main10 HDR10"

    return-object p0

    :cond_1
    const-string p0, "HEVC Main10"

    return-object p0

    :cond_2
    const-string p0, "HEVC Main"

    return-object p0
.end method

.method private static b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 2
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/16 p0, 0x1000

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2000

    if-eq p1, p0, :cond_0

    const-string p0, "HEVC Unknown 29"

    return-object p0

    :cond_0
    const-string p0, "HEVC Main10 HDR10 Plus"

    return-object p0

    :cond_1
    const-string p0, "HEVC Main10 HDR10"

    return-object p0

    :cond_2
    const-string p0, "HEVC Main10"

    return-object p0

    :cond_3
    const-string p0, "HEVC Main"

    return-object p0
.end method

.method public static d(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hunantv/media/player/e;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4

    const/16 p0, 0x8

    if-eq p1, p0, :cond_3

    const/16 p0, 0x10

    if-eq p1, p0, :cond_2

    const/16 p0, 0x20

    if-eq p1, p0, :cond_1

    const/16 p0, 0x40

    if-eq p1, p0, :cond_0

    const-string p0, "AVC Unknown"

    return-object p0

    :cond_0
    const-string p0, "AVC High444"

    return-object p0

    :cond_1
    const-string p0, "AVC High422"

    return-object p0

    :cond_2
    const-string p0, "AVC High10"

    return-object p0

    :cond_3
    const-string p0, "AVC High"

    return-object p0

    :cond_4
    const-string p0, "AVC Extends"

    return-object p0

    :cond_5
    const-string p0, "AVC Main"

    return-object p0

    :cond_6
    const-string p0, "AVC Baseline"

    return-object p0

    :cond_7
    sget-object v0, Lcom/hunantv/media/player/e;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Lcom/hunantv/media/player/e;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v0, Lcom/hunantv/media/player/e;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_9

    sparse-switch p1, :sswitch_data_0

    const-string p0, "MPEG4 Unknown"

    return-object p0

    :sswitch_0
    const-string p0, "MPEG4 AdvancedSimple"

    return-object p0

    :sswitch_1
    const-string p0, "MPEG4 AdvancedScalable"

    return-object p0

    :sswitch_2
    const-string p0, "MPEG4 AdvancedCore"

    return-object p0

    :sswitch_3
    const-string p0, "MPEG4 AdvancedCoding"

    return-object p0

    :sswitch_4
    const-string p0, "MPEG4 CoreScalable"

    return-object p0

    :sswitch_5
    const-string p0, "MPEG4 AdvancedRealTime"

    return-object p0

    :sswitch_6
    const-string p0, "MPEG4 Hybrid"

    return-object p0

    :sswitch_7
    const-string p0, "MPEG4 BasicAnimated"

    return-object p0

    :sswitch_8
    const-string p0, "MPEG4 SimpleFBA"

    return-object p0

    :sswitch_9
    const-string p0, "MPEG4 SimpleFace"

    return-object p0

    :sswitch_a
    const-string p0, "MPEG4 ScalableTexture"

    return-object p0

    :sswitch_b
    const-string p0, "MPEG4 Nbit"

    return-object p0

    :sswitch_c
    const-string p0, "MPEG4 Main"

    return-object p0

    :sswitch_d
    const-string p0, "MPEG4 Core"

    return-object p0

    :cond_9
    const-string p0, "MPEG4 SimpleScalable"

    return-object p0

    :cond_a
    const-string p0, "MPEG4 Simple"

    return-object p0

    :cond_b
    const-string p0, "Unknown"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x40 -> :sswitch_9
        0x80 -> :sswitch_8
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_2
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static e(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sparse-switch p1, :sswitch_data_0

    const-string p0, "0"

    return-object p0

    :sswitch_0
    const-string p0, "H186"

    return-object p0

    :sswitch_1
    const-string p0, "L186"

    return-object p0

    :sswitch_2
    const-string p0, "H183"

    return-object p0

    :sswitch_3
    const-string p0, "L183"

    return-object p0

    :sswitch_4
    const-string p0, "H180"

    return-object p0

    :sswitch_5
    const-string p0, "L180"

    return-object p0

    :sswitch_6
    const-string p0, "H156"

    return-object p0

    :sswitch_7
    const-string p0, "L156"

    return-object p0

    :sswitch_8
    const-string p0, "H153"

    return-object p0

    :sswitch_9
    const-string p0, "L153"

    return-object p0

    :sswitch_a
    const-string p0, "H150"

    return-object p0

    :sswitch_b
    const-string p0, "L150"

    return-object p0

    :sswitch_c
    const-string p0, "H123"

    return-object p0

    :sswitch_d
    const-string p0, "L123"

    return-object p0

    :sswitch_e
    const-string p0, "H120"

    return-object p0

    :sswitch_f
    const-string p0, "L120"

    return-object p0

    :sswitch_10
    const-string p0, "H93"

    return-object p0

    :sswitch_11
    const-string p0, "L93"

    return-object p0

    :sswitch_12
    const-string p0, "H90"

    return-object p0

    :sswitch_13
    const-string p0, "L90"

    return-object p0

    :sswitch_14
    const-string p0, "H63"

    return-object p0

    :sswitch_15
    const-string p0, "L63"

    return-object p0

    :sswitch_16
    const-string p0, "H60"

    return-object p0

    :sswitch_17
    const-string p0, "L60"

    return-object p0

    :cond_0
    const-string p0, "H30"

    return-object p0

    :cond_1
    const-string p0, "L30"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_17
        0x8 -> :sswitch_16
        0x10 -> :sswitch_15
        0x20 -> :sswitch_14
        0x40 -> :sswitch_13
        0x80 -> :sswitch_12
        0x100 -> :sswitch_11
        0x200 -> :sswitch_10
        0x400 -> :sswitch_f
        0x800 -> :sswitch_e
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_b
        0x8000 -> :sswitch_a
        0x10000 -> :sswitch_9
        0x20000 -> :sswitch_8
        0x40000 -> :sswitch_7
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_5
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_3
        0x800000 -> :sswitch_2
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static f(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/hunantv/media/player/e;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "0"

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-eq p1, v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    return-object v2

    :sswitch_0
    const-string p0, "52"

    return-object p0

    :sswitch_1
    const-string p0, "51"

    return-object p0

    :sswitch_2
    const-string p0, "50"

    return-object p0

    :sswitch_3
    const-string p0, "42"

    return-object p0

    :sswitch_4
    const-string p0, "41"

    return-object p0

    :sswitch_5
    const-string p0, "40"

    return-object p0

    :sswitch_6
    const-string p0, "32"

    return-object p0

    :sswitch_7
    const-string p0, "31"

    return-object p0

    :sswitch_8
    const-string p0, "30"

    return-object p0

    :sswitch_9
    const-string p0, "22"

    return-object p0

    :sswitch_a
    const-string p0, "21"

    return-object p0

    :sswitch_b
    const-string p0, "20"

    return-object p0

    :sswitch_c
    const-string p0, "13"

    return-object p0

    :sswitch_d
    const-string p0, "12"

    return-object p0

    :sswitch_e
    const-string p0, "11"

    return-object p0

    :cond_0
    const-string p0, "1b"

    return-object p0

    :cond_1
    const-string p0, "10"

    return-object p0

    :cond_2
    sget-object v0, Lcom/hunantv/media/player/e;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/hunantv/media/player/e;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lcom/hunantv/media/player/e;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    if-eq p1, v1, :cond_a

    const/4 p0, 0x4

    if-eq p1, p0, :cond_9

    const/16 p0, 0x8

    if-eq p1, p0, :cond_8

    const/16 p0, 0x10

    if-eq p1, p0, :cond_7

    const/16 p0, 0x20

    if-eq p1, p0, :cond_6

    const/16 p0, 0x40

    if-eq p1, p0, :cond_5

    const/16 p0, 0x80

    if-eq p1, p0, :cond_4

    return-object v2

    :cond_4
    const-string p0, "5"

    return-object p0

    :cond_5
    const-string p0, "4a"

    return-object p0

    :cond_6
    const-string p0, "4"

    return-object p0

    :cond_7
    const-string p0, "3"

    return-object p0

    :cond_8
    const-string p0, "2"

    return-object p0

    :cond_9
    const-string p0, "1"

    return-object p0

    :cond_a
    const-string p0, "0b"

    return-object p0

    :cond_b
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x20 -> :sswitch_b
        0x40 -> :sswitch_a
        0x80 -> :sswitch_9
        0x100 -> :sswitch_8
        0x200 -> :sswitch_7
        0x400 -> :sswitch_6
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static g(Ljava/lang/String;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private static h(Ljava/lang/String;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x1000

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return p0
.end method

.method private static i(Ljava/lang/String;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x1000

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x2000

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :cond_4
    :goto_0
    return p0
.end method

.method private static j(Ljava/lang/String;I)I
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget-object v0, Lcom/hunantv/media/player/e;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v0, :cond_9

    const/16 p0, 0x42

    if-eq p1, p0, :cond_8

    sget p0, Lcom/hunantv/media/player/e;->r:I

    if-ne p1, p0, :cond_0

    goto :goto_5

    :cond_0
    const/16 p0, 0x4d

    if-ne p1, p0, :cond_1

    :goto_0
    move v1, v7

    goto/16 :goto_6

    :cond_1
    const/16 p0, 0x58

    if-ne p1, p0, :cond_2

    :goto_1
    move v1, v6

    goto/16 :goto_6

    :cond_2
    const/16 p0, 0x64

    if-ne p1, p0, :cond_3

    :goto_2
    move v1, v5

    goto/16 :goto_6

    :cond_3
    const/16 p0, 0x6e

    if-eq p1, p0, :cond_1b

    sget p0, Lcom/hunantv/media/player/e;->s:I

    if-ne p1, p0, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 p0, 0x7a

    if-eq p1, p0, :cond_7

    sget p0, Lcom/hunantv/media/player/e;->t:I

    if-ne p1, p0, :cond_5

    goto :goto_4

    :cond_5
    const/16 p0, 0x90

    if-eq p1, p0, :cond_6

    sget p0, Lcom/hunantv/media/player/e;->u:I

    if-eq p1, p0, :cond_6

    const/16 p0, 0xf4

    if-ne p1, p0, :cond_1a

    :cond_6
    :goto_3
    move v1, v3

    goto/16 :goto_6

    :cond_7
    :goto_4
    move v1, v2

    goto/16 :goto_6

    :cond_8
    :goto_5
    move v1, v4

    goto/16 :goto_6

    :cond_9
    sget-object v0, Lcom/hunantv/media/player/e;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Lcom/hunantv/media/player/e;->i(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_6

    :cond_a
    sget-object v0, Lcom/hunantv/media/player/e;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    if-ne p1, v4, :cond_c

    goto :goto_0

    :cond_c
    const/4 p0, 0x6

    if-ne p1, p0, :cond_d

    goto :goto_3

    :cond_d
    const/16 p0, 0xe

    if-ne p1, p0, :cond_e

    const/16 v1, 0x80

    goto :goto_6

    :cond_e
    const/4 p0, 0x3

    if-ne p1, p0, :cond_f

    goto :goto_2

    :cond_f
    const/4 p0, 0x7

    if-ne p1, p0, :cond_10

    const/16 v1, 0x100

    goto :goto_6

    :cond_10
    if-ne p1, v7, :cond_11

    goto :goto_1

    :cond_11
    const/16 p0, 0xa

    if-ne p1, p0, :cond_12

    const/16 v1, 0x800

    goto :goto_6

    :cond_12
    if-ne p1, v5, :cond_13

    const/16 v1, 0x200

    goto :goto_6

    :cond_13
    if-ne p1, v6, :cond_14

    goto :goto_6

    :cond_14
    const/16 p0, 0xf

    if-ne p1, p0, :cond_15

    const v1, 0x8000

    goto :goto_6

    :cond_15
    const/16 p0, 0xd

    if-ne p1, p0, :cond_16

    const/16 v1, 0x4000

    goto :goto_6

    :cond_16
    const/16 p0, 0x9

    if-ne p1, p0, :cond_17

    const/16 v1, 0x400

    goto :goto_6

    :cond_17
    const/16 p0, 0xc

    if-ne p1, p0, :cond_18

    const/16 v1, 0x2000

    goto :goto_6

    :cond_18
    const/16 p0, 0xb

    if-ne p1, p0, :cond_19

    const/16 v1, 0x1000

    goto :goto_6

    :cond_19
    const/4 p0, 0x5

    if-ne p1, p0, :cond_1a

    goto :goto_4

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_6
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 5
    const-string v0, "ImgoMediaCodecInfo"

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/e;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-eqz v1, :cond_2

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v1, v2

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s->%s"

    iget-object p0, p0, Lcom/hunantv/media/player/e;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2, v5}, Lcom/hunantv/media/player/e;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v3, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    const-string p0, "profile-level: exception"

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

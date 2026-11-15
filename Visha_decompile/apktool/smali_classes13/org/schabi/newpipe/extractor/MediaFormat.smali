.class public final enum Lorg/schabi/newpipe/extractor/MediaFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/MediaFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum AIF:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum AIFF:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum ALAC:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum FLAC:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP2:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WAV:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;


# instance fields
.field public final id:I

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    new-instance v8, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v7, v8

    const-string v5, "mp4"

    const-string v6, "video/mp4"

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "MPEG-4"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v8, v0

    const-string v14, "3gp"

    const-string v15, "video/3gpp"

    const-string v10, "v3GPP"

    const/4 v11, 0x1

    const/16 v12, 0x10

    const-string v13, "3GPP"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v9, v0

    const-string v21, "webm"

    const-string v22, "video/webm"

    const-string v17, "WEBM"

    const/16 v18, 0x2

    const/16 v19, 0x20

    const-string v20, "WebM"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v10, v0

    const-string v28, "m4a"

    const-string v29, "audio/mp4"

    const-string v24, "M4A"

    const/16 v25, 0x3

    const/16 v26, 0x100

    const-string v27, "m4a"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v11, v0

    const-string v17, "webm"

    const-string v18, "audio/webm"

    const-string v13, "WEBMA"

    const/4 v14, 0x4

    const/16 v15, 0x200

    const-string v16, "WebM"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v12, v0

    const-string v24, "mp3"

    const-string v25, "audio/mpeg"

    const-string v20, "MP3"

    const/16 v21, 0x5

    const/16 v22, 0x300

    const-string v23, "MP3"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v13, v0

    const-string v31, "mp2"

    const-string v32, "audio/mpeg"

    const-string v27, "MP2"

    const/16 v28, 0x6

    const/16 v29, 0x310

    const-string v30, "MP2"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v32}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP2:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v14, v0

    const-string v20, "opus"

    const-string v21, "audio/opus"

    const-string v16, "OPUS"

    const/16 v17, 0x7

    const/16 v18, 0x400

    const-string v19, "opus"

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object v15, v0

    const-string v27, "ogg"

    const-string v28, "audio/ogg"

    const-string v23, "OGG"

    const/16 v24, 0x8

    const/16 v25, 0x500

    const-string v26, "ogg"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v16, v0

    const-string v34, "webm"

    const-string v35, "audio/webm"

    const-string v30, "WEBMA_OPUS"

    const/16 v31, 0x9

    const/16 v32, 0x200

    const-string v33, "WebM Opus"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v35}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v17, v0

    const-string v23, "aiff"

    const-string v24, "audio/aiff"

    const-string v19, "AIFF"

    const/16 v20, 0xa

    const/16 v21, 0x600

    const-string v22, "AIFF"

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->AIFF:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v18, v0

    const-string v30, "aif"

    const-string v31, "audio/aiff"

    const-string v26, "AIF"

    const/16 v27, 0xb

    const/16 v28, 0x600

    const-string v29, "AIFF"

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v31}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->AIF:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v19, v0

    const-string v37, "wav"

    const-string v38, "audio/wav"

    const-string v33, "WAV"

    const/16 v34, 0xc

    const/16 v35, 0x700

    const-string v36, "WAV"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v38}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WAV:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v20, v0

    const-string v26, "flac"

    const-string v27, "audio/flac"

    const-string v22, "FLAC"

    const/16 v23, 0xd

    const/16 v24, 0x800

    const-string v25, "FLAC"

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v27}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->FLAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v21, v0

    const-string v33, "alac"

    const-string v34, "audio/alac"

    const-string v29, "ALAC"

    const/16 v30, 0xe

    const/16 v31, 0x900

    const-string v32, "ALAC"

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v34}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->ALAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v22, v0

    const-string v40, "vtt"

    const-string v41, "text/vtt"

    const-string v36, "VTT"

    const/16 v37, 0xf

    const/16 v38, 0x1000

    const-string v39, "WebVTT"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v41}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v23, v0

    const-string v29, "ttml"

    const-string v30, "application/ttml+xml"

    const-string v25, "TTML"

    const/16 v26, 0x10

    const/16 v27, 0x2000

    const-string v28, "Timed Text Markup Language"

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v24, v0

    const-string v36, "srv1"

    const-string v37, "text/xml"

    const-string v32, "TRANSCRIPT1"

    const/16 v33, 0x11

    const/16 v34, 0x3000

    const-string v35, "TranScript v1"

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v37}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v25, v0

    const-string v43, "srv2"

    const-string v44, "text/xml"

    const-string v39, "TRANSCRIPT2"

    const/16 v40, 0x12

    const/16 v41, 0x4000

    const-string v42, "TranScript v2"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v44}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v26, v0

    const-string v32, "srv3"

    const-string v33, "text/xml"

    const-string v28, "TRANSCRIPT3"

    const/16 v29, 0x13

    const/16 v30, 0x5000

    const-string v31, "TranScript v3"

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v33}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v27, v0

    const-string v39, "srt"

    const-string v40, "text/srt"

    const-string v35, "SRT"

    const/16 v36, 0x14

    const/16 v37, 0x6000

    const-string v38, "SubRip file format"

    move-object/from16 v34, v0

    invoke-direct/range {v34 .. v40}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    filled-new-array/range {v7 .. v27}, [Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    iput-object p5, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    iput-object p6, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->lambda$getAllFromMimeType$2(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->lambda$getFromMimeType$1(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(ILorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->lambda$getById$0(ILorg/schabi/newpipe/extractor/MediaFormat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->lambda$getFromSuffix$4(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/MediaFormat;->lambda$getFormatById$3(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getAllFromMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lrf6;

    invoke-direct {v1, p0}, Lrf6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/function/Function<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            "TT;>;TT;)TT;"
        }
    .end annotation

    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lvf6;

    invoke-direct {v1, p0}, Lvf6;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatById(I)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2

    new-instance v0, Lqf6;

    invoke-direct {v0}, Lqf6;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public static getFromMimeType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2

    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lpf6;

    invoke-direct {v1, p0}, Lpf6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public static getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2

    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Luf6;

    invoke-direct {v1, p0}, Luf6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public static getMimeById(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lsf6;

    invoke-direct {v0}, Lsf6;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getNameById(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ltf6;

    invoke-direct {v0}, Ltf6;-><init>()V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSuffixById(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Lof6;

    invoke-direct {v0}, Lof6;-><init>()V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$getAllFromMimeType$2(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getById$0(ILorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    iget p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getFormatById$3(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$getFromMimeType$1(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getFromSuffix$4(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 0

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    const-class v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    return-object p0
.end method

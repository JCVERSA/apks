.class public Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    }
.end annotation


# static fields
.field public static final APPROX_DURATION_MS_UNKNOWN:J = -0x1L

.field public static final AUDIO_CHANNELS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field public static final AVERAGE_BITRATE_UNKNOWN:I = -0x1

.field public static final CONTENT_LENGTH_UNKNOWN:J = -0x1L

.field public static final FPS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field private static final ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field public static final SAMPLE_RATE_UNKNOWN:I = -0x1

.field public static final TARGET_DURATION_SEC_UNKNOWN:I = -0x1


# instance fields
.field private approxDurationMs:J

.field private audioChannels:I

.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public avgBitrate:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private contentLength:J

.field public fps:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private height:I

.field public final id:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private quality:Ljava/lang/String;

.field public resolutionString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sampleRate:I

.field private targetDurationSec:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 76

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v0, v1

    sget-object v14, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v3, 0x11

    const-string v15, "144p"

    invoke-direct {v1, v3, v14, v2, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v1, v3

    const/16 v4, 0x24

    const-string v13, "240p"

    invoke-direct {v3, v4, v14, v2, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v2, v3

    sget-object v12, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x12

    const-string v11, "360p"

    invoke-direct {v3, v4, v14, v12, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v3, v4

    const/16 v5, 0x22

    invoke-direct {v4, v5, v14, v12, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v4, v5

    const/16 v10, 0x23

    const-string v9, "480p"

    invoke-direct {v5, v10, v14, v12, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v5, v6

    const/16 v7, 0x3b

    invoke-direct {v6, v7, v14, v12, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v6, v7

    const/16 v8, 0x4e

    invoke-direct {v7, v8, v14, v12, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v7, v8

    const/16 v10, 0x16

    move-object/from16 v57, v0

    const-string v0, "720p"

    invoke-direct {v8, v10, v14, v12, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v10, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v8, v10

    move-object/from16 v17, v9

    const/16 v9, 0x25

    move-object/from16 v58, v1

    const-string v1, "1080p"

    invoke-direct {v10, v9, v14, v12, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v10, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v59, v2

    move-object/from16 v2, v17

    move-object v9, v10

    move-object/from16 v17, v13

    const/16 v13, 0x26

    invoke-direct {v10, v13, v14, v12, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v60, v3

    const/16 v3, 0x23

    move-object v10, v13

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v16, v12

    const/16 v12, 0x2b

    invoke-direct {v13, v12, v14, v3, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v12, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v13, v11

    move-object v11, v12

    move-object/from16 v18, v13

    const/16 v13, 0x2c

    invoke-direct {v12, v13, v14, v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v67, v4

    move-object/from16 v4, v16

    move-object v12, v13

    move-object/from16 v16, v15

    const/16 v15, 0x2d

    invoke-direct {v13, v15, v14, v3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v15, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v68, v5

    move-object/from16 v69, v6

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object v13, v15

    move-object/from16 v70, v7

    const/16 v7, 0x2e

    invoke-direct {v15, v7, v14, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v14, v7

    sget-object v15, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    move-object/from16 v71, v8

    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v72, v9

    const/16 v9, 0xab

    move-object/from16 v73, v10

    const/16 v10, 0x80

    invoke-direct {v7, v9, v15, v8, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v10, v15

    move-object/from16 v9, v16

    move-object v15, v7

    move-object/from16 v74, v11

    const/16 v11, 0xac

    move-object/from16 v75, v12

    const/16 v12, 0x100

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v16, v7

    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v11, 0x20

    const/16 v12, 0x257

    invoke-direct {v7, v12, v10, v8, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v17, v7

    const/16 v11, 0x8b

    const/16 v12, 0x30

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v18, v7

    const/16 v11, 0x8c

    const/16 v12, 0x80

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v19, v7

    const/16 v11, 0x8d

    const/16 v12, 0x100

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v20, v7

    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v11, 0x258

    const/16 v12, 0x23

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v21, v7

    const/16 v11, 0xf9

    const/16 v12, 0x32

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v22, v7

    const/16 v11, 0xfa

    const/16 v12, 0x46

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v23, v7

    const/16 v11, 0xfb

    const/16 v12, 0xa0

    invoke-direct {v7, v11, v10, v8, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v24, v7

    sget-object v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-direct {v7, v12, v8, v4, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v25, v7

    const/16 v10, 0x18a

    invoke-direct {v7, v10, v8, v4, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v26, v7

    const/16 v10, 0x85

    invoke-direct {v7, v10, v8, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v27, v7

    const/16 v10, 0x18b

    invoke-direct {v7, v10, v8, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v28, v7

    const/16 v10, 0x86

    invoke-direct {v7, v10, v8, v4, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v29, v7

    const/16 v10, 0x18c

    invoke-direct {v7, v10, v8, v4, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v30, v7

    const/16 v10, 0x87

    invoke-direct {v7, v10, v8, v4, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v31, v7

    const/16 v10, 0xd4

    invoke-direct {v7, v10, v8, v4, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v32, v7

    const/16 v10, 0x18d

    invoke-direct {v7, v10, v8, v4, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v33, v7

    const/16 v10, 0x88

    invoke-direct {v7, v10, v8, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v34, v7

    const/16 v10, 0x18e

    invoke-direct {v7, v10, v8, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v36, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v35, v36

    const-string v40, "720p60"

    const/16 v41, 0x3c

    const/16 v37, 0x12a

    move-object/from16 v38, v8

    move-object/from16 v39, v4

    invoke-direct/range {v36 .. v41}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v36, v7

    const/16 v10, 0x89

    invoke-direct {v7, v10, v8, v4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v37, v7

    const/16 v10, 0x18f

    invoke-direct {v7, v10, v8, v4, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v39, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v38, v39

    const-string v43, "1080p60"

    const/16 v44, 0x3c

    const/16 v40, 0x12b

    move-object/from16 v41, v8

    move-object/from16 v42, v4

    invoke-direct/range {v39 .. v44}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v39, v7

    const/16 v10, 0x190

    const-string v11, "1440p"

    invoke-direct {v7, v10, v8, v4, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v40, v7

    const/16 v10, 0x10a

    const-string v12, "2160p"

    invoke-direct {v7, v10, v8, v4, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v41, v7

    const/16 v10, 0x191

    invoke-direct {v7, v10, v8, v4, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v42, v4

    const/16 v7, 0x116

    invoke-direct {v4, v7, v8, v3, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v43, v4

    const/16 v7, 0xf2

    invoke-direct {v4, v7, v8, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v44, v4

    const/16 v5, 0xf3

    invoke-direct {v4, v5, v8, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v45, v4

    const/16 v5, 0xf4

    invoke-direct {v4, v5, v8, v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v46, v4

    const/16 v5, 0xf5

    invoke-direct {v4, v5, v8, v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v47, v4

    const/16 v5, 0xf6

    invoke-direct {v4, v5, v8, v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v48, v2

    const/16 v4, 0xf7

    invoke-direct {v2, v4, v8, v3, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v49, v0

    const/16 v2, 0xf8

    invoke-direct {v0, v2, v8, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v50, v0

    const/16 v1, 0x10f

    invoke-direct {v0, v1, v8, v3, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v51, v0

    const/16 v1, 0x110

    invoke-direct {v0, v1, v8, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v61, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v52, v61

    const-string v65, "720p60"

    const/16 v66, 0x3c

    const/16 v62, 0x12e

    move-object/from16 v63, v8

    move-object/from16 v64, v3

    invoke-direct/range {v61 .. v66}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v61, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v53, v61

    const-string v65, "1080p60"

    const/16 v62, 0x12f

    invoke-direct/range {v61 .. v66}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v61, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v54, v61

    const-string v65, "1440p60"

    const/16 v62, 0x134

    invoke-direct/range {v61 .. v66}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v55, v0

    const/16 v1, 0x139

    invoke-direct {v0, v1, v8, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v61, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v56, v61

    const-string v65, "2160p60"

    const/16 v62, 0x13b

    invoke-direct/range {v61 .. v66}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    move-object/from16 v4, v67

    move-object/from16 v5, v68

    move-object/from16 v6, v69

    move-object/from16 v7, v70

    move-object/from16 v8, v71

    move-object/from16 v9, v72

    move-object/from16 v10, v73

    move-object/from16 v11, v74

    move-object/from16 v12, v75

    filled-new-array/range {v0 .. v56}, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 27
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 28
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 29
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 30
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 31
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 32
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 33
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 34
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 35
    iput p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 3
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 4
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 5
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 7
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 8
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 10
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 11
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    const/16 p1, 0x1e

    .line 12
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 15
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 16
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 17
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 19
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 20
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 21
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 22
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 23
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 24
    iput p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 38
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 39
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 40
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 41
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 43
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 44
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 45
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 46
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 47
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 48
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 49
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 50
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 51
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 52
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 53
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 54
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 55
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 56
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 57
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 58
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 59
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 61
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 62
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 63
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 64
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 67
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public static getItag(I)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v4, :cond_0

    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupported(I)Z
    .locals 5

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v4, v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getApproxDurationMs()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    return-wide v0
.end method

.method public getAudioChannels()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    return p0
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object p0
.end method

.method public getAverageBitrate()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    return p0
.end method

.method public getBitrate()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    return p0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    return-wide v0
.end method

.method public getFps()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    return p0
.end method

.method public getIndexEnd()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    return p0
.end method

.method public getIndexStart()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    return p0
.end method

.method public getInitEnd()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    return p0
.end method

.method public getInitStart()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    return p0
.end method

.method public getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    return-object p0
.end method

.method public getResolutionString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    return-object p0
.end method

.method public getSampleRate()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    return p0
.end method

.method public getTargetDurationSec()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    return p0
.end method

.method public setApproxDurationMs(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    return-void
.end method

.method public setAudioLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public setAudioTrackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    return-void
.end method

.method public setAudioTrackName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    return-void
.end method

.method public setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    return-void
.end method

.method public setFps(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    return-void
.end method

.method public setIndexEnd(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    return-void
.end method

.method public setIndexStart(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    return-void
.end method

.method public setInitEnd(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    return-void
.end method

.method public setInitStart(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    return-void
.end method

.method public setTargetDurationSec(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    return-void
.end method

.class public Lcom/hunantv/media/player/helper/MediaCodecHelp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;,
        Lcom/hunantv/media/player/helper/MediaCodecHelp$performanceLevel;,
        Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;
    }
.end annotation


# static fields
.field public static AMIME_AUDIO_AMR_NB:Ljava/lang/String; = "audio/3gpp"

.field public static AMIME_AUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static AMIME_AUDIO_G711_ALAW:Ljava/lang/String; = "audio/g711-alaw"

.field public static AMIME_AUDIO_G711_MLAW:Ljava/lang/String; = "audio/g711-mlaw"

.field public static AMIME_AUDIO_MP3:Ljava/lang/String; = "audio/mpeg"

.field public static AMIME_AUDIO_RAW_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static AMIME_AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static AMIME_VIDEO_AV1:Ljava/lang/String; = "video/av01"

.field public static AMIME_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static AMIME_VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static AMIME_VIDEO_HEVC:Ljava/lang/String; = "video/hevc"

.field public static AMIME_VIDEO_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field public static AMIME_VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static AMIME_VIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static FHD:Ljava/lang/String; = "FHD"

.field public static FHD_100:Ljava/lang/String; = "FHD_100"

.field public static FHD_120:Ljava/lang/String; = "FHD_120"

.field public static FHD_15:Ljava/lang/String; = "FHD_15"

.field public static FHD_20:Ljava/lang/String; = "FHD_20"

.field public static FHD_24:Ljava/lang/String; = "FHD_24"

.field public static FHD_25:Ljava/lang/String; = "FHD_25"

.field public static FHD_30:Ljava/lang/String; = "FHD_30"

.field public static FHD_40:Ljava/lang/String; = "FHD_40"

.field public static FHD_50:Ljava/lang/String; = "FHD_50"

.field public static FHD_60:Ljava/lang/String; = "FHD_60"

.field public static FHD_70:Ljava/lang/String; = "FHD_70"

.field public static FHD_80:Ljava/lang/String; = "FHD_80"

.field public static FHD_90:Ljava/lang/String; = "FHD_90"

.field public static FHD_MAX:Ljava/lang/String; = "FHD_120_OVER"

.field public static FHD_MIN:Ljava/lang/String; = "FHD_15_BELOW"

.field public static HD:Ljava/lang/String; = "HD"

.field private static final MEDIA_CODEC_XML_FILE:Ljava/lang/String; = "/etc/media_codecs.xml"

.field private static final ODM_MEDIA_CODEC_XML_FILE:Ljava/lang/String; = "/odm/etc/media_codecs.xml"

.field public static SD:Ljava/lang/String; = "SD"

.field public static SD_BELOW:Ljava/lang/String; = "SD_BELOW"

.field public static SHD:Ljava/lang/String; = "SHD"

.field public static UHD:Ljava/lang/String; = "UHD"

.field public static UHD_100:Ljava/lang/String; = "UHD_100"

.field public static UHD_120:Ljava/lang/String; = "UHD_120"

.field public static UHD_15:Ljava/lang/String; = "UHD_15"

.field public static UHD_20:Ljava/lang/String; = "UHD_20"

.field public static UHD_24:Ljava/lang/String; = "UHD_24"

.field public static UHD_25:Ljava/lang/String; = "UHD_25"

.field public static UHD_30:Ljava/lang/String; = "UHD_30"

.field public static UHD_40:Ljava/lang/String; = "UHD_40"

.field public static UHD_50:Ljava/lang/String; = "UHD_50"

.field public static UHD_60:Ljava/lang/String; = "UHD_60"

.field public static UHD_70:Ljava/lang/String; = "UHD_70"

.field public static UHD_80:Ljava/lang/String; = "UHD_80"

.field public static UHD_90:Ljava/lang/String; = "UHD_90"

.field public static UHD_MAX:Ljava/lang/String; = "UHD_120_OVER"

.field public static UHD_MIN:Ljava/lang/String; = "UHD_15_BELOW"

.field public static UNKOWN:Ljava/lang/String; = "UnKown"

.field private static final VENDOR_MEDIA_CODEC_XML_FILE:Ljava/lang/String; = "/vendor/etc/media_codecs.xml"

.field private static isConvert:Z = true

.field private static isHardware:Z = true

.field private static volatile sAV1Decoder:Ljava/lang/String; = null

.field private static volatile sAVCDecoder:Ljava/lang/String; = null

.field private static final sCodecFiles:[Ljava/lang/String;

.field public static sCreateCodecBlackList:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sDecodePerformanceList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;",
            ">;"
        }
    .end annotation
.end field

.field public static sFlushCodecBlackList:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sH265BlackListMods:[Ljava/lang/String;

.field public static sH265Enable:Z = false

.field private static volatile sHEVCDecoder:Ljava/lang/String; = null

.field private static sMediaCodecMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance; = null

.field public static tag:Ljava/lang/String; = "MediaCodecHelp"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sMediaCodecMap:Ljava/util/Map;

    const-string v0, "/vendor/etc/media_codecs.xml"

    const-string v1, "/odm/etc/media_codecs.xml"

    const-string v2, "/etc/media_codecs.xml"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sCodecFiles:[Ljava/lang/String;

    const-string v0, "V1809A"

    const-string v1, "ALP-AL00"

    const-string v2, "OPPO R9s Plus"

    const-string v3, "OPPO A83t"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sH265BlackListMods:[Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sH265Enable:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sCreateCodecBlackList:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sFlushCodecBlackList:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sDecodePerformanceList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findCodecXmlFile()Ljava/io/File;
    .locals 6

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sCodecFiles:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static declared-synchronized findMediaCodec(Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sMediaCodecMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sMediaCodecMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->findCodecXmlFile()Ljava/io/File;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v3, :cond_1

    :try_start_2
    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v5, v1

    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    if-eq v3, v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "MediaCodec"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "c2."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "ImgoPlayerLibJava"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findMediaCodec : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v7, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto/16 :goto_7

    :catch_0
    move-object v2, v4

    move v1, v5

    goto :goto_3

    :cond_3
    const-string v7, "OMX."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "ImgoPlayerLibJava"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findMediaCodec : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :cond_5
    :try_start_6
    invoke-static {v4}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_1
    move-object v2, v4

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_2
    :goto_3
    if-nez v2, :cond_6

    :try_start_7
    const-string v3, "ImgoPlayerLibJava"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMediaCodec : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " openInputStream failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v3, "ImgoPlayerLibJava"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMediaCodec : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " parser failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :goto_5
    :try_start_8
    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    move v5, v1

    :goto_6
    sget-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sMediaCodecMap:Ljava/util/Map;

    if-eqz v1, :cond_7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    monitor-exit v0

    return v5

    :goto_7
    :try_start_9
    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    throw p0

    :goto_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public static getALLAV1Decoder(Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sAV1Decoder:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi29_LollipopOrLater()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_AV1:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSelectALLCodecNameDecoder21orLater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sAV1Decoder:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sAV1Decoder:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized getCodecPerformanceList(Z)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_c

    aget-object v7, v0, v6

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    move/from16 v9, p0

    if-eq v9, v8, :cond_1

    :cond_0
    move-object/from16 v17, v0

    move v0, v3

    move/from16 v18, v4

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v8, v11

    const-string v13, "video"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    new-instance v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    invoke-direct {v13}, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;-><init>()V

    invoke-virtual {v7, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v14

    iget-object v14, v14, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-eqz v14, :cond_7

    const/4 v15, 0x2

    new-array v15, v15, [C

    const/16 v16, 0x30

    aput-char v16, v15, v5

    aput-char v16, v15, v3

    array-length v5, v14

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v17, v0

    if-ge v3, v5, :cond_6

    aget-object v0, v14, v3

    move/from16 v18, v4

    iget-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    move/from16 v19, v5

    const-string v5, "_HDR10_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v5, 0x1000

    if-eq v4, v5, :cond_2

    if-ne v4, v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :goto_3
    iput-boolean v0, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr_support:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HDR10_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    const/16 v0, 0x31

    const/4 v4, 0x0

    aput-char v0, v15, v4

    :cond_4
    const/4 v0, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :goto_4
    iget-object v5, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    const-string v4, "_HDR10Plus_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v4, 0x2000

    if-eq v0, v4, :cond_5

    if-ne v0, v4, :cond_4

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr_support:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HDR10Plus_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v4, 0x31

    aput-char v4, v15, v0

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    move/from16 v4, v18

    move/from16 v5, v19

    goto :goto_2

    :cond_6
    move/from16 v18, v4

    const/4 v0, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->shdrt:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 v17, v0

    move v0, v3

    move/from16 v18, v4

    :goto_6
    invoke-virtual {v7, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->codecName:Ljava/lang/String;

    iput-object v12, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getPerformance(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->performance:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hunantv/media/player/helper/MediaCodecHelp;->UHD:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getPerformanceByFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_4k:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hunantv/media/player/helper/MediaCodecHelp;->FHD:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getPerformanceByFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_1080p:Ljava/lang/String;

    sget-boolean v4, Lcom/hunantv/media/player/helper/MediaCodecHelp;->isHardware:Z

    if-eqz v4, :cond_8

    iget-object v4, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->codecName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "c2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "c2.android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4, v3}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->printAllFrameRates(Ljava/lang/String;Landroid/media/MediaCodecInfo$VideoCapabilities;)V

    invoke-static {v3}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getMaxResolution(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "x"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v12, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def_fps:Ljava/lang/String;

    :cond_8
    :goto_7
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_9
    const-string v5, "omx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "omx.google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "omx.ffmpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v4, v3}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->printAllFrameRates(Ljava/lang/String;Landroid/media/MediaCodecInfo$VideoCapabilities;)V

    invoke-static {v3}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getMaxResolution(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "x"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v12, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_def_fps:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :cond_a
    move-object/from16 v17, v0

    move v0, v3

    move/from16 v18, v4

    :cond_b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move v3, v0

    move-object/from16 v0, v17

    move/from16 v4, v18

    const/4 v5, 0x0

    goto/16 :goto_1

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move v3, v0

    move-object/from16 v0, v17

    move/from16 v4, v18

    const/4 v5, 0x0

    goto/16 :goto_0

    :goto_a
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit v1

    return-object v2

    :goto_b
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getDecoderPerformanceList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sDecodePerformanceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getCodecPerformanceList(Z)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sDecodePerformanceList:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sDecodePerformanceList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getH264Decoder()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH264Decoder(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getH264Decoder(Z)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sAVCDecoder:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi21_LollipopOrLater()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_AVC:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSelectCodecDecoder21orLater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sAVCDecoder:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi16_JellyBeanOrLater()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_AVC:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSelectCodecDecoder16orLater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sAVCDecoder:Ljava/lang/String;

    return-object p0
.end method

.method public static getH265Decoder()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH265Decoder(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getH265Decoder(Z)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sHEVCDecoder:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi21_LollipopOrLater()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_HEVC:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSelectCodecDecoder21orLater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sHEVCDecoder:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi16_JellyBeanOrLater()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_HEVC:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSelectCodecDecoder16orLater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sHEVCDecoder:Ljava/lang/String;

    return-object p0
.end method

.method public static getHardWareperformance(Z)V
    .locals 0

    sput-boolean p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->isHardware:Z

    return-void
.end method

.method private static getMaxFps(Landroid/media/MediaCodecInfo$VideoCapabilities;Landroid/util/Size;)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static getMaxResolution(Landroid/media/MediaCodecInfo$VideoCapabilities;)Landroid/util/Size;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->is4KOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e00

    const/16 v1, 0x10e0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->is4KOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_1
    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_2
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_3
    const/16 v0, 0x1e0

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPerformance(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getPerformanceByResolution(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getPerformanceByFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    const-string v2, "FHD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "_"

    if-nez v3, :cond_0

    const/16 v3, 0x780

    const/16 v5, 0x438

    invoke-virtual {p0, v3, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v3, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v2, v5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPerformanceByFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;Ljava/lang/String;)D
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/hunantv/media/player/helper/MediaCodecHelp;->SHD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p1, 0x1e00

    const/16 v2, 0x10e0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/hunantv/media/player/helper/MediaCodecHelp;->UHD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p1, 0xf00

    const/16 v2, 0x870

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/hunantv/media/player/helper/MediaCodecHelp;->FHD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p1, 0x780

    const/16 v2, 0x438

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/hunantv/media/player/helper/MediaCodecHelp;->HD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x2d0

    if-eqz v2, :cond_4

    const/16 p1, 0x500

    move v2, v3

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/hunantv/media/player/helper/MediaCodecHelp;->SD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 v2, 0x1e0

    move p1, v3

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    move v2, p1

    :goto_0
    if-lez p1, :cond_6

    if-lez v2, :cond_6

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-wide v0
.end method

.method private static getPerformanceByResolution(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/16 v0, 0x1e00

    const/16 v1, 0x10e0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->SHD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->UHD:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->FHD:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->HD:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e0

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->SD:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->SD_BELOW:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getScreenPerformance(Landroid/content/Context;)Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;
    .locals 14

    const-class v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    :try_start_1
    new-instance v1, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    invoke-direct {v1}, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;-><init>()V

    sput-object v1, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x4

    new-array v5, v4, [C

    const/4 v6, 0x0

    const/16 v7, 0x30

    aput-char v7, v5, v6

    const/4 v8, 0x1

    aput-char v7, v5, v8

    const/4 v9, 0x2

    aput-char v7, v5, v9

    const/4 v10, 0x3

    aput-char v7, v5, v10

    sget-object v7, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display$HdrCapabilities;->getDesiredMinLuminance()F

    move-result v12

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->srpll:Ljava/lang/String;

    sget-object v7, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display$HdrCapabilities;->getDesiredMaxLuminance()F

    move-result v12

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->srplh:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v7, p0

    move v11, v6

    :goto_0
    if-ge v11, v7, :cond_4

    aget v12, p0, v11

    const/16 v13, 0x31

    if-eq v12, v8, :cond_3

    if-eq v12, v9, :cond_2

    if-eq v12, v10, :cond_1

    if-eq v12, v4, :cond_0

    goto :goto_1

    :cond_0
    aput-char v13, v5, v8

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    aput-char v13, v5, v9

    goto :goto_1

    :cond_2
    aput-char v13, v5, v6

    goto :goto_1

    :cond_3
    aput-char v13, v5, v10

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->sshdr:Ljava/lang/String;

    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->srpf:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    sget-object p0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sScreenPerformance:Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static getSelectALLCodecNameDecoder21orLater(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "ImgoPlayerLibJava"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSelectALLCodecNameDecoder21orLater : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method private static getSelectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string p0, "ImgoPlayerLibJava"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectCodec : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSelectCodecDecoder16orLater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OMX.google."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "c2.android."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string p0, "ImgoPlayerLibJava"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectCodecDecoder16orLater : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSelectCodecDecoder21orLater(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    :try_start_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OMX.google."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "c2.android."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string p0, "ImgoPlayerLibJava"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectCodecDecoder21orLater : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSupportHDST(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getSupportHardDecodeTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSupportHardDecodeTypes(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/hunantv/media/player/utils/PreferencesUtil;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/utils/PreferencesUtil;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH264Decoder()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "h264"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH265Decoder()Ljava/lang/String;

    move-result-object p0

    sget-boolean v2, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sH265Enable:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi21_LollipopOrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->inCreateCodecBlackList(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/hunantv/media/report/c/h;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->inH265BlackListMods(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "prekey_h265_support"

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "h265"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static inCreateCodecBlackList(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sCreateCodecBlackList:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static inH265BlackListMods(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sH265BlackListMods:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/hunantv/media/player/utils/ArrayUtil;->inArrayIgnoreCase([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isH265InCreateCodecBlackList()Z
    .locals 4

    sget-object v0, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sCreateCodecBlackList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEVC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H265"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isIntelMediaCodec()Z
    .locals 1

    const-string v0, "OMX.Intel."

    invoke-static {v0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->findMediaCodec(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMTKMediaCodec()Z
    .locals 1

    const-string v0, "OMX.MTK."

    invoke-static {v0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->findMediaCodec(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static printAllFrameRates(Ljava/lang/String;Landroid/media/MediaCodecInfo$VideoCapabilities;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codecName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaCodecHelp"

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1e00

    const/16 v1, 0x10e0

    invoke-static {p1, p0, v1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->printFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;II)V

    const/16 p0, 0xf00

    const/16 v1, 0x870

    invoke-static {p1, p0, v1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->printFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;II)V

    const/16 p0, 0x780

    const/16 v1, 0x438

    invoke-static {p1, p0, v1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->printFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;II)V

    const/16 p0, 0x500

    const/16 v1, 0x2d0

    invoke-static {p1, p0, v1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->printFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;II)V

    const/16 p0, 0x1e0

    invoke-static {p1, v1, p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->printFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;II)V

    const-string p0, "==================================="

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static printFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;II)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string p0, "MediaCodecHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "max framerate:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

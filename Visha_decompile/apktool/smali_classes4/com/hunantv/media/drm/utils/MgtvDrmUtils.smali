.class public Lcom/hunantv/media/drm/utils/MgtvDrmUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/drm/utils/MgtvDrmUtils$WisePlayPsshJson;,
        Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CencDrmUtils"

.field public static final sCommercialDrmSolutionValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sDrmSupportMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final sNonCommercialDrmSolutionValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$1;

    invoke-direct {v0}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$1;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sCommercialDrmSolutionValueMap:Ljava/util/Map;

    new-instance v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$2;

    invoke-direct {v0}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$2;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sNonCommercialDrmSolutionValueMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sDrmSupportMapCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrToHex([B)Ljava/lang/String;
    .locals 4

    const-string v0, "0x"

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%02x"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static bytesToUUID([B)Ljava/util/UUID;
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    aget-byte v6, p0, v4

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    rsub-int/lit8 v10, v4, 0x7

    mul-int/2addr v10, v5

    shl-long v5, v6, v10

    or-long/2addr v0, v5

    add-int/lit8 v5, v4, 0x8

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v8

    shl-long/2addr v5, v10

    or-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method public static createPsshRawData(Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;)[B
    .locals 5

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->system_id:[B

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->data:[B

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-string v0, "pssh"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->system_id:[B

    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->data:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->data:[B

    array-length v0, p0

    invoke-virtual {v2, p0, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static drmt2DrmTypeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "n"

    return-object p0

    :pswitch_0
    const-string p0, "LightPlay DRM"

    return-object p0

    :pswitch_1
    const-string p0, "PlayReady DRM"

    return-object p0

    :pswitch_2
    const-string p0, "Fairplay DRM"

    return-object p0

    :pswitch_3
    const-string p0, "widevine DRM"

    return-object p0

    :pswitch_4
    const-string p0, "marlin cbcs DRM"

    return-object p0

    :pswitch_5
    const-string p0, "wiseplay DRM"

    return-object p0

    :pswitch_6
    const-string p0, "marlin DRM"

    return-object p0

    :pswitch_7
    const-string p0, "\u6e05\u6d41"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_7
        0x31 -> :sswitch_6
        0x32 -> :sswitch_5
        0x33 -> :sswitch_4
        0x34 -> :sswitch_3
        0x35 -> :sswitch_2
        0x36 -> :sswitch_1
        0x61f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sDrmSupportMapCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sDrmSupportMapCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_0
    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    sget-object v1, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->sDrmSupportMapCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isWidevineSupport()Z
    .locals 1

    sget-object v0, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public static parsePSSH([B)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "CencDrmUtils"

    if-eqz p0, :cond_9

    array-length v2, p0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pssh_size_bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;

    invoke-direct {v4}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;-><init>()V

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-ge v5, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsePSSH: len is too short to parse UUID: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 16)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    new-array v9, v5, [B

    iput-object v9, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->system_id:[B

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v6, :cond_3

    new-array v11, v7, [B

    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v12, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    new-array v6, v8, [B

    iput-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->data:[B

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->createPsshRawData(Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->rawData:[B

    if-ne v5, v3, :cond_1

    iget-object v5, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->system_id:[B

    invoke-static {v5}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/hunantv/media/drm/MgtvDrmConstans;->CHINADRM_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "this is wiseplay uuid parse it"

    invoke-static {v1, v6}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    new-instance v7, Ljava/lang/String;

    iget-object v8, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->data:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    const-class v8, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$WisePlayPsshJson;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$WisePlayPsshJson;

    iget-object v6, v6, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$WisePlayPsshJson;->kids:Ljava/util/List;

    iput-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/hunantv/media/drm/MgtvDrmConstans;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "this is widevine uuid parse it"

    invoke-static {v1, v6}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->data:[B

    invoke-static {v6}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->parseFrom([B)Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getKeyIdCount()I

    move-result v7

    if-lez v7, :cond_7

    :goto_2
    invoke-virtual {v6}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getKeyIdCount()I

    move-result v7

    if-ge v9, v7, :cond_7

    invoke-virtual {v6, v9}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getKeyId(I)Lcom/google/protobuf/ByteString;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-virtual {v6, v9}, Lcom/hunantv/media/drm/protoc/WidevinePsshDataOuterClass$WidevinePsshData;->getKeyId(I)Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    sget-object v6, Lcom/hunantv/media/drm/MgtvDrmConstans;->MARLIN_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_7

    :try_start_1
    const-string v6, "this is marlin uuid parse it"

    invoke-static {v1, v6}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->data:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v8, 0x1c

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v7, v7, [B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v6, v4, Lcom/hunantv/media/drm/utils/MgtvDrmUtils$PSSH;->key_ids:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_8
    return-object v2

    :catch_1
    return-object v0

    :cond_9
    :goto_4
    const-string p0, "parsePSSH invalid pssh"

    invoke-static {v1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

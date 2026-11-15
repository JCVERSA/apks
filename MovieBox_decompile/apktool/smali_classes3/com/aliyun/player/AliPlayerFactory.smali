.class public Lcom/aliyun/player/AliPlayerFactory;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;,
        Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;,
        Lcom/aliyun/player/AliPlayerFactory$BlackType;
    }
.end annotation


# static fields
.field private static sInnerBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {}, Lcom/aliyun/player/AliPlayerFactory;->initInnerBlackList()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    .line 12
    .line 13
    sget-object v1, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/aliyun/player/AliPlayerFactory;->addBlackList(Lcom/aliyun/player/AliPlayerFactory$BlackType;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/aliyun/player/ApasaraExternalPlayer;->registerExternalPlayer(Lcom/aliyun/player/ApasaraExternalPlayer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addBlackDevice(Lcom/aliyun/player/AliPlayerFactory$BlackType;Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_H264:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    .line 9
    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/aliyun/player/AliPlayerFactory$BlackType;->HW_Decode_HEVC:Lcom/aliyun/player/AliPlayerFactory$BlackType;

    .line 13
    .line 14
    if-ne p0, v1, :cond_2

    .line 15
    .line 16
    :cond_1
    iget-object p1, p1, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;->model:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setBlackType(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public static addBlackList(Lcom/aliyun/player/AliPlayerFactory$BlackType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/player/AliPlayerFactory$BlackType;",
            "Ljava/util/List<",
            "Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->addBlackDevice(Lcom/aliyun/player/AliPlayerFactory$BlackType;Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public static createAliListPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliListPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliListPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliListPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createAliListPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliListPlayer;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/aliyun/private_service/PrivateService;->preInitService(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lcom/aliyun/player/ApsaraVideoListPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraVideoListPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAliLiveShiftPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliLiveShiftPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliLiveShiftPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliLiveShiftPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createAliLiveShiftPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliLiveShiftPlayer;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/aliyun/private_service/PrivateService;->preInitService(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lcom/aliyun/player/ApsaraLiveShiftPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraLiveShiftPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAliPlayer(Landroid/content/Context;)Lcom/aliyun/player/AliPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/aliyun/player/AliPlayerFactory;->createAliPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static createAliPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/AliPlayer;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/aliyun/private_service/PrivateService;->preInitService(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->setContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lcom/cicada/player/utils/ContentDataSource;->setContext(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lcom/aliyun/player/ApsaraVideoPlayer;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/ApsaraVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeviceUUID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->getDeviceUUID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->getSdkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static initInnerBlackList()V
    .locals 2

    .line 1
    new-instance v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Lenovo K320t"

    .line 7
    .line 8
    iput-object v1, v0, Lcom/aliyun/player/AliPlayerFactory$DeviceInfo;->model:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lcom/aliyun/player/AliPlayerFactory;->sInnerBlackList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static isFeatureSupport(Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;->FeatureDolbyAudio:Lcom/aliyun/player/AliPlayerFactory$SupportFeatureType;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cicada/player/utils/media/MediaCodecUtils;->isDolbyAudioSupport()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static setConvertURLCallback(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->setConvertURLCb(Lcom/aliyun/player/IPlayer$ConvertURLCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

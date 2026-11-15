.class public Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLAYER_STATE_STARTED:I = 0x2

.field private static sAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioPlaybackConfiguration;

.field private static sThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;
    .locals 0

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->sThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->sThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioPlaybackConfiguration;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->sAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioPlaybackConfiguration;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioPlaybackConfiguration;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioPlaybackConfiguration;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->sAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioPlaybackConfiguration;

    :cond_2
    return-object p0
.end method

.method public static toLogFriendlyPlayerType(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClientUid(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;->getClientUid(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public getPlayerInterfaceId(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;->getPlayerInterfaceId(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public getPlayerState(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;->getPlayerState(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public getPlayerType(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;->getPlayerType(Landroid/media/AudioPlaybackConfiguration;)I

    move-result p0

    return p0
.end method

.method public isActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/media/TranAudioPlaybackConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioPlaybackConfigurationAdapter;->isActive(Landroid/media/AudioPlaybackConfiguration;)Z

    move-result p0

    return p0
.end method

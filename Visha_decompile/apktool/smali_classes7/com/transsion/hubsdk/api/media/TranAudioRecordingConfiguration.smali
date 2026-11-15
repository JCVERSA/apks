.class public Lcom/transsion/hubsdk/api/media/TranAudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAudioRecordingConfiguration"

.field private static sAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioRecordingConfiguration;

.field private static sThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioRecordingConfigurationAdapter;
    .locals 0

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/media/TranAudioRecordingConfiguration;->sThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/media/TranAudioRecordingConfiguration;->sThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioRecordingConfiguration;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/media/TranAudioRecordingConfiguration;->sAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioRecordingConfiguration;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/media/TranAospAudioRecordingConfiguration;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioRecordingConfiguration;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/media/TranAudioRecordingConfiguration;->sAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioRecordingConfiguration;

    :cond_2
    return-object p0
.end method

.method public static toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/media/TranAudioRecordingConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioRecordingConfigurationAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioRecordingConfigurationAdapter;->toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClientPackageName(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/media/TranAudioRecordingConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioRecordingConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioRecordingConfigurationAdapter;->getClientPackageName(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

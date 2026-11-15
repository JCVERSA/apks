.class public Lcom/transsion/hubsdk/api/notification/TranZenModeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfig;

.field private mThubService:Lcom/transsion/hubsdk/core/notification/TranThubZenModeConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/notification/TranZenModeConfig;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/notification/ITranZenModeConfigAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/notification/ITranZenModeConfigAdapter;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/notification/ITranZenModeConfigAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranZenModeConfig;->mThubService:Lcom/transsion/hubsdk/core/notification/TranThubZenModeConfig;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/notification/TranThubZenModeConfig;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/notification/TranThubZenModeConfig;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranZenModeConfig;->mThubService:Lcom/transsion/hubsdk/core/notification/TranThubZenModeConfig;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranZenModeConfig;->mAospService:Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfig;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfig;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfig;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranZenModeConfig;->mAospService:Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfig;

    :cond_2
    return-object p1
.end method

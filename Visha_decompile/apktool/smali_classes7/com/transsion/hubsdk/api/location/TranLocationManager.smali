.class public Lcom/transsion/hubsdk/api/location/TranLocationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranLocationManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/location/TranAospLocationManager;

.field private mThubService:Lcom/transsion/hubsdk/core/location/TranThubLocationManager;


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


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/location/ITranLocationManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/location/TranLocationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubLocationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/location/TranLocationManager;->mThubService:Lcom/transsion/hubsdk/core/location/TranThubLocationManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/location/TranThubLocationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/location/TranLocationManager;->mThubService:Lcom/transsion/hubsdk/core/location/TranThubLocationManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/location/TranLocationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospLocationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/location/TranLocationManager;->mAospService:Lcom/transsion/hubsdk/aosp/location/TranAospLocationManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/location/TranAospLocationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/location/TranAospLocationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/location/TranLocationManager;->mAospService:Lcom/transsion/hubsdk/aosp/location/TranAospLocationManager;

    :cond_2
    return-object p1
.end method

.method public setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/location/TranLocationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/location/ITranLocationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/location/ITranLocationManagerAdapter;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

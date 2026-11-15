.class public Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranFollowDisplayOrientationManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospFollowDisplayOrientationManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;


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
.method public commit()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;->commit()V

    return-void
.end method

.method public getFollowDisplayOrientionType(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;->getFollowDisplayOrientionType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFollowDisplayOrientationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubFollowDisplayOrientationManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFollowDisplayOrientationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospFollowDisplayOrientationManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospFollowDisplayOrientationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospFollowDisplayOrientationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospFollowDisplayOrientationManager;

    :cond_2
    return-object p1
.end method

.method public init()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;->init()V

    return-void
.end method

.method public isEnabledPackage(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;->isEnabledPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setEnabledPackage(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;->setEnabledPackage(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setFollowDisplayOrientationType(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranFollowDisplayOrientationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranFollowDisplayOrientationManagerAdapter;->setFollowDisplayOrientationType(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

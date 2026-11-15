.class public Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAccessibilityServiceInfoManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/accessibilityservice/TranAospAccessibilityServiceInfoManager;

.field private mThubService:Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;


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
.method public addAccessibilityService(Landroid/content/ComponentName;I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;->addAccessibilityService(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;->getCrashed(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubAccessibilityServiceInfoManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mThubService:Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mThubService:Lcom/transsion/hubsdk/core/accessibilityservice/TranThubAccessibilityServiceInfoManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAccessibilityServiceInfoManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mAospService:Lcom/transsion/hubsdk/aosp/accessibilityservice/TranAospAccessibilityServiceInfoManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/accessibilityservice/TranAospAccessibilityServiceInfoManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/accessibilityservice/TranAospAccessibilityServiceInfoManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->mAospService:Lcom/transsion/hubsdk/aosp/accessibilityservice/TranAospAccessibilityServiceInfoManager;

    :cond_2
    return-object p1
.end method

.method public removeAccessibilityService(Landroid/content/ComponentName;I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/accessibilityservice/TranAccessibilityServiceInfoManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/accessibilityservice/ITranAccessibilityServiceInfoManagerAdapter;->removeAccessibilityService(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

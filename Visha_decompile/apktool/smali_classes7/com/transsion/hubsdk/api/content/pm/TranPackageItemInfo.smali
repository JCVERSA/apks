.class public Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPackageItemInfo"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageItemInfo;

.field private mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageItemInfo;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPackageItemInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;->mThubService:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPackageItemInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageItemInfo;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageItemInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageItemInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;->mAospService:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageItemInfo;

    :cond_2
    return-object p1
.end method

.method public loadSafeLabel(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageItemInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageItemInfo;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageItemInfo;->loadSafeLabel(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

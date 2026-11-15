.class public Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranFeatureFlagUtils"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

.field private mThubService:Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranFeatureFlagUtilsAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFeatureFlagUtils"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubFeatureFlagUtils;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFeatureFlagUtils"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospFeatureFlagUtils;

    :cond_2
    return-object p1
.end method

.method public isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranFeatureFlagUtils;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranFeatureFlagUtilsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranFeatureFlagUtilsAdapter;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

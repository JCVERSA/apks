.class public Lcom/transsion/hubsdk/api/app/TranActivityClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranActivityClient"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityClient;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityClient;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityClientAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityClient;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityClient"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityClient;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityClient;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityClient;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityClient;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityClient;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityClient;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityClient"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityClient;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityClient;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityClient;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityClient;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityClient;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityClient;

    :cond_2
    return-object p1
.end method

.method public setBackToDynamicIsland(Landroid/app/Activity;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityClient;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityClientAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityClientAdapter;->setBackToDynamicIsland(Landroid/app/Activity;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecoveryWhenError(Landroid/app/Activity;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33321:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityClient;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityClientAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityClientAdapter;->setRecoveryWhenError(Landroid/app/Activity;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

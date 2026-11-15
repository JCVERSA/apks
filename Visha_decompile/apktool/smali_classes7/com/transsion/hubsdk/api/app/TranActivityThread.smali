.class public Lcom/transsion/hubsdk/api/app/TranActivityThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranActivityThread"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityThread;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityThread;


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
.method public currentApplication()Landroid/app/Application;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityThread;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityThreadAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityThreadAdapter;->currentApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivityThread;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityThreadAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityThreadAdapter;->getApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityThreadAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityThread;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivityThread"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityThread;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityThread;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivityThread;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityThread;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityThread;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivityThread;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivityThread;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivityThread"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityThread;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityThread;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivityThread;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityThread;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivityThread;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivityThread;

    :cond_2
    return-object p1
.end method

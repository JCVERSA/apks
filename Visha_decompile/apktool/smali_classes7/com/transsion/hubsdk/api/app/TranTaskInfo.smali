.class public Lcom/transsion/hubsdk/api/app/TranTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTaskInfo"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospTaskInfo;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;


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
.method public getDisplayId(Landroid/app/TaskInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33371:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;->getDisplayId(Landroid/app/TaskInfo;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "taskInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranThubTaskInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->TAG:Ljava/lang/String;

    const-string v0, "TranAospTaskInfo"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospTaskInfo;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospTaskInfo;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospTaskInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospTaskInfo;

    :cond_2
    return-object p1
.end method

.method public getSupportsMultiWindow(Landroid/app/TaskInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;->getSupportsMultiWindow(Landroid/app/TaskInfo;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "taskInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserId(Landroid/app/TaskInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranTaskInfo;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;->getUserId(Landroid/app/TaskInfo;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "taskInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

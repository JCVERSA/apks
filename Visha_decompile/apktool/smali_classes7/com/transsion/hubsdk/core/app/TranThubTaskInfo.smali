.class public Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;


# instance fields
.field private mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/app/TranTaskInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranTaskInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    return-void
.end method


# virtual methods
.method public getDisplayId(Landroid/app/TaskInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranTaskInfo;->getDisplayId(Landroid/app/TaskInfo;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSupportsMultiWindow(Landroid/app/TaskInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranTaskInfo;->getSupportsMultiWindow(Landroid/app/TaskInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getUserId(Landroid/app/TaskInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranTaskInfo;->getUserId(Landroid/app/TaskInfo;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

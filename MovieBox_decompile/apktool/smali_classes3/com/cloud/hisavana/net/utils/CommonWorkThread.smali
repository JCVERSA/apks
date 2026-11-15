.class public Lcom/cloud/hisavana/net/utils/CommonWorkThread;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/utils/CommonWorkThread$WorkThreadHolder;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "common_work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cloud/hisavana/net/utils/CommonWorkThread;->a:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/net/utils/CommonWorkThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/net/utils/CommonWorkThread;-><init>()V

    return-void
.end method

.class public final synthetic Lcom/cloud/tmc/offline/download/thread/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic b:Lcom/cloud/tmc/offline/download/task/base/ITask;

.field public final synthetic c:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/a;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/thread/a;->c:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/thread/a;->d:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/a;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/thread/a;->c:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/thread/a;->d:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->b(Lcom/cloud/tmc/offline/download/task/base/ITask;Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lkotlin/jvm/functions/Function1;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

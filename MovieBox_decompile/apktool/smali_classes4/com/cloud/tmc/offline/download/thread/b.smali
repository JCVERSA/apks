.class public final synthetic Lcom/cloud/tmc/offline/download/thread/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

.field public final synthetic b:Lcom/cloud/tmc/offline/download/task/base/ITask;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/b;->a:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/thread/b;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/thread/b;->c:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/b;->a:Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/thread/b;->b:Lcom/cloud/tmc/offline/download/task/base/ITask;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/thread/b;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;->c(Lcom/cloud/tmc/offline/download/thread/DownloadDispatcher;Lcom/cloud/tmc/offline/download/task/base/ITask;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.class Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$2;->this$0:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$2;->this$0:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->c(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

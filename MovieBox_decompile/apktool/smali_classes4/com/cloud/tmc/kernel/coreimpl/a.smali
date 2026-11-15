.class public final synthetic Lcom/cloud/tmc/kernel/coreimpl/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

.field public final synthetic b:Lcom/cloud/tmc/kernel/executor/ExecutorType;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/a;->a:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/kernel/coreimpl/a;->b:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/kernel/coreimpl/a;->c:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/a;->a:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/kernel/coreimpl/a;->b:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/kernel/coreimpl/a;->c:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->b(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

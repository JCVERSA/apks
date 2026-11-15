.class Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnablePriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;",
        ">;"
    }
.end annotation


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field private type:Lcom/cloud/tmc/kernel/executor/ExecutorType;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/cloud/tmc/kernel/executor/ExecutorType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->type:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->runnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->type:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->type:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->type:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p1, p1, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->type:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->compareTo(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;)I

    move-result p1

    return p1
.end method

.method public getType()Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->type:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$RunnablePriority;->runnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.class public Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/scheduler/Interruptor;


# instance fields
.field private isInterrupted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    .line 3
    .line 4
    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    .line 2
    .line 3
    return v0
.end method

.method public setInterrupted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted:Z

    .line 2
    .line 3
    return-void
.end method

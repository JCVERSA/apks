.class public final synthetic Lcom/cloud/tmc/worker/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/worker/WorkerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/worker/c;->a:Lcom/cloud/tmc/worker/WorkerManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/c;->a:Lcom/cloud/tmc/worker/WorkerManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkLifeCycle;->a(Lcom/cloud/tmc/worker/WorkerManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.class public final synthetic Ll4/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

.field public final synthetic b:Lcom/google/common/util/concurrent/r;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll4/b;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 5
    .line 6
    iput-object p2, p0, Ll4/b;->b:Lcom/google/common/util/concurrent/r;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll4/b;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2
    .line 3
    iget-object v1, p0, Ll4/b;->b:Lcom/google/common/util/concurrent/r;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->q(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/r;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

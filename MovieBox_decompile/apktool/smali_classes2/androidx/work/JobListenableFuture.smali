.class public final Landroidx/work/JobListenableFuture;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/util/concurrent/r;


# instance fields
.field private final a:Lkotlinx/coroutines/t1;

.field private final b:Landroidx/work/impl/utils/futures/a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/t1;Landroidx/work/impl/utils/futures/a;)V
    .locals 1

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underlying"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/JobListenableFuture;->a:Lkotlinx/coroutines/t1;

    .line 3
    iput-object p2, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    .line 4
    new-instance p2, Landroidx/work/JobListenableFuture$1;

    invoke-direct {p2, p0}, Landroidx/work/JobListenableFuture$1;-><init>(Landroidx/work/JobListenableFuture;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/t1;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/t1;Landroidx/work/impl/utils/futures/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->x()Landroidx/work/impl/utils/futures/a;

    move-result-object p2

    const-string p3, "create()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/work/JobListenableFuture;-><init>(Lkotlinx/coroutines/t1;Landroidx/work/impl/utils/futures/a;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/work/JobListenableFuture;)Landroidx/work/impl/utils/futures/a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/work/impl/utils/futures/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->b:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

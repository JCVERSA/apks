.class public abstract Lh29;
.super Lkotlinx/coroutines/h;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/String;

.field public g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/h;-><init>()V

    iput p1, p0, Lh29;->c:I

    iput p2, p0, Lh29;->d:I

    iput-wide p3, p0, Lh29;->e:J

    iput-object p5, p0, Lh29;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lh29;->b()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object p1

    iput-object p1, p0, Lh29;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 7

    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget v1, p0, Lh29;->c:I

    iget v2, p0, Lh29;->d:I

    iget-wide v3, p0, Lh29;->e:J

    iget-object v5, p0, Lh29;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method

.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lh29;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;ZZILjava/lang/Object;)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lh29;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Runnable;ZZ)V
    .locals 0

    iget-object p0, p0, Lh29;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

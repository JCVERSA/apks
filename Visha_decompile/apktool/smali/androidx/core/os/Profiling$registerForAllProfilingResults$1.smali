.class final Landroidx/core/os/Profiling$registerForAllProfilingResults$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/os/Profiling;->registerForAllProfilingResults(Landroid/content/Context;)Lnz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lgh8;",
        "Landroid/os/ProfilingResult;",
        "Lzfb;",
        "<anonymous>",
        "(Lgh8;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "androidx.core.os.Profiling$registerForAllProfilingResults$1"
    f = "Profiling.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lwh1<",
            "-",
            "Landroidx/core/os/Profiling$registerForAllProfilingResults$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->invokeSuspend$lambda$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic h(Lgh8;Landroid/os/ProfilingResult;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->invokeSuspend$lambda$0(Lgh8;Landroid/os/ProfilingResult;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lgh8;Landroid/os/ProfilingResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lbc9;->f(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;

    iget-object p0, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->$context:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;-><init>(Landroid/content/Context;Lwh1;)V

    iput-object p1, v0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lgh8;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgh8;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgh8;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->invoke(Lgh8;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lgh8;

    new-instance v1, Landroidx/core/os/a;

    invoke-direct {v1, p1}, Landroidx/core/os/a;-><init>(Lgh8;)V

    iget-object v3, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->$context:Landroid/content/Context;

    invoke-static {}, Lnh8;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Loh8;->a(Ljava/lang/Object;)Landroid/os/ProfilingManager;

    move-result-object v3

    new-instance v4, Landroidx/core/os/b;

    invoke-direct {v4}, Landroidx/core/os/b;-><init>()V

    invoke-static {v3, v4, v1}, Lrh8;->a(Landroid/os/ProfilingManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    new-instance v4, Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;

    invoke-direct {v4, v3, v1}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1$2;-><init>(Landroid/os/ProfilingManager;Ljava/util/function/Consumer;)V

    iput v2, p0, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Lgh8;Lc74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

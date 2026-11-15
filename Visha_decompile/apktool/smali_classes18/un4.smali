.class public abstract Lun4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsn4;

.field private static volatile choreographer:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance v1, Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lun4;->c(Landroid/os/Looper;Z)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    check-cast v0, Lsn4;

    sput-object v0, Lun4;->a:Lsn4;

    return-void
.end method

.method public static synthetic a(Lcr0;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lun4;->e(Lcr0;J)V

    return-void
.end method

.method public static final synthetic b(Lcr0;)V
    .locals 0

    invoke-static {p0}, Lun4;->f(Lcr0;)V

    return-void
.end method

.method public static final c(Landroid/os/Looper;Z)Landroid/os/Handler;
    .locals 2

    if-eqz p1, :cond_0

    const-class p1, Landroid/os/Looper;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const-class v0, Landroid/os/Handler;

    const-string v1, "createAsync"

    invoke-virtual {v0, v1, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.os.Handler"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Handler;

    return-object p0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1
.end method

.method public static final d(Landroid/view/Choreographer;Lcr0;)V
    .locals 1

    new-instance v0, Ltn4;

    invoke-direct {v0, p1}, Ltn4;-><init>(Lcr0;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public static final e(Lcr0;J)V
    .locals 1

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcr0;->resumeUndispatched(Lkotlinx/coroutines/c;Ljava/lang/Object;)V

    return-void
.end method

.method public static final f(Lcr0;)V
    .locals 1

    sget-object v0, Lun4;->choreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    sput-object v0, Lun4;->choreographer:Landroid/view/Choreographer;

    :cond_0
    invoke-static {v0, p0}, Lun4;->d(Landroid/view/Choreographer;Lcr0;)V

    return-void
.end method

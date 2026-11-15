.class public Lcom/google/firebase/concurrent/ExecutorsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ThreadPoolCreation"
    }
.end annotation


# static fields
.field public static final a:Lzi5;

.field public static final b:Lzi5;

.field public static final c:Lzi5;

.field public static final d:Lzi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzi5;

    new-instance v1, Lff3;

    invoke-direct {v1}, Lff3;-><init>()V

    invoke-direct {v0, v1}, Lzi5;-><init>(Lpj8;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lzi5;

    new-instance v0, Lzi5;

    new-instance v1, Lgf3;

    invoke-direct {v1}, Lgf3;-><init>()V

    invoke-direct {v0, v1}, Lzi5;-><init>(Lpj8;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lzi5;

    new-instance v0, Lzi5;

    new-instance v1, Lhf3;

    invoke-direct {v1}, Lhf3;-><init>()V

    invoke-direct {v0, v1}, Lzi5;-><init>(Lpj8;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lzi5;

    new-instance v0, Lzi5;

    new-instance v1, Lif3;

    invoke-direct {v1}, Lif3;-><init>()V

    invoke-direct {v0, v1}, Lzi5;-><init>(Lpj8;)V

    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lzi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->n(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->q()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lic1;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->o(Lic1;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->m(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->l(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->r()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static i()Landroid/os/StrictMode$ThreadPolicy;
    .locals 1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .locals 2

    new-instance v0, Lxo1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lxo1;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lxo1;

    invoke-direct {v0, p0, p1, p2}, Lxo1;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method public static synthetic l(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lzi5;

    invoke-virtual {p0}, Lzi5;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic m(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lzi5;

    invoke-virtual {p0}, Lzi5;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic n(Lic1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lzi5;

    invoke-virtual {p0}, Lzi5;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic o(Lic1;)Ljava/util/concurrent/Executor;
    .locals 0

    sget-object p0, Lcom/google/firebase/concurrent/UiExecutor;->INSTANCE:Lcom/google/firebase/concurrent/UiExecutor;

    return-object p0
.end method

.method public static synthetic p()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    const/16 v0, 0xa

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->i()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const-string v2, "Firebase Background"

    invoke-static {v2, v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->t()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    const-string v3, "Firebase Lite"

    invoke-static {v3, v1, v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const-string v0, "Firebase Blocking"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const-string v0, "Firebase Scheduler"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static t()Landroid/os/StrictMode$ThreadPolicy;
    .locals 1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    new-instance v0, Lz72;

    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:Lzi5;

    invoke-virtual {v1}, Lzi5;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, v1}, Lz72;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6

    const-class p0, Ld50;

    const-class v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v3

    const-class v4, Ljava/util/concurrent/Executor;

    invoke-static {p0, v4}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object p0

    filled-new-array {v3, p0}, [Lvk8;

    move-result-object p0

    invoke-static {v1, p0}, Lzb1;->d(Lvk8;[Lvk8;)Lzb1$b;

    move-result-object p0

    new-instance v1, Ljf3;

    invoke-direct {v1}, Ljf3;-><init>()V

    invoke-virtual {p0, v1}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object p0

    invoke-virtual {p0}, Lzb1$b;->d()Lzb1;

    move-result-object p0

    const-class v1, Lrf0;

    invoke-static {v1, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v3

    invoke-static {v1, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v5

    invoke-static {v1, v4}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v1

    filled-new-array {v5, v1}, [Lvk8;

    move-result-object v1

    invoke-static {v3, v1}, Lzb1;->d(Lvk8;[Lvk8;)Lzb1$b;

    move-result-object v1

    new-instance v3, Lkf3;

    invoke-direct {v3}, Lkf3;-><init>()V

    invoke-virtual {v1, v3}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v1

    invoke-virtual {v1}, Lzb1$b;->d()Lzb1;

    move-result-object v1

    const-class v3, Lal5;

    invoke-static {v3, v0}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v0

    invoke-static {v3, v2}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v2

    invoke-static {v3, v4}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v3

    filled-new-array {v2, v3}, [Lvk8;

    move-result-object v2

    invoke-static {v0, v2}, Lzb1;->d(Lvk8;[Lvk8;)Lzb1$b;

    move-result-object v0

    new-instance v2, Llf3;

    invoke-direct {v2}, Llf3;-><init>()V

    invoke-virtual {v0, v2}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v0

    invoke-virtual {v0}, Lzb1$b;->d()Lzb1;

    move-result-object v0

    const-class v2, Lnfb;

    invoke-static {v2, v4}, Lvk8;->a(Ljava/lang/Class;Ljava/lang/Class;)Lvk8;

    move-result-object v2

    invoke-static {v2}, Lzb1;->c(Lvk8;)Lzb1$b;

    move-result-object v2

    new-instance v3, Lmf3;

    invoke-direct {v3}, Lmf3;-><init>()V

    invoke-virtual {v2, v3}, Lzb1$b;->f(Lnc1;)Lzb1$b;

    move-result-object v2

    invoke-virtual {v2}, Lzb1$b;->d()Lzb1;

    move-result-object v2

    filled-new-array {p0, v1, v0, v2}, [Lzb1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

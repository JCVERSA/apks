.class public final Lcom/transsion/fission/k;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/fission/k;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/transsion/fission/FissionConfig;

.field private static final d:Lkotlinx/coroutines/n0;

.field private static final e:Lkotlin/Lazy;

.field private static final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/fission/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/fission/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/fission/k;->a:Lcom/transsion/fission/k;

    .line 7
    .line 8
    const-string v0, "FissionManager"

    .line 9
    .line 10
    sput-object v0, Lcom/transsion/fission/k;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsion/fission/k;->d:Lkotlinx/coroutines/n0;

    .line 21
    .line 22
    new-instance v0, Lcom/transsion/fission/g;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/transsion/fission/g;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/transsion/fission/k;->e:Lkotlin/Lazy;

    .line 32
    .line 33
    new-instance v0, Lcom/transsion/fission/h;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/transsion/fission/h;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/transsion/fission/k;->f:Lkotlin/Lazy;

    .line 43
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/fission/k;->e()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lgk/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/fission/k;->f()Lgk/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final e()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final f()Lgk/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lgk/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lgk/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/fission/l;->a:Lcom/transsion/fission/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/fission/l;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()Lcom/transsion/fission/FissionConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/fission/k;->c:Lcom/transsion/fission/FissionConfig;

    .line 2
    .line 3
    return-object v0
.end method

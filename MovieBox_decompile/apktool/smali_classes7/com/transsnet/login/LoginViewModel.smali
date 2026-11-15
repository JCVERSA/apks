.class public final Lcom/transsnet/login/LoginViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsnet/login/LoginViewModel;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    new-instance v1, Lcom/transsnet/login/s;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsnet/login/s;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/transsnet/login/LoginViewModel;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsnet/login/LoginViewModel;->c:Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic b()Lnx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/login/LoginViewModel;->j()Lnx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsnet/login/LoginViewModel;)Lnx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/LoginViewModel;->f()Lnx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsnet/login/LoginViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/LoginViewModel;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/login/LoginViewModel;Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/login/LoginViewModel;->i(Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f()Lnx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/LoginViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i(Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsnet/login/LoginViewModel$handleLoginSuccess$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p2, v1}, Lcom/transsnet/login/LoginViewModel$handleLoginSuccess$1;-><init>(Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final j()Lnx/a;
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
    const-class v1, Lnx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnx/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final k(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/transsnet/login/LoginViewModel$a;->a:Lcom/transsnet/login/LoginViewModel$a;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->u(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/transsnet/login/LoginViewModel$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsnet/login/LoginViewModel$b;-><init>(Lcom/transsnet/login/LoginViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->n(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/transsnet/login/LoginViewModel$c;

    .line 31
    .line 32
    invoke-direct {v0, p0, p2}, Lcom/transsnet/login/LoginViewModel$c;-><init>(Lcom/transsnet/login/LoginViewModel;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/LoginViewModel;->c:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "idToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "channel"

    .line 12
    .line 13
    const-string v3, "GOOGLE"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1, v3}, Lcom/transsnet/login/LoginViewModel;->k(Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

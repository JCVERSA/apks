.class public final Lcom/transsnet/login/email/a0;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsnet/login/email/z;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsnet/login/email/z;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsnet/login/email/a0;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/b0;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsnet/login/email/a0;->b:Landroidx/lifecycle/b0;

    .line 21
    .line 22
    new-instance v0, Landroidx/lifecycle/b0;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsnet/login/email/a0;->c:Landroidx/lifecycle/b0;

    .line 28
    .line 29
    new-instance v0, Landroidx/lifecycle/b0;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsnet/login/email/a0;->d:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic b()Lcom/transsnet/login/email/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/login/email/a0;->l()Lcom/transsnet/login/email/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsnet/login/email/a0;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/email/a0;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsnet/login/email/a0;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/email/a0;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/login/email/a0;)Lcom/transsnet/login/email/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/email/a0;->k()Lcom/transsnet/login/email/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/transsnet/login/email/a0;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/email/a0;->h(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final k()Lcom/transsnet/login/email/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/a0;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/login/email/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final l()Lcom/transsnet/login/email/a;
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
    const-class v1, Lcom/transsnet/login/email/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsnet/login/email/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "email"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsnet/login/email/a0$a;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/transsnet/login/email/a0$a;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->u(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Lcom/transsnet/login/email/a0$b;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/transsnet/login/email/a0$b;-><init>(Lcom/transsnet/login/email/a0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->n(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/transsnet/login/email/a0$c;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/transsnet/login/email/a0$c;-><init>(Lcom/transsnet/login/email/a0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/a0;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "email"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lix/f;->a:Lix/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lix/f;->b()Lcom/tencent/mmkv/MMKV;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    sub-long/2addr v5, v3

    .line 23
    cmp-long v0, v1, v5

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    const-wide/32 v0, 0xea60

    .line 28
    .line 29
    .line 30
    cmp-long v0, v5, v0

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/transsnet/login/email/a0;->c:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "mail"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v1, "type"

    .line 51
    .line 52
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string p2, "authType"

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    new-instance v1, Lcom/transsnet/login/email/a0$d;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Lcom/transsnet/login/email/a0$d;-><init>(Lorg/json/JSONObject;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/j;->u(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    new-instance v0, Lcom/transsnet/login/email/a0$e;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/transsnet/login/email/a0$e;-><init>(Lcom/transsnet/login/email/a0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/j;->n(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 84
    .line 85
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance v0, Lcom/transsnet/login/email/a0$f;

    .line 94
    .line 95
    invoke-direct {v0, p0, p1}, Lcom/transsnet/login/email/a0$f;-><init>(Lcom/transsnet/login/email/a0;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/a0;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

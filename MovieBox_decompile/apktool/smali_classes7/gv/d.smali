.class public final Lgv/d;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 5
    .line 6
    new-instance v1, Lgv/b;

    .line 7
    .line 8
    invoke-direct {v1}, Lgv/b;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lgv/d;->a:Lkotlin/Lazy;

    .line 16
    .line 17
    new-instance v0, Lgv/c;

    .line 18
    .line 19
    invoke-direct {v0}, Lgv/c;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lgv/d;->b:Lkotlin/Lazy;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic b()Lgv/a;
    .locals 1

    .line 1
    invoke-static {}, Lgv/d;->h()Lgv/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lgv/d;->g()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final e()Lgv/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv/d;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgv/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final h()Lgv/a;
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
    const-class v1, Lgv/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lgv/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv/d;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lgv/d;->e()Lgv/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 16
    .line 17
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0x1e

    .line 22
    .line 23
    invoke-interface {v0, v1, p1, p2, v2}, Lgv/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/j;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 28
    .line 29
    invoke-virtual {p2}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lgv/d$a;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lgv/d$a;-><init>(Lgv/d;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

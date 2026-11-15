.class public final Lbm/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lbm/e;

.field private static b:Z

.field private static c:Lbm/b;

.field private static d:Z

.field private static final e:Lkotlin/Lazy;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbm/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lbm/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbm/e;->a:Lbm/e;

    .line 7
    .line 8
    new-instance v0, Lbm/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lbm/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lbm/e;->e:Lkotlin/Lazy;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    sput-object v0, Lbm/e;->f:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "wefeed-mobile-bff"

    .line 24
    .line 25
    sput-object v0, Lbm/e;->g:Ljava/lang/String;

    .line 26
    .line 27
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

.method public static synthetic a()Lbm/a;
    .locals 1

    .line 1
    invoke-static {}, Lbm/e;->i()Lbm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/e;->q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lbm/e;)Lbm/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lbm/e;->k()Lbm/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Lbm/b;
    .locals 1

    .line 1
    sget-object v0, Lbm/e;->c:Lbm/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lbm/e;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lbm/e;->l()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lbm/e;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lbm/e;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final i()Lbm/a;
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
    const-class v1, Lbm/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lbm/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final j()Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Lbm/e;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lbm/e;->f:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x17

    .line 15
    .line 16
    const-string v2, "all"

    .line 17
    .line 18
    if-gt v0, v1, :cond_1

    .line 19
    .line 20
    sput-object v2, Lbm/e;->f:Ljava/lang/String;

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    :try_start_0
    const-class v0, Lcm/g;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "iterator(...)"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcm/g;

    .line 54
    .line 55
    invoke-interface {v1}, Lcm/g;->providerParams()Ljava/util/HashSet;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string v4, ","

    .line 66
    .line 67
    const/16 v10, 0x3e

    .line 68
    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lbm/e;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :goto_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    const-string v1, ""

    .line 91
    .line 92
    :cond_3
    move-object v5, v1

    .line 93
    const/4 v7, 0x4

    .line 94
    const/4 v8, 0x0

    .line 95
    const-string v4, "CombinedRequestParam"

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-static/range {v3 .. v8}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    sput-object v2, Lbm/e;->f:Ljava/lang/String;

    .line 105
    .line 106
    :goto_2
    sget-object v0, Lbm/e;->f:Ljava/lang/String;

    .line 107
    .line 108
    return-object v0
.end method

.method private final k()Lbm/a;
    .locals 1

    .line 1
    sget-object v0, Lbm/e;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbm/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lbm/e;->h:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lbm/e;->h:Ljava/lang/Boolean;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lbm/e;->h:Ljava/lang/Boolean;

    .line 18
    .line 19
    return-object v0
.end method

.method public static synthetic p(Lbm/e;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Lgg/a;->a:Lgg/a$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const-string p2, "wefeed-mobile-bff"

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, p1, p2}, Lbm/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbm/e;->a:Lbm/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lbm/e;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 3

    .line 1
    sget-boolean v0, Lbm/e;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lbm/e;->g:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, v0, v1, v2}, Lbm/e;->p(Lbm/e;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lbm/e;->h:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p0}, Lbm/e;->h()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lbm/e;->h:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p2, Lbm/e;->g:Ljava/lang/String;

    .line 12
    .line 13
    sget-boolean v0, Lbm/e;->d:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v2, "RequestConfig"

    .line 22
    .line 23
    const-string v3, "requestConfig ing..."

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lbm/e;->d:Z

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lbm/e;->b:Z

    .line 35
    .line 36
    sget-object v0, Lcm/d;->a:Lcm/d;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcm/d;->g()Lcom/tencent/mmkv/MMKV;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "configVersion"

    .line 43
    .line 44
    const-string v2, ""

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v2, v0

    .line 54
    :goto_0
    new-instance v0, Lbm/d;

    .line 55
    .line 56
    invoke-direct {v0}, Lbm/d;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->r(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/j;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lbm/e$a;

    .line 72
    .line 73
    invoke-direct {v1, p2, p1, v2}, Lbm/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->n(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 81
    .line 82
    invoke-virtual {p2}, Ldg/d;->e()Lio/reactivex/rxjava3/core/n;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object p2, Lbm/e$b;->a:Lbm/e$b;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->y(Lyx/d;)Lio/reactivex/rxjava3/core/j;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance p2, Lbm/e$c;

    .line 97
    .line 98
    invoke-direct {p2}, Lbm/e$c;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final r(Lbm/b;)V
    .locals 1

    .line 1
    const-string v0, "configLoadListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lbm/e;->c:Lbm/b;

    .line 7
    .line 8
    return-void
.end method

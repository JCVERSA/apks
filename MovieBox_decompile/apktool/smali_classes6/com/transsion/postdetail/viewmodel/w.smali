.class public final Lcom/transsion/postdetail/viewmodel/w;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ShortTvDetailViewModel"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/postdetail/viewmodel/q;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/q;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 20
    .line 21
    new-instance v1, Lcom/transsion/postdetail/viewmodel/r;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/transsion/postdetail/viewmodel/r;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->c:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance v0, Lcom/transsion/postdetail/viewmodel/s;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/s;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->e:Lkotlin/Lazy;

    .line 42
    .line 43
    new-instance v0, Lcom/transsion/postdetail/viewmodel/t;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/t;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->f:Lkotlin/Lazy;

    .line 53
    .line 54
    new-instance v0, Lcom/transsion/postdetail/viewmodel/u;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/u;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->g:Lkotlin/Lazy;

    .line 64
    .line 65
    new-instance v0, Lcom/transsion/postdetail/viewmodel/v;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/v;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->h:Lkotlin/Lazy;

    .line 75
    .line 76
    return-void
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/w;->r()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lao/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/w;->t()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/w;->i()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/w;->s()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Ltm/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/w;->h()Ltm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/w;->p()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final h()Ltm/a;
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
    const-class v1, Ltm/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ltm/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final i()Landroidx/lifecycle/b0;
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

.method private final m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->e:Lkotlin/Lazy;

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

.method private static final p()Landroidx/lifecycle/b0;
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

.method private static final r()Landroidx/lifecycle/b0;
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

.method private static final s()Landroidx/lifecycle/b0;
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

.method private static final t()Lao/b;
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
    const-class v1, Lao/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lao/b;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->g:Lkotlin/Lazy;

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

.method public final k(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    .line 1
    const-string v0, "postId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nextPage"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPage(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPerPage(I)V

    .line 20
    .line 21
    .line 22
    sget-object p3, Ljg/b;->a:Ljg/b$a;

    .line 23
    .line 24
    invoke-virtual {p3}, Ljg/b$a;->h()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setSessionId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p3, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/transsion/baselib/report/h;->b()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const-string p4, ""

    .line 38
    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    if-nez p3, :cond_1

    .line 46
    .line 47
    :cond_0
    move-object p3, p4

    .line 48
    :cond_1
    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setDeepLink(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setUserPrefer(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p3, Lej/a;

    .line 55
    .line 56
    sget-object p4, Lej/b;->a:Lej/b$a;

    .line 57
    .line 58
    invoke-virtual {p4}, Lej/b$a;->e()Ljava/util/Queue;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    invoke-direct {p3, p4}, Lej/a;-><init>(Ljava/util/Queue;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-nez p3, :cond_2

    .line 73
    .line 74
    const-string p1, "0"

    .line 75
    .line 76
    :cond_2
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPostId(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setTabId(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p5}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setImmersiveRecType(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/w;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;->r(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/w;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/w;->m()Landroidx/lifecycle/b0;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Lam/b;->f(Landroidx/lifecycle/b0;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void
.end method

.method public final l()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/w;->m()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final n()Lcom/transsion/moviedetailapi/bean/ShortTVRespData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lam/b;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/transsion/moviedetailapi/bean/ShortTVRespData;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/w;->h:Lkotlin/Lazy;

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

.method public final q(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sget-object v1, Lam/e;->a:Lam/e;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lam/e;->a(I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :goto_0
    if-eqz p1, :cond_3

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v2, v1

    .line 35
    check-cast v2, Lam/b;

    .line 36
    .line 37
    instance-of v2, v2, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v1, v0

    .line 43
    :goto_1
    check-cast v1, Lam/b;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object v1, v0

    .line 47
    :goto_2
    check-cast v1, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    invoke-direct {v1, v0, p1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;-><init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/w;->d:Lcom/transsion/postdetail/ui/fragment/preload/ShortTvVideoImmersiveDataLoader;

    .line 58
    .line 59
    return-void
.end method

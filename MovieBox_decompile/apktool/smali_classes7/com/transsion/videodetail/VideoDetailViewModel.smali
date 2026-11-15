.class public final Lcom/transsion/videodetail/VideoDetailViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Ljava/util/HashMap;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private j:Ljava/lang/String;

.field private k:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/b0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/b0;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/b0;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/b0;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->f:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/b0;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->g:Landroidx/lifecycle/b0;

    .line 52
    .line 53
    new-instance v0, Lcom/transsion/videodetail/a1;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/transsion/videodetail/a1;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->h:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v0, Lcom/transsion/videodetail/b1;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/transsion/videodetail/b1;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->i:Lkotlin/Lazy;

    .line 74
    .line 75
    return-void
.end method

.method private final A()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final D()Lcom/transsion/videodetail/b;
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
    const-class v1, Lcom/transsion/videodetail/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/videodetail/b;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final E()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/videodetail/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videodetail/VideoDetailViewModel;->D()Lcom/transsion/videodetail/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videodetail/VideoDetailViewModel;->E()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/VideoDetailViewModel;->o(Ljava/lang/Integer;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel;->p(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/videodetail/VideoDetailViewModel;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/videodetail/VideoDetailViewModel;)Lcom/transsion/videodetail/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/VideoDetailViewModel;->z()Lcom/transsion/videodetail/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/videodetail/VideoDetailViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/VideoDetailViewModel;->A()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x1

    .line 10
    if-gt v0, p1, :cond_1

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "0"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_1
    return-object p1
.end method

.method private final p(Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, p2, p1, v1}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method private final z()Lcom/transsion/videodetail/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/videodetail/b;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final B(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 23
    .line 24
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/videodetail/VideoDetailViewModel$fetchHistory$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchHistory$1;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->a:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v4, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchSeason$1;-><init>(Ljava/lang/String;Lcom/transsion/videodetail/VideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final s()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V
    .locals 22

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "--------getPlayInfo:"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    const/4 v13, 0x4

    .line 26
    const/4 v14, 0x0

    .line 27
    const-string v10, "VideoDetailEpisode"

    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    move-object v9, v1

    .line 31
    invoke-static/range {v9 .. v14}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSubjectId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v7, "-"

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    iget-object v7, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->k:Lkotlinx/coroutines/t1;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    invoke-interface {v7}, Lkotlinx/coroutines/t1;->isActive()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-ne v7, v0, :cond_2

    .line 84
    .line 85
    iget-object v7, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->j:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "\u6b63\u5728\u8bf7\u6c42\u4e2d key\uff1a"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/4 v5, 0x4

    .line 111
    const/4 v6, 0x0

    .line 112
    const-string v2, "CommonInfo"

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    iget-object v1, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->k:Lkotlinx/coroutines/t1;

    .line 120
    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    invoke-static {v1, v7, v0, v7}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object v1, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->f:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    iget-object v0, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-eqz v1, :cond_a

    .line 148
    .line 149
    new-instance v2, Lcom/transsion/videodetail/bean/VideoDetailStream;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const-string v6, ""

    .line 156
    .line 157
    if-nez v5, :cond_4

    .line 158
    .line 159
    move-object v11, v6

    .line 160
    goto :goto_0

    .line 161
    :cond_4
    move-object v11, v5

    .line 162
    :goto_0
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    if-nez v5, :cond_5

    .line 167
    .line 168
    move-object v12, v6

    .line 169
    goto :goto_1

    .line 170
    :cond_5
    move-object v12, v5

    .line 171
    :goto_1
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    const-string v6, "0"

    .line 184
    .line 185
    if-eqz v5, :cond_7

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    if-nez v5, :cond_6

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    move-object v14, v5

    .line 195
    goto :goto_3

    .line 196
    :cond_7
    :goto_2
    move-object v14, v6

    .line 197
    :goto_3
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-eqz v1, :cond_9

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-nez v1, :cond_8

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_8
    move-object v15, v1

    .line 211
    goto :goto_5

    .line 212
    :cond_9
    :goto_4
    move-object v15, v6

    .line 213
    :goto_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v5, "emptyList(...)"

    .line 218
    .line 219
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v10, "DEFAULT"

    .line 223
    .line 224
    const-string v16, ""

    .line 225
    .line 226
    move-object v9, v2

    .line 227
    move-object/from16 v17, v1

    .line 228
    .line 229
    invoke-direct/range {v9 .. v17}, Lcom/transsion/videodetail/bean/VideoDetailStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 233
    .line 234
    new-instance v5, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    .line 235
    .line 236
    new-array v0, v0, [Lcom/transsion/videodetail/bean/VideoDetailStream;

    .line 237
    .line 238
    const/4 v6, 0x0

    .line 239
    aput-object v2, v0, v6

    .line 240
    .line 241
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    const/16 v14, 0xe

    .line 246
    .line 247
    const/4 v15, 0x0

    .line 248
    const/4 v11, 0x0

    .line 249
    const/4 v12, 0x0

    .line 250
    const/4 v13, 0x0

    .line 251
    move-object v9, v5

    .line 252
    invoke-direct/range {v9 .. v15}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;-><init>(Ljava/util/List;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v4}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setEp(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v3}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setSe(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_a
    iput-object v6, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->j:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 268
    .line 269
    .line 270
    move-result-object v16

    .line 271
    new-instance v19, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;

    .line 272
    .line 273
    const/4 v7, 0x0

    .line 274
    move-object/from16 v0, v19

    .line 275
    .line 276
    move-object/from16 v1, p0

    .line 277
    .line 278
    move-object/from16 v5, p1

    .line 279
    .line 280
    invoke-direct/range {v0 .. v7}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;IILcom/transsion/videodetail/bean/VideoDetailMediaSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 281
    .line 282
    .line 283
    const/16 v20, 0x3

    .line 284
    .line 285
    const/16 v21, 0x0

    .line 286
    .line 287
    const/16 v17, 0x0

    .line 288
    .line 289
    const/16 v18, 0x0

    .line 290
    .line 291
    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iput-object v0, v8, Lcom/transsion/videodetail/VideoDetailViewModel;->k:Lkotlinx/coroutines/t1;

    .line 296
    .line 297
    return-void
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

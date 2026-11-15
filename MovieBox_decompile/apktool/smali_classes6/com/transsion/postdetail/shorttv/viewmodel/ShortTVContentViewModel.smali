.class public final Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsion/postdetail/shorttv/viewmodel/a;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/postdetail/shorttv/viewmodel/a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/postdetail/shorttv/viewmodel/b;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/postdetail/shorttv/viewmodel/b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Landroidx/lifecycle/b0;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->d:Landroidx/lifecycle/b0;

    .line 37
    .line 38
    new-instance p1, Landroidx/lifecycle/b0;

    .line 39
    .line 40
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->e:Landroidx/lifecycle/b0;

    .line 44
    .line 45
    new-instance p1, Landroidx/lifecycle/b0;

    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->f:Landroidx/lifecycle/b0;

    .line 51
    .line 52
    new-instance p1, Landroidx/lifecycle/b0;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->g:Landroidx/lifecycle/b0;

    .line 58
    .line 59
    new-instance p1, Landroidx/lifecycle/b0;

    .line 60
    .line 61
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->h:Landroidx/lifecycle/b0;

    .line 65
    .line 66
    new-instance p1, Landroidx/lifecycle/b0;

    .line 67
    .line 68
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->i:Landroidx/lifecycle/b0;

    .line 72
    .line 73
    new-instance p1, Lcom/transsion/postdetail/shorttv/viewmodel/c;

    .line 74
    .line 75
    invoke-direct {p1}, Lcom/transsion/postdetail/shorttv/viewmodel/c;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->j:Lkotlin/Lazy;

    .line 83
    .line 84
    return-void
.end method

.method public static synthetic c()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->n()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->g()Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Lao/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->m()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;)Lao/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->k()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final k()Lao/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lao/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final m()Lao/b;
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

.method private static final n()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->w1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Ljava/lang/String;IZ)V
    .locals 8

    .line 1
    const-string v0, "nextPage"

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
    new-instance v0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v2, v0

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move v5, p2

    .line 17
    move v6, p3

    .line 18
    invoke-direct/range {v2 .. v7}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1;-><init>(Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v4, v0

    .line 26
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 27
    .line 28
    .line 29
    return-void
.end method

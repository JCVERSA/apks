.class public final Lcom/transsion/search/viewmodel/SearchWorkViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private a:Z

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Ljava/util/List;

.field private final d:Lkotlin/Lazy;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->a:Z

    .line 6
    .line 7
    new-instance v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->b:Landroidx/lifecycle/b0;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/search/viewmodel/c;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/transsion/search/viewmodel/c;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d:Lkotlin/Lazy;

    .line 31
    .line 32
    const/16 v0, 0x32

    .line 33
    .line 34
    iput v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f:I

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->n()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->j()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search/viewmodel/SearchWorkViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method private final j()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d:Lkotlin/Lazy;

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

.method public static synthetic l(Lcom/transsion/search/viewmodel/SearchWorkViewModel;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->k(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final n()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
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


# virtual methods
.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final k(Z)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;-><init>(ZLcom/transsion/search/viewmodel/SearchWorkViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->e:I

    .line 2
    .line 3
    return-void
.end method

.class public final Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private c:Landroidx/lifecycle/b0;

.field private d:Landroidx/lifecycle/b0;

.field private e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LocalVideoViewModel"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/postdetail/viewmodel/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Landroidx/lifecycle/b0;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 25
    .line 26
    new-instance v0, Landroidx/lifecycle/b0;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 32
    .line 33
    new-instance v0, Landroidx/lifecycle/b0;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 39
    .line 40
    new-instance v0, Landroidx/lifecycle/b0;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic b()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->k()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final j()Lcx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final k()Lcx/a;
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
    const-class v1, Lcx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcx/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 12
    .line 13
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->j()Lcx/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1, p1}, Lcx/a;->h(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 40
    .line 41
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;-><init>(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    new-instance v3, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

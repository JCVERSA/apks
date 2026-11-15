.class public final Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->k:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/shorttv/viewmodel/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/shorttv/viewmodel/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/shorttv/viewmodel/b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/b;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Landroidx/lifecycle/b0;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    .line 32
    .line 33
    new-instance v0, Landroidx/lifecycle/b0;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->d:Landroidx/lifecycle/b0;

    .line 39
    .line 40
    new-instance v0, Landroidx/lifecycle/b0;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->e:Landroidx/lifecycle/b0;

    .line 46
    .line 47
    new-instance v0, Landroidx/lifecycle/b0;

    .line 48
    .line 49
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->f:Landroidx/lifecycle/b0;

    .line 53
    .line 54
    new-instance v0, Landroidx/lifecycle/b0;

    .line 55
    .line 56
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->g:Landroidx/lifecycle/b0;

    .line 60
    .line 61
    new-instance v0, Landroidx/lifecycle/b0;

    .line 62
    .line 63
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->h:Landroidx/lifecycle/b0;

    .line 67
    .line 68
    new-instance v0, Landroidx/lifecycle/b0;

    .line 69
    .line 70
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    .line 74
    .line 75
    new-instance v0, Landroidx/lifecycle/b0;

    .line 76
    .line 77
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j:Landroidx/lifecycle/b0;

    .line 81
    .line 82
    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->f(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lsr/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->u()Lsr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->h()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lsr/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->k()Lsr/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 7

    .line 1
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object p0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getApp(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;->j0()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "adUnlockDao init failed: "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v5, 0x4

    .line 64
    const/4 v6, 0x0

    .line 65
    const-string v2, "ShortTvDownload"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    :cond_1
    check-cast p0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 79
    .line 80
    return-object p0
.end method

.method private final h()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final k()Lsr/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsr/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic o(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->n(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final u()Lsr/a;
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
    const-class v1, Lsr/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lsr/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final g(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    new-instance v8, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$favorite$1;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, v8

    .line 22
    move-object v1, p1

    .line 23
    move-object v3, p0

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$favorite$1;-><init>(Lcom/transsion/shorttv/bean/Subject;ZLcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Lcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 p1, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v5, v6

    .line 32
    move-object v6, p1

    .line 33
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;II)V
    .locals 9

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
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v3, v0

    .line 18
    move-object v4, p0

    .line 19
    move-object v5, p1

    .line 20
    move v6, p2

    .line 21
    move v7, p3

    .line 22
    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    move-object v4, v0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n(Ljava/lang/String;Z)V
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
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, p2, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/Subject;->setPaid(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 14

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v7

    .line 25
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "will saveAdUnlockedEps, eps: "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x4

    .line 47
    const/4 v6, 0x0

    .line 48
    const-string v2, "ShortTvDownload"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    new-instance v11, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$saveAdUnlockedEps$1;

    .line 83
    .line 84
    invoke-direct {v11, p1, v0, p0, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$saveAdUnlockedEps$1;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    const/4 v12, 0x3

    .line 88
    const/4 v13, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    return-void
.end method

.method public final v(Lnr/d;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lnr/d;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lnr/d;->b()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lnr/d;->b()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v4, p2, p0, p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1;-><init>(Ljava/util/List;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

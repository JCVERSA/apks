.class public final Lcom/transsion/home/viewmodel/TrendingViewModel;
.super Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/TrendingViewModel$a;
    }
.end annotation


# static fields
.field public static final p:Lcom/transsion/home/viewmodel/TrendingViewModel$a;

.field public static final q:I


# instance fields
.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private n:I

.field private final o:Lyk/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/TrendingViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/TrendingViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/viewmodel/TrendingViewModel;->p:Lcom/transsion/home/viewmodel/TrendingViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/viewmodel/TrendingViewModel;->q:I

    .line 12
    .line 13
    return-void
.end method

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
    invoke-direct {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsion/home/viewmodel/v;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/v;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->k:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/home/viewmodel/w;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/w;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->l:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Lcom/transsion/home/viewmodel/x;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/x;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->m:Lkotlin/Lazy;

    .line 41
    .line 42
    const/16 p1, 0xc

    .line 43
    .line 44
    iput p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->n:I

    .line 45
    .line 46
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 47
    .line 48
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-class v0, Lyk/e;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lyk/e;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->o:Lyk/e;

    .line 61
    .line 62
    return-void
.end method

.method public static synthetic O()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingViewModel;->Z()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic P()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingViewModel;->b0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingViewModel;->c0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic R(Lcom/transsion/home/viewmodel/TrendingViewModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/viewmodel/TrendingViewModel;->U(Lcom/transsion/home/viewmodel/TrendingViewModel;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lcom/transsion/home/viewmodel/TrendingViewModel;)Lyk/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->o:Lyk/e;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final U(Lcom/transsion/home/viewmodel/TrendingViewModel;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lzk/e;->a:Lzk/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzk/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "trending_room_entrance_cache_v2"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "TrendingViewModel"

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-class v3, Lcom/transsion/home/bean/RoomEntranceResponse;

    .line 28
    .line 29
    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/transsion/home/bean/RoomEntranceResponse;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/TrendingViewModel;->W()Landroidx/lifecycle/b0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 43
    .line 44
    const-string v0, "fetchGroupInfo use cache"

    .line 45
    .line 46
    invoke-virtual {p0, v2, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    const-string v0, "fetchGroupInfo failed without cache"

    .line 53
    .line 54
    invoke-virtual {p0, v2, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method

.method private static final Z()Landroidx/lifecycle/b0;
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

.method private static final b0()Landroidx/lifecycle/b0;
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

.method private static final c0()Landroidx/lifecycle/b0;
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


# virtual methods
.method public A()Lcom/transsion/moviedetailapi/enum/PostListSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/enum/PostListSource;->POSTLIST:Lcom/transsion/moviedetailapi/enum/PostListSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public E(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public F(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final T(Z)V
    .locals 7

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/home/viewmodel/y;-><init>(Lcom/transsion/home/viewmodel/TrendingViewModel;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v4, Lcom/transsion/home/viewmodel/TrendingViewModel$fetchGroupInfo$1;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-direct {v4, p0, v0, p1}, Lcom/transsion/home/viewmodel/TrendingViewModel$fetchGroupInfo$1;-><init>(Lcom/transsion/home/viewmodel/TrendingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final V()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->l:Lkotlin/Lazy;

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

.method public final W()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->m:Lkotlin/Lazy;

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

.method public final X()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/TrendingViewModel;->k:Lkotlin/Lazy;

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

.method public final Y(Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    const-string v0, "nextPage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/home/bean/TrendingRequestEntity;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/home/bean/TrendingRequestEntity;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPage(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lcom/transsion/home/bean/TrendingRequestEntity;->setPerPage(I)V

    .line 15
    .line 16
    .line 17
    sget-object p2, Ljg/b;->a:Ljg/b$a;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljg/b$a;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Lcom/transsion/home/bean/TrendingRequestEntity;->setSessionId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p2, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/transsion/baselib/report/h;->b()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    :cond_0
    const-string p2, ""

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0, p2}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDeepLink(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lej/a;

    .line 46
    .line 47
    sget-object v1, Lej/b;->a:Lej/b$a;

    .line 48
    .line 49
    invoke-virtual {v1}, Lej/b$a;->e()Ljava/util/Queue;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {p2, v1}, Lej/a;-><init>(Ljava/util/Queue;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Lcom/transsion/home/bean/TrendingRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lcom/transsion/home/enum/HomeTabId;->Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v0, p2}, Lcom/transsion/home/bean/TrendingRequestEntity;->setTabId(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {v0, p2}, Lcom/transsion/home/bean/TrendingRequestEntity;->setDisablePlaylist(Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v4, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;

    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    invoke-direct {v4, v0, p0, p1, p2}, Lcom/transsion/home/viewmodel/TrendingViewModel$getTrendingList$1;-><init>(Lcom/transsion/home/bean/TrendingRequestEntity;Lcom/transsion/home/viewmodel/TrendingViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x2

    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final a0(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "subject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "moduleName"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "module_name"

    .line 17
    .line 18
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const-string v1, ""

    .line 26
    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    move-object p3, v1

    .line 30
    :cond_0
    const-string v2, "subject_id"

    .line 31
    .line 32
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    const-string v2, "has_resource"

    .line 44
    .line 45
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string p3, "item_type"

    .line 49
    .line 50
    const-string v2, "rec"

    .line 51
    .line 52
    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-nez p3, :cond_1

    .line 60
    .line 61
    move-object p3, v1

    .line 62
    :cond_1
    const-string v2, "title"

    .line 63
    .line 64
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    move-object p1, v1

    .line 74
    :cond_2
    const-string p3, "ops"

    .line 75
    .line 76
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string p1, "page_from"

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->v()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-string p1, "sequence"

    .line 89
    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->t()Lcom/transsion/moviedetailapi/PostRankType;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->u(I)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_4

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    check-cast p3, Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Ljava/lang/String;

    .line 142
    .line 143
    if-nez p2, :cond_3

    .line 144
    .line 145
    move-object p2, v1

    .line 146
    :cond_3
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/AbsSubjectListViewModel;->t()Lcom/transsion/moviedetailapi/PostRankType;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-virtual {p0, p2}, Lcom/transsion/home/viewmodel/TrendingViewModel;->w(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public w(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "Trending"

    .line 2
    .line 3
    return-object p1
.end method

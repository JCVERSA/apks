.class public final Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;


# instance fields
.field private final b:Lcom/transsion/postdetail/shorttv/a;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/b0;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->n:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$a;

    .line 8
    .line 9
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
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-class v0, Lcom/transsion/postdetail/shorttv/a;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/transsion/postdetail/shorttv/a;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->b:Lcom/transsion/postdetail/shorttv/a;

    .line 24
    .line 25
    new-instance p1, Landroidx/lifecycle/b0;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->c:Landroidx/lifecycle/b0;

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/b0;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->d:Landroidx/lifecycle/b0;

    .line 38
    .line 39
    new-instance p1, Landroidx/lifecycle/b0;

    .line 40
    .line 41
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->e:Landroidx/lifecycle/b0;

    .line 45
    .line 46
    new-instance p1, Landroidx/lifecycle/b0;

    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f:Landroidx/lifecycle/b0;

    .line 52
    .line 53
    new-instance p1, Landroidx/lifecycle/b0;

    .line 54
    .line 55
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->g:Landroidx/lifecycle/b0;

    .line 59
    .line 60
    new-instance p1, Landroidx/lifecycle/b0;

    .line 61
    .line 62
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->h:Landroidx/lifecycle/b0;

    .line 66
    .line 67
    new-instance p1, Landroidx/lifecycle/b0;

    .line 68
    .line 69
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i:Landroidx/lifecycle/b0;

    .line 73
    .line 74
    new-instance p1, Landroidx/lifecycle/b0;

    .line 75
    .line 76
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->j:Landroidx/lifecycle/b0;

    .line 80
    .line 81
    new-instance p1, Landroidx/lifecycle/b0;

    .line 82
    .line 83
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->k:Landroidx/lifecycle/b0;

    .line 87
    .line 88
    new-instance p1, Landroidx/lifecycle/b0;

    .line 89
    .line 90
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->l:Landroidx/lifecycle/b0;

    .line 94
    .line 95
    new-instance p1, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->m:Ljava/util/HashMap;

    .line 101
    .line 102
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->k(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setFavoriteNum(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setHasFavorite(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteTime()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setFavoriteTime(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setSubjectId(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v5, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$updateFavorite$1$1;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-direct {v5, p0, v1, p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$updateFavorite$1$1;-><init>(Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public final d(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

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
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

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
    new-instance v8, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;

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
    invoke-direct/range {v0 .. v5}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel$favorite$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;ZLcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

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

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/transsion/postdetail/shorttv/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->b:Lcom/transsion/postdetail/shorttv/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    const-string v1, "ad_cancel"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

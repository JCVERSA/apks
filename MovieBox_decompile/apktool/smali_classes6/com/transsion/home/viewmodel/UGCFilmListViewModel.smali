.class public final Lcom/transsion/home/viewmodel/UGCFilmListViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;

.field public static final k:I


# instance fields
.field private final b:Lyk/b;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/transsion/moviedetailapi/bean/Pager;

.field private f:Z

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->j:Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k:I

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
    const-class v0, Lyk/b;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lyk/b;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->b:Lyk/b;

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->d:I

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/b0;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g:Landroidx/lifecycle/b0;

    .line 38
    .line 39
    new-instance p1, Landroidx/lifecycle/b0;

    .line 40
    .line 41
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->h:Landroidx/lifecycle/b0;

    .line 45
    .line 46
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lyk/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->b:Lyk/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-void
.end method

.method private final i(I)V
    .locals 12

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "getFilmList: start loading, page="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, ", filmType="

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "FilmListViewModel"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    new-instance v9, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-direct {v9, p0, p1, v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;-><init>(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;ILkotlin/coroutines/Continuation;)V

    .line 50
    .line 51
    .line 52
    const/4 v10, 0x2

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "filmType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "init: filmType="

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    const-string v2, "FilmListViewModel"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "loadMore: load nextPage="

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v7, 0x4

    .line 41
    const/4 v8, 0x0

    .line 42
    const-string v4, "FilmListViewModel"

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f:Z

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x1

    .line 63
    :goto_1
    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    :goto_2
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 68
    .line 69
    const/4 v6, 0x4

    .line 70
    const/4 v7, 0x0

    .line 71
    const-string v3, "FilmListViewModel"

    .line 72
    .line 73
    const-string v4, "loadMore: nextPage is null or empty, cannot load more"

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-static/range {v2 .. v7}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g:Landroidx/lifecycle/b0;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "FilmListViewModel"

    .line 6
    .line 7
    const-string v2, "refresh: reset page to 1 and load first page"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->d:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f:Z

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

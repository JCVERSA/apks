.class public final Lcom/transsion/moviedetail/staff/y$c;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/staff/y;->q(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/moviedetail/staff/y;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/staff/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->h(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/staff/y$c;->e(Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/moviedetail/staff/bean/MovieStaffSubjectList;->getPager()Lcom/transsion/postdetail/bean/Pager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v1, v0}, Lcom/transsion/moviedetail/staff/y;->l(Lcom/transsion/moviedetail/staff/y;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->h(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->g(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/List;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/transsion/moviedetail/staff/y;->g(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->j(Lcom/transsion/moviedetail/staff/y;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/staff/y;->m(Lcom/transsion/moviedetail/staff/y;I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/transsion/moviedetail/staff/y;->c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ldg/a;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y$c;->d:Lcom/transsion/moviedetail/staff/y;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/transsion/moviedetail/staff/y;->k(Lcom/transsion/moviedetail/staff/y;Lio/reactivex/rxjava3/disposables/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

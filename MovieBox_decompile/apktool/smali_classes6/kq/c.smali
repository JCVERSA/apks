.class public final Lkq/c;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private g:Lio/reactivex/rxjava3/disposables/c;

.field private final h:Lkotlin/Lazy;


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
    new-instance p1, Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lkq/c;->b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/b0;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lkq/c;->c:Landroidx/lifecycle/b0;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/b0;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lkq/c;->d:Landroidx/lifecycle/b0;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/b0;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lkq/c;->e:Landroidx/lifecycle/b0;

    .line 36
    .line 37
    new-instance p1, Lkq/a;

    .line 38
    .line 39
    invoke-direct {p1}, Lkq/a;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lkq/c;->f:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance p1, Lkq/b;

    .line 49
    .line 50
    invoke-direct {p1}, Lkq/b;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lkq/c;->h:Lkotlin/Lazy;

    .line 58
    .line 59
    return-void
.end method

.method public static synthetic c()Ljq/c;
    .locals 1

    .line 1
    invoke-static {}, Lkq/c;->s()Ljq/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Z
    .locals 1

    .line 1
    invoke-static {}, Lkq/c;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final synthetic e(Lkq/c;Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkq/c;->n(Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f()Ljq/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lkq/c;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljq/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n(Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getKeyword()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    :cond_1
    iget-object v1, p0, Lkq/c;->b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    .line 16
    .line 17
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lkq/c;->b:Lcom/transsion/search_pugc/widget/BoundaryLinkedHashMap;

    .line 27
    .line 28
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object p1, p0, Lkq/c;->e:Landroidx/lifecycle/b0;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static final p()Z
    .locals 3

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sa_search_suggest_use_google_for_showbox"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method private final q(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkq/c;->f()Ljq/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljq/c;->b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lkq/c$c;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lkq/c$c;-><init>(Lkq/c;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lkq/c$d;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lkq/c$d;-><init>(Lkq/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/core/j;->B(Lyx/f;Lyx/f;)Lio/reactivex/rxjava3/disposables/c;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final r(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkq/c;->f()Ljq/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljq/c;->g(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, Lkq/c$e;

    .line 18
    .line 19
    invoke-direct {p3, p0, p1}, Lkq/c$e;-><init>(Lkq/c;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final s()Ljq/c;
    .locals 1

    .line 1
    new-instance v0, Ljq/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljq/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final t()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkq/c;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkq/c;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "gp_sug"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "mb_sug"

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lkq/c;->f()Ljq/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljq/c;->e(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lkq/c$a;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lkq/c$a;-><init>(Lkq/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lkq/c;->f()Ljq/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljq/c;->f(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lkq/c$b;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lkq/c$b;-><init>(Lkq/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final j(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageFrom"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lkq/c;->t()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lkq/c;->q(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkq/c;->r(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkq/c;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkq/c;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkq/c;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkq/c;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkq/c;->g:Lio/reactivex/rxjava3/disposables/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lkq/c;->g:Lio/reactivex/rxjava3/disposables/c;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

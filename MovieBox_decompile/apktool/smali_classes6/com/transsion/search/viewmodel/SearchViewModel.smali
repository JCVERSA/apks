.class public final Lcom/transsion/search/viewmodel/SearchViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Lkotlin/Lazy;

.field private i:Lio/reactivex/rxjava3/disposables/c;

.field private final j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

.field private final k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Lkotlin/Lazy;


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
    new-instance p1, Landroidx/lifecycle/b0;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->b:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/b0;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->c:Landroidx/lifecycle/b0;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/b0;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->d:Landroidx/lifecycle/b0;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/b0;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->e:Landroidx/lifecycle/b0;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/b0;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->f:Landroidx/lifecycle/b0;

    .line 43
    .line 44
    new-instance p1, Landroidx/lifecycle/b0;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->g:Landroidx/lifecycle/b0;

    .line 50
    .line 51
    new-instance p1, Lcom/transsion/search/viewmodel/a;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/transsion/search/viewmodel/a;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->h:Lkotlin/Lazy;

    .line 61
    .line 62
    new-instance p1, Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 63
    .line 64
    invoke-direct {p1}, Lcom/transsion/search/widget/BoundaryLinkedHashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 68
    .line 69
    new-instance p1, Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 70
    .line 71
    invoke-direct {p1}, Lcom/transsion/search/widget/BoundaryLinkedHashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 75
    .line 76
    new-instance p1, Landroidx/lifecycle/b0;

    .line 77
    .line 78
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->l:Landroidx/lifecycle/b0;

    .line 82
    .line 83
    new-instance p1, Lcom/transsion/search/viewmodel/b;

    .line 84
    .line 85
    invoke-direct {p1}, Lcom/transsion/search/viewmodel/b;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->m:Lkotlin/Lazy;

    .line 93
    .line 94
    return-void
.end method

.method private final A(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lcq/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcq/j;->e(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

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
    new-instance v1, Lcom/transsion/search/viewmodel/SearchViewModel$e;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$e;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final B()Lcq/j;
    .locals 1

    .line 1
    new-instance v0, Lcq/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcq/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final F()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search/viewmodel/SearchViewModel;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic d()Lcq/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search/viewmodel/SearchViewModel;->B()Lcq/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/search/viewmodel/SearchViewModel;)Lcq/j;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lcq/j;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/search/viewmodel/SearchViewModel;->v(Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n()Lcq/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcq/j;

    .line 8
    .line 9
    return-object v0
.end method

.method private final v(Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getKeyword()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    :cond_1
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_2
    move-object v0, p1

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 21
    .line 22
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_4

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 32
    .line 33
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_4
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->l:Landroidx/lifecycle/b0;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getItems()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v1, 0x1

    .line 52
    if-ne p1, v1, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v1, 0x2

    .line 59
    if-lt p1, v1, :cond_6

    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_6

    .line 68
    .line 69
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->k:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget-object p1, Lcom/transsion/search/activity/SearchManagerActivity;->m:Lcom/transsion/search/activity/SearchManagerActivity$a;

    .line 76
    .line 77
    const-string v1, "no associative word results when the user enters query longer than 2 characters"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/transsion/search/activity/SearchManagerActivity$a;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "key_word"

    .line 88
    .line 89
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getOps()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-nez p2, :cond_5

    .line 97
    .line 98
    const-string p2, ""

    .line 99
    .line 100
    :cond_5
    const-string v0, "ops"

    .line 101
    .line 102
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string p2, "sug_source"

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    sget-object p2, Lcom/transsion/search/fragment/BaseSearchMainFragment;->Companion:Lcom/transsion/search/fragment/BaseSearchMainFragment$a;

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/transsion/search/fragment/BaseSearchMainFragment$a;->a()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const-string v0, "search_id"

    .line 121
    .line 122
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 126
    .line 127
    const-string v0, "search_suggest"

    .line 128
    .line 129
    invoke-virtual {p2, v0, p1}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    return-void
.end method

.method private static final x()Z
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
    const-string v1, "sa_search_suggest_use_google"

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

.method private final z(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lcq/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcq/j;->b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

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
    new-instance v1, Lcom/transsion/search/viewmodel/SearchViewModel$c;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$c;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/transsion/search/viewmodel/SearchViewModel$d;

    .line 23
    .line 24
    invoke-direct {v2, p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$d;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/j;->B(Lyx/f;Lyx/f;)Lio/reactivex/rxjava3/disposables/c;

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final C(IILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/search/net/RequestSearchEntity;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/search/net/RequestSearchEntity;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lcq/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lcq/j;->h(Lcom/transsion/search/net/RequestSearchEntity;)Lio/reactivex/rxjava3/core/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lcom/transsion/search/viewmodel/SearchViewModel$f;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/transsion/search/viewmodel/SearchViewModel$f;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final D(IILjava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/search/net/RequestSearchEntity;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/search/net/RequestSearchEntity;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v4, Lcom/transsion/search/viewmodel/SearchViewModel$searchWork$1;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-direct {v4, p0, v0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$searchWork$1;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Lcom/transsion/search/net/RequestSearchEntity;Lkotlin/coroutines/Continuation;)V

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
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final E(IILjava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/search/net/RequestSearchEntity;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/search/net/RequestSearchEntity;-><init>(IILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v4, Lcom/transsion/search/viewmodel/SearchViewModel$searchWorkV2$1;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-direct {v4, p0, v0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$searchWorkV2$1;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;Lcom/transsion/search/net/RequestSearchEntity;Lkotlin/coroutines/Continuation;)V

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
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lcq/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcq/j;->d()Lio/reactivex/rxjava3/core/j;

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
    new-instance v1, Lcom/transsion/search/viewmodel/SearchViewModel$a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/transsion/search/viewmodel/SearchViewModel$a;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->i:Lio/reactivex/rxjava3/disposables/c;

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
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->i:Lio/reactivex/rxjava3/disposables/c;

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

.method public final p(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->F()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->A(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->w()Z

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

.method public final t()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->l:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Lcom/transsion/search/widget/BoundaryLinkedHashMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->j:Lcom/transsion/search/widget/BoundaryLinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel;->m:Lkotlin/Lazy;

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

.method public final y(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "groupId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/search/net/RequestJoinGroupEntity;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/search/net/RequestJoinGroupEntity;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->n()Lcq/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lcq/j;->g(Lcom/transsion/search/net/RequestJoinGroupEntity;)Lio/reactivex/rxjava3/core/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcom/transsion/search/viewmodel/SearchViewModel$b;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/transsion/search/viewmodel/SearchViewModel$b;-><init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

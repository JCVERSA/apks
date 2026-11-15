.class public final Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

.field private e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PostDetailViewModel"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/postdetail/viewmodel/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/d;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 20
    .line 21
    new-instance v1, Lcom/transsion/postdetail/viewmodel/e;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/transsion/postdetail/viewmodel/e;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->c:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance v0, Lcom/transsion/postdetail/viewmodel/f;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/f;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->f:Lkotlin/Lazy;

    .line 42
    .line 43
    new-instance v0, Lcom/transsion/postdetail/viewmodel/g;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/g;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->g:Lkotlin/Lazy;

    .line 53
    .line 54
    new-instance v0, Lcom/transsion/postdetail/viewmodel/h;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/h;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->h:Lkotlin/Lazy;

    .line 64
    .line 65
    new-instance v0, Lcom/transsion/postdetail/viewmodel/i;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/i;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->i:Lkotlin/Lazy;

    .line 75
    .line 76
    new-instance v0, Lcom/transsion/postdetail/viewmodel/j;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/j;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->j:Lkotlin/Lazy;

    .line 86
    .line 87
    new-instance v0, Lcom/transsion/postdetail/viewmodel/k;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/k;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->k:Lkotlin/Lazy;

    .line 97
    .line 98
    return-void
.end method

.method private final D()Lao/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->b:Lkotlin/Lazy;

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

.method private static final E()Landroidx/lifecycle/b0;
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

.method private static final H()Landroidx/lifecycle/b0;
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

.method private static final I()Landroidx/lifecycle/b0;
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

.method private static final J()Landroidx/lifecycle/b0;
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

.method private static final K()Landroidx/lifecycle/b0;
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

.method private static final L()Lao/b;
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

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->H()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Ltm/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->p()Ltm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->q()Landroidx/lifecycle/b0;

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
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->L()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->K()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->I()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->E()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->J()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic j(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Ltm/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->s()Ltm/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->w()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->z()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Lao/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->D()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->d:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final p()Ltm/a;
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
    const-class v1, Ltm/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ltm/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final q()Landroidx/lifecycle/b0;
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

.method private final s()Ltm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltm/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final w()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->h:Lkotlin/Lazy;

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

.method private final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->f:Lkotlin/Lazy;

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


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->z()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final B()Lcom/transsion/moviedetailapi/bean/PostSubjectBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lam/b;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->k:Lkotlin/Lazy;

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

.method public final F(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sget-object v1, Lam/e;->a:Lam/e;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lam/e;->a(I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :goto_0
    if-eqz p1, :cond_3

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v3, v2

    .line 36
    check-cast v3, Lam/b;

    .line 37
    .line 38
    instance-of v3, v3, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v2, v0

    .line 44
    :goto_1
    check-cast v2, Lam/b;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-object v2, v0

    .line 48
    :goto_2
    check-cast v2, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    new-instance v2, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-direct {v2, v0, v1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iput-object v2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->d:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Iterable;

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v2, v1

    .line 79
    check-cast v2, Lam/b;

    .line 80
    .line 81
    instance-of v2, v2, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    move-object v0, v1

    .line 86
    :cond_6
    check-cast v0, Lam/b;

    .line 87
    .line 88
    :cond_7
    check-cast v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 89
    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 93
    .line 94
    const/16 v6, 0xe

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    const/4 v5, 0x0

    .line 100
    move-object v1, v0

    .line 101
    move-object v2, p2

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    .line 104
    .line 105
    :cond_8
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 106
    .line 107
    return-void
.end method

.method public G(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$like$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p2, p0, v1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$like$1;-><init>(Ljava/lang/String;ILcom/transsion/postdetail/viewmodel/PostDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "postId"

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
    new-instance v4, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final t()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->j:Lkotlin/Lazy;

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

.method public final u(Ljava/lang/String;ILjava/lang/String;IZI)V
    .locals 6

    .line 1
    const-string p2, "postId"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "nextPage"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p5, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v3, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {v3, p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->u(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->s(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, p4}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->t(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->w()Landroidx/lifecycle/b0;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lam/b;->f(Landroidx/lifecycle/b0;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method public final v()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->w()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final x(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "postId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getPostDetail$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getPostDetail$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->g:Lkotlin/Lazy;

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

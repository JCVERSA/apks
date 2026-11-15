.class public final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Landroidx/lifecycle/b0;

.field private final l:Landroidx/lifecycle/b0;

.field private final m:Landroidx/lifecycle/b0;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->o:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/postdetail/viewmodel/n;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/n;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/postdetail/viewmodel/o;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/transsion/postdetail/viewmodel/o;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->b:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance v0, Lcom/transsion/postdetail/viewmodel/p;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/p;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->c:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v0, Landroidx/lifecycle/b0;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->d:Landroidx/lifecycle/b0;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/b0;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->e:Landroidx/lifecycle/b0;

    .line 52
    .line 53
    new-instance v0, Landroidx/lifecycle/b0;

    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->f:Landroidx/lifecycle/b0;

    .line 59
    .line 60
    new-instance v0, Landroidx/lifecycle/b0;

    .line 61
    .line 62
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->g:Landroidx/lifecycle/b0;

    .line 66
    .line 67
    new-instance v0, Landroidx/lifecycle/b0;

    .line 68
    .line 69
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->h:Landroidx/lifecycle/b0;

    .line 73
    .line 74
    new-instance v0, Landroidx/lifecycle/b0;

    .line 75
    .line 76
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->i:Landroidx/lifecycle/b0;

    .line 80
    .line 81
    new-instance v0, Landroidx/lifecycle/b0;

    .line 82
    .line 83
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->j:Landroidx/lifecycle/b0;

    .line 87
    .line 88
    new-instance v0, Landroidx/lifecycle/b0;

    .line 89
    .line 90
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->k:Landroidx/lifecycle/b0;

    .line 94
    .line 95
    new-instance v0, Landroidx/lifecycle/b0;

    .line 96
    .line 97
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->l:Landroidx/lifecycle/b0;

    .line 101
    .line 102
    new-instance v0, Landroidx/lifecycle/b0;

    .line 103
    .line 104
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->m:Landroidx/lifecycle/b0;

    .line 108
    .line 109
    return-void
.end method

.method public static synthetic J(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/16 p6, 0x9

    .line 6
    .line 7
    :cond_0
    move v6, p6

    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->I(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final M()Lao/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lao/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic P(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/16 p6, 0x9

    .line 6
    .line 7
    :cond_0
    move v6, p6

    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->O(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final X()Lao/c;
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
    const-class v1, Lao/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lao/c;

    .line 14
    .line 15
    return-object v0
.end method

.method public static synthetic b()Lbo/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->s()Lbo/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lao/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->X()Lao/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Ltm/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->t()Ltm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Lbo/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->v()Lbo/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic g(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Ltm/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->w()Ltm/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Lao/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->M()Lao/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->m:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->l:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->n:J

    .line 2
    .line 3
    return-void
.end method

.method private static final s()Lbo/a;
    .locals 1

    .line 1
    new-instance v0, Lbo/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbo/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final t()Ltm/a;
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

.method private final v()Lbo/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbo/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final w()Ltm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->b:Lkotlin/Lazy;

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


# virtual methods
.method public final A()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D(Landroid/content/Context;ZZLjava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->S()V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->T()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->U()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v8, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v0, v8

    .line 25
    move v1, p2

    .line 26
    move v2, p3

    .line 27
    move-object v3, p0

    .line 28
    move-object v4, p4

    .line 29
    move v5, p5

    .line 30
    move-object v6, p6

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExplore$1;-><init>(ZZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 p5, 0x3

    .line 35
    const/4 p6, 0x0

    .line 36
    const/4 p2, 0x0

    .line 37
    const/4 p3, 0x0

    .line 38
    move-object p4, v8

    .line 39
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final E(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 10

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
    new-instance v9, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExploreMoreCache$1;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v2, v9

    .line 13
    move-object v3, p0

    .line 14
    move-object v4, p2

    .line 15
    move v5, p3

    .line 16
    move-object v6, p4

    .line 17
    move v7, p1

    .line 18
    invoke-direct/range {v2 .. v8}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostExploreMoreCache$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v3, v9

    .line 25
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final F(ZLjava/lang/String;IDD)V
    .locals 13

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
    new-instance v12, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1;

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    move-object v2, v12

    .line 13
    move-object v3, p0

    .line 14
    move-object v4, p2

    .line 15
    move/from16 v5, p3

    .line 16
    .line 17
    move-wide/from16 v6, p6

    .line 18
    .line 19
    move-wide/from16 v8, p4

    .line 20
    .line 21
    move v10, p1

    .line 22
    invoke-direct/range {v2 .. v11}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;IDDZLkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    move-object p1, v0

    .line 29
    move-object p2, v1

    .line 30
    move-object/from16 p3, v4

    .line 31
    .line 32
    move-object/from16 p4, v12

    .line 33
    .line 34
    move/from16 p5, v2

    .line 35
    .line 36
    move-object/from16 p6, v3

    .line 37
    .line 38
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final G(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 11

    .line 1
    const-string v0, "sortType"

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v10, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1;

    .line 13
    .line 14
    const/4 v9, 0x0

    .line 15
    move-object v1, v10

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move v5, p4

    .line 20
    move/from16 v7, p6

    .line 21
    .line 22
    move v8, p1

    .line 23
    invoke-direct/range {v1 .. v9}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNewest$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    move-object p1, v0

    .line 31
    move-object p2, v3

    .line 32
    move-object p3, v4

    .line 33
    move-object p4, v10

    .line 34
    move/from16 p5, v1

    .line 35
    .line 36
    move-object/from16 p6, v2

    .line 37
    .line 38
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final H(ZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    .line 1
    const-string v0, "groupId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostPopular$1;

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v2, v0

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p3

    .line 17
    move v6, p4

    .line 18
    move v7, p5

    .line 19
    move v8, p1

    .line 20
    invoke-direct/range {v2 .. v9}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostPopular$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;Ljava/lang/String;IZZLkotlin/coroutines/Continuation;)V

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
    move-object v4, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final I(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 1
    move-object v2, p3

    .line 2
    const-string v0, "tabId"

    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    move-object v9, p0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->V(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    new-instance v11, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v0, v11

    .line 21
    move v1, p1

    .line 22
    move-object v2, p3

    .line 23
    move v3, p2

    .line 24
    move-object v4, p0

    .line 25
    move-object/from16 v5, p4

    .line 26
    .line 27
    move/from16 v6, p6

    .line 28
    .line 29
    move-object/from16 v7, p5

    .line 30
    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostSubPageList$1;-><init>(ZLjava/lang/String;ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object p1, v10

    .line 39
    move-object p2, v2

    .line 40
    move-object p3, v3

    .line 41
    move-object/from16 p4, v11

    .line 42
    .line 43
    move/from16 p5, v0

    .line 44
    .line 45
    move-object/from16 p6, v1

    .line 46
    .line 47
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final K(DDLandroid/location/Address;)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v9, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    move-object v1, v9

    .line 9
    move-object v2, p0

    .line 10
    move-wide v3, p1

    .line 11
    move-wide v5, p3

    .line 12
    move-object v7, p5

    .line 13
    invoke-direct/range {v1 .. v8}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v3, v9

    .line 21
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final L()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->m:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 1
    move-object v2, p3

    .line 2
    const-string v0, "tabId"

    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    move-object v9, p0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->W(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    new-instance v11, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v0, v11

    .line 21
    move v1, p1

    .line 22
    move-object v2, p3

    .line 23
    move v3, p2

    .line 24
    move-object v4, p0

    .line 25
    move-object/from16 v5, p4

    .line 26
    .line 27
    move/from16 v6, p6

    .line 28
    .line 29
    move-object/from16 v7, p5

    .line 30
    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;-><init>(ZLjava/lang/String;ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object p1, v10

    .line 39
    move-object p2, v2

    .line 40
    move-object p3, v3

    .line 41
    move-object/from16 p4, v11

    .line 42
    .line 43
    move/from16 p5, v0

    .line 44
    .line 45
    move-object/from16 p6, v1

    .line 46
    .line 47
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final Q()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->l:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p2, p0, v1}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$like$1;-><init>(Ljava/lang/String;ILcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final S()V
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
    new-instance v3, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostExploreActiveSaveCache$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostExploreActiveSaveCache$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final T()V
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
    new-instance v3, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostExploreBuiltInCache$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostExploreBuiltInCache$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final U()V
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
    new-instance v3, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostExploreNetCache$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostExploreNetCache$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final V(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "tabId"

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
    new-instance v4, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostSubPageCache$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadPostSubPageCache$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final W(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "tabId"

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
    new-instance v4, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadStaggeredPostPageCache$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$loadStaggeredPostPageCache$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final u(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$deletePost$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p0, v1}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$deletePost$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final x()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

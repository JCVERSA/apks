.class public final Lcom/transsion/room/viewmodel/RoomViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/viewmodel/RoomViewModel$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/transsion/room/viewmodel/RoomViewModel$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;

.field private final k:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/viewmodel/RoomViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/room/viewmodel/RoomViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/room/viewmodel/RoomViewModel;->l:Lcom/transsion/room/viewmodel/RoomViewModel$a;

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
    new-instance p1, Lcom/transsion/room/viewmodel/m;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/room/viewmodel/m;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/room/viewmodel/n;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/room/viewmodel/n;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Landroidx/lifecycle/b0;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->d:Landroidx/lifecycle/b0;

    .line 37
    .line 38
    new-instance p1, Landroidx/lifecycle/b0;

    .line 39
    .line 40
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->e:Landroidx/lifecycle/b0;

    .line 44
    .line 45
    new-instance p1, Lcom/transsion/room/viewmodel/o;

    .line 46
    .line 47
    invoke-direct {p1}, Lcom/transsion/room/viewmodel/o;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->f:Lkotlin/Lazy;

    .line 55
    .line 56
    new-instance p1, Landroidx/lifecycle/b0;

    .line 57
    .line 58
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->g:Landroidx/lifecycle/b0;

    .line 62
    .line 63
    new-instance p1, Landroidx/lifecycle/b0;

    .line 64
    .line 65
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->h:Landroidx/lifecycle/b0;

    .line 69
    .line 70
    new-instance p1, Landroidx/lifecycle/b0;

    .line 71
    .line 72
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->i:Landroidx/lifecycle/b0;

    .line 76
    .line 77
    new-instance p1, Landroidx/lifecycle/b0;

    .line 78
    .line 79
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->j:Landroidx/lifecycle/b0;

    .line 83
    .line 84
    new-instance p1, Lcom/transsion/room/viewmodel/p;

    .line 85
    .line 86
    invoke-direct {p1}, Lcom/transsion/room/viewmodel/p;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->k:Lkotlin/Lazy;

    .line 94
    .line 95
    return-void
.end method

.method private final D()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->c:Lkotlin/Lazy;

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

.method private final K()Lip/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lip/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final L()Landroidx/lifecycle/b0;
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

.method private final M()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "room_top_tab.json"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object v0

    .line 31
    :catch_0
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method private final N()V
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
    new-instance v3, Lcom/transsion/room/viewmodel/RoomViewModel$loadRoomTabCache$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsion/room/viewmodel/RoomViewModel$loadRoomTabCache$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

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

.method private static final O()Landroidx/lifecycle/b0;
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

.method private final P(Lcom/transsion/moviedetailapi/bean/RoomTabBean;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "k_room_tab_cache_version"

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomTabBean;->getVersion()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "k_room_tab_cache"

    .line 23
    .line 24
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private static final Q()Lip/a;
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
    const-class v1, Lip/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lip/a;

    .line 14
    .line 15
    return-object v0
.end method

.method public static synthetic c()Lqp/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->r()Lqp/a;

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
    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->L()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Lip/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->Q()Lip/a;

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
    invoke-static {}, Lcom/transsion/room/viewmodel/RoomViewModel;->O()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic g(Lcom/transsion/room/viewmodel/RoomViewModel;)Lqp/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->s()Lqp/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->y()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->D()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/room/viewmodel/RoomViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/room/viewmodel/RoomViewModel;)Lip/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->K()Lip/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/room/viewmodel/RoomViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->M()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/room/viewmodel/RoomViewModel;Lcom/transsion/moviedetailapi/bean/RoomTabBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/room/viewmodel/RoomViewModel;->P(Lcom/transsion/moviedetailapi/bean/RoomTabBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r()Lqp/a;
    .locals 1

    .line 1
    new-instance v0, Lqp/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lqp/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final s()Lqp/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqp/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic u(Lcom/transsion/room/viewmodel/RoomViewModel;Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-string p2, "1"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/16 p3, 0x10

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/room/viewmodel/RoomViewModel;->t(Landroid/content/Context;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final y()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->b:Lkotlin/Lazy;

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
.method public final A()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->K()Lip/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 13
    .line 14
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1, p1, p2, p3}, Lip/a;->o(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 23
    .line 24
    invoke-virtual {p2}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lcom/transsion/room/viewmodel/RoomViewModel$c;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/transsion/room/viewmodel/RoomViewModel$c;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final C()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->D()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final E()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomFilterTabList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomFilterTabList$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final F(ZILjava/lang/String;ILjava/lang/Double;Ljava/lang/Double;Landroid/location/Address;)V
    .locals 12

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    move-object v5, p3

    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v11, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1;

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    move-object v1, v11

    .line 15
    move-object/from16 v2, p6

    .line 16
    .line 17
    move-object/from16 v3, p5

    .line 18
    .line 19
    move-object/from16 v4, p7

    .line 20
    .line 21
    move/from16 v6, p4

    .line 22
    .line 23
    move v7, p2

    .line 24
    move-object v8, p0

    .line 25
    move v9, p1

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomList$1;-><init>(Ljava/lang/Double;Ljava/lang/Double;Landroid/location/Address;Ljava/lang/String;IILcom/transsion/room/viewmodel/RoomViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object p1, v0

    .line 34
    move-object p2, v3

    .line 35
    move-object p3, v4

    .line 36
    move-object/from16 p4, v11

    .line 37
    .line 38
    move/from16 p5, v1

    .line 39
    .line 40
    move-object/from16 p6, v2

    .line 41
    .line 42
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final G()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->N()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v3, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomTabs$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v3, p0, v1}, Lcom/transsion/room/viewmodel/RoomViewModel$getRoomTabs$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->i:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "page"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v2, v0

    .line 19
    move-object v3, p0

    .line 20
    move-object v4, p1

    .line 21
    move-object v5, p2

    .line 22
    move v6, p3

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    move-object v4, v0

    .line 31
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final v()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomViewModel;->j:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->K()Lip/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1, p1, p2}, Lip/a;->f(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/j;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 21
    .line 22
    invoke-virtual {p2}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Lcom/transsion/room/viewmodel/RoomViewModel$b;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/transsion/room/viewmodel/RoomViewModel$b;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/viewmodel/RoomViewModel;->y()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final z(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v8, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v1, v8

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p2

    .line 11
    move v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move v6, p1

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v3, v8

    .line 22
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    return-void
.end method

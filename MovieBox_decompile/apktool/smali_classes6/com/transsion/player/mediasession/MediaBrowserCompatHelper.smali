.class public final Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private final a:Landroid/support/v4/media/MediaBrowserCompat$n;

.field private final b:Landroid/support/v4/media/session/MediaControllerCompat$a;

.field private final c:Landroid/support/v4/media/MediaBrowserCompat$c;

.field private d:Landroid/support/v4/media/MediaBrowserCompat;

.field private e:Landroid/support/v4/media/session/MediaControllerCompat;

.field private f:Ljava/util/List;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/player/mediasession/a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/player/mediasession/a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$d;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$b;-><init>(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->c:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->f:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method

.method private static final A(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->c()V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic a(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->y(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->s(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->A(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->q()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->u(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->c:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->d:Landroid/support/v4/media/MediaBrowserCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->e:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/session/MediaControllerCompat$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->b:Landroid/support/v4/media/session/MediaControllerCompat$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->d:Landroid/support/v4/media/MediaBrowserCompat;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->e:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    return-void
.end method

.method private static final q()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final s(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lkotlin/Pair;

    .line 4
    .line 5
    const-string v1, "MediaItem"

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    new-array p0, p0, [Lkotlin/Pair;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object v0, p0, v1

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "transsion_pause"

    .line 21
    .line 22
    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final u(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lkotlin/Pair;

    .line 4
    .line 5
    const-string v1, "MediaItem"

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    new-array p0, p0, [Lkotlin/Pair;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object v0, p0, v1

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "transsion_play"

    .line 21
    .line 22
    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private final w(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->p(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->b()V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final p(Lkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->d:Landroid/support/v4/media/MediaBrowserCompat;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->e:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/MediaControllerCompat$e;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_3

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g:Z

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->f:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void

    .line 44
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g:Z

    .line 45
    .line 46
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->i()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->f:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_5
    new-instance p1, Landroid/support/v4/media/MediaBrowserCompat;

    .line 66
    .line 67
    new-instance v1, Landroid/content/ComponentName;

    .line 68
    .line 69
    const-class v3, Lcom/transsion/player/mediasession/MediaService;

    .line 70
    .line 71
    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->c:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 75
    .line 76
    invoke-direct {p1, v0, v1, v3, v2}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$c;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->d:Landroid/support/v4/media/MediaBrowserCompat;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->a()V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    :goto_1
    move-object v2, p1

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    new-instance v6, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;

    .line 97
    .line 98
    invoke-direct {v6, p1, p0, v0, v2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    .line 99
    .line 100
    .line 101
    const/4 v7, 0x3

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_1

    .line 110
    :cond_7
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :goto_4
    return-void
.end method

.method public final r(Lcom/transsion/player/mediasession/MediaItem;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/transsion/player/mediasession/d;-><init>(Lcom/transsion/player/mediasession/MediaItem;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->w(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t(Lcom/transsion/player/mediasession/MediaItem;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/transsion/player/mediasession/b;-><init>(Lcom/transsion/player/mediasession/MediaItem;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->w(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "mediaId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/mediasession/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->w(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/player/mediasession/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/player/mediasession/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->w(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

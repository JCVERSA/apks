.class public final Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

.field private static b:Ljava/lang/ref/WeakReference;

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static d:Lkotlinx/coroutines/t1;

.field private static e:I

.field private static f:I

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    sput v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g()Z
    .locals 5

    .line 1
    sget v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_6

    .line 5
    .line 6
    sget v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    add-int/2addr v0, v2

    .line 19
    sget-boolean v3, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    .line 20
    .line 21
    if-nez v3, :cond_4

    .line 22
    .line 23
    sget v3, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    sput-boolean v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    .line 28
    .line 29
    sget v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    move v1, v2

    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    if-ne v3, v0, :cond_3

    .line 36
    .line 37
    sput-boolean v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    .line 38
    .line 39
    return v2

    .line 40
    :cond_3
    return v1

    .line 41
    :cond_4
    sget v3, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    .line 42
    .line 43
    if-nez v3, :cond_5

    .line 44
    .line 45
    return v2

    .line 46
    :cond_5
    sget v4, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    .line 47
    .line 48
    sub-int/2addr v0, v4

    .line 49
    add-int/2addr v3, v2

    .line 50
    rem-int/2addr v0, v3

    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    move v1, v2

    .line 54
    :cond_6
    :goto_0
    return v1
.end method

.method private final h()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/t1;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v4, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {v4, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method private final i()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sput-object v1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->d:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    return-void
.end method

.method private final j()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-values>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c()Lcom/transsion/shorttv/ad/AdLoadState;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    .line 41
    .line 42
    if-ne v2, v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->h()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    cmp-long v3, v3, v5

    .line 71
    .line 72
    if-lez v3, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 76
    :goto_1
    if-eqz v2, :cond_0

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    sub-long/2addr v4, v2

    .line 87
    const-wide/16 v2, 0x2710

    .line 88
    .line 89
    cmp-long v2, v4, v2

    .line 90
    .line 91
    if-ltz v2, :cond_0

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    sget-object v0, Lyq/a;->a:Lyq/a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "overlay"

    .line 6
    .line 7
    const-string v2, "overlay ad manager clear"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lyq/a;->g(Lyq/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "<get-values>(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f()V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->f(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_2
    sput-object v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->i()V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g:Z

    .line 81
    .line 82
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/transsion/shorttv/ad/playeroverlayad/a;
    .locals 7

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lyq/a;->a:Lyq/a;

    .line 20
    .line 21
    sget-object v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "getAdData, key="

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, ", currentVideoCount="

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v5, 0x4

    .line 53
    const/4 v6, 0x0

    .line 54
    const-string v2, "overlay"

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static/range {v1 .. v6}, Lyq/a;->g(Lyq/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    new-instance v1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->h(Z)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    .line 80
    .line 81
    invoke-direct {v2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->g()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    new-instance v2, Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 88
    .line 89
    const-string v3, "ShortTvPlayerOverlayScene"

    .line 90
    .line 91
    invoke-direct {v2, v3, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->f(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->h(Z)V

    .line 99
    .line 100
    .line 101
    :cond_1
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_2
    return-object v1

    .line 107
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 108
    return-object p1
.end method

.method public final d(Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 2

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->h()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const-string v1, "ShortTvPlayerOverlayScene"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/transsion/ad/scene/a;->n(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->e:I

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/transsion/ad/scene/a;->p(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sput p1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->f:I

    .line 33
    .line 34
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->j()V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/transsion/shorttv/ad/playeroverlayad/a;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->i(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

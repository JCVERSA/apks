.class public final Lcom/transsion/ad/strategy/t;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/strategy/t$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/strategy/t;

.field private static final b:Landroid/graphics/Rect;

.field private static final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;

.field private static final f:Lkotlin/Lazy;

.field private static final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/strategy/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/t;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/ad/strategy/t;->b:Landroid/graphics/Rect;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/ad/strategy/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 23
    .line 24
    new-instance v1, Lcom/transsion/ad/strategy/k;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/transsion/ad/strategy/k;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/transsion/ad/strategy/t;->d:Lkotlin/Lazy;

    .line 34
    .line 35
    new-instance v0, Lcom/transsion/ad/strategy/l;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/transsion/ad/strategy/l;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/transsion/ad/strategy/t;->e:Lkotlin/Lazy;

    .line 45
    .line 46
    new-instance v0, Lcom/transsion/ad/strategy/m;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/transsion/ad/strategy/m;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/transsion/ad/strategy/t;->f:Lkotlin/Lazy;

    .line 56
    .line 57
    new-instance v0, Lcom/transsion/ad/strategy/n;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/transsion/ad/strategy/n;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/transsion/ad/strategy/t;->g:Ljava/lang/Runnable;

    .line 63
    .line 64
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

.method private static final A()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/t;->m()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/ad/strategy/t;->g:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a()Landroid/os/HandlerThread;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/strategy/t;->u()Landroid/os/HandlerThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/ad/strategy/t$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/strategy/t;->w(Lcom/transsion/ad/strategy/t$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/ad/strategy/t;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/ad/strategy/t$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/ad/strategy/t;->k(Lcom/transsion/ad/strategy/t$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/ad/strategy/t;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/ad/strategy/t;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/strategy/t;->t()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/strategy/t;->p()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i(Lcom/transsion/ad/strategy/t$a;D)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/ad/strategy/t;->r(Lcom/transsion/ad/strategy/t$a;D)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k(Lcom/transsion/ad/strategy/t$a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    sget-object p0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/ad/strategy/t;->x()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private final l(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    sget-object v0, Lcom/transsion/ad/strategy/t;->b:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_5

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    int-to-double v3, v3

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-double v5, v0

    .line 46
    mul-double/2addr v3, v5

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-double v5, v0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-double v7, p1

    .line 57
    mul-double/2addr v5, v7

    .line 58
    cmpg-double p1, v5, v1

    .line 59
    .line 60
    if-gtz p1, :cond_4

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void

    .line 72
    :cond_4
    const/16 p1, 0x64

    .line 73
    .line 74
    int-to-double v0, p1

    .line 75
    mul-double/2addr v3, v0

    .line 76
    div-double/2addr v3, v5

    .line 77
    if-eqz p2, :cond_6

    .line 78
    .line 79
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 88
    .line 89
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_1
    return-void
.end method

.method private final m()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n()Landroid/os/HandlerThread;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/HandlerThread;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final p()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private final q()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/strategy/t;->m()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/ad/strategy/t;->g:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/transsion/ad/strategy/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/transsion/ad/strategy/t$a;

    .line 27
    .line 28
    sget-object v2, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/transsion/ad/strategy/t$a;->getVisibilityView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Lcom/transsion/ad/strategy/o;

    .line 35
    .line 36
    invoke-direct {v4, v1}, Lcom/transsion/ad/strategy/o;-><init>(Lcom/transsion/ad/strategy/t$a;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3, v4}, Lcom/transsion/ad/strategy/t;->l(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsion/ad/strategy/t;->m()Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lcom/transsion/ad/strategy/t;->g:Ljava/lang/Runnable;

    .line 56
    .line 57
    const-wide/16 v2, 0x1f4

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method private static final r(Lcom/transsion/ad/strategy/t$a;D)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/transsion/ad/strategy/t$a;->getVisibilityThreshold()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmpl-double p1, p1, v0

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-interface {p0, p1}, Lcom/transsion/ad/strategy/t$a;->onVisibilityChanged(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-interface {p0, p1}, Lcom/transsion/ad/strategy/t$a;->onVisibilityChanged(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final s()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/t;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final t()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/ad/strategy/t;->n()Landroid/os/HandlerThread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private static final u()Landroid/os/HandlerThread;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "MyHandlerThread"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final w(Lcom/transsion/ad/strategy/t$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final y()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/t;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final j(Lcom/transsion/ad/strategy/t$a;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ad/strategy/t;->m()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/ad/strategy/p;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/transsion/ad/strategy/p;-><init>(Lcom/transsion/ad/strategy/t$a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final o(Landroid/view/View;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sget-object v1, Lcom/transsion/ad/strategy/t;->b:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-double v2, v2

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-double v4, v1

    .line 36
    mul-double/2addr v2, v4

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-double v4, v1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-double v6, p1

    .line 47
    mul-double/2addr v4, v6

    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    cmpg-double p1, v4, v6

    .line 51
    .line 52
    if-gtz p1, :cond_2

    .line 53
    .line 54
    return v0

    .line 55
    :cond_2
    const/16 p1, 0x64

    .line 56
    .line 57
    int-to-double v8, p1

    .line 58
    mul-double/2addr v2, v8

    .line 59
    div-double/2addr v2, v4

    .line 60
    cmpl-double p1, v2, v6

    .line 61
    .line 62
    if-lez p1, :cond_3

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :cond_3
    :goto_0
    return v0
.end method

.method public final v(Lcom/transsion/ad/strategy/t$a;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ad/strategy/t;->m()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/ad/strategy/q;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/transsion/ad/strategy/q;-><init>(Lcom/transsion/ad/strategy/t$a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/strategy/t;->m()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/ad/strategy/r;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/transsion/ad/strategy/r;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/strategy/t;->m()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/ad/strategy/s;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/transsion/ad/strategy/s;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/ad/strategy/t;->q()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

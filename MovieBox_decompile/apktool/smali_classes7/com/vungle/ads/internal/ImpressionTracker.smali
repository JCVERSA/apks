.class public final Lcom/vungle/ads/internal/ImpressionTracker;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/ImpressionTracker$b;,
        Lcom/vungle/ads/internal/ImpressionTracker$c;,
        Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;,
        Lcom/vungle/ads/internal/ImpressionTracker$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/ImpressionTracker$a;

.field private static final MIN_VISIBILITY_PERCENTAGE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VISIBILITY_THROTTLE_MILLIS:I = 0x64


# instance fields
.field private final clipRect:Landroid/graphics/Rect;

.field private isVisibilityScheduled:Z

.field private final onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private setViewTreeObserverSucceed:Z

.field private final trackedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/vungle/ads/internal/ImpressionTracker$c;",
            ">;"
        }
    .end annotation
.end field

.field private final visibilityHandler:Landroid/os/Handler;

.field private final visibilityRunnable:Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;

.field private weakViewTreeObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ImpressionTracker$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ImpressionTracker$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/ImpressionTracker;->Companion:Lcom/vungle/ads/internal/ImpressionTracker$a;

    .line 8
    .line 9
    const-class v0, Lcom/vungle/ads/internal/ImpressionTracker;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 10
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/vungle/ads/internal/ImpressionTracker;-><init>(Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/vungle/ads/internal/ImpressionTracker$c;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackedViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    .line 3
    iput-object p3, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityHandler:Landroid/os/Handler;

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    .line 5
    new-instance p2, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;

    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;-><init>(Lcom/vungle/ads/internal/ImpressionTracker;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityRunnable:Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;

    .line 6
    new-instance p2, Lcom/vungle/ads/internal/d;

    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/d;-><init>(Lcom/vungle/ads/internal/ImpressionTracker;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 7
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p0, p1, p3}, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserverSucceed:Z

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/vungle/ads/internal/ImpressionTracker;)Z
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->scheduleVisibilityCheck()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/ImpressionTracker;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->_init_$lambda-0(Lcom/vungle/ads/internal/ImpressionTracker;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getSetViewTreeObserverSucceed$p(Lcom/vungle/ads/internal/ImpressionTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserverSucceed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isVisible(Lcom/vungle/ads/internal/ImpressionTracker;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/ImpressionTracker;->isVisible(Landroid/view/View;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$scheduleVisibilityCheck(Lcom/vungle/ads/internal/ImpressionTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->scheduleVisibilityCheck()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setVisibilityScheduled$p(Lcom/vungle/ads/internal/ImpressionTracker;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic getOnPreDrawListener$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getTopView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    const v1, 0x1020002

    .line 4
    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-nez p1, :cond_3

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 35
    .line 36
    sget-object v2, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "TAG"

    .line 39
    .line 40
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "Trying to call View#rootView() on an unattached View."

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_2
    if-nez p1, :cond_3

    .line 59
    .line 60
    move-object p1, p2

    .line 61
    :cond_3
    return-object p1
.end method

.method public static synthetic getWeakViewTreeObserver$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final isVisible(Landroid/view/View;I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "Parent visibility is not visible: "

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v1, "ImpressionTracker"

    .line 54
    .line 55
    invoke-virtual {p1, v1, p2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    return v0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    int-to-long v1, v1

    .line 80
    iget-object v3, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    int-to-long v3, v3

    .line 87
    mul-long/2addr v1, v3

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-long v3, v3

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    int-to-long v5, p1

    .line 98
    mul-long/2addr v3, v5

    .line 99
    const-wide/16 v5, 0x0

    .line 100
    .line 101
    cmp-long p1, v3, v5

    .line 102
    .line 103
    if-gtz p1, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const/16 p1, 0x64

    .line 107
    .line 108
    int-to-long v5, p1

    .line 109
    mul-long/2addr v5, v1

    .line 110
    int-to-long p1, p2

    .line 111
    mul-long/2addr p1, v3

    .line 112
    cmp-long p1, v5, p1

    .line 113
    .line 114
    if-ltz p1, :cond_5

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    :cond_5
    :goto_1
    return v0
.end method

.method private final scheduleVisibilityCheck()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityRunnable:Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;

    .line 12
    .line 13
    const-wide/16 v2, 0x64

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/ImpressionTracker;->getTopView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    const-string v0, "TAG"

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 29
    .line 30
    sget-object v1, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "Unable to set ViewTreeObserver due to no available root view."

    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return p2

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 52
    .line 53
    sget-object v1, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "The root view tree observer was not alive"

    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return p2

    .line 64
    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 74
    .line 75
    .line 76
    return v1
.end method


# virtual methods
.method public final addView(Landroid/view/View;Lcom/vungle/ads/internal/ImpressionTracker$b;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserverSucceed:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/vungle/ads/internal/ImpressionTracker$c;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/vungle/ads/internal/ImpressionTracker$c;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/vungle/ads/internal/ImpressionTracker$c;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->scheduleVisibilityCheck()V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 40
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ImpressionTracker$c;->setMinViewablePercent(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2}, Lcom/vungle/ads/internal/ImpressionTracker$c;->setImpressionListener(Lcom/vungle/ads/internal/ImpressionTracker$b;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    .line 13
    .line 14
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final getOnPreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWeakViewTreeObserver()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setWeakViewTreeObserver(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

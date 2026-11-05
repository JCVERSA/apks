.class public final Lcom/vungle/ads/internal/ImpressionTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;,
        Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;,
        Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;,
        Lcom/vungle/ads/internal/ImpressionTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 <2\u00020\u0001:\u0004<=>?B-\u0008\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000cJ#\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0018\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0013\u00a2\u0006\u0004\u0008 \u0010\u0015J\r\u0010!\u001a\u00020\u0013\u00a2\u0006\u0004\u0008!\u0010\u0015R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\"R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R \u0010(\u001a\u00020\'8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u0012\u0004\u0008,\u0010\u0015\u001a\u0004\u0008*\u0010+R0\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010.0-8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008/\u00100\u0012\u0004\u00085\u0010\u0015\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0018\u00107\u001a\u000606R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0016\u00109\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010;\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010:\u00a8\u0006@"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ImpressionTracker;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "Landroid/view/View;",
        "Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;",
        "trackedViews",
        "Landroid/os/Handler;",
        "visibilityHandler",
        "<init>",
        "(Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;)V",
        "(Landroid/content/Context;)V",
        "view",
        "",
        "setViewTreeObserver",
        "(Landroid/content/Context;Landroid/view/View;)Z",
        "getTopView",
        "(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;",
        "Lo/mg8;",
        "scheduleVisibilityCheck",
        "()V",
        "",
        "minPercentageViewed",
        "isVisible",
        "(Landroid/view/View;I)Z",
        "Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;",
        "listener",
        "addView",
        "(Landroid/view/View;Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;)V",
        "removeView",
        "(Landroid/view/View;)V",
        "clear",
        "destroy",
        "Ljava/util/Map;",
        "Landroid/os/Handler;",
        "Landroid/graphics/Rect;",
        "clipRect",
        "Landroid/graphics/Rect;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "onPreDrawListener",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "getOnPreDrawListener",
        "()Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "getOnPreDrawListener$annotations",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/ViewTreeObserver;",
        "weakViewTreeObserver",
        "Ljava/lang/ref/WeakReference;",
        "getWeakViewTreeObserver",
        "()Ljava/lang/ref/WeakReference;",
        "setWeakViewTreeObserver",
        "(Ljava/lang/ref/WeakReference;)V",
        "getWeakViewTreeObserver$annotations",
        "Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;",
        "visibilityRunnable",
        "Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;",
        "isVisibilityScheduled",
        "Z",
        "setViewTreeObserverSucceed",
        "Companion",
        "ImpressionListener",
        "TrackingInfo",
        "VisibilityRunnable",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/ImpressionTracker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIN_VISIBILITY_PERCENTAGE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VISIBILITY_THROTTLE_MILLIS:I = 0x64


# instance fields
.field private final clipRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isVisibilityScheduled:Z

.field private final onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private setViewTreeObserverSucceed:Z

.field private final trackedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final visibilityHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final visibilityRunnable:Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private weakViewTreeObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/ImpressionTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ImpressionTracker$Companion;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/vungle/ads/internal/ImpressionTracker;->Companion:Lcom/vungle/ads/internal/ImpressionTracker$Companion;

    const-class v0, Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/vungle/ads/internal/ImpressionTracker;-><init>(Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackedViews"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityHandler"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    iput-object p3, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityHandler:Landroid/os/Handler;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    new-instance p2, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;

    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;-><init>(Lcom/vungle/ads/internal/ImpressionTracker;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityRunnable:Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;

    new-instance p2, Lo/vl3;

    invoke-direct {p2, p0}, Lo/vl3;-><init>(Lcom/vungle/ads/internal/ImpressionTracker;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1, p3}, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserverSucceed:Z

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/vungle/ads/internal/ImpressionTracker;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->scheduleVisibilityCheck()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/ImpressionTracker;)Z
    .locals 0

    invoke-static {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->_init_$lambda-0(Lcom/vungle/ads/internal/ImpressionTracker;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSetViewTreeObserverSucceed$p(Lcom/vungle/ads/internal/ImpressionTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserverSucceed:Z

    return p0
.end method

.method public static final synthetic access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$isVisible(Lcom/vungle/ads/internal/ImpressionTracker;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/ImpressionTracker;->isVisible(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$scheduleVisibilityCheck(Lcom/vungle/ads/internal/ImpressionTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->scheduleVisibilityCheck()V

    return-void
.end method

.method public static final synthetic access$setVisibilityScheduled$p(Lcom/vungle/ads/internal/ImpressionTracker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    return-void
.end method

.method public static synthetic getOnPreDrawListener$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getTopView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4

    instance-of v0, p1, Landroid/app/Activity;

    const v1, 0x1020002

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    sget-object v2, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Trying to call View#rootView() on an unattached View."

    invoke-virtual {v0, v2, v3}, Lcom/vungle/ads/internal/util/Logger$Companion;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    move-object p1, p2

    :cond_3
    return-object p1
.end method

.method public static synthetic getWeakViewTreeObserver$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final isVisible(Landroid/view/View;I)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent visibility is not visible: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ImpressionTracker"

    invoke-virtual {p1, v1, p2}, Lcom/vungle/ads/internal/util/Logger$Companion;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/vungle/ads/internal/ImpressionTracker;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-long v3, v3

    mul-long v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-long v5, p1

    mul-long v3, v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0x64

    int-to-long v5, p1

    mul-long v5, v5, v1

    int-to-long p1, p2

    mul-long p1, p1, v3

    cmp-long v1, v5, p1

    if-ltz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0
.end method

.method private final scheduleVisibilityCheck()V
    .locals 4

    iget-boolean v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityRunnable:Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/ImpressionTracker;->getTopView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "TAG"

    if-nez p1, :cond_1

    sget-object p1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    sget-object v1, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Unable to set ViewTreeObserver due to no available root view."

    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    sget-object v1, Lcom/vungle/ads/internal/ImpressionTracker;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The root view tree observer was not alive"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1
.end method


# virtual methods
.method public final addView(Landroid/view/View;Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->setViewTreeObserverSucceed:Z

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;

    invoke-direct {v0}, Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;-><init>()V

    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->scheduleVisibilityCheck()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;->setMinViewablePercent(I)V

    invoke-virtual {v0, p2}, Lcom/vungle/ads/internal/ImpressionTracker$TrackingInfo;->setImpressionListener(Lcom/vungle/ads/internal/ImpressionTracker$ImpressionListener;)V

    return-void
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->visibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->isVisibilityScheduled:Z

    return-void
.end method

.method public final destroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ImpressionTracker;->clear()V

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public final getOnPreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker;->trackedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setWeakViewTreeObserver(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker;->weakViewTreeObserver:Ljava/lang/ref/WeakReference;

    return-void
.end method

.class public final Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;
.super Lcom/yandex/div/internal/widget/FrameContainerLayout;
.source "SourceFile"

# interfaces
.implements Lmk2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/div/internal/widget/FrameContainerLayout;",
        "Lmk2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010!\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u007fB\'\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0096\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eH\u0096\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u000eH\u0096\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J \u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0008H\u0096\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u000eH\u0096\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0012J\u0010\u0010\u001c\u001a\u00020\u000eH\u0096\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u0012J*\u0010#\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\"\u001a\u00020!H\u0096\u0001\u00a2\u0006\u0004\u0008#\u0010$J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0096\u0001\u00a2\u0006\u0004\u0008%\u0010&J\u0018\u0010\'\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0096\u0001\u00a2\u0006\u0004\u0008\'\u0010&J\u0017\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010-\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0017\u00a2\u0006\u0004\u0008-\u0010,J\u0017\u0010/\u001a\u00020*2\u0006\u0010.\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008/\u00100J/\u00105\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u00082\u0006\u00104\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u00085\u00106J\u0017\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00089\u0010:J)\u0010>\u001a\u00020*2\u0006\u00108\u001a\u0002072\u0008\u0010;\u001a\u0004\u0018\u00010!2\u0006\u0010=\u001a\u00020<H\u0014\u00a2\u0006\u0004\u0008>\u0010?R$\u0010G\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u0018\u0010K\u001a\u00060HR\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0014\u0010O\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR*\u0010W\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010P8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR$\u0010_\u001a\u0004\u0018\u00010X8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R0\u0010h\u001a\u0010\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020\u000e\u0018\u00010`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u001e\u0010q\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\u0014\u0010r\u001a\u00020*8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010sR\u001c\u0010w\u001a\u00020*8\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008t\u0010s\"\u0004\u0008u\u0010vR\u001a\u0010{\u001a\u0008\u0012\u0004\u0012\u00020\u000c0x8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008y\u0010zR\u0013\u0010~\u001a\u0004\u0018\u00010a8F\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010}\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;",
        "Lcom/yandex/div/internal/widget/FrameContainerLayout;",
        "Lmk2;",
        "Lcom/yandex/div2/Div$n;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lqc2;",
        "subscription",
        "Lzfb;",
        "addSubscription",
        "(Lqc2;)V",
        "closeAllSubscription",
        "()V",
        "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;",
        "getDivBorderDrawer",
        "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;",
        "invalidateBorder",
        "width",
        "height",
        "onBoundsChanged",
        "(II)V",
        "release",
        "releaseBorderDrawer",
        "Lcom/yandex/div/core/view2/a;",
        "bindingContext",
        "Lcom/yandex/div2/DivBorder;",
        "border",
        "Landroid/view/View;",
        "view",
        "setBorder",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V",
        "transitionFinished",
        "(Landroid/view/View;)V",
        "transitionStarted",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "onTouchEvent",
        "direction",
        "canScrollHorizontally",
        "(I)Z",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "child",
        "",
        "drawingTime",
        "drawChild",
        "(Landroid/graphics/Canvas;Landroid/view/View;J)Z",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "n",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "getPath",
        "()Lcom/yandex/div/core/state/DivStatePath;",
        "setPath",
        "(Lcom/yandex/div/core/state/DivStatePath;)V",
        "path",
        "Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;",
        "o",
        "Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;",
        "swipeListener",
        "Landroidx/core/view/GestureDetectorCompat;",
        "p",
        "Landroidx/core/view/GestureDetectorCompat;",
        "gestureDetector",
        "Lkotlin/Function0;",
        "q",
        "Lc74;",
        "getSwipeOutCallback",
        "()Lc74;",
        "setSwipeOutCallback",
        "(Lc74;)V",
        "swipeOutCallback",
        "Lcom/yandex/div2/Div;",
        "r",
        "Lcom/yandex/div2/Div;",
        "getActiveStateDiv$div_release",
        "()Lcom/yandex/div2/Div;",
        "setActiveStateDiv$div_release",
        "(Lcom/yandex/div2/Div;)V",
        "activeStateDiv",
        "Lkotlin/Function1;",
        "",
        "s",
        "Le74;",
        "getVariableUpdater",
        "()Le74;",
        "setVariableUpdater",
        "(Le74;)V",
        "variableUpdater",
        "getBindingContext",
        "()Lcom/yandex/div/core/view2/a;",
        "setBindingContext",
        "(Lcom/yandex/div/core/view2/a;)V",
        "getDiv",
        "()Lcom/yandex/div2/Div$n;",
        "setDiv",
        "(Lcom/yandex/div2/Div$n;)V",
        "div",
        "isTransient",
        "()Z",
        "getNeedClipping",
        "setNeedClipping",
        "(Z)V",
        "needClipping",
        "",
        "getSubscriptions",
        "()Ljava/util/List;",
        "subscriptions",
        "getStateId",
        "()Ljava/lang/String;",
        "stateId",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic m:Lnk2;

.field public n:Lcom/yandex/div/core/state/DivStatePath;

.field public final o:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;

.field public final p:Landroidx/core/view/GestureDetectorCompat;

.field public q:Lc74;

.field public r:Lcom/yandex/div2/Div;

.field public s:Le74;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/FrameContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Lnk2;

    invoke-direct {p2}, Lnk2;-><init>()V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    .line 6
    new-instance p2, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->o:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;

    .line 7
    new-instance p3, Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, p1, p2, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->p:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addSubscription(Lqc2;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-interface {p0, p1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->q:Lc74;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-gez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    :goto_0
    return v1

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public closeAllSubscription()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-interface {p0}, Lqj3;->closeAllSubscription()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lvg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->g(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->h(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->N(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final getActiveStateDiv$div_release()Lcom/yandex/div2/Div;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->r:Lcom/yandex/div2/Div;

    return-object p0
.end method

.method public getBindingContext()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p0

    return-object p0
.end method

.method public getDiv()Lcom/yandex/div2/Div$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/Div$n;

    return-object p0
.end method

.method public bridge synthetic getDiv()Lcom/yandex/div2/Div;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getDiv()Lcom/yandex/div2/Div$n;

    move-result-object p0

    return-object p0
.end method

.method public getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    return-object p0
.end method

.method public getNeedClipping()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->getNeedClipping()Z

    move-result p0

    return p0
.end method

.method public final getPath()Lcom/yandex/div/core/state/DivStatePath;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->n:Lcom/yandex/div/core/state/DivStatePath;

    return-object p0
.end method

.method public final getStateId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->n:Lcom/yandex/div/core/state/DivStatePath;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/state/DivStatePath;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lqc2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->getSubscriptions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSwipeOutCallback()Lc74;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc74;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->q:Lc74;

    return-object p0
.end method

.method public final getVariableUpdater()Le74;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le74;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->s:Le74;

    return-object p0
.end method

.method public invalidateBorder()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->invalidateBorder()V

    return-void
.end method

.method public isTransient()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->isTransient()Z

    move-result p0

    return p0
.end method

.method public onBoundsChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0, p1, p2}, Lnk2;->onBoundsChanged(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->q:Lc74;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->p:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->o:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->o:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->onBoundsChanged(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->q:Lc74;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->o:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;->b()V

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->p:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->release()V

    return-void
.end method

.method public releaseBorderDrawer()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0}, Lnk2;->releaseBorderDrawer()V

    return-void
.end method

.method public final setActiveStateDiv$div_release(Lcom/yandex/div2/Div;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->r:Lcom/yandex/div2/Div;

    return-void
.end method

.method public setBindingContext(Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setBindingContext(Lcom/yandex/div/core/view2/a;)V

    return-void
.end method

.method public setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0, p1, p2, p3}, Lnk2;->setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V

    return-void
.end method

.method public setDiv(Lcom/yandex/div2/Div$n;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setDiv(Lcom/yandex/div2/Div;)V

    return-void
.end method

.method public bridge synthetic setDiv(Lcom/yandex/div2/Div;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/yandex/div2/Div$n;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->setDiv(Lcom/yandex/div2/Div$n;)V

    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->setNeedClipping(Z)V

    return-void
.end method

.method public final setPath(Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->n:Lcom/yandex/div/core/state/DivStatePath;

    return-void
.end method

.method public final setSwipeOutCallback(Lc74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->q:Lc74;

    return-void
.end method

.method public final setVariableUpdater(Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->s:Le74;

    return-void
.end method

.method public transitionFinished(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionFinished(Landroid/view/View;)V

    return-void
.end method

.method public transitionStarted(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->m:Lnk2;

    invoke-virtual {p0, p1}, Lnk2;->transitionStarted(Landroid/view/View;)V

    return-void
.end method

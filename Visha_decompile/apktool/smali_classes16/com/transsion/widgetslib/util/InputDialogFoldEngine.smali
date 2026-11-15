.class public final Lcom/transsion/widgetslib/util/InputDialogFoldEngine;
.super Lh5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/InputDialogFoldEngine$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$a;


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public c:Landroid/animation/ValueAnimator;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Z

.field public f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Lyi5;

.field public final i:Lyi5;

.field public final j:Landroidx/core/util/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->k:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 2

    const-string v0, "window"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lh5;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->g:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->h:Lyi5;

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;-><init>(Landroid/view/Window;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->i:Lyi5;

    new-instance p1, Lr05;

    invoke-direct {p1, p0}, Lr05;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->j:Landroidx/core/util/Consumer;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->A()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->e(Le74;)V

    return-void
.end method

.method public static final G(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->g:Landroid/os/Handler;

    new-instance v1, Ls05;

    invoke-direct {v1, p1, p0}, Ls05;-><init>(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final H(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/layout/DisplayFeature;

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroidx/window/layout/FoldingFeature;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/window/layout/FoldingFeature;

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->x(Landroidx/window/layout/FoldingFeature;)V

    new-instance p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->H(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->G(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->v()V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->w()V

    return-void
.end method

.method public static final synthetic e(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Le74;)Lzfb;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;Ls74;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->z(Landroid/view/Window;Ls74;)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->c:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->A()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/core/util/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->j:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->f:Z

    return p0
.end method

.method public static final synthetic l(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/view/Window;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->B()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->C()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->E(Landroid/view/Window;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic o(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->F()Z

    move-result p0

    return p0
.end method

.method public static final synthetic p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->N()V

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->O(Landroid/view/Window;)V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->c:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->d:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->Q()Z

    move-result p0

    return p0
.end method

.method public static final synthetic u(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->R()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()Lcom/transsion/widgetslib/util/InputDialogInputManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->h:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;

    return-object p0
.end method

.method public final B()Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    return-object p0
.end method

.method public final C()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->i:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    return-object p0
.end method

.method public final D()V
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;->INSTANCE:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    return-void
.end method

.method public final E(Landroid/view/Window;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->F()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->u0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lolb;->U0(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final F()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->e:Z

    return p0
.end method

.method public final I(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfigure"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->D()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->A()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->d(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final J()V
    .locals 1

    const-string v0, "onShow: "

    invoke-static {v0}, Lbq5;->o(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->K()V

    return-void
.end method

.method public final K()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    return-void
.end method

.method public final L()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->C()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->j:Landroidx/core/util/Consumer;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->w()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->L()V

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$release$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$release$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    return-void
.end method

.method public final N()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$revertBack$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$revertBack$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    return-void
.end method

.method public final O(Landroid/view/Window;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.transsion.flamboyant.FoldableDeviceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getCurrentFoldState"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "STATE_HALF_OPEN"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->U0(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateHalfOpenFinalValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbq5;->o(Ljava/lang/String;)V

    invoke-static {p1, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->P(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->P(Z)V

    goto :goto_0

    :catch_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->P(Z)V

    :goto_0
    return-void
.end method

.method public final P(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->e:Z

    return-void
.end method

.method public final Q()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->A()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final R()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->A()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMIsSoftInputStatusInChanging()Z

    move-result p0

    return p0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onActivityStarted"

    invoke-static {p1}, Lbq5;->o(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->f:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->K()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onActivityStopped:"

    invoke-static {p1}, Lbq5;->o(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->f:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->L()V

    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->y(Le74;)Lzfb;

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->d:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public final x(Landroidx/window/layout/FoldingFeature;)V
    .locals 4

    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FoldingFeature = isTableTopPosture state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " orientation = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbq5;->o(Ljava/lang/String;)V

    invoke-static {p1}, Lmi4;->a(Landroidx/window/layout/FoldingFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->P(Z)V

    const-string p0, " FoldingFeature = isTableTopPosture"

    invoke-static {p0}, Lbq5;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->P(Z)V

    const-string p0, "FoldingFeature = else"

    invoke-static {p0}, Lbq5;->o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final y(Le74;)Lzfb;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->B()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final z(Landroid/view/Window;Ls74;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p0, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

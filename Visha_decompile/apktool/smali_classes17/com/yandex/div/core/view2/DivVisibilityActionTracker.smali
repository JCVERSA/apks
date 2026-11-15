.class public Lcom/yandex/div/core/view2/DivVisibilityActionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/DivVisibilityActionTracker$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/yandex/div/core/view2/DivVisibilityActionTracker$a;


# instance fields
.field public final a:Lmdc;

.field public final b:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

.field public final c:Landroid/os/Handler;

.field public final d:Lbw2;

.field public final e:Lbw2;

.field public final f:Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

.field public final g:Ljava/util/WeakHashMap;

.field public final h:Ljava/util/WeakHashMap;

.field public final i:Ljava/util/WeakHashMap;

.field public final j:Lf8a;

.field public final k:Ljava/util/WeakHashMap;

.field public l:Z

.field public final m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->n:Lcom/yandex/div/core/view2/DivVisibilityActionTracker$a;

    return-void
.end method

.method public constructor <init>(Lmdc;Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;)V
    .locals 1

    const-string v0, "viewVisibilityCalculator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityActionDispatcher"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->a:Lmdc;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->b:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->c:Landroid/os/Handler;

    new-instance p1, Lbw2;

    invoke-direct {p1}, Lbw2;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->d:Lbw2;

    new-instance p1, Lbw2;

    invoke-direct {p1}, Lbw2;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->e:Lbw2;

    new-instance p1, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    new-instance p2, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$1;

    invoke-direct {p2, p0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$1;-><init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V

    new-instance v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$2;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$2;-><init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V

    invoke-direct {p1, p2, v0}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;-><init>(Ly74;Ly74;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->f:Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->g:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->h:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->i:Ljava/util/WeakHashMap;

    new-instance p1, Lf8a;

    invoke-direct {p1}, Lf8a;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->j:Lf8a;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k:Ljava/util/WeakHashMap;

    new-instance p1, Law2;

    invoke-direct {p1, p0}, Law2;-><init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->z(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lbw2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->d:Lbw2;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lbw2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->e:Lbw2;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lf8a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->j:Lf8a;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->h:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->i:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lmdc;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->a:Lmdc;

    return-object p0
.end method

.method public static final synthetic j(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->b:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

    return-object p0
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->f:Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    return-object p0
.end method

.method public static final synthetic l(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->q(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic m(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->v(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V
    .locals 7

    if-nez p8, :cond_2

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    invoke-virtual {p4}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p5

    invoke-static {p5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->W(Log2;)Ljava/util/List;

    move-result-object p5

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p5

    invoke-static {p5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->X(Log2;)Ljava/util/List;

    move-result-object p6

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->w(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: trackVisibilityActionsOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final z(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->b:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->d(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->l:Z

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 2

    const-string v0, "viewList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->g:Ljava/util/WeakHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->l:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->l:Z

    iget-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final n(Lcom/yandex/div/core/view2/CompositeLogId;Landroid/view/View;Lwp2;Lbw2;)V
    .locals 4

    sget-object v0, Lne5;->a:Lne5;

    sget-object v1, Lcom/yandex/div/logging/Severity;->INFO:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v0, v1}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTracking: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "DivVisibilityActionTracker"

    invoke-virtual {v0, v2, v3, v1}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$cancelTracking$2;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$cancelTracking$2;-><init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V

    invoke-virtual {p4, p1, v0}, Lbw2;->c(Lcom/yandex/div/core/view2/CompositeLogId;Le74;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    instance-of p4, p3, Lcom/yandex/div2/DivDisappearAction;

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->j:Lf8a;

    invoke-virtual {p0, p2}, Lf8a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public o(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$cancelTrackingViewsHierarchy$1;

    invoke-direct {v0, p0, p1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$cancelTrackingViewsHierarchy$1;-><init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->u(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Ls74;)V

    return-void
.end method

.method public p()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->j:Lf8a;

    invoke-virtual {p0}, Lf8a;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z
    .locals 7

    instance-of v0, p4, Lcom/yandex/div2/DivVisibilityAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    int-to-long v3, p5

    move-object p5, p4

    check-cast p5, Lcom/yandex/div2/DivVisibilityAction;

    iget-object p5, p5, Lcom/yandex/div2/DivVisibilityAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p5, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long p5, v3, v5

    if-ltz p5, :cond_0

    :goto_0
    move p5, v1

    goto :goto_3

    :cond_0
    :goto_1
    move p5, v2

    goto :goto_3

    :cond_1
    instance-of v0, p4, Lcom/yandex/div2/DivDisappearAction;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    int-to-long v3, p5

    move-object p5, p4

    check-cast p5, Lcom/yandex/div2/DivDisappearAction;

    iget-object p5, p5, Lcom/yandex/div2/DivDisappearAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p5, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long p5, v3, v5

    if-gtz p5, :cond_0

    goto :goto_0

    :cond_3
    sget-object p5, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p5, "Trying to check visibility for class without known visibility range"

    invoke-static {p5}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    invoke-interface {p4}, Lwp2;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Ljd1;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Lcom/yandex/div/core/view2/CompositeLogId;

    move-result-object p1

    invoke-virtual {p6, p1}, Lbw2;->b(Lcom/yandex/div/core/view2/CompositeLogId;)Lcom/yandex/div/core/view2/CompositeLogId;

    move-result-object p1

    if-eqz p3, :cond_4

    if-nez p1, :cond_4

    if-eqz p5, :cond_4

    return v1

    :cond_4
    if-eqz p3, :cond_5

    if-nez p1, :cond_5

    if-eqz p5, :cond_8

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    if-nez p5, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    if-eqz p1, :cond_7

    if-nez p5, :cond_7

    invoke-virtual {p0, p1, p3, p4, p6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->n(Lcom/yandex/div/core/view2/CompositeLogId;Landroid/view/View;Lwp2;Lbw2;)V

    goto :goto_4

    :cond_7
    if-nez p3, :cond_8

    if-eqz p1, :cond_8

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->n(Lcom/yandex/div/core/view2/CompositeLogId;Landroid/view/View;Lwp2;Lbw2;)V

    :cond_8
    :goto_4
    return v2
.end method

.method public final r(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Ljava/util/List;JLbw2;)V
    .locals 11

    move-object v0, p4

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwp2;

    invoke-interface {v2}, Lwp2;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    move-object v5, p2

    invoke-virtual {v3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, p1

    invoke-static {p1, v3}, Ljd1;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)Lcom/yandex/div/core/view2/CompositeLogId;

    move-result-object v3

    sget-object v6, Lne5;->a:Lne5;

    sget-object v7, Lcom/yandex/div/logging/Severity;->INFO:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v6, v7}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startTracking: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, "DivVisibilityActionTracker"

    invoke-virtual {v6, v8, v9, v7}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v4, p1

    move-object v5, p2

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    const-string v0, "logIds"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Lbw2;->a(Ljava/util/Map;)Z

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getLogId()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    iget-object v9, v1, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->c:Landroid/os/Handler;

    new-instance v10, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;

    move-object v0, v10

    move-object v2, p3

    move-object v3, p1

    move-object v4, v6

    move-object v6, v8

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;-><init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Ljava/util/Map;Ljava/util/List;)V

    move-wide/from16 v0, p5

    invoke-static {v9, v10, v8, v0, v1}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public s(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;

    invoke-direct {v0, p0, p1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;-><init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->u(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Ls74;)V

    return-void
.end method

.method public t(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->k()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->T(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->v(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final u(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Ls74;)V
    .locals 1

    invoke-interface {p4, p2, p3}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    instance-of p3, p2, Landroid/view/ViewGroup;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p2

    invoke-interface {p2}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yandex/div/core/view2/Div2View;->takeBindingDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->u(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Ls74;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final v(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static {}, Lxi;->c()V

    iget-object v0, v8, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->a:Lmdc;

    invoke-virtual {v0, v10}, Lmdc;->a(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->y(Landroid/view/View;Lcom/yandex/div2/Div;I)V

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/div2/DivVisibilityAction;

    invoke-static {v3}, Lxp2;->a(Lwp2;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v5, v8, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->d:Lbw2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v5

    move v5, v12

    move-object/from16 p5, v13

    move-object v13, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->q(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v13, p5

    goto :goto_2

    :cond_3
    move-object/from16 p5, v13

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v13, v8, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->d:Lbw2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    move-wide v5, v14

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->r(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Ljava/util/List;JLbw2;)V

    :cond_4
    move-object/from16 v13, p5

    goto :goto_1

    :cond_5
    move-object/from16 v0, p6

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/div2/DivDisappearAction;

    invoke-static {v3}, Lxp2;->a(Lwp2;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivDisappearAction;

    iget-object v6, v5, Lcom/yandex/div2/DivDisappearAction;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v6, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    move/from16 p6, v4

    int-to-long v3, v12

    cmp-long v3, v3, v6

    const/4 v4, 0x1

    if-lez v3, :cond_9

    move v3, v4

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-nez p6, :cond_b

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_7
    if-eqz v3, :cond_8

    iget-object v3, v8, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k:Ljava/util/WeakHashMap;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    move/from16 p6, v4

    if-eqz p6, :cond_e

    iget-object v2, v8, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->j:Lf8a;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/yandex/div2/DivDisappearAction;

    iget-object v5, v8, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->e:Lbw2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v17, v5

    move v5, v12

    move-object v9, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->q(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v9, p2

    goto :goto_8

    :cond_10
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v9, v8, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->e:Lbw2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    move-wide v5, v14

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->r(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Ljava/util/List;JLbw2;)V

    :cond_11
    move-object/from16 v9, p2

    goto/16 :goto_4

    :cond_12
    return-void
.end method

.method public w(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v7, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    const-string v0, "scope"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appearActions"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disappearActions"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    check-cast v0, Ljava/util/Collection;

    move-object v14, v9

    check-cast v14, Ljava/lang/Iterable;

    invoke-static {v0, v14}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    if-eqz v11, :cond_5

    iget-object v0, v10, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v11}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static/range {p3 .. p3}, Lpdc;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v0

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->k(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    move-result-object v0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->h(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/Div;Ljava/util/List;)V

    invoke-static {v8, v7}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->T(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v5

    invoke-static {v9, v7}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->T(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->m(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->f(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p3 .. p3}, Lpdc;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_4

    new-instance v6, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, p4

    move-object v7, v15

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$b;-><init>(Lcom/yandex/div/core/view2/Div2View;Lei2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Landroid/view/View;Loj3;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v14, v13}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget-object v0, Lzfb;->a:Lzfb;

    :cond_4
    iget-object v0, v10, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->h:Ljava/util/WeakHashMap;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, v10, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->f:Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;

    check-cast v15, Ljava/lang/Iterable;

    invoke-virtual {v0, v15}, Lcom/yandex/div/core/view2/SightActionIsEnabledObserver;->g(Ljava/lang/Iterable;)V

    move-object v0, v8

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/yandex/div2/DivVisibilityAction;

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->d:Lbw2;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->q(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z

    goto :goto_0

    :cond_6
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/yandex/div2/DivDisappearAction;

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->e:Lbw2;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->q(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public final y(Landroid/view/View;Lcom/yandex/div2/Div;I)V
    .locals 0

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->g:Ljava/util/WeakHashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->g:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-boolean p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->l:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->l:Z

    iget-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

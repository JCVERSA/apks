.class public Lcom/yandex/div/core/Div2Context;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/Div2Context$a;,
        Lcom/yandex/div/core/Div2Context$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/div/core/Div2Context$a;

.field public static final RESET_ERROR_COLLECTORS:I = 0x2

.field public static final RESET_EXPRESSION_RUNTIMES:I = 0x1

.field private static final RESET_NONE:I = 0x0

.field public static final RESET_SELECTED_STATES:I = 0x4

.field public static final RESET_VISIBILITY_COUNTERS:I = 0x8


# instance fields
.field private final baseContext:Landroid/view/ContextThemeWrapper;

.field private final div2Component:Lcom/yandex/div/core/dagger/Div2Component;

.field private final globalVariableController$delegate:Lyi5;

.field private inflater:Landroid/view/LayoutInflater;

.field private final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/Div2Context$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/Div2Context$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/Div2Context;->Companion:Lcom/yandex/div/core/Div2Context$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lcom/yandex/div/core/dagger/Div2Component;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/yandex/div/core/Div2Context;->baseContext:Landroid/view/ContextThemeWrapper;

    .line 3
    iput-object p2, p0, Lcom/yandex/div/core/Div2Context;->div2Component:Lcom/yandex/div/core/dagger/Div2Component;

    .line 4
    iput-object p3, p0, Lcom/yandex/div/core/Div2Context;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 5
    new-instance p1, Lcom/yandex/div/core/Div2Context$globalVariableController$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/Div2Context$globalVariableController$2;-><init>(Lcom/yandex/div/core/Div2Context;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/Div2Context;->globalVariableController$delegate:Lyi5;

    .line 6
    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->d()Lsh2;

    move-result-object p0

    invoke-virtual {p0}, Lsh2;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ContextThemeWrapper;Ljh2;ILandroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/yandex/div/core/b;->b:Lcom/yandex/div/core/b$a;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/b$a;->a(Landroid/content/Context;)Lcom/yandex/div/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/b;->e()Lcom/yandex/div/core/dagger/DivKitComponent;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/yandex/div/core/dagger/DivKitComponent;->b()Lcom/yandex/div/core/dagger/Div2Component$Builder;

    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/yandex/div/core/dagger/Div2Component$Builder;->e(Landroid/view/ContextThemeWrapper;)Lcom/yandex/div/core/dagger/Div2Component$Builder;

    move-result-object v0

    .line 12
    invoke-interface {v0, p2}, Lcom/yandex/div/core/dagger/Div2Component$Builder;->a(Ljh2;)Lcom/yandex/div/core/dagger/Div2Component$Builder;

    move-result-object v0

    .line 13
    invoke-interface {v0, p3}, Lcom/yandex/div/core/dagger/Div2Component$Builder;->c(I)Lcom/yandex/div/core/dagger/Div2Component$Builder;

    move-result-object p3

    .line 14
    new-instance v0, Lsh2;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lsh2;-><init>(J)V

    invoke-interface {p3, v0}, Lcom/yandex/div/core/dagger/Div2Component$Builder;->d(Lsh2;)Lcom/yandex/div/core/dagger/Div2Component$Builder;

    move-result-object p3

    .line 15
    invoke-virtual {p2}, Ljh2;->m()Lcom/yandex/div/core/expression/variables/DivVariableController;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/yandex/div/core/dagger/Div2Component$Builder;->b(Lcom/yandex/div/core/expression/variables/DivVariableController;)Lcom/yandex/div/core/dagger/Div2Component$Builder;

    move-result-object p2

    .line 16
    invoke-interface {p2}, Lcom/yandex/div/core/dagger/Div2Component$Builder;->build()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p2

    const-string p3, "DivKit.getInstance(baseC\u2026ler)\n            .build()"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p4}, Lcom/yandex/div/core/Div2Context;-><init>(Landroid/view/ContextThemeWrapper;Lcom/yandex/div/core/dagger/Div2Component;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ContextThemeWrapper;Ljh2;ILandroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 7
    sget p3, Lcom/yandex/div/R$style;->Div_Theme:I

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/Div2Context;-><init>(Landroid/view/ContextThemeWrapper;Ljh2;ILandroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public static synthetic getGlobalVariableController$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic reset$default(Lcom/yandex/div/core/Div2Context;ILjava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/Div2Context;->reset(ILjava/util/List;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reset"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/Div2Context;->inflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/div/core/Div2Context;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/Div2Context;->baseContext:Landroid/view/ContextThemeWrapper;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/div/core/Div2Context$b;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/Div2Context$b;-><init>(Lcom/yandex/div/core/Div2Context;)V

    invoke-static {v0, v1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Lcom/yandex/div/core/Div2Context;->inflater:Landroid/view/LayoutInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public cancelTooltips()Z
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->t()Lcom/yandex/div/core/tooltip/DivTooltipController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->g()Z

    move-result p0

    return p0
.end method

.method public childContext(Landroid/view/ContextThemeWrapper;)Lcom/yandex/div/core/Div2Context;
    .locals 2

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/yandex/div/core/Div2Context;

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getLifecycleOwner$div_release()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/yandex/div/core/Div2Context;-><init>(Landroid/view/ContextThemeWrapper;Lcom/yandex/div/core/dagger/Div2Component;Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

.method public childContext(Landroid/view/ContextThemeWrapper;Landroidx/lifecycle/LifecycleOwner;)Lcom/yandex/div/core/Div2Context;
    .locals 1

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/div/core/Div2Context;

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Lcom/yandex/div/core/Div2Context;-><init>(Landroid/view/ContextThemeWrapper;Lcom/yandex/div/core/dagger/Div2Component;Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

.method public childContext(Landroidx/lifecycle/LifecycleOwner;)Lcom/yandex/div/core/Div2Context;
    .locals 2

    .line 2
    new-instance v0, Lcom/yandex/div/core/Div2Context;

    iget-object v1, p0, Lcom/yandex/div/core/Div2Context;->baseContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/yandex/div/core/Div2Context;-><init>(Landroid/view/ContextThemeWrapper;Lcom/yandex/div/core/dagger/Div2Component;Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

.method public getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/Div2Context;->div2Component:Lcom/yandex/div/core/dagger/Div2Component;

    return-object p0
.end method

.method public getDivVariableController()Lcom/yandex/div/core/expression/variables/DivVariableController;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->y()Lcom/yandex/div/core/expression/variables/DivVariableController;

    move-result-object p0

    const-string v0, "div2Component.divVariableController"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getGlobalVariableController()Lsi4;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/Div2Context;->globalVariableController$delegate:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsi4;

    return-object p0
.end method

.method public getLifecycleOwner$div_release()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/Div2Context;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public getPerformanceDependentSessionProfiler()Lr08;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->o()Lr08;

    move-result-object p0

    const-string v0, "div2Component.performanceDependentSessionProfiler"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->a()Landroid/view/LayoutInflater;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/Div2Context;->baseContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getViewPreCreationProfile()Lddc;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->e()Lcom/yandex/div/core/view2/DivViewCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->N()Lddc;

    move-result-object p0

    return-object p0
.end method

.method public getViewPreCreationProfileRepository()Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->s()Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;

    move-result-object p0

    const-string v0, "div2Component.viewPreCreationProfileRepository"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public reset(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lei2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->p()Lcom/yandex/div/core/expression/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/div/core/expression/a;->i(Ljava/util/List;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->a()Lxc3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lxc3;->c(Ljava/util/List;)V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsq2;->b(Ljava/util/List;)V

    :cond_2
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->c()Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->g(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public setViewPreCreationProfile(Lddc;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->e()Lcom/yandex/div/core/view2/DivViewCreator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/DivViewCreator;->g0(Lddc;)V

    return-void
.end method

.method public warmUp()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/Div2Context;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->v()Ldd2;

    return-void
.end method

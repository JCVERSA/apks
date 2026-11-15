.class public final Lcom/yandex/div/core/view2/divs/DivStateBinder;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivStateBinder$a;
    }
.end annotation


# static fields
.field public static final p:Lcom/yandex/div/core/view2/divs/DivStateBinder$a;


# instance fields
.field public final b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final c:Lcom/yandex/div/core/view2/DivViewCreator;

.field public final d:Loj8;

.field public final e:Llq2;

.field public final f:Lrga;

.field public final g:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final h:Lce2;

.field public final i:Lco2;

.field public final j:Lzn2;

.field public final k:Lgd2;

.field public final l:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

.field public final m:Lxc3;

.field public final n:Lcom/yandex/div/core/expression/variables/c;

.field public final o:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivStateBinder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/DivStateBinder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->p:Lcom/yandex/div/core/view2/divs/DivStateBinder$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/DivViewCreator;Loj8;Llq2;Lrga;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lce2;Lco2;Lzn2;Lgd2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lxc3;Lcom/yandex/div/core/expression/variables/c;Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divStateCache"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryStateCache"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBeaconSender"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchManager"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchCache"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2Logger"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divVisibilityActionTracker"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableBinder"

    invoke-static {p13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeVisitor"

    invoke-static {p14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->d:Loj8;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->e:Llq2;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->f:Lrga;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->g:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->h:Lce2;

    iput-object p8, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->i:Lco2;

    iput-object p9, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->j:Lzn2;

    iput-object p10, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->k:Lgd2;

    iput-object p11, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->l:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iput-object p12, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->m:Lxc3;

    iput-object p13, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->n:Lcom/yandex/div/core/expression/variables/c;

    iput-object p14, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->o:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lgd2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->k:Lgd2;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lce2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->h:Lce2;

    return-object p0
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lcom/yandex/div/core/view2/divs/DivActionBinder;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->g:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    return-object p0
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lcom/yandex/div/core/view2/DivVisibilityActionTracker;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->l:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    return-object p0
.end method

.method public static final synthetic j(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lxc3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->m:Lxc3;

    return-object p0
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/Div2View;Loj3;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->x(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/Div2View;Loj3;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final l(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 6

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v4

    invoke-virtual {p0, p1, p3, p4, v4}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->p(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState;Loj3;)V

    invoke-virtual {p0, p1, p3, p2, p6}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->t(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    iget-object p3, p3, Lcom/yandex/div2/DivState;->h:Lcom/yandex/div/json/expressions/Expression;

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p4, Lcom/yandex/div2/DivState;->h:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object p4, p6

    :goto_0
    invoke-static {p1, p3, p4, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->B(Landroid/view/ViewGroup;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Loj3;)V

    iget-object v5, p5, Lcom/yandex/div2/DivState$State;->e:Ljava/util/List;

    if-eqz v5, :cond_1

    new-instance p6, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivStateBinder$bind$1$1;-><init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Loj3;Ljava/util/List;)V

    :cond_1
    invoke-virtual {p1, p6}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->setSwipeOutCallback(Lc74;)V

    return-void
.end method

.method public final m(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;Loj3;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v15, p8

    move-object/from16 v14, p9

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v12

    iget-object v0, v11, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    move-object/from16 v1, p10

    invoke-virtual {v15, v1, v0}, Lcom/yandex/div/core/state/DivStatePath;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v6

    iget-object v5, v11, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    const/16 v20, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_0

    :cond_0
    move-object/from16 v21, v20

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_1

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object/from16 v3, v20

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v13}, Lcom/yandex/div/core/view2/Div2View;->getCurrentRebindReusableList$div_release()Lxu8;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Lxu8;->c(Lcom/yandex/div2/Div;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object/from16 v0, v20

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getStateId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    if-eqz v5, :cond_3

    invoke-virtual {v7, v0, v5, v12}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->q(Landroid/view/View;Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_3
    move-object/from16 v1, v20

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 p10, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v22, v3

    move-object/from16 v3, p4

    move v11, v4

    move-object/from16 v4, p6

    move-object v11, v5

    move-object/from16 v5, p10

    move-object v10, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->u(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState$State;Landroid/view/View;Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Landroidx/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    sget-object v1, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;->a:Lcom/yandex/div/core/view2/animations/SceneRootWatcher;

    invoke-virtual {v1, v8, v0}, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    invoke-static {v8, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_4
    sget-object v0, Lyr8;->a:Lyr8;

    invoke-virtual {v0, v8, v13}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    move-object/from16 v0, p10

    if-eqz v0, :cond_5

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v11, :cond_5

    iget-object v1, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->d:Loj8;

    invoke-interface {v1}, Loj8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrg2;

    invoke-virtual {v1, v9, v0, v11, v10}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    :cond_5
    move-object/from16 v6, v22

    if-eqz v6, :cond_6

    invoke-virtual {v13}, Lcom/yandex/div/core/view2/Div2View;->getDivTransitionHandler$div_release()Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->j(Landroid/view/ViewGroup;Z)V

    :cond_6
    move-object v2, v0

    move-object v5, v12

    move-object v4, v13

    move-object v1, v14

    move-object v3, v15

    goto/16 :goto_6

    :cond_7
    move-object v11, v5

    move-object v10, v6

    move-object v6, v3

    if-eqz v21, :cond_d

    if-eqz v6, :cond_8

    if-eqz v14, :cond_8

    sget-object v1, Lhh2;->a:Lhh2;

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object v5, v12

    move-object v12, v1

    move-object v4, v13

    move-object/from16 v13, p7

    move-object v1, v14

    move-object v14, v11

    move-object v3, v15

    move-object/from16 v15, p9

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v19}, Lhh2;->d(Lhh2;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    move-object v5, v12

    move-object v4, v13

    move-object v1, v14

    move-object v3, v15

    :cond_9
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    move-object v0, v6

    goto :goto_5

    :cond_a
    invoke-virtual {v7, v0, v11, v5}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->q(Landroid/view/View;Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object v0

    :goto_5
    if-nez v2, :cond_b

    sget-object v2, Lyr8;->a:Lyr8;

    invoke-virtual {v2, v8, v4}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->d:Loj8;

    invoke-interface {v2}, Loj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrg2;

    invoke-virtual {v2, v9, v0, v11, v10}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    :cond_c
    move-object v2, v0

    goto :goto_6

    :cond_d
    move-object v5, v12

    move-object v4, v13

    move-object v1, v14

    move-object v3, v15

    sget-object v0, Lyr8;->a:Lyr8;

    invoke-virtual {v0, v8, v4}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    move-object/from16 v2, v20

    :goto_6
    if-eqz v6, :cond_10

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v12, 0x0

    invoke-direct {v0, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p5

    move-object v15, v10

    move-object/from16 v10, p3

    invoke-static {v0, v10}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v0, p4

    move-object/from16 v12, p6

    invoke-static {v0, v12}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    move-object v0, v11

    move-object/from16 v23, v15

    goto :goto_8

    :cond_f
    :goto_7
    invoke-virtual {v4, v6}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    if-eqz p7, :cond_e

    if-eqz v1, :cond_e

    iget-object v0, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->l:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v11

    move-object v11, v0

    move-object v12, v4

    move-object v0, v13

    move-object/from16 v13, p9

    move-object/from16 v23, v15

    move-object/from16 v15, p7

    invoke-static/range {v11 .. v19}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    invoke-virtual {v7, v6, v4, v1}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->y(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_8

    :cond_10
    move-object/from16 v23, v10

    move-object v0, v11

    move-object/from16 v10, p3

    :goto_8
    if-eqz v2, :cond_11

    if-eqz v21, :cond_11

    invoke-interface/range {v21 .. v21}, Log2;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-interface/range {v21 .. v21}, Log2;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    move-object v12, v0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v24, v5

    goto :goto_a

    :cond_12
    :goto_9
    invoke-virtual {v4, v2, v0}, Lcom/yandex/div/core/view2/Div2View;->bindViewToDiv$div_release(Landroid/view/View;Lcom/yandex/div2/Div;)V

    new-instance v11, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;

    move-object v12, v0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v4

    move-object v14, v3

    move-object v3, v5

    move-object v15, v4

    move-object v4, v13

    move-object/from16 v24, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;-><init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;)V

    invoke-virtual {v13, v11}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_a
    if-eqz p7, :cond_17

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->i:Lco2;

    invoke-virtual {v1, v9, v0}, Lco2;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    sget-object v1, Lne5;->a:Lne5;

    sget-object v2, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v1, v2}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x6

    const-string v3, "Unable to patch state because there is more than 1 div in the patch"

    const-string v4, "DivStateBinder"

    invoke-virtual {v1, v2, v4, v3}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    invoke-static {v1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_c

    :cond_14
    :goto_b
    move-object/from16 v1, v20

    :goto_c
    iget-object v2, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->j:Lzn2;

    invoke-virtual {v15}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lzn2;->b(Lei2;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/yandex/div2/Div;

    :cond_15
    move-object/from16 v0, v20

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    sget-object v2, Lyr8;->a:Lyr8;

    invoke-virtual {v2, v8, v15}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->b0(Log2;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v15, v1, v0}, Lcom/yandex/div/core/view2/Div2View;->bindViewToDiv$div_release(Landroid/view/View;Lcom/yandex/div2/Div;)V

    :cond_16
    iget-object v2, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->d:Loj8;

    invoke-interface {v2}, Loj8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrg2;

    move-object/from16 v3, v23

    invoke-virtual {v2, v9, v1, v0, v3}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    goto :goto_d

    :cond_17
    move-object/from16 v3, v23

    :goto_d
    invoke-virtual {v8, v12}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->setActiveStateDiv$div_release(Lcom/yandex/div2/Div;)V

    invoke-virtual {v8, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->setPath(Lcom/yandex/div/core/state/DivStatePath;)V

    if-eqz v6, :cond_18

    iget-object v0, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->o:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    move-object/from16 v1, v24

    invoke-virtual {v0, v15, v10, v14, v1}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->c(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivState;Lcom/yandex/div/core/state/DivStatePath;Loj3;)V

    :cond_18
    return-void
.end method

.method public n(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div2/Div$n;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p4

    const-string v0, "context"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getDiv()Lcom/yandex/div2/Div$n;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    :cond_0
    move-object v14, v13

    :goto_0
    sget-object v0, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivStateBinder$bindView$id$1;

    invoke-direct {v1, v7, v8, v10}, Lcom/yandex/div/core/view2/divs/DivStateBinder$bindView$id$1;-><init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {v0, v11, v1}, Lcom/yandex/div/core/state/DivPathUtils;->h(Lcom/yandex/div2/DivState;Lc74;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->r(Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/state/DivStatePath;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/yandex/div2/DivState$State;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/yandex/div2/DivState$State;

    if-eqz v16, :cond_5

    if-nez v17, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getActiveStateDiv$div_release()Lcom/yandex/div2/Div;

    move-result-object v5

    if-eq v12, v6, :cond_3

    iget-object v0, v7, Lcom/yandex/div/core/view2/divs/DivStateBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {v0, v8, v9, v6, v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v13

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->l(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div/core/state/DivStatePath;)V

    goto :goto_2

    :cond_3
    move-object/from16 v18, v5

    :goto_2
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_4
    move-object v5, v13

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v4, v17

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, p4

    move-object v9, v14

    move-object v10, v15

    invoke-virtual/range {v0 .. v10}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;Loj3;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 2

    new-instance p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/yandex/div/internal/widget/DivLayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final p(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState;Loj3;)V
    .locals 2

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/yandex/div2/DivState;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/yandex/div2/DivState;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAlignmentHorizontal;

    if-nez p0, :cond_5

    :cond_3
    invoke-static {p1, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R(Landroid/view/View;Loj3;)Lcom/yandex/div2/DivContentAlignmentHorizontal;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->v0(Lcom/yandex/div2/DivContentAlignmentHorizontal;)Lcom/yandex/div2/DivAlignmentHorizontal;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_2
    if-eqz p2, :cond_7

    invoke-virtual {p2, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivAlignmentVertical;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, p2

    goto :goto_4

    :cond_7
    :goto_3
    invoke-static {p1, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->S(Landroid/view/View;Loj3;)Lcom/yandex/div2/DivContentAlignmentVertical;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-static {p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->w0(Lcom/yandex/div2/DivContentAlignmentVertical;)Lcom/yandex/div2/DivAlignmentVertical;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-static {p1, p0, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->d(Landroid/view/View;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V

    :cond_9
    return-void
.end method

.method public final q(Landroid/view/View;Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    invoke-virtual {p1, p2, p3}, Lcom/yandex/div/core/view2/DivViewCreator;->L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->o(Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public final r(Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/state/DivStatePath;Ljava/lang/String;)Lkotlin/Pair;
    .locals 3

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDivTag()Lei2;

    move-result-object v0

    invoke-virtual {v0}, Lei2;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.divView.divTag.id"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/yandex/div/core/state/DivStatePath;->j()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x2f

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->f:Lrga;

    invoke-virtual {p5, v0, p4}, Lrga;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->e:Llq2;

    invoke-interface {p5, v0, p4}, Llq2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    const/4 p4, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getVariableUpdater()Le74;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, p5}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p5, p1, Lcom/yandex/div2/DivState;->x:Ljava/lang/String;

    if-eqz p5, :cond_2

    invoke-virtual {p0, p2, p5}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->s(Lcom/yandex/div/core/view2/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_2
    move-object p5, p4

    :cond_3
    :goto_0
    iget-object p0, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yandex/div2/DivState$State;

    iget-object v1, v1, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_5
    move-object v0, p4

    :goto_1
    check-cast v0, Lcom/yandex/div2/DivState$State;

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p0

    invoke-static {p1, p0}, Leu2;->f(Lcom/yandex/div2/DivState;Loj3;)Lcom/yandex/div2/DivState$State;

    move-result-object v0

    :cond_6
    iget-object p0, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/yandex/div2/DivState$State;

    iget-object v1, v1, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-static {v1, p5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p4, p3

    :cond_8
    check-cast p4, Lcom/yandex/div2/DivState$State;

    if-nez p4, :cond_9

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p0

    invoke-static {p1, p0}, Leu2;->f(Lcom/yandex/div2/DivState;Loj3;)Lcom/yandex/div2/DivState$State;

    move-result-object p4

    :cond_9
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final s(Lcom/yandex/div/core/view2/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lvj3;->g()Lsnb;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lvj3;->g()Lsnb;

    move-result-object p0

    :cond_1
    invoke-interface {p0, p2}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lqnb;->c()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final t(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 2

    iget-object v0, p2, Lcom/yandex/div2/DivState;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->n:Lcom/yandex/div/core/expression/variables/c;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p0, p3, v0, v1, p4}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final u(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState$State;Landroid/view/View;Landroid/view/View;)Landroidx/transition/Transition;
    .locals 8

    if-eqz p6, :cond_3

    invoke-static {p6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v6

    invoke-static {p2, v6}, Lwt2;->d(Lcom/yandex/div2/DivState;Loj3;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-eqz p4, :cond_1

    iget-object v0, p4, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v0, :cond_1

    invoke-static {v0, v7}, Leu2;->c(Lcom/yandex/div2/Div;Loj3;)Z

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz v0, :cond_2

    invoke-static {v0, v6}, Leu2;->c(Lcom/yandex/div2/Div;Loj3;)Z

    move-result v0

    if-ne v0, p2, :cond_2

    :goto_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->c()Lut2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->d()Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->w(Lut2;Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState$State;Loj3;Loj3;)Landroidx/transition/Transition;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->v(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState$State;Landroid/view/View;Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->v(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState$State;Landroid/view/View;Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState$State;Landroid/view/View;Landroid/view/View;)Landroidx/transition/Transition;
    .locals 5

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p0

    iget-object p1, p2, Lcom/yandex/div2/DivState$State;->a:Lcom/yandex/div2/DivAnimation;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivState$State;->b:Lcom/yandex/div2/DivAnimation;

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    if-eqz p1, :cond_6

    if-eqz p4, :cond_6

    iget-object v1, p1, Lcom/yandex/div2/DivAnimation;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivAnimation$Name;->SET:Lcom/yandex/div2/DivAnimation$Name;

    if-eq v1, v2, :cond_3

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lcom/yandex/div2/DivAnimation;->d:Ljava/util/List;

    if-nez p1, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAnimation;

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Lkq2;->a(Lcom/yandex/div2/DivAnimation;ZLoj3;)Landroidx/transition/Transition;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p4}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object v2

    iget-object v3, v1, Lcom/yandex/div2/DivAnimation;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object v2

    iget-object v3, v1, Lcom/yandex/div2/DivAnimation;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object v2

    iget-object v1, v1, Lcom/yandex/div2/DivAnimation;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {v1}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_3

    :cond_6
    if-eqz p5, :cond_7

    invoke-static {p5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p2

    :cond_7
    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    iget-object p0, p3, Lcom/yandex/div2/DivAnimation;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/yandex/div2/DivAnimation$Name;->SET:Lcom/yandex/div2/DivAnimation$Name;

    if-eq p0, p1, :cond_8

    invoke-static {p3}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_4

    :cond_8
    iget-object p0, p3, Lcom/yandex/div2/DivAnimation;->d:Ljava/util/List;

    if-nez p0, :cond_9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivAnimation;

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lkq2;->a(Lcom/yandex/div2/DivAnimation;ZLoj3;)Landroidx/transition/Transition;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p3, p5}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    move-result-object p3

    iget-object p4, p1, Lcom/yandex/div2/DivAnimation;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p4, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    move-result-object p3

    iget-object p4, p1, Lcom/yandex/div2/DivAnimation;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p4, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    move-result-object p3

    iget-object p1, p1, Lcom/yandex/div2/DivAnimation;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p1}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_5

    :cond_b
    if-eqz p5, :cond_c

    invoke-virtual {p5}, Landroid/view/View;->clearAnimation()V

    :cond_c
    return-object v0
.end method

.method public final w(Lut2;Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState$State;Loj3;Loj3;)Landroidx/transition/Transition;
    .locals 1

    invoke-static {p3, p4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    iget-object p0, p4, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz p0, :cond_1

    invoke-static {p0, p6}, Lzt2;->c(Lcom/yandex/div2/Div;Loj3;)Lyt2;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p4, Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$1;->INSTANCE:Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$1;

    invoke-virtual {p0, p4}, Lyt2;->e(Le74;)Lyt2;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p4, Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$2;->INSTANCE:Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$2;

    invoke-static {p0, p4}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    iget-object p3, p3, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-eqz p3, :cond_2

    invoke-static {p3, p5}, Lzt2;->c(Lcom/yandex/div2/Div;Loj3;)Lyt2;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object p4, Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$3;->INSTANCE:Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$3;

    invoke-virtual {p3, p4}, Lyt2;->e(Le74;)Lyt2;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object p4, Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$4;->INSTANCE:Lcom/yandex/div/core/view2/divs/DivStateBinder$setupTransitions$transition$4;

    invoke-static {p3, p4}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, p0, v0, p6, p5}, Lut2;->d(Lpc9;Lpc9;Loj3;Loj3;)Landroidx/transition/TransitionSet;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->a(Landroidx/transition/Transition;)V

    return-object p0
.end method

.method public final x(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/Div2View;Loj3;Ljava/util/List;)V
    .locals 7

    new-instance v6, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivStateBinder$swipeOut$1;-><init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/Div2View;Loj3;Ljava/util/List;Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;)V

    invoke-virtual {p2, v6}, Lcom/yandex/div/core/view2/Div2View;->bulkActions$div_release(Lc74;)V

    return-void
.end method

.method public final y(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 10

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p1

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder;->l:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->y(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_0

    :cond_1
    return-void
.end method

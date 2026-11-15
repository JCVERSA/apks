.class public final Lcom/yandex/div/core/view2/divs/DivVideoBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lcom/yandex/div/core/expression/variables/b;

.field public final c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final d:Lvu2;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Lcom/yandex/div/core/player/DivPlayerFactory;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/expression/variables/b;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lvu2;Ljava/util/concurrent/ExecutorService;Lcom/yandex/div/core/player/DivPlayerFactory;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableBinder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewMapper"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerFactory"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->b:Lcom/yandex/div/core/expression/variables/b;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->c:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->d:Lvu2;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->e:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->f:Lcom/yandex/div/core/player/DivPlayerFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;

    check-cast p3, Lcom/yandex/div2/DivVideo;

    check-cast p4, Lcom/yandex/div2/DivVideo;

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivVideo;Lcom/yandex/div2/DivVideo;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final f(Lcom/yandex/div2/DivVideo;Loj3;Le74;)V
    .locals 1

    iget-object p1, p1, Lcom/yandex/div2/DivVideo;->B:Lcom/yandex/div/json/expressions/Expression;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {p3, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p2, Lcom/yandex/div/core/DecodeBase64ImageTask;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3}, Lcom/yandex/div/core/DecodeBase64ImageTask;-><init>(Ljava/lang/String;ZLe74;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public g(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivVideo;Lcom/yandex/div2/DivVideo;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v0, "<this>"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v10

    invoke-static {v8, v10}, Lku2;->a(Lcom/yandex/div2/DivVideo;Loj3;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Llo2;

    iget-object v2, v8, Lcom/yandex/div2/DivVideo;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v10}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v4, v8, Lcom/yandex/div2/DivVideo;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, v10}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v11, v8, Lcom/yandex/div2/DivVideo;->C:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v11, v10}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v12, v8, Lcom/yandex/div2/DivVideo;->z:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v4, v11, v12}, Llo2;-><init>(ZZZLorg/json/JSONObject;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;->getPlayerView()Lcom/yandex/div/core/player/DivPlayerView;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    const/4 v12, 0x0

    if-ge v4, v2, :cond_1

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    instance-of v14, v13, Lte8;

    if-eqz v14, :cond_0

    check-cast v13, Lte8;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v13, v12

    :goto_1
    const-string v2, "context"

    if-nez v11, :cond_2

    iget-object v4, v6, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->f:Lcom/yandex/div/core/player/DivPlayerFactory;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v14}, Lcom/yandex/div/core/player/DivPlayerFactory;->b(Landroid/content/Context;)Lcom/yandex/div/core/player/DivPlayerView;

    move-result-object v4

    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    move-object v14, v4

    goto :goto_2

    :cond_2
    move-object v14, v11

    :goto_2
    if-nez v13, :cond_3

    new-instance v4, Lte8;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v15}, Lte8;-><init>(Landroid/content/Context;)V

    move-object v15, v4

    goto :goto_3

    :cond_3
    move-object v15, v13

    :goto_3
    new-instance v2, Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;

    invoke-direct {v2, v14, v15}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;-><init>(Lcom/yandex/div/core/player/DivPlayerView;Lte8;)V

    invoke-virtual {v6, v8, v10, v2}, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->f(Lcom/yandex/div2/DivVideo;Loj3;Le74;)V

    iget-object v2, v6, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->f:Lcom/yandex/div/core/player/DivPlayerFactory;

    invoke-interface {v2, v0, v1}, Lcom/yandex/div/core/player/DivPlayerFactory;->c(Ljava/util/List;Llo2;)Lcom/yandex/div/core/player/a;

    move-result-object v4

    invoke-virtual {v6, v3, v8, v15}, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->h(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivVideo;Landroid/view/View;)Lcom/yandex/div/core/player/a$b;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/yandex/div/core/player/a;->a(Lcom/yandex/div/core/player/a$b;)V

    invoke-virtual {v14, v4}, Lcom/yandex/div/core/player/DivPlayerView;->attach(Lcom/yandex/div/core/player/a;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 p2, v4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/player/a;Lcom/yandex/div/core/state/DivStatePath;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v7, v8, v10, v0}, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Loj3;Lcom/yandex/div/core/player/a;)V

    move-object/from16 v0, p0

    move-object v3, v10

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Loj3;Lcom/yandex/div/core/player/DivPlayerView;Lte8;)V

    if-nez v13, :cond_4

    if-nez v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, v6, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->d:Lvu2;

    invoke-virtual {v0, v7, v8}, Lvu2;->a(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;)V

    iget-object v0, v8, Lcom/yandex/div2/DivVideo;->f:Lcom/yandex/div2/DivAspect;

    if-eqz v9, :cond_5

    iget-object v12, v9, Lcom/yandex/div2/DivVideo;->f:Lcom/yandex/div2/DivAspect;

    :cond_5
    invoke-static {v7, v0, v12, v10}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->A(Landroid/view/View;Lcom/yandex/div2/DivAspect;Lcom/yandex/div2/DivAspect;Loj3;)V

    return-void
.end method

.method public final h(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivVideo;Landroid/view/View;)Lcom/yandex/div/core/player/a$b;
    .locals 6

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    new-instance p1, Lcom/yandex/div/core/view2/divs/DivVideoBinder$a;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$a;-><init>(Lcom/yandex/div/core/view2/divs/DivVideoBinder;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/DivVideo;Landroid/view/View;)V

    return-object p1
.end method

.method public final i(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/player/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    iget-object p2, p2, Lcom/yandex/div2/DivVideo;->m:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b;

    invoke-direct {v0, p4}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$b;-><init>(Lcom/yandex/div/core/player/a;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder;->b:Lcom/yandex/div/core/expression/variables/b;

    invoke-virtual {p0, p3, p2, v0, p5}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final j(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Loj3;Lcom/yandex/div/core/player/a;)V
    .locals 0

    iget-object p0, p2, Lcom/yandex/div2/DivVideo;->w:Lcom/yandex/div/json/expressions/Expression;

    new-instance p2, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeMuted$1;

    invoke-direct {p2, p4}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeMuted$1;-><init>(Lcom/yandex/div/core/player/a;)V

    invoke-virtual {p0, p3, p2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final k(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Loj3;Lcom/yandex/div/core/player/DivPlayerView;Lte8;)V
    .locals 0

    iget-object p0, p2, Lcom/yandex/div2/DivVideo;->G:Lcom/yandex/div/json/expressions/Expression;

    new-instance p2, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;

    invoke-direct {p2, p4, p5}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;-><init>(Lcom/yandex/div/core/player/DivPlayerView;Lte8;)V

    invoke-virtual {p0, p3, p2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;->addSubscription(Lqc2;)V

    return-void
.end method

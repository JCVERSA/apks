.class public Lcom/yandex/div/core/tooltip/DivTooltipController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrt2;

.field public final b:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

.field public final c:Lcom/yandex/div/core/DivPreloader;

.field public final d:Lxc3;

.field public final e:Lst2;

.field public final f:Lb5;

.field public final g:Lu74;

.field public final h:Ljava/util/Map;

.field public final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lrt2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/DivPreloader;Lst2;Lb5;Lxc3;)V
    .locals 9

    const-string v0, "tooltipRestrictor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divVisibilityActionTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPreloader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divTooltipViewBuilder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStateProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v8, Lcom/yandex/div/core/tooltip/DivTooltipController$1;->INSTANCE:Lcom/yandex/div/core/tooltip/DivTooltipController$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    move-object v7, p5

    .line 12
    invoke-direct/range {v1 .. v8}, Lcom/yandex/div/core/tooltip/DivTooltipController;-><init>(Lrt2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/DivPreloader;Lxc3;Lst2;Lb5;Lu74;)V

    return-void
.end method

.method public constructor <init>(Lrt2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/DivPreloader;Lxc3;Lst2;Lb5;Lu74;)V
    .locals 1

    const-string v0, "tooltipRestrictor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divVisibilityActionTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPreloader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divTooltipViewBuilder"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStateProvider"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createPopup"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->a:Lrt2;

    .line 3
    iput-object p2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->b:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    .line 4
    iput-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->c:Lcom/yandex/div/core/DivPreloader;

    .line 5
    iput-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->d:Lxc3;

    .line 6
    iput-object p5, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->e:Lst2;

    .line 7
    iput-object p6, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->f:Lb5;

    .line 8
    iput-object p7, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->g:Lu74;

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->i:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/tooltip/DivTooltipContainer;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lb19;Lgqa;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/yandex/div/core/tooltip/DivTooltipController;->v(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/tooltip/DivTooltipContainer;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lb19;Lgqa;)V

    return-void
.end method

.method public static synthetic b(Lgqa;Landroid/view/View;Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivTooltip;ZLcom/yandex/div/core/tooltip/DivTooltipContainer;Lb19;Landroid/view/View;Loj3;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Z)V
    .locals 0

    invoke-static/range {p0 .. p12}, Lcom/yandex/div/core/tooltip/DivTooltipController;->w(Lgqa;Landroid/view/View;Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivTooltip;ZLcom/yandex/div/core/tooltip/DivTooltipContainer;Lb19;Landroid/view/View;Loj3;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lxc3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->d:Lxc3;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lrt2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->a:Lrt2;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/tooltip/DivTooltipController;->s(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/tooltip/DivTooltipController;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/tooltip/DivTooltipController;->u(Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V

    return-void
.end method

.method public static synthetic r(Lcom/yandex/div/core/tooltip/DivTooltipController;Ljava/lang/String;Lcom/yandex/div/core/view2/a;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/tooltip/DivTooltipController;->q(Ljava/lang/String;Lcom/yandex/div/core/view2/a;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showTooltip"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final v(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/tooltip/DivTooltipContainer;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lb19;Lgqa;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$divTooltip"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tooltipContainer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$div2View"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$anchor"

    invoke-static {p5, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$popup"

    invoke-static {p6, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$tooltipData"

    invoke-static {p7, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    iget-object p5, p1, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-interface {p4, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/core/tooltip/DivTooltipController;->t(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)V

    iget-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->b:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->p()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/Div;

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->b:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-virtual {p4, p2, p3, p1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->t(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->a:Lrt2;

    invoke-interface {p1}, Lrt2;->b()Lrt2$a;

    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->f:Lb5;

    invoke-static {p6, p7, p0}, Lit2;->d(Landroid/widget/PopupWindow;Lgqa;Lb5;)V

    return-void
.end method

.method public static final w(Lgqa;Landroid/view/View;Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivTooltip;ZLcom/yandex/div/core/tooltip/DivTooltipContainer;Lb19;Landroid/view/View;Loj3;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Z)V
    .locals 16

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    move-object/from16 v10, p7

    move-object/from16 v9, p8

    move-object/from16 v8, p9

    move-object/from16 v7, p10

    move-object/from16 v6, p11

    const-string v0, "$tooltipData"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$anchor"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$div2View"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$divTooltip"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tooltipContainer"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$popup"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tooltipView"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resolver"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$div"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgqa;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v12, Lcom/yandex/div/core/tooltip/DivTooltipController;->a:Lrt2;

    move/from16 v1, p5

    invoke-interface {v0, v13, v11, v14, v1}, Lrt2;->d(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static/range {p6 .. p6}, Lpdc;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p3 .. p3}, Lit2;->b(Lcom/yandex/div/core/view2/Div2View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v9, v11, v14, v8}, Lit2;->f(Landroid/view/View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Loj3;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/yandex/div/core/tooltip/DivTooltipController;->c(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lxc3;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Tooltip width > screen size, width was changed"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/yandex/div/core/tooltip/DivTooltipController;->c(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lxc3;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Tooltip height > screen size, height was changed"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v3, v1, v2, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    invoke-static {v12, v7, v6, v15}, Lcom/yandex/div/core/tooltip/DivTooltipController;->e(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Landroid/view/View;)V

    invoke-static/range {p2 .. p2}, Lcom/yandex/div/core/tooltip/DivTooltipController;->d(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lrt2;

    move-result-object v0

    invoke-interface {v0}, Lrt2;->b()Lrt2$a;

    move-object v14, v10

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/yandex/div/core/tooltip/DivTooltipController$b;

    move-object v0, v5

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v13, v5

    move-object/from16 v5, p9

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object v14, v9

    move-object/from16 v9, p11

    move-object v14, v10

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/yandex/div/core/tooltip/DivTooltipController$b;-><init>(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Loj3;Lcom/yandex/div/core/tooltip/DivTooltipController;Lb19;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Lcom/yandex/div/core/tooltip/DivTooltipContainer;)V

    invoke-virtual {v15, v13}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v14, v11, v0, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/16 v0, 0x20

    iget-object v1, v12, Lcom/yandex/div/core/tooltip/DivTooltipController;->f:Lb5;

    move-object/from16 v2, p8

    invoke-static {v0, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->p0(ILandroid/view/View;Lb5;)V

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/yandex/div2/DivTooltip;->f:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    iget-object v1, v12, Lcom/yandex/div/core/tooltip/DivTooltipController;->i:Landroid/os/Handler;

    iget-object v3, v0, Lcom/yandex/div2/DivTooltip;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    new-instance v4, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;

    move-object/from16 v5, p3

    invoke-direct {v4, v12, v0, v5}, Lcom/yandex/div/core/tooltip/DivTooltipController$tryShowTooltip$lambda$18$$inlined$postDelayed$default$1;-><init>(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgqa;

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/tooltip/DivTooltipController;->k(Lgqa;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/yandex/div/R$id;->div_tooltips_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/tooltip/DivTooltipController;->l(Lcom/yandex/div2/DivTooltip;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p1

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->h(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public i(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/tooltip/DivTooltipController;->h(Landroid/view/View;)V

    return-void
.end method

.method public final j(Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/div/core/tooltip/DivTooltipController$createOnBackPressCallback$1;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->f:Lb5;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "divView.getContext()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb5;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div/core/tooltip/DivTooltipController$createOnBackPressCallback$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/div/core/tooltip/DivTooltipController$createOnBackPressCallback$1;-><init>(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-static {p2}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->get(Landroid/view/View;)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Can\'t find onBackPressedDispatcher to set on back press listener on tooltip."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, p0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lxi;->i(Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final k(Lgqa;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgqa;->h(Z)V

    invoke-virtual {p1}, Lgqa;->g()Lcom/yandex/div/core/DivPreloader$f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/div/core/DivPreloader$f;->cancel()V

    :cond_0
    invoke-virtual {p1}, Lgqa;->f()Lb19;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgqa;->f()Lb19;

    move-result-object p0

    invoke-static {p0}, Lft2;->a(Landroid/widget/PopupWindow;)V

    invoke-virtual {p1}, Lgqa;->f()Lb19;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lgqa;->a()Lcom/yandex/div/core/view2/a;

    move-result-object v0

    invoke-virtual {p1}, Lgqa;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/core/tooltip/DivTooltipController;->t(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)V

    invoke-virtual {p1}, Lgqa;->d()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final l(Lcom/yandex/div2/DivTooltip;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    iget-object p1, p1, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgqa;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/tooltip/DivTooltipController;->k(Lgqa;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgqa;

    invoke-virtual {v1}, Lgqa;->f()Lb19;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p0, "findViewWithTag<View>(id)"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public n(Ljava/lang/String;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2View"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgqa;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgqa;->f()Lb19;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public o(Landroid/view/View;Ljava/util/List;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/yandex/div/R$id;->div_tooltips_tag:I

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTooltip;Landroid/view/View;Z)V
    .locals 7

    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lpdc;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p3, p2, p1, p4}, Lcom/yandex/div/core/tooltip/DivTooltipController;->f(Lcom/yandex/div/core/tooltip/DivTooltipController;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/tooltip/DivTooltipController$a;-><init>(Lcom/yandex/div/core/tooltip/DivTooltipController;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V

    invoke-virtual {p3, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    invoke-static {p3}, Lpdc;->d(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public q(Ljava/lang/String;Lcom/yandex/div/core/view2/a;Z)V
    .locals 2

    const-string v0, "tooltipId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-static {p1, v0}, Lit2;->a(Ljava/lang/String;Landroid/view/View;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p2, v1, v0, p3}, Lcom/yandex/div/core/tooltip/DivTooltipController;->p(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTooltip;Landroid/view/View;Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find view for tooltip \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final s(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/tooltip/DivTooltipController;->t(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)V

    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->b:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final t(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)V
    .locals 9

    iget-object v0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController;->b:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final u(Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V
    .locals 26

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v9

    iget-object v0, v13, Lcom/yandex/div/core/tooltip/DivTooltipController;->a:Lrt2;

    move-object/from16 v10, p1

    move/from16 v11, p4

    invoke-interface {v0, v9, v10, v14, v11}, Lrt2;->d(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v15

    iget-object v12, v14, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, v14, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v1

    const-string v2, "displayMetrics"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, v15

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)I

    move-result v7

    iget-object v1, v14, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)I

    move-result v0

    iget-object v1, v13, Lcom/yandex/div/core/tooltip/DivTooltipController;->e:Lst2;

    move-object/from16 v8, p3

    invoke-virtual {v1, v8, v12, v7, v0}, Lst2;->a(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;II)Lcom/yandex/div/core/tooltip/DivTooltipContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yandex/div/core/tooltip/DivTooltipContainer;->getTooltipView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget-object v1, v13, Lcom/yandex/div/core/tooltip/DivTooltipController;->g:Lu74;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v2, v0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lb19;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-static {v14, v15}, Lit2;->e(Lcom/yandex/div2/DivTooltip;Loj3;)Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-static/range {p2 .. p2}, Lit2;->c(Lcom/yandex/div2/DivTooltip;)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    new-instance v0, Lgd8;

    invoke-static/range {p2 .. p2}, Lit2;->c(Lcom/yandex/div2/DivTooltip;)Z

    move-result v1

    invoke-static {v14, v15}, Lit2;->e(Lcom/yandex/div2/DivTooltip;Loj3;)Z

    move-result v2

    invoke-direct {v0, v7, v5, v1, v2}, Lgd8;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;ZZ)V

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    invoke-static {v7, v14, v15}, Lft2;->d(Landroid/widget/PopupWindow;Lcom/yandex/div2/DivTooltip;Loj3;)V

    invoke-virtual {v13, v14, v9}, Lcom/yandex/div/core/tooltip/DivTooltipController;->j(Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/div/core/tooltip/DivTooltipController$createOnBackPressCallback$1;

    move-result-object v22

    new-instance v4, Lgqa;

    iget-object v0, v14, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    const/16 v24, 0x40

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    move-object/from16 v18, p3

    move-object/from16 v19, v12

    move-object/from16 v20, v7

    invoke-direct/range {v16 .. v25}, Lgqa;-><init>(Ljava/lang/String;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Lb19;Lcom/yandex/div/core/DivPreloader$f;Landroidx/activity/OnBackPressedCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lgt2;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v10, v3

    move-object/from16 v3, p3

    move-object v4, v6

    move-object/from16 v17, v5

    move-object v5, v9

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    move-object/from16 v19, v7

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lgt2;-><init>(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/tooltip/DivTooltipContainer;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lb19;Lgqa;)V

    move-object/from16 v8, v19

    invoke-virtual {v8, v10}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, v13, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    iget-object v1, v14, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v13, Lcom/yandex/div/core/tooltip/DivTooltipController;->c:Lcom/yandex/div/core/DivPreloader;

    new-instance v7, Lht2;

    move-object v0, v7

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v9

    move-object/from16 v5, p2

    move/from16 v6, p4

    move-object v11, v7

    move-object/from16 v7, v18

    move-object/from16 v9, v17

    move-object v14, v10

    move-object v10, v15

    move-object v13, v11

    move-object/from16 v11, p3

    move-object/from16 p1, v12

    invoke-direct/range {v0 .. v12}, Lht2;-><init>(Lgqa;Landroid/view/View;Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivTooltip;ZLcom/yandex/div/core/tooltip/DivTooltipContainer;Lb19;Landroid/view/View;Loj3;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15, v13}, Lcom/yandex/div/core/DivPreloader;->h(Lcom/yandex/div2/Div;Loj3;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$f;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/yandex/div/core/tooltip/DivTooltipController;->h:Ljava/util/Map;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgqa;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lgqa;->i(Lcom/yandex/div/core/DivPreloader$f;)V

    :goto_0
    return-void
.end method

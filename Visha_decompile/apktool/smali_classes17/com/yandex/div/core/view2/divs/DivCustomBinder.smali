.class public final Lcom/yandex/div/core/view2/divs/DivCustomBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final c:Lcom/yandex/div/core/a;

.field public final d:Lvi2;

.field public final e:Loj8;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/a;Lvi2;Loj8;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divCustomContainerViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->c:Lcom/yandex/div/core/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->d:Lvi2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->e:Loj8;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivCustomBinder;)Lcom/yandex/div/core/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->c:Lcom/yandex/div/core/a;

    return-object p0
.end method


# virtual methods
.method public final g(Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;Landroid/view/View;Lcom/yandex/div2/DivCustom;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/a;Lc74;Le74;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getDiv()Lcom/yandex/div2/Div$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p4, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Lbh2;->l(Lcom/yandex/div2/DivCustom;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p4}, Lbh2;->l(Lcom/yandex/div2/DivCustom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_1

    move-object p3, p2

    goto :goto_1

    :cond_1
    invoke-interface {p6}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    sget p6, Lcom/yandex/div/R$id;->div_custom_tag:I

    invoke-virtual {p3, p6, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {p5}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p6

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1, p3, p6}, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->i(Landroid/view/ViewGroup;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;)V

    :cond_2
    invoke-interface {p7, p3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {p4}, Lcom/yandex/div2/DivCustom;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p6, p3, p2}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->D(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->d:Lvi2;

    invoke-virtual {p5}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p1

    invoke-virtual {p0, p6, p1, p3, p4}, Lvi2;->b(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V

    return-void
.end method

.method public h(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;Lcom/yandex/div2/Div$c;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    const-string v1, "context"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "div"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "path"

    move-object/from16 v9, p4

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getCustomView()Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getDiv()Lcom/yandex/div2/Div$c;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v12

    if-ne v1, v0, :cond_0

    iget-object v0, v6, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->e:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "divBinder.get()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lrg2;

    invoke-static {v8, v7, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->E(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lrg2;)V

    return-void

    :cond_0
    if-eqz v10, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v6, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->d:Lvi2;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v4

    invoke-virtual {v3, v11, v2, v10, v4}, Lvi2;->e(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V

    :cond_1
    iget-object v2, v6, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V

    iget-object v2, v6, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v8, v3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->D(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object v13

    iget-object v0, v6, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->c:Lcom/yandex/div/core/a;

    iget-object v2, v13, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/yandex/div/core/a;->isCustomTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    :cond_2
    move-object v14, v3

    :goto_0
    new-instance v15, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$2;-><init>(Lcom/yandex/div/core/view2/divs/DivCustomBinder;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V

    new-instance v16, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivCustomBinder$bindView$3;-><init>(Lcom/yandex/div/core/view2/divs/DivCustomBinder;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v10

    move-object v3, v14

    move-object v4, v13

    move-object/from16 v5, p1

    move-object v6, v15

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivCustomBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;Landroid/view/View;Lcom/yandex/div2/DivCustom;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/a;Lc74;Le74;)V

    :cond_3
    return-void
.end method

.method public final i(Landroid/view/ViewGroup;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/Div2View;->getReleaseViewVisitor$div_release()Lzr8;

    move-result-object p0

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

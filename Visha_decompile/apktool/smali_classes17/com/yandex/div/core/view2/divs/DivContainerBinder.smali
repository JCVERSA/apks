.class public final Lcom/yandex/div/core/view2/divs/DivContainerBinder;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivContainerBinder$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final c:Loj8;

.field public final d:Lco2;

.field public final e:Loj8;

.field public final f:Lxc3;

.field public final g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Loj8;Lco2;Loj8;Lxc3;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->c:Loj8;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->d:Lco2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->e:Loj8;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->f:Lxc3;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Landroid/view/View;Lcom/yandex/div2/DivContainer;Log2;Loj3;Loj3;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->m(Landroid/view/View;Lcom/yandex/div2/DivContainer;Log2;Loj3;Loj3;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->n(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->H(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Orientation;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->J(Lcom/yandex/div2/DivContainer$Orientation;)I

    move-result p0

    return p0
.end method

.method public static final synthetic j(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivEdgeInsets;Landroid/content/res/Resources;Loj3;)Landroid/graphics/Rect;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->K(Lcom/yandex/div2/DivEdgeInsets;Landroid/content/res/Resources;Loj3;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Separator;Loj3;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->L(Lcom/yandex/div2/DivContainer$Separator;Loj3;)I

    move-result p0

    return p0
.end method

.method public static final synthetic l(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Orientation;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->M(Lcom/yandex/div2/DivContainer$Orientation;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lcom/yandex/div2/DivContainer;Log2;Loj3;Lwc3;)V
    .locals 0

    invoke-static {p1, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->k0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->B(Lcom/yandex/div2/DivSize;Log2;Lwc3;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->B(Lcom/yandex/div2/DivSize;Log2;Lwc3;)V

    :goto_0
    return-void
.end method

.method public final B(Lcom/yandex/div2/DivSize;Log2;Lwc3;)V
    .locals 6

    const-string v4, "wrap layout mode"

    const-string v5, "cross"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->E(Lcom/yandex/div2/DivSize;Log2;Lwc3;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final C(Lcom/yandex/div2/DivContainer;Log2;Loj3;Lwc3;)V
    .locals 2

    invoke-static {p1, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->k0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div2/DivContainer;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p1

    instance-of p1, p1, Lcom/yandex/div2/DivSize$d;

    if-eqz p1, :cond_2

    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->D(Lcom/yandex/div2/DivSize;Log2;Lwc3;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div2/DivContainer;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v0

    instance-of v0, v0, Lcom/yandex/div2/DivSize$d;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/yandex/div2/DivContainer;->i:Lcom/yandex/div2/DivAspect;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p1, v0

    const/4 p3, 0x0

    cmpg-float p1, p1, p3

    if-nez p1, :cond_2

    :cond_1
    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->D(Lcom/yandex/div2/DivSize;Log2;Lwc3;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final D(Lcom/yandex/div2/DivSize;Log2;Lwc3;)V
    .locals 6

    const-string v4, "wrap_content size"

    const-string v5, "main"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->E(Lcom/yandex/div2/DivSize;Log2;Lwc3;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final E(Lcom/yandex/div2/DivSize;Log2;Lwc3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/DivSize$c;

    if-eqz p0, :cond_2

    invoke-interface {p2}, Log2;->getId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " with id=\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const/4 p2, 0x3

    filled-new-array {p4, p0, p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Incorrect child size. Container with %s contains child%s with match_parent size along the %s axis."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "format(...)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final F(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v10, p3

    iget-object v1, v10, Lcom/yandex/div2/DivContainer;->z:Lcom/yandex/div2/DivCollectionItemBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    goto/16 :goto_3

    :cond_1
    :goto_0
    move-object/from16 v1, p5

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    move v5, v4

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast v6, Lzl2;

    invoke-virtual {v6}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v8

    add-int/2addr v4, v5

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    invoke-virtual {v11, v0, v12, v8, v4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->o(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/div2/Div;

    new-instance v13, Lzl2;

    invoke-virtual {v6}, Lzl2;->d()Loj3;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Lzl2;-><init>(Lcom/yandex/div2/Div;Loj3;)V

    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v5, v4

    invoke-static {v3, v8}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move v4, v7

    goto :goto_1

    :cond_4
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object v13, v3

    :goto_3
    move-object v1, v13

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v9, v2

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v15, v9, 0x1

    if-gez v9, :cond_5

    invoke-static {}, Ly71;->u()V

    :cond_5
    check-cast v1, Lzl2;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(index)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v4

    invoke-virtual {v1}, Lzl2;->d()Loj3;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->q(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Loj3;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Lcom/yandex/div/core/state/DivStatePath;I)V

    move v9, v15

    goto :goto_4

    :cond_6
    return-object v13
.end method

.method public final G(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->F(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object p0

    const-string p3, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivCollectionHolder"

    invoke-static {p1, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Lch2;

    invoke-interface {p3, p0}, Lch2;->setItems(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p2

    invoke-static {p1, p2, p0, p6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O0(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final H(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V
    .locals 11

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p3, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {v1, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-direct {v4, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    check-cast p3, Lzl2;

    invoke-virtual {p3}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p3

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lzfb;->a:Lzfb;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Ly71;->u()V

    :cond_1
    check-cast v3, Lzl2;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/yandex/div2/Div;

    invoke-static {v8}, Leu2;->i(Lcom/yandex/div2/Div;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v9

    invoke-static {v9}, Leu2;->g(Lcom/yandex/div2/Div;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Leu2;->g(Lcom/yandex/div2/Div;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v9

    invoke-virtual {v3}, Lzl2;->d()Loj3;

    move-result-object v10

    invoke-static {v8, v9, v10}, Leu2;->b(Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;)Z

    move-result v8

    :goto_2
    if-eqz v8, :cond_2

    move-object v4, v7

    :cond_4
    check-cast v4, Lcom/yandex/div2/Div;

    invoke-static {v0}, Lccb;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    move v2, v5

    goto :goto_1

    :cond_6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzl2;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/yandex/div2/Div;

    invoke-static {v6}, Leu2;->g(Lcom/yandex/div2/Div;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v7

    invoke-static {v7}, Leu2;->g(Lcom/yandex/div2/Div;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_8
    move-object v5, v4

    :goto_5
    check-cast v5, Lcom/yandex/div2/Div;

    invoke-static {v0}, Lccb;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->c:Loj8;

    invoke-interface {v3}, Loj8;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div/core/view2/DivViewCreator;

    invoke-virtual {v2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v5

    invoke-virtual {v2}, Lzl2;->d()Loj3;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/yandex/div/core/view2/DivViewCreator;->L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object v3

    :cond_9
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getReleaseViewVisitor$div_release()Lzr8;

    move-result-object p3

    invoke-static {p3, p1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_6

    :cond_b
    return-void
.end method

.method public final I(Lcom/yandex/div/core/view2/a;Landroid/view/ViewGroup;Lcom/yandex/div2/Div$b;)V
    .locals 4

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lmk2;

    invoke-interface {v0, p3}, Lmk2;->setDiv(Lcom/yandex/div2/Div;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->e:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrg2;

    invoke-virtual {p3}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p3

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-static {p3, v0}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v1, Lzl2;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "childView"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, p1

    :cond_1
    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lrg2;->w(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final J(Lcom/yandex/div2/DivContainer$Orientation;)I
    .locals 0

    sget-object p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public final K(Lcom/yandex/div2/DivEdgeInsets;Landroid/content/res/Resources;Loj3;)Landroid/graphics/Rect;
    .locals 5

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p1, Lcom/yandex/div2/DivEdgeInsets;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSizeUnit;

    iget-object v2, p1, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "metrics"

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_4
    invoke-static {v2, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_6

    invoke-virtual {v4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_7
    invoke-static {v2, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->right:I

    :goto_3
    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final L(Lcom/yandex/div2/DivContainer$Separator;Loj3;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p1, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object v0, p1, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x2

    :cond_1
    iget-object p1, p1, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 p0, p0, 0x4

    :cond_2
    return p0
.end method

.method public final M(Lcom/yandex/div2/DivContainer$Orientation;)I
    .locals 0

    sget-object p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public final N(Landroid/view/ViewGroup;Lcom/yandex/div2/DivContainer;Ljava/util/List;Loj3;Lwc3;)V
    .locals 2

    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    instance-of v1, p1, Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2, v0, p4, p5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->A(Lcom/yandex/div2/DivContainer;Log2;Loj3;Lwc3;)V

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2, v0, p4, p5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->C(Lcom/yandex/div2/DivContainer;Log2;Loj3;Lwc3;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p3, Lcom/yandex/div2/DivContainer;

    check-cast p4, Lcom/yandex/div2/DivContainer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->p(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;)V

    return-void
.end method

.method public final m(Landroid/view/View;Lcom/yandex/div2/DivContainer;Log2;Loj3;Loj3;)V
    .locals 1

    invoke-interface {p3}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_0

    :cond_0
    invoke-static {p2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->l0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivContentAlignmentHorizontal;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->v0(Lcom/yandex/div2/DivContentAlignmentHorizontal;)Lcom/yandex/div2/DivAlignmentHorizontal;

    move-result-object p0

    :goto_0
    invoke-interface {p3}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_1

    :cond_2
    invoke-static {p2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->l0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivContentAlignmentVertical;

    invoke-static {p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->w0(Lcom/yandex/div2/DivContentAlignmentVertical;)Lcom/yandex/div2/DivAlignmentVertical;

    move-result-object v0

    :goto_1
    invoke-static {p1, p0, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->d(Landroid/view/View;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V

    return-void
.end method

.method public final n(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V
    .locals 10

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    move-object v7, p0

    iget-object v1, v7, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->c:Loj8;

    move-object v8, p1

    move-object v9, p5

    invoke-static {p1, v0, p5, v1}, Loo8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Loj8;)Z

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->N(Landroid/view/ViewGroup;Lcom/yandex/div2/DivContainer;Ljava/util/List;Loj3;Lwc3;)V

    invoke-virtual/range {p0 .. p7}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->G(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final o(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;I)Ljava/util/List;
    .locals 2

    invoke-virtual {p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->d:Lco2;

    invoke-virtual {p0, p2, v0}, Lco2;->c(Lcom/yandex/div/core/view2/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {p3}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    add-int/lit8 v1, p3, 0x1

    add-int/2addr p3, p4

    invoke-virtual {p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move p3, v1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public p(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    const-string v1, "<this>"

    invoke-static {v14, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bindingContext"

    move-object/from16 v12, p2

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "div"

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v15, Lcom/yandex/div2/DivContainer;->b:Lcom/yandex/div2/DivAction;

    iget-object v4, v15, Lcom/yandex/div2/DivContainer;->d:Ljava/util/List;

    iget-object v5, v15, Lcom/yandex/div2/DivContainer;->E:Ljava/util/List;

    iget-object v6, v15, Lcom/yandex/div2/DivContainer;->r:Ljava/util/List;

    iget-object v7, v15, Lcom/yandex/div2/DivContainer;->x:Ljava/util/List;

    iget-object v8, v15, Lcom/yandex/div2/DivContainer;->w:Ljava/util/List;

    iget-object v9, v15, Lcom/yandex/div2/DivContainer;->J:Ljava/util/List;

    iget-object v10, v15, Lcom/yandex/div2/DivContainer;->I:Ljava/util/List;

    iget-object v11, v15, Lcom/yandex/div2/DivContainer;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivContainer;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v16

    iget-object v2, v15, Lcom/yandex/div2/DivContainer;->l:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    move-object/from16 v2, p2

    move-object/from16 v12, v16

    move-object v0, v13

    move-object/from16 v13, v17

    invoke-static/range {v1 .. v13}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAction;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    iget-object v2, v15, Lcom/yandex/div2/DivContainer;->i:Lcom/yandex/div2/DivAspect;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/yandex/div2/DivContainer;->i:Lcom/yandex/div2/DivAspect;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-static {v14, v2, v4, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->A(Landroid/view/View;Lcom/yandex/div2/DivAspect;Lcom/yandex/div2/DivAspect;Loj3;)V

    iget-object v2, v15, Lcom/yandex/div2/DivContainer;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/yandex/div2/DivContainer;->m:Lcom/yandex/div/json/expressions/Expression;

    :cond_1
    invoke-static {v14, v2, v3, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->B(Landroid/view/ViewGroup;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Loj3;)V

    instance-of v2, v14, Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    if-eqz v2, :cond_2

    move-object v2, v14

    check-cast v2, Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v3, v1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->v(Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object/from16 v0, p0

    instance-of v2, v14, Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    if-eqz v2, :cond_3

    move-object v2, v14

    check-cast v2, Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    invoke-virtual {v0, v2, v15, v3, v1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->w(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final q(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Loj3;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Lcom/yandex/div/core/state/DivStatePath;I)V
    .locals 13

    move-object v10, p1

    move-object/from16 v11, p3

    move-object/from16 v7, p4

    instance-of v0, v10, Lmk2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v10

    check-cast v0, Lmk2;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-static {v2, v4, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->o0(Log2;ILcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v6

    invoke-static {v6, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11, v7, v6}, Lcom/yandex/div/core/expression/local/RuntimeStore;->p(Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Loj3;)Lvj3;

    :cond_2
    move-object v3, p0

    iget-object v4, v3, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->e:Loj8;

    invoke-interface {v4}, Loj8;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrg2;

    move-object v5, p2

    invoke-virtual {p2, v7}, Lcom/yandex/div/core/view2/a;->c(Loj3;)Lcom/yandex/div/core/view2/a;

    move-result-object v8

    invoke-virtual {v4, v8, p1, v11, v2}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    invoke-static {p1}, Lvr8;->a(Landroid/view/View;)Lqj3;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v7, p4

    move-object v9, v12

    invoke-virtual/range {v0 .. v9}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->r(Landroid/view/View;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Log2;Log2;Loj3;Loj3;Lqj3;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->b0(Log2;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v12, p1, v11}, Lcom/yandex/div/core/view2/Div2View;->bindViewToDiv$div_release(Landroid/view/View;Lcom/yandex/div2/Div;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v12, p1}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    :goto_3
    return-void
.end method

.method public final r(Landroid/view/View;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Log2;Log2;Loj3;Loj3;Lqj3;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 13

    move-object v7, p2

    move-object/from16 v0, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {p9 .. p9}, Lcom/yandex/div/core/view2/Div2View;->getComplexRebindInProgress$div_release()Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_2

    if-eqz p5, :cond_2

    iget-object v1, v7, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v11

    :goto_0
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v0, v11

    :goto_1
    invoke-static {v1, v0}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {p4 .. p4}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {p4 .. p4}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->m(Landroid/view/View;Lcom/yandex/div2/DivContainer;Log2;Loj3;Loj3;)V

    iget-object v0, v7, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {p4 .. p4}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {p4 .. p4}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v12, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindChildAlignment$callback$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindChildAlignment$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Landroid/view/View;Lcom/yandex/div2/DivContainer;Log2;Loj3;Loj3;)V

    iget-object v0, v7, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v8, v12}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {v10, v0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v0, v7, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v8, v12}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {v10, v0}, Lqj3;->addSubscription(Lqc2;)V

    invoke-interface/range {p4 .. p4}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v9, v12}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v11

    :goto_2
    invoke-interface {v10, v0}, Lqj3;->addSubscription(Lqc2;)V

    invoke-interface/range {p4 .. p4}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v9, v12}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v11

    :cond_5
    invoke-interface {v10, v11}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final s(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V
    .locals 11

    move-object v5, p3

    iget-object v8, v5, Lcom/yandex/div2/DivContainer;->z:Lcom/yandex/div2/DivCollectionItemBuilder;

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v9

    new-instance v10, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;-><init>(Lcom/yandex/div2/DivCollectionItemBuilder;Lcom/yandex/div/core/view2/a;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V

    invoke-static {v8, v9, v10}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->C(Lcom/yandex/div2/DivCollectionItemBuilder;Loj3;Le74;)V

    return-void
.end method

.method public final t(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-static {v5, v1}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object v3

    const-string v1, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivCollectionHolder"

    invoke-static {v7, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v7

    check-cast v1, Lch2;

    invoke-interface {v1}, Lch2;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzl2;

    iget-object v9, v6, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->c:Loj8;

    invoke-interface {v9}, Loj8;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/div/core/view2/DivViewCreator;

    invoke-virtual {v8}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v10

    invoke-virtual {v8}, Lzl2;->d()Loj3;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/yandex/div/core/view2/DivViewCreator;->L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eq v5, v4, :cond_3

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getComplexRebindInProgress$div_release()Z

    move-result v2

    const/16 v16, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    sget-object v2, Lhh2;->a:Lhh2;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v12

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    move-object/from16 v9, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-static/range {v8 .. v15}, Lhh2;->f(Lhh2;Log2;Log2;Loj3;Loj3;Lih2;ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    move-object v9, v1

    move-object v10, v3

    invoke-static/range {v8 .. v13}, Lhh2;->b(Lhh2;Ljava/util/List;Ljava/util/List;Lih2;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v6, v7, v0, v1, v3}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->H(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v1

    :goto_1
    iget-object v1, v6, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->f:Lxc3;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->s(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V

    move-object/from16 v4, p4

    move-object v5, v9

    move-object/from16 v6, v16

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->n(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V

    return-void
.end method

.method public final u(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V
    .locals 9

    iget-object v6, p2, Lcom/yandex/div2/DivContainer;->D:Lcom/yandex/div2/DivContainer$Separator;

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/yandex/div2/DivContainer;->D:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    if-eqz v6, :cond_1

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v1, v7

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object v2, v7

    :goto_2
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_3

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_3
    move-object v1, v7

    :goto_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_4
    move-object v2, v7

    :goto_4
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_5

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_5
    move-object v1, v7

    :goto_5
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_6
    move-object v0, v7

    :goto_6
    invoke-static {v1, v0}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_d

    :cond_7
    invoke-static {p0, v6, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->k(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Separator;Loj3;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setShowLineSeparators(I)V

    if-eqz v6, :cond_8

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_8
    move-object v0, v7

    :goto_7
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_9

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_8

    :cond_9
    move-object v0, v7

    :goto_8
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_a

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_9

    :cond_a
    move-object v0, v7

    :goto_9
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    new-instance v8, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;

    move-object v0, v8

    move-object v1, v6

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;-><init>(Lcom/yandex/div2/DivContainer$Separator;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Loj3;)V

    if-eqz v6, :cond_c

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_a

    :cond_c
    move-object v0, v7

    :goto_a
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    if-eqz v6, :cond_d

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_b

    :cond_d
    move-object v0, v7

    :goto_b
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    if-eqz v6, :cond_e

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_c

    :cond_e
    move-object v0, v7

    :goto_c
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_d
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->D:Lcom/yandex/div2/DivContainer$Separator;

    if-eqz p3, :cond_f

    iget-object v1, p3, Lcom/yandex/div2/DivContainer;->D:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_e

    :cond_f
    move-object v1, v7

    :goto_e
    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_f

    :cond_10
    move-object v2, v7

    :goto_f
    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_10

    :cond_11
    move-object v1, v7

    :goto_10
    invoke-static {v2, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->f(Lcom/yandex/div2/DivDrawable;Lcom/yandex/div2/DivDrawable;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_15

    :cond_12
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_11

    :cond_13
    move-object v1, v7

    :goto_11
    if-eqz v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v3, "resources.displayMetrics"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_12

    :cond_14
    move-object v1, v7

    :goto_12
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setLineSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_13

    :cond_15
    move-object v1, v7

    :goto_13
    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->z(Lcom/yandex/div2/DivDrawable;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_15

    :cond_16
    new-instance v1, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorStyle$1;

    invoke-direct {v1, v0, p4, p1, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorStyle$1;-><init>(Lcom/yandex/div2/DivContainer$Separator;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Loj3;)V

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_14

    :cond_17
    move-object v0, v7

    :goto_14
    invoke-static {p1, v0, p4, v1}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    :goto_15
    iget-object p2, p2, Lcom/yandex/div2/DivContainer;->D:Lcom/yandex/div2/DivContainer$Separator;

    if-eqz p3, :cond_18

    iget-object p3, p3, Lcom/yandex/div2/DivContainer;->D:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_16

    :cond_18
    move-object p3, v7

    :goto_16
    if-eqz p2, :cond_19

    iget-object v0, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_17

    :cond_19
    move-object v0, v7

    :goto_17
    if-eqz p3, :cond_1a

    iget-object p3, p3, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_18

    :cond_1a
    move-object p3, v7

    :goto_18
    invoke-static {v0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->g(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p3

    if-eqz p3, :cond_1b

    goto/16 :goto_1d

    :cond_1b
    if-eqz p2, :cond_1c

    iget-object p3, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_19

    :cond_1c
    move-object p3, v7

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3, v0, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->j(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivEdgeInsets;Landroid/content/res/Resources;Loj3;)Landroid/graphics/Rect;

    move-result-object p3

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setLineSeparatorMargins(IIII)V

    if-eqz p2, :cond_1d

    iget-object p2, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_1a

    :cond_1d
    move-object p2, v7

    :goto_1a
    if-eqz p2, :cond_22

    invoke-static {p2}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->A(Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p3

    if-nez p3, :cond_22

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorMargins$1;

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorMargins$1;-><init>(Lcom/yandex/div2/DivEdgeInsets;Loj3;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-nez p0, :cond_1f

    iget-object v0, p2, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1e

    goto :goto_1b

    :cond_1e
    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    goto :goto_1d

    :cond_1f
    :goto_1b
    if-eqz p0, :cond_20

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_1c

    :cond_20
    move-object p0, v7

    :goto_1c
    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_21

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v7

    :cond_21
    invoke-interface {p1, v7}, Lqj3;->addSubscription(Lqc2;)V

    :cond_22
    :goto_1d
    return-void
.end method

.method public final v(Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivContainer$Orientation;

    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->i(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Orientation;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->setOrientation(I)V

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindOrientation$1;

    invoke-direct {v2, p1, p0}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindOrientation$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Lcom/yandex/div/core/view2/divs/DivContainerBinder;)V

    invoke-virtual {v0, p4, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_1
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_3

    iget-object v2, p3, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_4

    iget-object v1, p3, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    :cond_4
    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivContentAlignmentVertical;

    check-cast v0, Lcom/yandex/div2/DivContentAlignmentHorizontal;

    invoke-static {v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->P(Lcom/yandex/div2/DivContentAlignmentHorizontal;Lcom/yandex/div2/DivContentAlignmentVertical;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/DivViewGroup;->setGravity(I)V

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;

    invoke-direct {v0, p2, p4, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$1;-><init>(Lcom/yandex/div2/DivContainer;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;)V

    iget-object v1, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-interface {p1, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->x(Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V

    return-void
.end method

.method public final w(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivContainer$Orientation;

    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->l(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Orientation;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setWrapDirection(I)V

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindOrientation$2;

    invoke-direct {v2, p1, p0}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindOrientation$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div/core/view2/divs/DivContainerBinder;)V

    invoke-virtual {v0, p4, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_1
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_3

    iget-object v2, p3, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_4

    iget-object v1, p3, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    :cond_4
    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivContentAlignmentVertical;

    check-cast v0, Lcom/yandex/div2/DivContentAlignmentHorizontal;

    invoke-static {v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->P(Lcom/yandex/div2/DivContentAlignmentHorizontal;Lcom/yandex/div2/DivContentAlignmentVertical;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/DivViewGroup;->setGravity(I)V

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$2;

    invoke-direct {v0, p2, p4, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindProperties$$inlined$bindContentAlignment$2;-><init>(Lcom/yandex/div2/DivContainer;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;)V

    iget-object v1, p2, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-interface {p1, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p2, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->y(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->u(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V

    return-void
.end method

.method public final x(Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V
    .locals 9

    iget-object v6, p2, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    if-eqz v6, :cond_1

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v1, v7

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object v2, v7

    :goto_2
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_3

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_3
    move-object v1, v7

    :goto_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_4
    move-object v2, v7

    :goto_4
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_5

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_5
    move-object v1, v7

    :goto_5
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_6
    move-object v0, v7

    :goto_6
    invoke-static {v1, v0}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_d

    :cond_7
    invoke-static {p0, v6, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->k(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Separator;Loj3;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/widget/LinearContainerLayout;->setShowDividers(I)V

    if-eqz v6, :cond_8

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_8
    move-object v0, v7

    :goto_7
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_9

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_8

    :cond_9
    move-object v0, v7

    :goto_8
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_a

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_9

    :cond_a
    move-object v0, v7

    :goto_9
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    new-instance v8, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorShowMode$1;

    move-object v0, v8

    move-object v1, v6

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorShowMode$1;-><init>(Lcom/yandex/div2/DivContainer$Separator;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Loj3;)V

    if-eqz v6, :cond_c

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_a

    :cond_c
    move-object v0, v7

    :goto_a
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    if-eqz v6, :cond_d

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_b

    :cond_d
    move-object v0, v7

    :goto_b
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    if-eqz v6, :cond_e

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_c

    :cond_e
    move-object v0, v7

    :goto_c
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_d
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    if-eqz p3, :cond_f

    iget-object v1, p3, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_e

    :cond_f
    move-object v1, v7

    :goto_e
    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_f

    :cond_10
    move-object v2, v7

    :goto_f
    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_10

    :cond_11
    move-object v1, v7

    :goto_10
    invoke-static {v2, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->f(Lcom/yandex/div2/DivDrawable;Lcom/yandex/div2/DivDrawable;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_15

    :cond_12
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_11

    :cond_13
    move-object v1, v7

    :goto_11
    if-eqz v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v3, "resources.displayMetrics"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_12

    :cond_14
    move-object v1, v7

    :goto_12
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/widget/LinearContainerLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_13

    :cond_15
    move-object v1, v7

    :goto_13
    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->z(Lcom/yandex/div2/DivDrawable;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_15

    :cond_16
    new-instance v1, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorStyle$1;

    invoke-direct {v1, v0, p4, p1, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorStyle$1;-><init>(Lcom/yandex/div2/DivContainer$Separator;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Loj3;)V

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_14

    :cond_17
    move-object v0, v7

    :goto_14
    invoke-static {p1, v0, p4, v1}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    :goto_15
    iget-object p2, p2, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    if-eqz p3, :cond_18

    iget-object p3, p3, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_16

    :cond_18
    move-object p3, v7

    :goto_16
    if-eqz p2, :cond_19

    iget-object v0, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_17

    :cond_19
    move-object v0, v7

    :goto_17
    if-eqz p3, :cond_1a

    iget-object p3, p3, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_18

    :cond_1a
    move-object p3, v7

    :goto_18
    invoke-static {v0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->g(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p3

    if-eqz p3, :cond_1b

    goto/16 :goto_1d

    :cond_1b
    if-eqz p2, :cond_1c

    iget-object p3, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_19

    :cond_1c
    move-object p3, v7

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3, v0, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->j(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivEdgeInsets;Landroid/content/res/Resources;Loj3;)Landroid/graphics/Rect;

    move-result-object p3

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/yandex/div/core/widget/LinearContainerLayout;->setDividerMargins(IIII)V

    if-eqz p2, :cond_1d

    iget-object p2, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_1a

    :cond_1d
    move-object p2, v7

    :goto_1a
    if-eqz p2, :cond_22

    invoke-static {p2}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->A(Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p3

    if-nez p3, :cond_22

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorMargins$1;

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorMargins$1;-><init>(Lcom/yandex/div2/DivEdgeInsets;Loj3;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-nez p0, :cond_1f

    iget-object v0, p2, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1e

    goto :goto_1b

    :cond_1e
    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    goto :goto_1d

    :cond_1f
    :goto_1b
    if-eqz p0, :cond_20

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_1c

    :cond_20
    move-object p0, v7

    :goto_1c
    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_21

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v7

    :cond_21
    invoke-interface {p1, v7}, Lqj3;->addSubscription(Lqc2;)V

    :cond_22
    :goto_1d
    return-void
.end method

.method public final y(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V
    .locals 9

    iget-object v6, p2, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    if-eqz v6, :cond_1

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v1, v7

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object v2, v7

    :goto_2
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_3

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_3
    move-object v1, v7

    :goto_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_4
    move-object v2, v7

    :goto_4
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v6, :cond_5

    iget-object v1, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_5
    move-object v1, v7

    :goto_5
    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_6
    move-object v0, v7

    :goto_6
    invoke-static {v1, v0}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_d

    :cond_7
    invoke-static {p0, v6, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->k(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Separator;Loj3;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setShowSeparators(I)V

    if-eqz v6, :cond_8

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_8
    move-object v0, v7

    :goto_7
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_9

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_8

    :cond_9
    move-object v0, v7

    :goto_8
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_a

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_9

    :cond_a
    move-object v0, v7

    :goto_9
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    new-instance v8, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorShowMode$2;

    move-object v0, v8

    move-object v1, v6

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorShowMode$2;-><init>(Lcom/yandex/div2/DivContainer$Separator;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Loj3;)V

    if-eqz v6, :cond_c

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_a

    :cond_c
    move-object v0, v7

    :goto_a
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    if-eqz v6, :cond_d

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_b

    :cond_d
    move-object v0, v7

    :goto_b
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    if-eqz v6, :cond_e

    iget-object v0, v6, Lcom/yandex/div2/DivContainer$Separator;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p4, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_c

    :cond_e
    move-object v0, v7

    :goto_c
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_d
    iget-object v0, p2, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    if-eqz p3, :cond_f

    iget-object v1, p3, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_e

    :cond_f
    move-object v1, v7

    :goto_e
    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_f

    :cond_10
    move-object v2, v7

    :goto_f
    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_10

    :cond_11
    move-object v1, v7

    :goto_10
    invoke-static {v2, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->f(Lcom/yandex/div2/DivDrawable;Lcom/yandex/div2/DivDrawable;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_15

    :cond_12
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_11

    :cond_13
    move-object v1, v7

    :goto_11
    if-eqz v1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v3, "resources.displayMetrics"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_12

    :cond_14
    move-object v1, v7

    :goto_12
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_13

    :cond_15
    move-object v1, v7

    :goto_13
    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->z(Lcom/yandex/div2/DivDrawable;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_15

    :cond_16
    new-instance v1, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorStyle$2;

    invoke-direct {v1, v0, p4, p1, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorStyle$2;-><init>(Lcom/yandex/div2/DivContainer$Separator;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Loj3;)V

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/yandex/div2/DivContainer$Separator;->e:Lcom/yandex/div2/DivDrawable;

    goto :goto_14

    :cond_17
    move-object v0, v7

    :goto_14
    invoke-static {p1, v0, p4, v1}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    :goto_15
    iget-object p2, p2, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    if-eqz p3, :cond_18

    iget-object p3, p3, Lcom/yandex/div2/DivContainer;->N:Lcom/yandex/div2/DivContainer$Separator;

    goto :goto_16

    :cond_18
    move-object p3, v7

    :goto_16
    if-eqz p2, :cond_19

    iget-object v0, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_17

    :cond_19
    move-object v0, v7

    :goto_17
    if-eqz p3, :cond_1a

    iget-object p3, p3, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_18

    :cond_1a
    move-object p3, v7

    :goto_18
    invoke-static {v0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->g(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p3

    if-eqz p3, :cond_1b

    goto/16 :goto_1d

    :cond_1b
    if-eqz p2, :cond_1c

    iget-object p3, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_19

    :cond_1c
    move-object p3, v7

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3, v0, p4}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->j(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivEdgeInsets;Landroid/content/res/Resources;Loj3;)Landroid/graphics/Rect;

    move-result-object p3

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setSeparatorMargins(IIII)V

    if-eqz p2, :cond_1d

    iget-object p2, p2, Lcom/yandex/div2/DivContainer$Separator;->a:Lcom/yandex/div2/DivEdgeInsets;

    goto :goto_1a

    :cond_1d
    move-object p2, v7

    :goto_1a
    if-eqz p2, :cond_22

    invoke-static {p2}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->A(Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p3

    if-nez p3, :cond_22

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorMargins$2;

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparator$$inlined$bindSeparatorMargins$2;-><init>(Lcom/yandex/div2/DivEdgeInsets;Loj3;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-nez p0, :cond_1f

    iget-object v0, p2, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1e

    goto :goto_1b

    :cond_1e
    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    goto :goto_1d

    :cond_1f
    :goto_1b
    if-eqz p0, :cond_20

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_1c

    :cond_20
    move-object p0, v7

    :goto_1c
    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_21

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v7

    :cond_21
    invoke-interface {p1, v7}, Lqj3;->addSubscription(Lqc2;)V

    :cond_22
    :goto_1d
    return-void
.end method

.method public z(Lcom/yandex/div/core/view2/a;Landroid/view/ViewGroup;Lcom/yandex/div2/Div$b;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lmk2;

    invoke-interface {v0}, Lmk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/Div$b;

    invoke-interface {v0}, Lmk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getOldExpressionResolver$div_release()Loj3;

    move-result-object v0

    goto :goto_0

    :goto_2
    if-ne p3, v1, :cond_3

    move-object v0, p2

    check-cast v0, Lch2;

    invoke-interface {v0}, Lch2;->getItems()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v7, v8

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->G(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-virtual {p0, p2, p1, v0, v3}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->p(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;)V

    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v5

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p3

    move-object v6, p3

    goto :goto_5

    :cond_6
    move-object v6, v2

    :goto_5
    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->t(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

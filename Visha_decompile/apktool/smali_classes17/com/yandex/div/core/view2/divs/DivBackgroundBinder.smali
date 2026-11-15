.class public Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;
    }
.end annotation


# instance fields
.field public final a:Lwk2;


# direct methods
.method public constructor <init>(Lwk2;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->a:Lwk2;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->d(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->e(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;Loj3;Lqj3;Le74;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivBackground;

    invoke-static {p3, p1, p2, p4}, Lsj3;->b(Lqj3;Lcom/yandex/div2/DivBackground;Loj3;Le74;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    if-eqz p4, :cond_0

    check-cast p4, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p4, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivBackground;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    const-string v5, "metrics"

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->s(Lcom/yandex/div2/DivBackground;Lcom/yandex/div/core/view2/Div2View;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->j(Landroid/view/View;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->i(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p4, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {v0, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->t(Ljava/util/List;Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->u(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, v2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->n(Landroid/view/View;Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->o(Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final e(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    const-string v3, "metrics"

    const/16 v4, 0xa

    if-eqz p4, :cond_0

    move-object v5, p4

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/div2/DivBackground;

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v1, v0, v2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->s(Lcom/yandex/div2/DivBackground;Lcom/yandex/div/core/view2/Div2View;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v6

    :cond_1
    check-cast p5, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p5, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivBackground;

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1, v0, v2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->s(Lcom/yandex/div2/DivBackground;Lcom/yandex/div/core/view2/Div2View;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->j(Landroid/view/View;)Ljava/util/List;

    move-result-object p5

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->k(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->i(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-static {v0, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-static {v1, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    :cond_3
    new-instance p5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v5, p2, p1, p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->t(Ljava/util/List;Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-nez p4, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    sget-object p4, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, v6, p2, p1, p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->t(Ljava/util/List;Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p5, p4, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {p0, p1, p5}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->u(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, v6}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->n(Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {p0, p1, v5}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->o(Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public f(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lqj3;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriber"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p8

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->g(Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Lqj3;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p8

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->h(Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lqj3;)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Lqj3;)V
    .locals 7

    if-nez p4, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    if-nez p5, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p5

    :cond_1
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->i(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_3

    invoke-static {}, Ly71;->u()V

    :cond_3
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivBackground;

    check-cast v4, Lcom/yandex/div2/DivBackground;

    invoke-static {v4, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->b(Lcom/yandex/div2/DivBackground;Lcom/yandex/div2/DivBackground;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    invoke-static {p3, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->d(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    check-cast v0, Ljava/lang/Iterable;

    instance-of p5, v0, Ljava/util/Collection;

    if-eqz p5, :cond_7

    move-object p5, v0

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_8
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivBackground;

    invoke-static {v0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->v(Lcom/yandex/div2/DivBackground;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance p5, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$bindDefaultBackground$callback$1;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$bindDefaultBackground$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p6, p5}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->c(Ljava/util/List;Loj3;Lqj3;Le74;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final h(Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lqj3;)V
    .locals 7

    if-nez p4, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    if-nez p5, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p5

    :cond_1
    if-nez p7, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p7

    :cond_2
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->i(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_4

    invoke-static {}, Ly71;->u()V

    :cond_4
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivBackground;

    check-cast v5, Lcom/yandex/div2/DivBackground;

    invoke-static {v5, v4}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->b(Lcom/yandex/div2/DivBackground;Lcom/yandex/div2/DivBackground;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    if-eq p5, v2, :cond_7

    goto :goto_3

    :cond_7
    move-object p5, p6

    check-cast p5, Ljava/lang/Iterable;

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v3, 0x1

    if-gez v3, :cond_8

    invoke-static {}, Ly71;->u()V

    :cond_8
    invoke-interface {p7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivBackground;

    check-cast v2, Lcom/yandex/div2/DivBackground;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->b(Lcom/yandex/div2/DivBackground;Lcom/yandex/div2/DivBackground;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    move v3, v4

    goto :goto_2

    :cond_a
    invoke-static {p3, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_b

    return-void

    :cond_b
    :goto_3
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->e(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    check-cast v0, Ljava/lang/Iterable;

    instance-of p5, v0, Ljava/util/Collection;

    if-eqz p5, :cond_c

    move-object p5, v0

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_c

    goto :goto_4

    :cond_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_d
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_e

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/yandex/div2/DivBackground;

    invoke-static {p7}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->v(Lcom/yandex/div2/DivBackground;)Z

    move-result p7

    if-nez p7, :cond_d

    goto :goto_5

    :cond_e
    :goto_4
    move-object p5, p6

    check-cast p5, Ljava/lang/Iterable;

    instance-of p7, p5, Ljava/util/Collection;

    if-eqz p7, :cond_f

    move-object p7, p5

    check-cast p7, Ljava/util/Collection;

    invoke-interface {p7}, Ljava/util/Collection;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_f

    goto :goto_6

    :cond_f
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_10
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_11

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/yandex/div2/DivBackground;

    invoke-static {p7}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->v(Lcom/yandex/div2/DivBackground;)Z

    move-result p7

    if-nez p7, :cond_10

    :goto_5
    new-instance p5, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$bindFocusBackground$callback$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$bindFocusBackground$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p8, p5}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->c(Ljava/util/List;Loj3;Lqj3;Le74;)V

    invoke-virtual {p0, p6, p1, p8, p5}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->c(Ljava/util/List;Loj3;Lqj3;Le74;)V

    :cond_11
    :goto_6
    return-void
.end method

.method public final i(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 0

    sget p0, Lcom/yandex/div/R$id;->div_additional_background_layer_tag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final j(Landroid/view/View;)Ljava/util/List;
    .locals 0

    sget p0, Lcom/yandex/div/R$id;->div_default_background_list_tag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final k(Landroid/view/View;)Ljava/util/List;
    .locals 0

    sget p0, Lcom/yandex/div/R$id;->div_focused_background_list_tag:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final l(Lcom/yandex/div2/DivImageBackground;Loj3;)Z
    .locals 4

    iget-object p0, p1, Lcom/yandex/div2/DivImageBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/yandex/div2/DivImageBackground;->d:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    sget p0, Lcom/yandex/div/R$id;->div_additional_background_layer_tag:I

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final n(Landroid/view/View;Ljava/util/List;)V
    .locals 0

    sget p0, Lcom/yandex/div/R$id;->div_default_background_list_tag:I

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final o(Landroid/view/View;Ljava/util/List;)V
    .locals 0

    sget p0, Lcom/yandex/div/R$id;->div_focused_background_list_tag:I

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/yandex/div2/DivFilter;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a;
    .locals 8

    instance-of p0, p1, Lcom/yandex/div2/DivFilter$a;

    if-eqz p0, :cond_4

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a$a;

    check-cast p1, Lcom/yandex/div2/DivFilter$a;

    invoke-virtual {p1}, Lcom/yandex/div2/DivFilter$a;->c()Lcom/yandex/div2/DivBlur;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivBlur;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p2, 0x1f

    shr-long v2, v0, p2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p2, v2, v6

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p2, v0, v4

    if-lez p2, :cond_2

    const p2, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p2, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p2, v0

    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a$a;-><init>(ILcom/yandex/div2/DivFilter$a;)V

    goto :goto_2

    :cond_4
    instance-of p0, p1, Lcom/yandex/div2/DivFilter$c;

    if-eqz p0, :cond_5

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a$b;

    check-cast p1, Lcom/yandex/div2/DivFilter$c;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a$b;-><init>(Lcom/yandex/div2/DivFilter$c;)V

    :goto_2
    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final q(Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientCenter$b;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$a;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientCenter$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K0(Lcom/yandex/div2/DivRadialGradientFixedCenter;Landroid/util/DisplayMetrics;Loj3;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$a;-><init>(F)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientCenter$c;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$b;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientCenter$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientCenter$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientRelativeCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a$b;-><init>(F)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final r(Lcom/yandex/div2/DivRadialGradientRadius;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientRadius$b;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$a;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRadius$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$a;-><init>(F)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientRadius$c;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$b;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRadius$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientRadius$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeRadius;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientRelativeRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b$b;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final s(Lcom/yandex/div2/DivBackground;Lcom/yandex/div/core/view2/Div2View;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    instance-of v4, v1, Lcom/yandex/div2/DivBackground$c;

    const-string v7, "\' to Int"

    const-string v8, "Unable convert \'"

    const-wide/16 v9, -0x1

    const/16 v11, 0x1f

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_4

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$a;

    check-cast v1, Lcom/yandex/div2/DivBackground$c;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    shr-long v16, v14, v11

    cmp-long v2, v16, v12

    if-eqz v2, :cond_3

    cmp-long v2, v16, v9

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long v2, v14, v12

    if-lez v2, :cond_2

    const v5, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 v5, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int v5, v14

    :goto_1
    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->O(Lcom/yandex/div2/DivLinearGradient;Loj3;)Ly91;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v1, v2}, Lz91;->a(Ly91;Lcom/yandex/div/core/view2/Div2View;)Ly91;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$a;-><init>(ILy91;)V

    goto/16 :goto_c

    :cond_4
    instance-of v4, v1, Lcom/yandex/div2/DivBackground$e;

    if-eqz v4, :cond_7

    new-instance v4, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;

    check-cast v1, Lcom/yandex/div2/DivBackground$e;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v5

    iget-object v5, v5, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {v0, v5, v2, v3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->q(Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v6

    iget-object v6, v6, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {v0, v6, v2, v3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->q(Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;

    move-result-object v6

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v7

    iget-object v7, v7, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    if-eqz v7, :cond_5

    invoke-interface {v7, v3}, Lnj3;->a(Loj3;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_6

    :cond_5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v7

    :cond_6
    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->r(Lcom/yandex/div2/DivRadialGradientRadius;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;

    move-result-object v0

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c;-><init>(Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$a;Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$c$b;)V

    move-object v0, v4

    goto/16 :goto_c

    :cond_7
    instance-of v2, v1, Lcom/yandex/div2/DivBackground$b;

    if-eqz v2, :cond_a

    check-cast v1, Lcom/yandex/div2/DivBackground$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/yandex/div2/DivImageScale;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->d:Ljava/util/List;

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yandex/div2/DivFilter;

    invoke-virtual {v0, v12, v3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->p(Lcom/yandex/div2/DivFilter;Loj3;)Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    move-object v11, v2

    :cond_9
    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->l(Lcom/yandex/div2/DivImageBackground;Loj3;)Z

    move-result v12

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;-><init>(DLcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;Landroid/net/Uri;ZLcom/yandex/div2/DivImageScale;Ljava/util/List;Z)V

    goto/16 :goto_c

    :cond_a
    instance-of v0, v1, Lcom/yandex/div2/DivBackground$f;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$d;

    check-cast v1, Lcom/yandex/div2/DivBackground$f;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$f;->c()Lcom/yandex/div2/DivSolidBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivSolidBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$d;-><init>(I)V

    goto/16 :goto_c

    :cond_b
    instance-of v0, v1, Lcom/yandex/div2/DivBackground$d;

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;

    check-cast v1, Lcom/yandex/div2/DivBackground$d;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivNinePatchBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v14

    iget-object v14, v14, Lcom/yandex/div2/DivNinePatchBackground;->b:Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    iget-object v14, v14, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v14, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    shr-long v16, v14, v11

    cmp-long v18, v16, v12

    if-eqz v18, :cond_f

    cmp-long v16, v16, v9

    if-nez v16, :cond_c

    goto :goto_3

    :cond_c
    sget-object v16, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v16

    if-eqz v16, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lxi;->i(Ljava/lang/String;)V

    :cond_d
    cmp-long v5, v14, v12

    if-lez v5, :cond_e

    const v5, 0x7fffffff

    goto :goto_4

    :cond_e
    const/high16 v5, -0x80000000

    goto :goto_4

    :cond_f
    :goto_3
    long-to-int v5, v14

    :goto_4
    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v14

    iget-object v14, v14, Lcom/yandex/div2/DivNinePatchBackground;->b:Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    iget-object v14, v14, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v14, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    shr-long v17, v14, v11

    cmp-long v19, v17, v12

    if-eqz v19, :cond_13

    cmp-long v17, v17, v9

    if-nez v17, :cond_10

    goto :goto_5

    :cond_10
    sget-object v17, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v17

    if-eqz v17, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lxi;->i(Ljava/lang/String;)V

    :cond_11
    cmp-long v6, v14, v12

    if-lez v6, :cond_12

    const v6, 0x7fffffff

    goto :goto_6

    :cond_12
    const/high16 v6, -0x80000000

    goto :goto_6

    :cond_13
    :goto_5
    long-to-int v6, v14

    :goto_6
    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v14

    iget-object v14, v14, Lcom/yandex/div2/DivNinePatchBackground;->b:Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    iget-object v14, v14, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v14, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    shr-long v18, v14, v11

    cmp-long v20, v18, v12

    if-eqz v20, :cond_17

    cmp-long v18, v18, v9

    if-nez v18, :cond_14

    goto :goto_7

    :cond_14
    sget-object v18, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v18

    if-eqz v18, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lxi;->i(Ljava/lang/String;)V

    :cond_15
    cmp-long v9, v14, v12

    if-lez v9, :cond_16

    const v9, 0x7fffffff

    goto :goto_8

    :cond_16
    const/high16 v9, -0x80000000

    goto :goto_8

    :cond_17
    :goto_7
    long-to-int v9, v14

    :goto_8
    invoke-virtual {v1}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivNinePatchBackground;->b:Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    iget-object v1, v1, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    shr-long v10, v14, v11

    cmp-long v1, v10, v12

    if-eqz v1, :cond_1b

    const-wide/16 v18, -0x1

    cmp-long v1, v10, v18

    if-nez v1, :cond_18

    goto :goto_a

    :cond_18
    sget-object v1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lxi;->i(Ljava/lang/String;)V

    :cond_19
    cmp-long v1, v14, v12

    if-lez v1, :cond_1a

    const v16, 0x7fffffff

    goto :goto_9

    :cond_1a
    const/high16 v16, -0x80000000

    :goto_9
    move/from16 v1, v16

    goto :goto_b

    :cond_1b
    :goto_a
    long-to-int v1, v14

    :goto_b
    invoke-direct {v4, v5, v6, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v2, v4}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$b;-><init>(Landroid/net/Uri;Landroid/graphics/Rect;)V

    :goto_c
    return-object v0

    :cond_1c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final t(Ljava/util/List;Lcom/yandex/div/core/view2/a;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    if-eqz p4, :cond_1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {p4}, [Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->a:Lwk2;

    invoke-virtual {v2, p2, p3, v3}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;->a(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lwk2;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    if-eqz p4, :cond_5

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-object v0
.end method

.method public final u(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v0, p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    sget v0, Lcom/yandex/div/R$drawable;->native_animation_background:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yandex/div/R$drawable;->native_animation_background:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, p2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p1

    sub-int/2addr p1, p2

    sget p2, Lcom/yandex/div/R$drawable;->native_animation_background:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_5
    return-void
.end method

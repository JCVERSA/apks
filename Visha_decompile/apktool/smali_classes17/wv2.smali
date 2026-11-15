.class public abstract Lwv2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lvv2;Landroid/view/View;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    invoke-virtual {p0, p1}, Lvv2;->t(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;)V

    goto/16 :goto_a

    :cond_1
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;

    invoke-virtual {p0, p1}, Lvv2;->d(Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;)V

    goto/16 :goto_a

    :cond_3
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_2

    :cond_4
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;

    invoke-virtual {p0, p1}, Lvv2;->f(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;)V

    goto/16 :goto_a

    :cond_5
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_3

    :cond_6
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    invoke-virtual {p0, p1}, Lvv2;->i(Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;)V

    goto/16 :goto_a

    :cond_7
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_4

    :cond_8
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {p0, p1}, Lvv2;->k(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    goto/16 :goto_a

    :cond_9
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_5

    :cond_a
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {p0, p1}, Lvv2;->l(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V

    goto/16 :goto_a

    :cond_b
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_6

    :cond_c
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {p0, p1}, Lvv2;->p(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;)V

    goto/16 :goto_a

    :cond_d
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_7

    :cond_e
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    invoke-virtual {p0, p1}, Lvv2;->r(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V

    goto/16 :goto_a

    :cond_f
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_8

    :cond_10
    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;

    invoke-virtual {p0, p1}, Lvv2;->c(Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;)V

    goto/16 :goto_a

    :cond_11
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;

    invoke-virtual {p0, p1}, Lvv2;->n(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;)V

    goto/16 :goto_a

    :cond_12
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-virtual {p0, p1}, Lvv2;->e(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;)V

    goto/16 :goto_a

    :cond_13
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p0, p1}, Lvv2;->g(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;)V

    goto :goto_a

    :cond_14
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    invoke-virtual {p0, p1}, Lvv2;->h(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;)V

    goto :goto_a

    :cond_15
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    invoke-virtual {p0, p1}, Lvv2;->j(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;)V

    goto :goto_a

    :cond_16
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    if-eqz v0, :cond_17

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {p0, p1}, Lvv2;->o(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V

    goto :goto_a

    :cond_17
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    invoke-virtual {p0, p1}, Lvv2;->m(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V

    goto :goto_a

    :cond_18
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;

    invoke-virtual {p0, p1}, Lvv2;->s(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;)V

    goto :goto_a

    :cond_19
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    invoke-virtual {p0, p1}, Lvv2;->q(Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;)V

    goto :goto_a

    :cond_1a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_9

    :cond_1b
    invoke-virtual {p0, p1}, Lvv2;->b(Landroid/view/View;)V

    :goto_a
    return-void
.end method

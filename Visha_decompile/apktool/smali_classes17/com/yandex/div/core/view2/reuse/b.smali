.class public final Lcom/yandex/div/core/view2/reuse/b;
.super Lfpa;
.source "SourceFile"


# instance fields
.field public final e:Landroid/view/View;

.field public final f:Lcom/yandex/div/core/view2/reuse/b;


# direct methods
.method public constructor <init>(Lzl2;ILandroid/view/View;Lcom/yandex/div/core/view2/reuse/b;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lfpa;-><init>(Lzl2;I)V

    iput-object p3, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/reuse/b;->f:Lcom/yandex/div/core/view2/reuse/b;

    return-void
.end method

.method public static synthetic g(Lcom/yandex/div/core/view2/reuse/b;Lcom/yandex/div/core/view2/reuse/b;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/reuse/b;->f(Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final f(Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div2/Div$q;

    if-eqz v1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v1, v0, Lcom/yandex/div2/Div$g;

    if-eqz v1, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v1, v0, Lcom/yandex/div2/Div$e;

    if-eqz v1, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v1, v0, Lcom/yandex/div2/Div$l;

    if-eqz v1, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v1, v0, Lcom/yandex/div2/Div$h;

    if-eqz v1, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v1, v0, Lcom/yandex/div2/Div$m;

    if-eqz v1, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v1, v0, Lcom/yandex/div2/Div$i;

    if-eqz v1, :cond_6

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v1, v0, Lcom/yandex/div2/Div$k;

    if-eqz v1, :cond_7

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v1, v0, Lcom/yandex/div2/Div$r;

    if-eqz v1, :cond_8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v1, v0, Lcom/yandex/div2/Div$o;

    if-eqz v1, :cond_9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v1, v0, Lcom/yandex/div2/Div$b;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div$b;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v0

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->d()Loj3;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/yandex/div/core/view2/reuse/b;->j(Lcom/yandex/div2/DivContainer;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    instance-of v1, v0, Lcom/yandex/div2/Div$c;

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div$c;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object v0

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->d()Loj3;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/yandex/div/core/view2/reuse/b;->k(Lcom/yandex/div2/DivCustom;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_b
    instance-of v1, v0, Lcom/yandex/div2/Div$f;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div$f;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object v0

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->d()Loj3;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/yandex/div/core/view2/reuse/b;->m(Lcom/yandex/div2/DivGrid;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v1, v0, Lcom/yandex/div2/Div$d;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div$d;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object v0

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->d()Loj3;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/yandex/div/core/view2/reuse/b;->l(Lcom/yandex/div2/DivGallery;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v1, v0, Lcom/yandex/div2/Div$j;

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/Div$j;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object v0

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->d()Loj3;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/yandex/div/core/view2/reuse/b;->n(Lcom/yandex/div2/DivPager;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v1, v0, Lcom/yandex/div2/Div$p;

    if-nez v1, :cond_10

    instance-of v0, v0, Lcom/yandex/div2/Div$n;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v0

    invoke-virtual {v0}, Lzl2;->d()Loj3;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/reuse/b;->p(Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_10
    new-instance p1, Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException;

    invoke-virtual {p0}, Lfpa;->b()Lcom/yandex/div2/Div;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException;-><init>(Ljava/lang/Class;)V

    throw p1
.end method

.method public final h()Lcom/yandex/div/core/view2/reuse/b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/b;->f:Lcom/yandex/div/core/view2/reuse/b;

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    return-object p0
.end method

.method public final j(Lcom/yandex/div2/DivContainer;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/reuse/b;->o(Ljava/util/List;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lcom/yandex/div2/DivCustom;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    instance-of v2, v1, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getCustomView()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lbh2;->l(Lcom/yandex/div2/DivCustom;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_4

    invoke-static {}, Ly71;->u()V

    :cond_4
    check-cast v2, Lcom/yandex/div2/Div;

    invoke-static {v2, p2}, Lbh2;->t(Lcom/yandex/div2/Div;Loj3;)Lzl2;

    move-result-object v2

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v6, "customView.getChildAt(index) ?: return emptyList()"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_6

    move-object v6, p0

    goto :goto_3

    :cond_6
    move-object v6, p3

    :goto_3
    new-instance v7, Lcom/yandex/div/core/view2/reuse/b;

    invoke-direct {v7, v2, v1, v5, v6}, Lcom/yandex/div/core/view2/reuse/b;-><init>(Lzl2;ILandroid/view/View;Lcom/yandex/div/core/view2/reuse/b;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public final l(Lcom/yandex/div2/DivGallery;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    instance-of v2, v1, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    instance-of v2, v1, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v3}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzl2;

    invoke-virtual {v3}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div2/Div;->hash()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p1, p2}, Lbh2;->d(Lcom/yandex/div2/DivGallery;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    if-gez p2, :cond_5

    invoke-static {}, Ly71;->u()V

    :cond_5
    check-cast v1, Lzl2;

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/div2/Div;->hash()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    check-cast v4, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {v4, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getItemView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    if-nez p3, :cond_7

    move-object v5, p0

    goto :goto_4

    :cond_7
    move-object v5, p3

    :goto_4
    new-instance v6, Lcom/yandex/div/core/view2/reuse/b;

    invoke-direct {v6, v1, p2, v4, v5}, Lcom/yandex/div/core/view2/reuse/b;-><init>(Lzl2;ILandroid/view/View;Lcom/yandex/div/core/view2/reuse/b;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    move p2, v3

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method public final m(Lcom/yandex/div2/DivGrid;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2}, Lbh2;->p(Lcom/yandex/div2/DivGrid;Loj3;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/reuse/b;->o(Ljava/util/List;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/yandex/div2/DivPager;Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    instance-of v2, v1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D()Lg3;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzl2;

    invoke-virtual {v3}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div2/Div;->hash()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    if-gez p2, :cond_5

    invoke-static {}, Ly71;->u()V

    :cond_5
    check-cast v1, Lzl2;

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/div2/Div;->hash()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/div2/Div;->hash()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    check-cast v5, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-virtual {v5, v4}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getPageView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    if-nez p3, :cond_7

    move-object v5, p0

    goto :goto_3

    :cond_7
    move-object v5, p3

    :goto_3
    new-instance v6, Lcom/yandex/div/core/view2/reuse/b;

    invoke-direct {v6, v1, p2, v4, v5}, Lcom/yandex/div/core/view2/reuse/b;-><init>(Lzl2;ILandroid/view/View;Lcom/yandex/div/core/view2/reuse/b;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    move p2, v3

    goto :goto_2

    :cond_9
    return-object v0

    :cond_a
    :goto_5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/util/List;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v2, Lzl2;

    iget-object v4, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    instance-of v5, v4, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_2
    if-nez v6, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v4, "(view as? ViewGroup)?.ge\u2026ex) ?: return emptyList()"

    invoke-static {v6, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_4

    move-object v4, p0

    goto :goto_2

    :cond_4
    move-object v4, p2

    :goto_2
    new-instance v5, Lcom/yandex/div/core/view2/reuse/b;

    invoke-direct {v5, v2, v1, v6, v4}, Lcom/yandex/div/core/view2/reuse/b;-><init>(Lzl2;ILandroid/view/View;Lcom/yandex/div/core/view2/reuse/b;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final p(Loj3;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/reuse/b;->e:Landroid/view/View;

    instance-of v1, v0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getActiveStateDiv$div_release()Lcom/yandex/div2/Div;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lbh2;->s(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/reuse/b;->o(Ljava/util/List;Lcom/yandex/div/core/view2/reuse/b;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

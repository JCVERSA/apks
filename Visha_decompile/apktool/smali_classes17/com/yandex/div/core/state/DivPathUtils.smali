.class public final Lcom/yandex/div/core/state/DivPathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/div/core/state/DivPathUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/state/DivPathUtils;

    invoke-direct {v0}, Lcom/yandex/div/core/state/DivPathUtils;-><init>()V

    sput-object v0, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/yandex/div/core/state/DivPathUtils;Ljava/lang/Iterable;Ljava/lang/String;Loj3;Le74;ILjava/lang/Object;)Lcom/yandex/div2/Div;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    sget-object p4, Lcom/yandex/div/core/state/DivPathUtils$findRecursively$1;->INSTANCE:Lcom/yandex/div/core/state/DivPathUtils$findRecursively$1;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/state/DivPathUtils;->e(Ljava/lang/Iterable;Ljava/lang/String;Loj3;Le74;)Lcom/yandex/div2/Div;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/yandex/div/core/state/DivPathUtils;Lcom/yandex/div2/DivState;Lc74;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/state/DivPathUtils;->h(Lcom/yandex/div2/DivState;Lc74;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string p0, "paths"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    sget-object p0, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/state/DivStatePath$a;->c()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/state/DivStatePath;

    check-cast p0, Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/state/DivStatePath;->l(Lcom/yandex/div/core/state/DivStatePath;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p0, v1

    :goto_2
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->e0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;)Lcom/yandex/div2/Div;
    .locals 9

    instance-of v0, p1, Lcom/yandex/div2/Div$n;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/yandex/div2/Div$n;

    sget-object v2, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4, v1}, Lcom/yandex/div/core/state/DivPathUtils;->i(Lcom/yandex/div/core/state/DivPathUtils;Lcom/yandex/div2/DivState;Lc74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/Div$n;

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    sget-object v0, Lcom/yandex/div/core/state/DivPathUtils$findByPath$2;->INSTANCE:Lcom/yandex/div/core/state/DivPathUtils$findByPath$2;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yandex/div/core/state/DivPathUtils;->e(Ljava/lang/Iterable;Ljava/lang/String;Loj3;Le74;)Lcom/yandex/div2/Div;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    instance-of v0, p1, Lcom/yandex/div2/Div$p;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/yandex/div2/Div$p;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    sget-object v0, Lcom/yandex/div/core/state/DivPathUtils$findByPath$3;->INSTANCE:Lcom/yandex/div/core/state/DivPathUtils$findByPath$3;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yandex/div/core/state/DivPathUtils;->e(Ljava/lang/Iterable;Ljava/lang/String;Loj3;Le74;)Lcom/yandex/div2/Div;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    instance-of v0, p1, Lcom/yandex/div2/Div$b;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/yandex/div2/Div$b;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p1

    invoke-static {p1, p3}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/state/DivPathUtils;->d(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/yandex/div2/Div;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    instance-of v0, p1, Lcom/yandex/div2/Div$f;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/yandex/div2/Div$f;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p1

    invoke-static {p1}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/state/DivPathUtils;->f(Lcom/yandex/div/core/state/DivPathUtils;Ljava/lang/Iterable;Ljava/lang/String;Loj3;Le74;ILjava/lang/Object;)Lcom/yandex/div2/Div;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    instance-of v0, p1, Lcom/yandex/div2/Div$d;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/yandex/div2/Div$d;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p1

    invoke-static {p1, p3}, Lbh2;->d(Lcom/yandex/div2/DivGallery;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/state/DivPathUtils;->d(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/yandex/div2/Div;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    instance-of v0, p1, Lcom/yandex/div2/Div$j;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/yandex/div2/Div$j;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object p1

    invoke-static {p1, p3}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/state/DivPathUtils;->d(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/yandex/div2/Div;

    move-result-object v1

    goto :goto_1

    :cond_7
    instance-of v0, p1, Lcom/yandex/div2/Div$c;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/yandex/div2/Div$c;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivCustom;->q:Ljava/util/List;

    if-eqz p1, :cond_12

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Lcom/yandex/div/core/state/DivPathUtils;->f(Lcom/yandex/div/core/state/DivPathUtils;Ljava/lang/Iterable;Ljava/lang/String;Loj3;Le74;ILjava/lang/Object;)Lcom/yandex/div2/Div;

    move-result-object v1

    goto :goto_1

    :cond_8
    instance-of p0, p1, Lcom/yandex/div2/Div$q;

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    instance-of p0, p1, Lcom/yandex/div2/Div$g;

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_a
    instance-of p0, p1, Lcom/yandex/div2/Div$m;

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    instance-of p0, p1, Lcom/yandex/div2/Div$i;

    if-eqz p0, :cond_c

    goto :goto_1

    :cond_c
    instance-of p0, p1, Lcom/yandex/div2/Div$e;

    if-eqz p0, :cond_d

    goto :goto_1

    :cond_d
    instance-of p0, p1, Lcom/yandex/div2/Div$h;

    if-eqz p0, :cond_e

    goto :goto_1

    :cond_e
    instance-of p0, p1, Lcom/yandex/div2/Div$l;

    if-eqz p0, :cond_f

    goto :goto_1

    :cond_f
    instance-of p0, p1, Lcom/yandex/div2/Div$k;

    if-eqz p0, :cond_10

    goto :goto_1

    :cond_10
    instance-of p0, p1, Lcom/yandex/div2/Div$r;

    if-eqz p0, :cond_11

    goto :goto_1

    :cond_11
    instance-of p0, p1, Lcom/yandex/div2/Div$o;

    if-eqz p0, :cond_13

    :cond_12
    :goto_1
    return-object v1

    :cond_13
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final c(Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;Loj3;)Lcom/yandex/div2/Div;
    .locals 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    invoke-virtual {v1, p1, p2, p3}, Lcom/yandex/div/core/state/DivPathUtils;->b(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;)Lcom/yandex/div2/Div;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_2
    return-object v0

    :cond_3
    return-object p1
.end method

.method public final d(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/yandex/div2/Div;
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzl2;

    invoke-virtual {p1}, Lzl2;->a()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p1}, Lzl2;->b()Loj3;

    move-result-object p1

    sget-object v1, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    invoke-virtual {v1, v0, p2, p1}, Lcom/yandex/div/core/state/DivPathUtils;->b(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;)Lcom/yandex/div2/Div;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final e(Ljava/lang/Iterable;Ljava/lang/String;Loj3;Le74;)Lcom/yandex/div2/Div;
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/Div;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/div/core/state/DivPathUtils;->b(Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;)Lcom/yandex/div2/Div;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_0

    :cond_2
    return-object v0
.end method

.method public final g(Landroid/view/View;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getPath()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yandex/div/core/state/DivStatePath;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p1

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p2}, Lcom/yandex/div/core/state/DivPathUtils;->g(Landroid/view/View;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getPath()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getPath()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/yandex/div/core/state/StateConflictException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error resolving state for \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'. Found multiple elements that respond to path \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getPath()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, v1, p2, v1}, Lcom/yandex/div/core/state/StateConflictException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_6
    return-object v0
.end method

.method public final h(Lcom/yandex/div2/DivState;Lc74;)Ljava/lang/String;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/yandex/div2/DivState;->l:Ljava/lang/String;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/DivState;->getId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final j(Landroid/view/View;Lcom/yandex/div2/DivData$State;Lcom/yandex/div/core/state/DivStatePath;Loj3;)Lkotlin/Pair;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/state/DivPathUtils;->g(Landroid/view/View;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->n()Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/state/DivStatePath;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p2, Lcom/yandex/div2/DivData$State;->b:J

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/yandex/div/core/state/DivPathUtils;->g(Landroid/view/View;Lcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getDiv()Lcom/yandex/div2/Div$n;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p2, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/core/state/DivPathUtils;->c(Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;Loj3;)Lcom/yandex/div2/Div;

    move-result-object p0

    instance-of p1, p0, Lcom/yandex/div2/Div$n;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/yandex/div2/Div$n;

    move-object p1, p0

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

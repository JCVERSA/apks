.class public final Lo07;
.super Lfpa;
.source "SourceFile"


# instance fields
.field public e:Lcom/yandex/div/core/view2/reuse/b;


# direct methods
.method public constructor <init>(Lzl2;ILcom/yandex/div/core/view2/reuse/b;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lfpa;-><init>(Lzl2;I)V

    iput-object p3, p0, Lo07;->e:Lcom/yandex/div/core/view2/reuse/b;

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v0

    invoke-virtual {v0}, Lzl2;->d()Loj3;

    move-result-object v0

    invoke-virtual {p0}, Lfpa;->d()Lzl2;

    move-result-object v1

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/div2/Div$q;

    if-eqz v2, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v2, v1, Lcom/yandex/div2/Div$g;

    if-eqz v2, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v2, v1, Lcom/yandex/div2/Div$e;

    if-eqz v2, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v2, v1, Lcom/yandex/div2/Div$l;

    if-eqz v2, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v2, v1, Lcom/yandex/div2/Div$h;

    if-eqz v2, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v2, v1, Lcom/yandex/div2/Div$m;

    if-eqz v2, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v2, v1, Lcom/yandex/div2/Div$i;

    if-eqz v2, :cond_6

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v2, v1, Lcom/yandex/div2/Div$k;

    if-eqz v2, :cond_7

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v2, v1, Lcom/yandex/div2/Div$r;

    if-eqz v2, :cond_8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v2, v1, Lcom/yandex/div2/Div$o;

    if-eqz v2, :cond_9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    instance-of v2, v1, Lcom/yandex/div2/Div$b;

    if-eqz v2, :cond_a

    check-cast v1, Lcom/yandex/div2/Div$b;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v1

    invoke-static {v1, v0}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo07;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    instance-of v2, v1, Lcom/yandex/div2/Div$c;

    if-eqz v2, :cond_b

    check-cast v1, Lcom/yandex/div2/Div$c;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object v1

    invoke-static {v1}, Lbh2;->l(Lcom/yandex/div2/DivCustom;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lbh2;->s(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo07;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_b
    instance-of v2, v1, Lcom/yandex/div2/Div$f;

    if-eqz v2, :cond_c

    check-cast v1, Lcom/yandex/div2/Div$f;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object v1

    invoke-static {v1, v0}, Lbh2;->p(Lcom/yandex/div2/DivGrid;Loj3;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo07;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v2, v1, Lcom/yandex/div2/Div$d;

    if-eqz v2, :cond_d

    check-cast v1, Lcom/yandex/div2/Div$d;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object v1

    invoke-static {v1, v0}, Lbh2;->d(Lcom/yandex/div2/DivGallery;Loj3;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo07;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v2, v1, Lcom/yandex/div2/Div$j;

    if-eqz v2, :cond_e

    check-cast v1, Lcom/yandex/div2/Div$j;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object v1

    invoke-static {v1, v0}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo07;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v2, v1, Lcom/yandex/div2/Div$p;

    if-eqz v2, :cond_f

    check-cast v1, Lcom/yandex/div2/Div$p;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v1

    invoke-static {v1, v0}, Lbh2;->q(Lcom/yandex/div2/DivTabs;Loj3;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo07;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v2, v1, Lcom/yandex/div2/Div$n;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/yandex/div2/Div$n;

    invoke-virtual {v1}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v1

    invoke-static {v1, v0}, Leu2;->f(Lcom/yandex/div2/DivState;Loj3;)Lcom/yandex/div2/DivState$State;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-nez v1, :cond_10

    goto :goto_1

    :cond_10
    invoke-static {v1, v0}, Lbh2;->t(Lcom/yandex/div2/Div;Loj3;)Lzl2;

    move-result-object v0

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo07;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_11
    :goto_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final g()Lcom/yandex/div/core/view2/reuse/b;
    .locals 0

    iget-object p0, p0, Lo07;->e:Lcom/yandex/div/core/view2/reuse/b;

    return-object p0
.end method

.method public final h(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v2, Lzl2;

    new-instance v4, Lo07;

    iget-object v5, p0, Lo07;->e:Lcom/yandex/div/core/view2/reuse/b;

    invoke-direct {v4, v2, v1, v5}, Lo07;-><init>(Lzl2;ILcom/yandex/div/core/view2/reuse/b;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final i(Lcom/yandex/div/core/view2/reuse/b;)V
    .locals 0

    iput-object p1, p0, Lo07;->e:Lcom/yandex/div/core/view2/reuse/b;

    return-void
.end method

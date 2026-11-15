.class public abstract Lzt2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lzt2;->b(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/Div$q;

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/Div$g;

    if-eqz v0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/Div$e;

    if-eqz v0, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/Div$l;

    if-eqz v0, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/Div$h;

    if-eqz v0, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/Div$m;

    if-eqz v0, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/Div$i;

    if-eqz v0, :cond_6

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/Div$c;

    if-eqz v0, :cond_7

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_7
    instance-of v0, p0, Lcom/yandex/div2/Div$k;

    if-eqz v0, :cond_8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/Div$r;

    if-eqz v0, :cond_9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_9
    instance-of v0, p0, Lcom/yandex/div2/Div$o;

    if-eqz v0, :cond_a

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/Div$b;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/yandex/div2/Div$b;

    invoke-virtual {p0}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p0

    invoke-static {p0, p1}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/yandex/div2/Div$f;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/yandex/div2/Div$f;

    invoke-virtual {p0}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p0

    invoke-static {p0, p1}, Lbh2;->p(Lcom/yandex/div2/DivGrid;Loj3;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/Div$d;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/yandex/div2/Div$d;

    invoke-virtual {p0}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p0

    invoke-static {p0, p1}, Lbh2;->d(Lcom/yandex/div2/DivGallery;Loj3;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of v0, p0, Lcom/yandex/div2/Div$j;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/yandex/div2/Div$j;

    invoke-virtual {p0}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object p0

    invoke-static {p0, p1}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/Div$p;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/yandex/div2/Div$p;

    invoke-virtual {p0}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object p0

    invoke-static {p0, p1}, Lbh2;->q(Lcom/yandex/div2/DivTabs;Loj3;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of v0, p0, Lcom/yandex/div2/Div$n;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/yandex/div2/Div$n;

    invoke-virtual {p0}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object p0

    invoke-static {p0, p1}, Lbh2;->r(Lcom/yandex/div2/DivState;Loj3;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final c(Lcom/yandex/div2/Div;Loj3;)Lyt2;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyt2;

    invoke-direct {v0, p0, p1}, Lyt2;-><init>(Lcom/yandex/div2/Div;Loj3;)V

    return-object v0
.end method

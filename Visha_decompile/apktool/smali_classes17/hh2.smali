.class public final Lhh2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhh2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhh2;

    invoke-direct {v0}, Lhh2;-><init>()V

    sput-object v0, Lhh2;->a:Lhh2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lhh2;Ljava/util/List;Ljava/util/List;Lih2;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lhh2;->a(Ljava/util/List;Ljava/util/List;Lih2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lhh2;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;ILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lhh2;->c(Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lhh2;Log2;Log2;Loj3;Loj3;Lih2;ILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lhh2;->e(Log2;Log2;Loj3;Loj3;Lih2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lhh2;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;JLoj3;Loj3;Lih2;ILjava/lang/Object;)Z
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lhh2;->i(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;JLoj3;Loj3;Lih2;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Lih2;)Z
    .locals 8

    const-string p0, "oldChildren"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newChildren"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lih2;->v()V

    :cond_0
    return v1

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Li81;->l1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v1, p2

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    sget-object v2, Lhh2;->a:Lhh2;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v4

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    invoke-virtual {v0}, Lzl2;->d()Loj3;

    move-result-object v5

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzl2;

    invoke-virtual {p1}, Lzl2;->d()Loj3;

    move-result-object v6

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lhh2;->c(Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v1
.end method

.method public final c(Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;)Z
    .locals 8

    const-string v0, "oldResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p5, :cond_2

    invoke-interface {p5}, Lih2;->g()V

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lhh2;->e(Log2;Log2;Loj3;Loj3;Lih2;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, p3}, Lhh2;->g(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p4}, Lhh2;->g(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lhh2;->a(Ljava/util/List;Ljava/util/List;Lih2;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v0

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method public final e(Log2;Log2;Loj3;Loj3;Lih2;)Z
    .locals 3

    const-string v0, "old"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "new"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Log2;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Log2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lhh2;->h(Log2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lhh2;->h(Log2;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p5}, Lih2;->f()V

    :cond_1
    return v1

    :cond_2
    instance-of v0, p1, Lcom/yandex/div2/DivCustom;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/yandex/div2/DivCustom;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/yandex/div2/DivCustom;

    iget-object v0, v0, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Lcom/yandex/div2/DivCustom;

    iget-object v2, v2, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5}, Lih2;->x()V

    :cond_3
    return v1

    :cond_4
    instance-of v0, p1, Lcom/yandex/div2/DivContainer;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lcom/yandex/div2/DivContainer;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/yandex/div2/DivContainer;

    invoke-virtual {p0, p1, p3}, Lhh2;->k(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result v0

    check-cast p2, Lcom/yandex/div2/DivContainer;

    invoke-virtual {p0, p2, p4}, Lhh2;->k(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result p0

    if-eq v0, p0, :cond_6

    if-eqz p5, :cond_5

    invoke-interface {p5}, Lih2;->u()V

    :cond_5
    return v1

    :cond_6
    invoke-static {p1, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->l0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result p0

    invoke-static {p2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->l0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result p1

    if-eq p0, p1, :cond_8

    if-eqz p5, :cond_7

    invoke-interface {p5}, Lih2;->r()V

    :cond_7
    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/Div$b;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/div2/Div$b;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p0

    invoke-static {p0, p2}, Lbh2;->c(Lcom/yandex/div2/DivContainer;Loj3;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/Div$f;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/yandex/div2/Div$f;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p0

    invoke-static {p0, p2}, Lbh2;->p(Lcom/yandex/div2/DivGrid;Loj3;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of p0, p1, Lcom/yandex/div2/Div$g;

    if-eqz p0, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of p0, p1, Lcom/yandex/div2/Div$e;

    if-eqz p0, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    instance-of p0, p1, Lcom/yandex/div2/Div$q;

    if-eqz p0, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    instance-of p0, p1, Lcom/yandex/div2/Div$l;

    if-eqz p0, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    instance-of p0, p1, Lcom/yandex/div2/Div$d;

    if-eqz p0, :cond_6

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of p0, p1, Lcom/yandex/div2/Div$j;

    if-eqz p0, :cond_7

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_7
    instance-of p0, p1, Lcom/yandex/div2/Div$p;

    if-eqz p0, :cond_8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_8
    instance-of p0, p1, Lcom/yandex/div2/Div$n;

    if-eqz p0, :cond_9

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_9
    instance-of p0, p1, Lcom/yandex/div2/Div$c;

    if-eqz p0, :cond_a

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_a
    instance-of p0, p1, Lcom/yandex/div2/Div$i;

    if-eqz p0, :cond_b

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_b
    instance-of p0, p1, Lcom/yandex/div2/Div$k;

    if-eqz p0, :cond_c

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_c
    instance-of p0, p1, Lcom/yandex/div2/Div$h;

    if-eqz p0, :cond_d

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_d
    instance-of p0, p1, Lcom/yandex/div2/Div$m;

    if-eqz p0, :cond_e

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_e
    instance-of p0, p1, Lcom/yandex/div2/Div$r;

    if-eqz p0, :cond_f

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_f
    instance-of p0, p1, Lcom/yandex/div2/Div$o;

    if-eqz p0, :cond_10

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final h(Log2;)Z
    .locals 0

    invoke-interface {p1}, Log2;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Log2;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Log2;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;JLoj3;Loj3;Lih2;)Z
    .locals 9

    move-object v0, p1

    move-object v1, p2

    const-string v2, "new"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "oldResolver"

    move-object v3, p5

    invoke-static {p5, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newResolver"

    move-object v4, p6

    invoke-static {p6, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p7, :cond_0

    invoke-interface/range {p7 .. p7}, Lih2;->k()V

    :cond_0
    return v2

    :cond_1
    iget-object v0, v0, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/yandex/div2/DivData$State;

    iget-wide v7, v7, Lcom/yandex/div2/DivData$State;->b:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_2

    goto :goto_0

    :cond_3
    move-object v5, v6

    :goto_0
    check-cast v5, Lcom/yandex/div2/DivData$State;

    iget-object v0, v1, Lcom/yandex/div2/DivData;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/yandex/div2/DivData$State;

    iget-wide v7, v7, Lcom/yandex/div2/DivData$State;->b:J

    cmp-long v7, v7, p3

    if-nez v7, :cond_4

    move-object v6, v1

    :cond_5
    check-cast v6, Lcom/yandex/div2/DivData$State;

    if-eqz v5, :cond_8

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, v5, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    iget-object v2, v6, Lcom/yandex/div2/DivData$State;->a:Lcom/yandex/div2/Div;

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lhh2;->c(Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;Loj3;Loj3;Lih2;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p7, :cond_7

    invoke-interface/range {p7 .. p7}, Lih2;->d()V

    :cond_7
    return v0

    :cond_8
    :goto_1
    if-eqz p7, :cond_9

    invoke-interface/range {p7 .. p7}, Lih2;->m()V

    :cond_9
    return v2
.end method

.method public final k(Lcom/yandex/div2/DivContainer;Loj3;)Z
    .locals 0

    iget-object p0, p1, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/yandex/div2/DivContainer$Orientation;->OVERLAP:Lcom/yandex/div2/DivContainer$Orientation;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

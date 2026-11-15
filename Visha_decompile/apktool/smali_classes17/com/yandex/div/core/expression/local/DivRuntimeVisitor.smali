.class public Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llq2;

.field public final b:Lrga;

.field public final c:Lrda;


# direct methods
.method public constructor <init>(Llq2;Lrga;Lrda;)V
    .locals 1

    const-string v0, "divStateCache"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryStateCache"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabsCache"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->a:Llq2;

    iput-object p2, p0, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->b:Lrga;

    iput-object p3, p0, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->c:Lrda;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 7

    const-string v0, "rootDiv"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divView"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->g()Lvj3;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, p3}, Lvj3;->h(Lsv2;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->g(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->h(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivState;Lcom/yandex/div/core/state/DivStatePath;Loj3;)V
    .locals 7

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, p1}, Lvj3;->h(Lsv2;)V

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->g(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->j(Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/state/DivStatePath;Loj3;)V
    .locals 7

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, p1}, Lvj3;->h(Lsv2;)V

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->g(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->k(Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)Lvj3;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;
    .locals 7

    invoke-static {p1}, Limb;->a(Lcom/yandex/div2/Div;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/expression/local/RuntimeStore;->f(Lcom/yandex/div/core/expression/local/RuntimeStore;Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Lvj3;ILjava/lang/Object;)Lvj3;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lvj3;->h(Lsv2;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ExpressionRuntimeVisitor cannot create runtime for path = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Lvj3;)Ljava/lang/String;
    .locals 9

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getDivTag()Lei2;

    move-result-object p2

    invoke-virtual {p2}, Lei2;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "divView.divTag.id"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->b:Lrga;

    invoke-virtual {v0, p2, p3}, Lrga;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->a:Llq2;

    invoke-interface {p0, p2, p3}, Llq2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p0, p1, Lcom/yandex/div2/DivState;->x:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p4}, Lvj3;->g()Lsnb;

    move-result-object p2

    invoke-interface {p2, p0}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lqnb;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/yandex/div2/DivState;->j:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_2

    invoke-virtual {p4}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    invoke-static {p0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivState$State;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v0, p0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public final g(Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/ArrayList;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/yandex/div/core/state/DivStatePath;->i()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final h(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V
    .locals 8

    instance-of v0, p1, Lcom/yandex/div2/Div$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/yandex/div2/Div$b;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object v0

    iget-object v4, v0, Lcom/yandex/div2/DivContainer;->A:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->i(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div2/Div$f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/yandex/div2/Div$f;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object v0

    iget-object v4, v0, Lcom/yandex/div2/DivGrid;->y:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->i(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/yandex/div2/Div$d;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/yandex/div2/Div$d;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object v0

    iget-object v4, v0, Lcom/yandex/div2/DivGallery;->u:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->i(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/yandex/div2/Div$j;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/yandex/div2/Div$j;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object v0

    iget-object v4, v0, Lcom/yandex/div2/DivPager;->t:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->i(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/yandex/div2/Div$n;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/yandex/div2/Div$n;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->j(Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Lcom/yandex/div2/Div$p;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/yandex/div2/Div$p;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->k(Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)Lvj3;

    goto :goto_0

    :cond_5
    instance-of p4, p1, Lcom/yandex/div2/Div$c;

    if-eqz p4, :cond_6

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_6
    instance-of p4, p1, Lcom/yandex/div2/Div$e;

    if-eqz p4, :cond_7

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_7
    instance-of p4, p1, Lcom/yandex/div2/Div$g;

    if-eqz p4, :cond_8

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_8
    instance-of p4, p1, Lcom/yandex/div2/Div$h;

    if-eqz p4, :cond_9

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_9
    instance-of p4, p1, Lcom/yandex/div2/Div$i;

    if-eqz p4, :cond_a

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_a
    instance-of p4, p1, Lcom/yandex/div2/Div$k;

    if-eqz p4, :cond_b

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_b
    instance-of p4, p1, Lcom/yandex/div2/Div$l;

    if-eqz p4, :cond_c

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_c
    instance-of p4, p1, Lcom/yandex/div2/Div$m;

    if-eqz p4, :cond_d

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_d
    instance-of p4, p1, Lcom/yandex/div2/Div$q;

    if-eqz p4, :cond_e

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_e
    instance-of p4, p1, Lcom/yandex/div2/Div$r;

    if-eqz p4, :cond_f

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    goto :goto_0

    :cond_f
    instance-of p4, p1, Lcom/yandex/div2/Div$o;

    if-eqz p4, :cond_10

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    :cond_10
    :goto_0
    return-void
.end method

.method public final i(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lvj3;)V
    .locals 7

    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->e(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lvj3;)Lvj3;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p6, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v6, p6, 0x1

    if-gez p6, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->a0(Log2;I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p4, p6}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->h(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    move p6, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V
    .locals 8

    sget-object v0, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, v1}, Lcom/yandex/div/core/state/DivPathUtils;->i(Lcom/yandex/div/core/state/DivPathUtils;Lcom/yandex/div2/DivState;Lc74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->f(Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Lvj3;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivState$State;

    iget-object v3, v1, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-virtual {p0, p3, v2}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->h(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/core/expression/local/RuntimeStore;->k()Lcom/yandex/div/core/expression/local/RuntimeTree;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor$visitStates$1$1;->INSTANCE:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor$visitStates$1$1;

    invoke-virtual {v1, p5, v5, v2}, Lcom/yandex/div/core/expression/local/RuntimeTree;->e(Lvj3;Ljava/lang/String;Le74;)V

    goto :goto_0

    :cond_3
    invoke-static {p4}, Ld81;->K(Ljava/util/List;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)Lvj3;
    .locals 12

    move-object v6, p0

    move-object v0, p1

    move-object v7, p3

    iget-object v1, v6, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->c:Lrda;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    invoke-virtual {v2}, Lei2;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "divView.dataTag.id"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p3}, Lrda;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    move v8, v1

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/yandex/div2/DivTabs;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual/range {p5 .. p5}, Lvj3;->c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const/16 v3, 0x1f

    shr-long v3, v1, v3

    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-eqz v5, :cond_4

    const-wide/16 v10, -0x1

    cmp-long v3, v3, v10

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable convert \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\' to Int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    cmp-long v1, v1, v8

    if-lez v1, :cond_3

    const v1, 0x7fffffff

    goto :goto_0

    :cond_3
    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_4
    :goto_1
    long-to-int v1, v1

    goto :goto_0

    :goto_2
    iget-object v0, v0, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v0, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v10, v0, 0x1

    if-gez v0, :cond_5

    invoke-static {}, Ly71;->u()V

    :cond_5
    check-cast v1, Lcom/yandex/div2/DivTabs$Item;

    iget-object v2, v1, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->a0(Log2;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v8, v0, :cond_7

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;->h(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/util/List;Lvj3;)V

    :cond_6
    move-object/from16 v2, p5

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->k()Lcom/yandex/div/core/expression/local/RuntimeTree;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/yandex/div/core/expression/local/DivRuntimeVisitor$visitTabs$1$1;->INSTANCE:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor$visitTabs$1$1;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2, v3, v1}, Lcom/yandex/div/core/expression/local/RuntimeTree;->e(Lvj3;Ljava/lang/String;Le74;)V

    :goto_4
    move v0, v10

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

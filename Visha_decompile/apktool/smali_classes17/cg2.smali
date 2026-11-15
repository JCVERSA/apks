.class public final Lcg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcg2$a;
    }
.end annotation


# instance fields
.field public final a:Lyo2;


# direct methods
.method public constructor <init>(Lyo2;)V
    .locals 1

    const-string v0, "requestExecutor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcg2;->a:Lyo2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 7

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$s;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$s;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$s;->c()Lcom/yandex/div2/DivActionSubmit;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p2, Lcom/yandex/div2/DivActionSubmit;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcg2$a;

    invoke-direct {v2, v1}, Lcg2$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcg2$a;->z(Lcom/yandex/div/core/view2/Div2View;)Lkotlin/Triple;

    move-result-object v1

    if-nez v1, :cond_2

    return p1

    :cond_2
    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/state/DivStatePath;

    iget-object v3, p2, Lcom/yandex/div2/DivActionSubmit;->d:Lcom/yandex/div2/DivActionSubmit$Request;

    iget-object v3, v3, Lcom/yandex/div2/DivActionSubmit$Request;->a:Ljava/util/List;

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivActionSubmit$Request$Header;

    new-instance v5, Lyo2$d;

    iget-object v6, v4, Lcom/yandex/div2/DivActionSubmit$Request$Header;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v6, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v4, v4, Lcom/yandex/div2/DivActionSubmit$Request$Header;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lyo2$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v3, Lyo2$e;

    iget-object v4, p2, Lcom/yandex/div2/DivActionSubmit;->d:Lcom/yandex/div2/DivActionSubmit$Request;

    iget-object v4, v4, Lcom/yandex/div2/DivActionSubmit$Request;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p2, Lcom/yandex/div2/DivActionSubmit;->d:Lcom/yandex/div2/DivActionSubmit$Request;

    iget-object v5, v5, Lcom/yandex/div2/DivActionSubmit$Request;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v5, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivActionSubmit$Request$Method;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v2, v1, p3}, Lcg2;->b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, v5, v0, p1}, Lyo2$e;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/yandex/div2/DivActionSubmit;->c:Ljava/util/List;

    iget-object p2, p2, Lcom/yandex/div2/DivActionSubmit;->b:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcg2;->c(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)Lyo2$a;

    move-result-object p1

    iget-object p0, p0, Lcg2;->a:Lyo2;

    invoke-interface {p0, v3, p1}, Lyo2;->a(Lyo2$e;Lyo2$a;)Ljn5;

    move-result-object p0

    invoke-virtual {p3, p0, p3}, Lcom/yandex/div/core/view2/Div2View;->addLoadReference(Ljn5;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return p1
.end method

.method public final b(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p0

    invoke-interface {p0}, Log2;->c()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->e()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/yandex/div/core/state/DivStatePath;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lcom/yandex/div/core/expression/local/RuntimeStore;->f(Lcom/yandex/div/core/expression/local/RuntimeStore;Ljava/lang/String;Lcom/yandex/div2/Div;Loj3;Lvj3;ILjava/lang/Object;)Lvj3;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lvj3;->g()Lsnb;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivVariable;

    invoke-static {p3}, Lyj3;->a(Lcom/yandex/div2/DivVariable;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcob;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/yandex/div/evaluable/MissingVariableException;

    const/4 v2, 0x2

    invoke-direct {v0, p3, v1, v2, v1}, Lcom/yandex/div/evaluable/MissingVariableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p4, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "body.toString()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final c(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)Lyo2$a;
    .locals 0

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcg2$b;

    invoke-direct {p0, p1, p2, p3, p4}, Lcg2$b;-><init>(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

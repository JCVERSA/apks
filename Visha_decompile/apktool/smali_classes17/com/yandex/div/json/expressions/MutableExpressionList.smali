.class public final Lcom/yandex/div/json/expressions/MutableExpressionList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnj3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Lhm5;

.field public final d:Llx7;

.field public e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lhm5;Llx7;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressions"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listValidator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->c:Lhm5;

    iput-object p4, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->d:Llx7;

    return-void
.end method


# virtual methods
.method public a(Loj3;)Ljava/util/List;
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/MutableExpressionList;->d(Loj3;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->e:Ljava/util/List;
    :try_end_0
    .catch Lcom/yandex/div/json/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->d:Llx7;

    invoke-interface {v0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->e:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    throw p1
.end method

.method public b(Loj3;Le74;)Lqc2;
    .locals 2

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;-><init>(Le74;Lcom/yandex/div/json/expressions/MutableExpressionList;Loj3;)V

    iget-object p2, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    invoke-static {p0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Lhd1;

    invoke-direct {p2}, Lhd1;-><init>()V

    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p1, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {p2, v1}, Lhd1;->a(Lqc2;)V

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    return-object p0
.end method

.method public final d(Loj3;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->c:Lhm5;

    invoke-interface {p1, v1}, Lhm5;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lmx7;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/div/json/expressions/MutableExpressionList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    check-cast p1, Lcom/yandex/div/json/expressions/MutableExpressionList;

    iget-object p1, p1, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    return p0
.end method

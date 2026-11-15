.class public final Lcom/yandex/div/json/expressions/Expression$MutableExpression;
.super Lcom/yandex/div/json/expressions/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/json/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableExpression"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Le74;

.field public final e:Lpnb;

.field public final f:Llx7;

.field public final g:Lzbb;

.field public final h:Lcom/yandex/div/json/expressions/Expression;

.field public final i:Ljava/lang/String;

.field public j:Lcom/yandex/div/evaluable/a;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Le74;Lpnb;Llx7;Lzbb;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    const-string v0, "expressionKey"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawExpression"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeHelper"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/json/expressions/Expression;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->d:Le74;

    iput-object p4, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->e:Lpnb;

    iput-object p5, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->f:Llx7;

    iput-object p6, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->g:Lzbb;

    iput-object p7, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->h:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Loj3;)Ljava/lang/Object;
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->l(Loj3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(Loj3;Le74;)Lqc2;
    .locals 3

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->i()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lqc2;->A1:Lqc2;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    new-instance v2, Lcom/yandex/div/json/expressions/Expression$MutableExpression$observe$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/yandex/div/json/expressions/Expression$MutableExpression$observe$1;-><init>(Le74;Lcom/yandex/div/json/expressions/Expression$MutableExpression;Loj3;)V

    invoke-interface {p1, v1, v0, v2}, Loj3;->a(Ljava/lang/String;Ljava/util/List;Lc74;)Lqc2;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lmx7;->q(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->j(Lcom/yandex/div/json/ParsingException;Loj3;)V

    sget-object p0, Lqc2;->A1:Lqc2;

    return-object p0
.end method

.method public final g()Lcom/yandex/div/evaluable/a;
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->j:Lcom/yandex/div/evaluable/a;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/yandex/div/evaluable/a;->d:Lcom/yandex/div/evaluable/a$b;

    iget-object v1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/div/evaluable/a$b;->a(Ljava/lang/String;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->j:Lcom/yandex/div/evaluable/a;
    :try_end_0
    .catch Lcom/yandex/div/evaluable/EvaluableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lmx7;->q(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->g()Lcom/yandex/div/evaluable/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lcom/yandex/div/json/ParsingException;Loj3;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->f:Llx7;

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    invoke-interface {p2, p1}, Loj3;->c(Lcom/yandex/div/json/ParsingException;)V

    return-void
.end method

.method public final k(Loj3;)Ljava/lang/Object;
    .locals 14

    iget-object v1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->g()Lcom/yandex/div/evaluable/a;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->d:Le74;

    iget-object v5, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->e:Lpnb;

    iget-object v6, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->g:Lzbb;

    iget-object v7, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->f:Llx7;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Loj3;->b(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/evaluable/a;Le74;Lpnb;Lzbb;Llx7;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object p1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->g:Lzbb;

    invoke-interface {p1, v10}, Lzbb;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v10

    :cond_0
    iget-object v8, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lmx7;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->c:Ljava/lang/String;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Lmx7;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public final l(Loj3;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->k(Loj3;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->k:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yandex/div/json/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->j(Lcom/yandex/div/json/ParsingException;Loj3;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->k:Ljava/lang/Object;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->k:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/yandex/div/json/ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->g:Lzbb;

    invoke-interface {p0}, Lzbb;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;->j(Lcom/yandex/div/json/ParsingException;Loj3;)V

    throw v0
.end method

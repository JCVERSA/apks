.class public final Lcom/yandex/div/evaluable/a$d;
.super Lcom/yandex/div/evaluable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/evaluable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public g:Lcom/yandex/div/evaluable/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "expr"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div/evaluable/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/evaluable/a$d;->e:Ljava/lang/String;

    sget-object v0, Lppa;->a:Lppa;

    invoke-virtual {v0, p1}, Lppa;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/evaluable/a$d;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d(Lcom/yandex/div/evaluable/Evaluator;)Ljava/lang/Object;
    .locals 3

    const-string v0, "evaluator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/evaluable/a$d;->g:Lcom/yandex/div/evaluable/a;

    if-nez v0, :cond_0

    sget-object v0, Lbx7;->a:Lbx7;

    iget-object v1, p0, Lcom/yandex/div/evaluable/a$d;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbx7;->k(Ljava/util/List;Ljava/lang/String;)Lcom/yandex/div/evaluable/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/evaluable/a$d;->g:Lcom/yandex/div/evaluable/a;

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/evaluable/a$d;->g:Lcom/yandex/div/evaluable/a;

    const/4 v1, 0x0

    const-string v2, "expression"

    if-nez v0, :cond_1

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/yandex/div/evaluable/a;->c(Lcom/yandex/div/evaluable/Evaluator;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/evaluable/a$d;->g:Lcom/yandex/div/evaluable/a;

    if-nez v0, :cond_2

    invoke-static {v2}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcom/yandex/div/evaluable/a;->a(Lcom/yandex/div/evaluable/a;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/evaluable/a;->g(Z)V

    return-object p1
.end method

.method public f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/evaluable/a$d;->g:Lcom/yandex/div/evaluable/a;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, "expression"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/evaluable/a$d;->f:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lgpa$b$b;

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpa$b$b;

    invoke-virtual {v1}, Lgpa$b$b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/a$d;->e:Ljava/lang/String;

    return-object p0
.end method

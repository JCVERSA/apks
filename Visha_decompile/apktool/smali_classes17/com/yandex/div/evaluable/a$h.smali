.class public final Lcom/yandex/div/evaluable/a$h;
.super Lcom/yandex/div/evaluable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/evaluable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final e:Lgpa$c$f;

.field public final f:Lcom/yandex/div/evaluable/a;

.field public final g:Lcom/yandex/div/evaluable/a;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lgpa$c$f;Lcom/yandex/div/evaluable/a;Lcom/yandex/div/evaluable/a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tryExpression"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackExpression"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawExpression"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/yandex/div/evaluable/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/evaluable/a$h;->e:Lgpa$c$f;

    iput-object p2, p0, Lcom/yandex/div/evaluable/a$h;->f:Lcom/yandex/div/evaluable/a;

    iput-object p3, p0, Lcom/yandex/div/evaluable/a$h;->g:Lcom/yandex/div/evaluable/a;

    iput-object p4, p0, Lcom/yandex/div/evaluable/a$h;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p3}, Lcom/yandex/div/evaluable/a;->f()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/evaluable/a$h;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public d(Lcom/yandex/div/evaluable/Evaluator;)Ljava/lang/Object;
    .locals 1

    const-string v0, "evaluator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/yandex/div/evaluable/Evaluator;->n(Lcom/yandex/div/evaluable/a$h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/evaluable/a$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/evaluable/a$h;

    iget-object v1, p0, Lcom/yandex/div/evaluable/a$h;->e:Lgpa$c$f;

    iget-object v3, p1, Lcom/yandex/div/evaluable/a$h;->e:Lgpa$c$f;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/div/evaluable/a$h;->f:Lcom/yandex/div/evaluable/a;

    iget-object v3, p1, Lcom/yandex/div/evaluable/a$h;->f:Lcom/yandex/div/evaluable/a;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/evaluable/a$h;->g:Lcom/yandex/div/evaluable/a;

    iget-object v3, p1, Lcom/yandex/div/evaluable/a$h;->g:Lcom/yandex/div/evaluable/a;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/yandex/div/evaluable/a$h;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/div/evaluable/a$h;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/a$h;->i:Ljava/util/List;

    return-object p0
.end method

.method public final h()Lcom/yandex/div/evaluable/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/a$h;->g:Lcom/yandex/div/evaluable/a;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/evaluable/a$h;->e:Lgpa$c$f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/evaluable/a$h;->f:Lcom/yandex/div/evaluable/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/evaluable/a$h;->g:Lcom/yandex/div/evaluable/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/div/evaluable/a$h;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()Lcom/yandex/div/evaluable/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/a$h;->f:Lcom/yandex/div/evaluable/a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/evaluable/a$h;->f:Lcom/yandex/div/evaluable/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/div/evaluable/a$h;->e:Lgpa$c$f;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/evaluable/a$h;->g:Lcom/yandex/div/evaluable/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

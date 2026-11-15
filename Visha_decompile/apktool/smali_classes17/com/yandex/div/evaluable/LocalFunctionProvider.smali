.class public final Lcom/yandex/div/evaluable/LocalFunctionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll84;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "functions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/evaluable/LocalFunctionProvider;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$1;

    invoke-direct {v0, p2}, Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/evaluable/LocalFunctionProvider;->c(Ljava/lang/String;Le74;)Lcom/yandex/div/evaluable/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$3;

    invoke-direct {v0, p2}, Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$3;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/evaluable/LocalFunctionProvider;->c(Ljava/lang/String;Le74;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/yandex/div/evaluable/MissingLocalFunctionException;

    invoke-direct {p0, p1, p2}, Lcom/yandex/div/evaluable/MissingLocalFunctionException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/evaluable/LocalFunctionProvider$get$1;

    invoke-direct {v0, p2}, Lcom/yandex/div/evaluable/LocalFunctionProvider$get$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/evaluable/LocalFunctionProvider;->c(Ljava/lang/String;Le74;)Lcom/yandex/div/evaluable/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/yandex/div/evaluable/LocalFunctionProvider$get$3;

    invoke-direct {v0, p2}, Lcom/yandex/div/evaluable/LocalFunctionProvider$get$3;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/evaluable/LocalFunctionProvider;->c(Ljava/lang/String;Le74;)Lcom/yandex/div/evaluable/Function;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/yandex/div/evaluable/MissingLocalFunctionException;

    invoke-direct {p0, p1, p2}, Lcom/yandex/div/evaluable/MissingLocalFunctionException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p0
.end method

.method public final c(Ljava/lang/String;Le74;)Lcom/yandex/div/evaluable/Function;
    .locals 4

    iget-object p0, p0, Lcom/yandex/div/evaluable/LocalFunctionProvider;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div/evaluable/Function;

    invoke-virtual {v2}, Lcom/yandex/div/evaluable/Function;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/yandex/div/evaluable/Function$c$c;->a:Lcom/yandex/div/evaluable/Function$c$c;

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-ne p0, p2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/evaluable/Function;

    return-object p0

    :cond_2
    new-instance p0, Lcom/yandex/div/evaluable/EvaluableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Function "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " declared multiple times."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0, p1}, Lcom/yandex/div/evaluable/EvaluableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_3
    return-object p1
.end method

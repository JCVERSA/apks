.class public final Lyg5;
.super Lcom/squareup/moshi/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyg5$a;,
        Lyg5$b;
    }
.end annotation


# instance fields
.field public final a:Lle5;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lcom/squareup/moshi/JsonReader$b;


# direct methods
.method public constructor <init>(Lle5;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/JsonReader$b;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allBindings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonIgnoredBindings"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    iput-object p1, p0, Lyg5;->a:Lle5;

    iput-object p2, p0, Lyg5;->b:Ljava/util/List;

    iput-object p3, p0, Lyg5;->c:Ljava/util/List;

    iput-object p4, p0, Lyg5;->d:Lcom/squareup/moshi/JsonReader$b;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyg5;->a:Lle5;

    invoke-interface {v0}, Lbe5;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lyg5;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-static {}, Lah5;->a()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->d()V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lyg5;->d:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {p1, v4}, Lcom/squareup/moshi/JsonReader;->O(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->S()V

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->T()V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lyg5;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyg5$a;

    invoke-virtual {v4}, Lyg5$a;->g()I

    move-result v5

    aget-object v6, v2, v5

    invoke-static {}, Lah5;->a()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v4}, Lyg5$a;->d()Lcom/squareup/moshi/e;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v5

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lyg5$a;->f()Lcf5;

    move-result-object v5

    invoke-interface {v5}, Lbe5;->getReturnType()Lff5;

    move-result-object v5

    invoke-interface {v5}, Lff5;->k()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lyg5$a;->f()Lcf5;

    move-result-object p0

    invoke-interface {p0}, Lbe5;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Lyg5$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    const-string p1, "unexpectedNull(\n        \u2026         reader\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/squareup/moshi/JsonDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple values for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lyg5$a;->f()Lcf5;

    move-result-object v1

    invoke-interface {v1}, Lbe5;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->g()V

    iget-object v4, p0, Lyg5;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_b

    aget-object v6, v2, v5

    invoke-static {}, Lah5;->a()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_a

    iget-object v6, p0, Lyg5;->a:Lle5;

    invoke-interface {v6}, Lbe5;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KParameter;

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v3

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lyg5;->a:Lle5;

    invoke-interface {v6}, Lbe5;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KParameter;

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->getType()Lff5;

    move-result-object v6

    invoke-interface {v6}, Lff5;->k()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    aput-object v7, v2, v5

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lyg5;->a:Lle5;

    invoke-interface {v0}, Lbe5;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KParameter;

    invoke-interface {v0}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lyg5;->b:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyg5$a;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lyg5$a;->e()Ljava/lang/String;

    move-result-object v7

    :cond_9
    invoke-static {v0, v7, p1}, Lwkb;->o(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    const-string p1, "missingProperty(\n       \u2026       reader\n          )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    if-eqz v4, :cond_c

    iget-object p1, p0, Lyg5;->a:Lle5;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lbe5;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lyg5;->a:Lle5;

    new-instance v1, Lyg5$b;

    iget-object v3, p0, Lyg5;->a:Lle5;

    invoke-interface {v3}, Lbe5;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lyg5$b;-><init>(Ljava/util/List;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lbe5;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    iget-object v1, p0, Lyg5;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_6
    if-ge v0, v1, :cond_d

    iget-object v3, p0, Lyg5;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v3, Lyg5$a;

    aget-object v4, v2, v0

    invoke-virtual {v3, p1, v4}, Lyg5$a;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    return-object p1
.end method

.method public toJson(Lrc5;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    iget-object p0, p0, Lyg5;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyg5$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyg5$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    invoke-virtual {v0}, Lyg5$a;->d()Lcom/squareup/moshi/e;

    move-result-object v1

    invoke-virtual {v0, p2}, Lyg5$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lrc5;->h()Lrc5;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KotlinJsonAdapter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyg5;->a:Lle5;

    invoke-interface {p0}, Lbe5;->getReturnType()Lff5;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public abstract Liga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liga$a;,
        Liga$b;
    }
.end annotation


# instance fields
.field public final a:Llx7;

.field public final b:Liq0;

.field public final c:Lkga;


# direct methods
.method public constructor <init>(Llx7;Liq0;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainTemplateProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liga;->a:Llx7;

    iput-object p2, p0, Liga;->b:Liq0;

    iput-object p2, p0, Liga;->c:Lkga;

    return-void
.end method


# virtual methods
.method public abstract d()Liga$a;
.end method

.method public final e(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Liga;->f(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Liga;->b:Liq0;

    invoke-virtual {p0, p1}, Liq0;->c(Ljava/util/Map;)V

    return-void
.end method

.method public final f(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Liga;->g(Lorg/json/JSONObject;)Liga$b;

    move-result-object p0

    invoke-virtual {p0}, Liga$b;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lorg/json/JSONObject;)Liga$b;
    .locals 10

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lw71;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lw71;->b()Ljava/util/Map;

    move-result-object v1

    :try_start_0
    sget-object v2, Lgc5;->a:Lgc5;

    invoke-virtual {v2, p0, p1}, Lgc5;->h(Lex7;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Liga;->b:Liq0;

    invoke-virtual {v3, v0}, Liq0;->d(Ljava/util/Map;)V

    sget-object v3, Lkga;->a:Lkga$a;

    invoke-virtual {v3, v0}, Lkga$a;->b(Ljava/util/Map;)Lkga;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Lix7;

    new-instance v7, Ljga;

    invoke-virtual {p0}, Liga;->getLogger()Llx7;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljga;-><init>(Llx7;Ljava/lang/String;)V

    invoke-direct {v6, v3, v7}, Lix7;-><init>(Lkga;Llx7;)V

    invoke-virtual {p0}, Liga;->d()Liga$a;

    move-result-object v7

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "json.getJSONObject(name)"

    invoke-static {v8, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-interface {v7, v6, v9, v8}, Liga$a;->a(Lhx7;ZLorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lac5;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/yandex/div/json/ParsingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {p0}, Liga;->getLogger()Llx7;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Llx7;->e(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Liga;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :cond_1
    new-instance p0, Liga$b;

    invoke-direct {p0, v0, v1}, Liga$b;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p0
.end method

.method public getLogger()Llx7;
    .locals 0

    iget-object p0, p0, Liga;->a:Llx7;

    return-object p0
.end method

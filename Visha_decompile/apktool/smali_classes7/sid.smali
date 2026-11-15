.class public Lsid;
.super Lw2d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v0

    invoke-virtual {v0}, Lkhd;->x()Lprd;

    move-result-object v1

    check-cast p1, Ljava/util/Map;

    :try_start_0
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v2

    invoke-virtual {v2}, Lkhd;->H()Lixd;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    move-object v6, v5

    :goto_1
    invoke-virtual {v1, v6}, Lprd;->b(Ljava/lang/String;)Lprd;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, v5

    :goto_2
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lkhd;->o(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lkhd;->a(La8d;Ljava/lang/Object;)Lmod;

    move-result-object v6

    instance-of v7, v6, Lrfd;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lrfd;

    invoke-interface {v7}, Lrfd;->a()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    invoke-virtual {v2}, Lixd;->e()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v7

    invoke-virtual {v7}, Lkhd;->E()V

    :cond_3
    invoke-virtual {v2}, Lixd;->d()V

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkhd;->u(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v7

    invoke-virtual {v7, v5}, Lkhd;->u(Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lixd;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v5}, Lixd;->b(Ljava/lang/String;)V

    :goto_4
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lmod;->a(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Lprd;->d()Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object p0

    invoke-virtual {p0}, Lkhd;->D()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    new-instance p1, Lcom/transsion/json/k;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: Error while trying to serialize."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

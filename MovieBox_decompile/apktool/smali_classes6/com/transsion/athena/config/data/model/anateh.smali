.class public Lcom/transsion/athena/config/data/model/anateh;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/athena/config/data/model/enatha;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/athena/config/data/model/enatha;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/enatha;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/anateh;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p0, Lcom/transsion/athena/config/data/model/anateh;

    invoke-direct {p0}, Lcom/transsion/athena/config/data/model/anateh;-><init>()V

    const-string v1, "global_config"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/enatha;->a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object p0

    .line 13
    :goto_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const-string v0, "fromJSON"

    .line 14
    invoke-static {v0, p0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/transsion/athena/config/data/model/athena;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/athena;

    .line 7
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/config/data/model/enatha;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Lcom/transsion/athena/config/data/model/enatha;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/transsion/athena/config/data/model/athena;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide/16 v2, -0x1

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/transsion/athena/config/data/model/athena;

    .line 22
    .line 23
    invoke-virtual {v1, v4, v5}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    .line 31
    .line 32
    invoke-virtual {v0, v4, v5}, Lcom/transsion/athena/config/data/model/enatha;->f(J)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/config/data/model/enatha;->c(J)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const-string v1, "global_config"

    .line 7
    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/anateh;->a:Lcom/transsion/athena/config/data/model/enatha;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/enatha;->j()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "toJSON"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const-string v0, ""

    .line 36
    .line 37
    return-object v0
.end method

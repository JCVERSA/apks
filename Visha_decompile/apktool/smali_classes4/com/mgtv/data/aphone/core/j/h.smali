.class public Lcom/mgtv/data/aphone/core/j/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/mgtv/data/aphone/core/bean/EventBean;Ljava/lang/String;)V
    .locals 1

    .line 11
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, v0}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mgtv/data/aphone/core/db/e;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2
    new-instance v0, Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/bean/EventBean;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/e;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->create_time:Ljava/lang/String;

    .line 4
    iput-object p0, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "bid"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    .line 6
    invoke-static {p3}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "https://hd-mobile-v1.log.mgtv.com/dispatcher.do"

    :goto_1
    iput-object p3, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    .line 7
    invoke-static {p4}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const-string p4, "POST"

    :goto_2
    iput-object p4, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    .line 8
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    .line 10
    invoke-static {p6, v0, p5}, Lcom/mgtv/data/aphone/core/j/h;->a(Landroid/content/Context;Lcom/mgtv/data/aphone/core/bean/EventBean;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/b;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mgtv/data/aphone/core/db/e;->c(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

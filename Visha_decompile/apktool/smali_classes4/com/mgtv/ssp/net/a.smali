.class public Lcom/mgtv/ssp/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;
    .locals 6

    .line 6
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    invoke-direct {v1}, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;-><init>()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "ts"

    invoke-virtual {v1, v5, v4}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2, v3}, Lcom/mgtv/ssp/net/a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sign"

    invoke-virtual {v1, v2, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/mgtv/ssp/bean/config/a;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;
    .locals 5

    .line 15
    new-instance v0, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;

    invoke-direct {v0}, Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ts"

    invoke-virtual {v0, v4, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mgtv/ssp/bean/config/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1, v2}, Lcom/mgtv/ssp/net/a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sign"

    invoke-virtual {v0, v1, p0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;)Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;
    .locals 5

    .line 11
    invoke-static {}, Lcom/mgtv/ssp/auth/b;->a()Lcom/mgtv/ssp/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/auth/b;->c()Lcom/mgtv/ssp/bean/config/a;

    move-result-object v0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ts"

    invoke-virtual {p0, v4, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/config/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lcom/mgtv/ssp/net/a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    :cond_0
    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/hunantv/imgo/net/b;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/net/b;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/net/b;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 4
    invoke-static {}, Lcom/hunantv/imgo/net/b;->t()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/imgo/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

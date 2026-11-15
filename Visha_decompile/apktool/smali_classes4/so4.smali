.class public abstract Lso4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/lzy/okgo/request/base/Request;Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/cache/CacheMode;)V
    .locals 2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "ETag"

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p2}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_0
    const-string p2, "Last-Modified"

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/model/HttpHeaders;->getLastModified(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const-string v0, "If-Modified-Since"

    invoke-static {p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_1
    return-void
.end method

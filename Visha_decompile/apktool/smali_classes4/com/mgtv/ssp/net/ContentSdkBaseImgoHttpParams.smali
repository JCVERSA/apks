.class public Lcom/mgtv/ssp/net/ContentSdkBaseImgoHttpParams;
.super Lcom/mgtv/task/http/HttpParams;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PAGE_SIZE:I = 0xa

.field public static final TIMEOUT:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    const-string v0, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "device"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "osType"

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "osVersion"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "appVersion"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "mod"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "mf"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Lcom/mgtv/ssp/g;->a()Lcom/mgtv/ssp/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/ssp/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkVersion"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ts"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "traceId"

    invoke-static {}, Lcom/hunantv/imgo/util/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "abroad"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    return-void
.end method

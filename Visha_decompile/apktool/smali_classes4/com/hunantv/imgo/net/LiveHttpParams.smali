.class public Lcom/hunantv/imgo/net/LiveHttpParams;
.super Lcom/hunantv/imgo/net/ImgoHttpParams;
.source "SourceFile"


# static fields
.field private static final PLATFORM_TYPE:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>()V

    const-string v0, "_support"

    const-string v1, "10100001"

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "platform"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "clientKey"

    const-string v1, "channelunion"

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "deviceId"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "uuid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const-string v0, "1"

    sget-object v1, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    const-string v2, "supportnoaddbody"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    return-void
.end method

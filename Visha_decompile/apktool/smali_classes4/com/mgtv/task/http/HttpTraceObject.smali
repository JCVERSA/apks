.class public Lcom/mgtv/task/http/HttpTraceObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# static fields
.field public static final STEP_LAST_TCP:I = 0x4

.field public static final STEP_REQUEST:I = 0x2

.field public static final STEP_RESPONSE:I = 0x5

.field public static final STEP_TOTAL:I = 0x1

.field public static final STEP_TOTAL_TCP:I = 0x3


# instance fields
.field private body:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bodyText:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private finalUrl:Ljava/lang/String;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpStatus:I

.field private isBodyGZip:Z

.field public mRetryLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mgtv/task/http/retry/b;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private multiParts:Lcom/mgtv/task/http/MultiParts;

.field private response:Ljava/lang/String;

.field private responseHeader:Lokhttp3/Headers;

.field private stepDurationMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/HttpTraceObject;->mRetryLogs:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/HttpTraceObject;->stepDurationMap:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->body:Ljava/util/Map;

    return-object p0
.end method

.method public getBodyText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->bodyText:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->finalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->header:Ljava/util/Map;

    return-object p0
.end method

.method public getHttpStatus()I
    .locals 0

    iget p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->httpStatus:I

    return p0
.end method

.method public getIp()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiParts()Lcom/mgtv/task/http/MultiParts;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->multiParts:Lcom/mgtv/task/http/MultiParts;

    return-object p0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->response:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseHeader()Lokhttp3/Headers;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->responseHeader:Lokhttp3/Headers;

    return-object p0
.end method

.method public getStepDuration(I)J
    .locals 2

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->stepDurationMap:Landroidx/collection/SimpleArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->url:Ljava/lang/String;

    return-object p0
.end method

.method public isBodyGZip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/task/http/HttpTraceObject;->isBodyGZip:Z

    return p0
.end method

.method public setBody(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->body:Ljava/util/Map;

    return-void
.end method

.method public setBodyGZip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->isBodyGZip:Z

    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->bodyText:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->finalUrl:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->header:Ljava/util/Map;

    return-void
.end method

.method public setHttpStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->httpStatus:I

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->method:Ljava/lang/String;

    return-void
.end method

.method public setMultiParts(Lcom/mgtv/task/http/MultiParts;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->multiParts:Lcom/mgtv/task/http/MultiParts;

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->response:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeader(Lokhttp3/Headers;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->responseHeader:Lokhttp3/Headers;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/task/http/HttpTraceObject;->url:Ljava/lang/String;

    return-void
.end method

.method public varargs stepEnd([I)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    iget-object v5, p0, Lcom/mgtv/task/http/HttpTraceObject;->stepDurationMap:Landroidx/collection/SimpleArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs stepStart([I)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/mgtv/task/http/HttpTraceObject;->stepDurationMap:Landroidx/collection/SimpleArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Lcom/alibaba/sdk/android/oss/model/OSSResult;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private clientCRC:Ljava/lang/Long;

.field private requestId:Ljava/lang/String;

.field private responseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverCRC:Ljava/lang/Long;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getClientCRC()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->clientCRC:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServerCRC()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->serverCRC:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    .line 2
    .line 3
    return v0
.end method

.method public setClientCRC(Ljava/lang/Long;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->clientCRC:Ljava/lang/Long;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResponseHeader(Ljava/util/Map;)V
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

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setServerCRC(Ljava/lang/Long;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->serverCRC:Ljava/lang/Long;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->statusCode:I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->responseHeader:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;->requestId:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v0, v4, v5

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v4, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v2, v4, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aput-object v3, v4, v0

    .line 33
    .line 34
    const-string v0, "OSSResult<%s>: \nstatusCode:%d,\nresponseHeader:%s,\nrequestId:%s"

    .line 35
    .line 36
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

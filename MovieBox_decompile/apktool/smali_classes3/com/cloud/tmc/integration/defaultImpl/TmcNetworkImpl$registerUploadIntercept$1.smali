.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->registerUploadIntercept(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)Lokhttp3/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1",
        "Lokhttp3/Interceptor;",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

.field final synthetic $callbackId:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;->$callbackId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "upload"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Lcom/cloud/tmc/integration/net/ProgressRequestBody;

    .line 27
    .line 28
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v4, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;->$url:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1;->$callbackId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v4, v5, v6, v7}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$registerUploadIntercept$1$intercept$1;-><init>(Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v0, v4}, Lcom/cloud/tmc/integration/net/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/cloud/tmc/integration/net/ProgressRequestListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    :cond_1
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 70
    .line 71
    const-string v1, "multipart/form-data"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    :cond_3
    const-string v1, ""

    .line 90
    .line 91
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object v2, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    .line 96
    .line 97
    invoke-virtual {v2, v0, v1}, Lokhttp3/ResponseBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1
.end method

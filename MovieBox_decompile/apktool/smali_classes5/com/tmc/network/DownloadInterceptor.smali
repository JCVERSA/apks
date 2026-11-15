.class public final Lcom/tmc/network/DownloadInterceptor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/tmc/network/DownloadInterceptor;",
        "Lokhttp3/Interceptor;",
        "listener",
        "Lcom/tmc/network/ProgressListener;",
        "(Lcom/tmc/network/ProgressListener;)V",
        "getListener",
        "()Lcom/tmc/network/ProgressListener;",
        "setListener",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private listener:Lcom/tmc/network/ProgressListener;


# direct methods
.method public constructor <init>(Lcom/tmc/network/ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/tmc/network/ProgressListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/tmc/network/ProgressResponseBody;

    .line 19
    .line 20
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    .line 28
    .line 29
    invoke-direct {v1, p1, v2}, Lcom/tmc/network/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/tmc/network/ProgressListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final setListener(Lcom/tmc/network/ProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/DownloadInterceptor;->listener:Lcom/tmc/network/ProgressListener;

    .line 2
    .line 3
    return-void
.end method

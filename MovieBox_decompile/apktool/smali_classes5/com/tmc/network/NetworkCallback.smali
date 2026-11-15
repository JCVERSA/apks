.class public Lcom/tmc/network/NetworkCallback;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/tmc/network/NetworkCallback;",
        "Lokhttp3/Callback;",
        "callback",
        "Lcom/tmc/network/INetworkCallback;",
        "(Lcom/tmc/network/INetworkCallback;)V",
        "getCallback",
        "()Lcom/tmc/network/INetworkCallback;",
        "setCallback",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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
.field private callback:Lcom/tmc/network/INetworkCallback;


# direct methods
.method public constructor <init>(Lcom/tmc/network/INetworkCallback;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/tmc/network/NetworkCallback;->callback:Lcom/tmc/network/INetworkCallback;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/tmc/network/INetworkCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/NetworkCallback;->callback:Lcom/tmc/network/INetworkCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "e"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/tmc/network/NetworkCallback;->callback:Lcom/tmc/network/INetworkCallback;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/tmc/network/NetworkCallback;->callback:Lcom/tmc/network/INetworkCallback;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lcom/tmc/network/INetworkCallback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setCallback(Lcom/tmc/network/INetworkCallback;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tmc/network/NetworkCallback;->callback:Lcom/tmc/network/INetworkCallback;

    .line 7
    .line 8
    return-void
.end method

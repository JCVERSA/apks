.class Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;
.super Lcom/android/volley/RequestTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field networkResponse:Lcom/android/volley/g;

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->networkResponse:Lcom/android/volley/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->networkResponse:Lcom/android/volley/g;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/g;)Lcom/android/volley/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 10
    .line 11
    const-string v2, "network-parse-complete"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/volley/Request;->shouldCache()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/volley/i;->b:Lcom/android/volley/c$a;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->k(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 42
    .line 43
    invoke-direct {v3, v2, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/i;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->m(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 57
    .line 58
    invoke-direct {v3, v2, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/i;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {v2, v1, v0, v3}, Lcom/android/volley/AsyncRequestQueue;->o(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/i;Z)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

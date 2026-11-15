.class Lcom/android/volley/AsyncRequestQueue$NetworkTask;
.super Lcom/android/volley/RequestTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTask"
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
.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 10
    .line 11
    const-string v1, "network-discard-cancelled"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 27
    .line 28
    const-string v3, "network-queue-take"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->n(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/b;

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;

    .line 38
    .line 39
    invoke-direct {v3, p0, v0, v1}, Lcom/android/volley/AsyncRequestQueue$NetworkTask$a;-><init>(Lcom/android/volley/AsyncRequestQueue$NetworkTask;J)V

    .line 40
    .line 41
    .line 42
    throw v2
.end method

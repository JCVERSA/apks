.class Lcom/android/volley/AsyncRequestQueue$CacheTask;
.super Lcom/android/volley/RequestTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheTask"
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
    .locals 3

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
    const-string v1, "cache-discard-canceled"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 18
    .line 19
    const-string v1, "cache-queue-take"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/android/volley/AsyncRequestQueue$CacheTask$a;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/android/volley/AsyncRequestQueue$CacheTask$a;-><init>(Lcom/android/volley/AsyncRequestQueue$CacheTask;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/android/volley/a;->a(Ljava/lang/String;Lcom/android/volley/a$a;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.class Lcom/android/volley/AsyncRequestQueue$CachePutTask;
.super Lcom/android/volley/RequestTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachePutTask"
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
.field response:Lcom/android/volley/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/i;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/android/volley/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/android/volley/i;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/volley/i;->b:Lcom/android/volley/c$a;

    .line 22
    .line 23
    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CachePutTask$a;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask$a;-><init>(Lcom/android/volley/AsyncRequestQueue$CachePutTask;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/a;->c(Ljava/lang/String;Lcom/android/volley/c$a;Lcom/android/volley/a$b;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

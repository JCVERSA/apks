.class Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;
.super Lcom/android/volley/RequestTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeRetryPolicyTask"
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
.field final callback:Lcom/android/volley/b$a;

.field final request:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request;"
        }
    .end annotation
.end field

.field final retryInfo:Lcom/android/volley/toolbox/l$b;

.field final synthetic this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/toolbox/l$b;Lcom/android/volley/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/toolbox/l$b;",
            "Lcom/android/volley/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->request:Lcom/android/volley/Request;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->retryInfo:Lcom/android/volley/toolbox/l$b;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->callback:Lcom/android/volley/b$a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->request:Lcom/android/volley/Request;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->retryInfo:Lcom/android/volley/toolbox/l$b;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/volley/toolbox/l;->a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/l$b;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->callback:Lcom/android/volley/b$a;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lcom/android/volley/b$a;->a(Lcom/android/volley/VolleyError;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

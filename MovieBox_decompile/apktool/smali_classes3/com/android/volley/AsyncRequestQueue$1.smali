.class Lcom/android/volley/AsyncRequestQueue$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/a;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$1$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/android/volley/AsyncRequestQueue$1$a;-><init>(Lcom/android/volley/AsyncRequestQueue$1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/volley/a;->b(Lcom/android/volley/a$b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

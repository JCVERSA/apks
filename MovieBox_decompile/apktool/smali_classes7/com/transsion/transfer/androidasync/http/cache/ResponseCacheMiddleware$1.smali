.class Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware;

.field final synthetic val$data:Lcom/transsion/transfer/androidasync/http/g$a;

.field final synthetic val$socket:Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware;Lcom/transsion/transfer/androidasync/http/g$a;Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$1;->val$data:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/cache/ResponseCacheMiddleware$1;->val$data:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$a;->c:Lst/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1, v1}, Lst/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 7
    .line 8
    .line 9
    throw v1
.end method

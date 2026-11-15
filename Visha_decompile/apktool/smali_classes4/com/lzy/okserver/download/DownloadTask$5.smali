.class Lcom/lzy/okserver/download/DownloadTask$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okserver/download/DownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okserver/download/DownloadTask;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okserver/download/DownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okserver/download/DownloadTask$5;->this$0:Lcom/lzy/okserver/download/DownloadTask;

    iput-object p2, p0, Lcom/lzy/okserver/download/DownloadTask$5;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/lzy/okserver/download/DownloadTask$5;->this$0:Lcom/lzy/okserver/download/DownloadTask;

    iget-object v0, v0, Lcom/lzy/okserver/download/DownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luz2;

    iget-object v2, p0, Lcom/lzy/okserver/download/DownloadTask$5;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-interface {v1, v2}, Lwh8;->a(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    return-void
.end method

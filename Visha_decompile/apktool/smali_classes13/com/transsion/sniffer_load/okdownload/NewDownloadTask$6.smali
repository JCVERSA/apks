.class Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;->this$0:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;->this$0:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

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

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1, v2}, Luz2;->f(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask$6;->this$0:Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->stopNotification()V

    return-void
.end method

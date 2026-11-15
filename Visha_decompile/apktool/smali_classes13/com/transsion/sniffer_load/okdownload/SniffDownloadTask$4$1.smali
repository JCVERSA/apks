.class Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;->this$1:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;->this$1:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;

    iget-object v0, v0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->c:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

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

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;->this$1:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->a:Lcom/lzy/okgo/model/Progress;

    invoke-interface {v1, v2}, Lwh8;->a(Lcom/lzy/okgo/model/Progress;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;->this$1:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;

    iget-object v3, v2, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->b:Ljava/io/File;

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->a:Lcom/lzy/okgo/model/Progress;

    invoke-interface {v1, v3, v2}, Lwh8;->b(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4$1;->this$1:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask$4;->c:Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->stopNotification()V

    return-void
.end method

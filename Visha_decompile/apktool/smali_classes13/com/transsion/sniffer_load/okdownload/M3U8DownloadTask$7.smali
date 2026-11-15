.class Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->this$0:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iput-object p2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->this$0:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

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

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->val$progress:Lcom/lzy/okgo/model/Progress;

    invoke-interface {v1, v2}, Lwh8;->a(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->val$progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->val$progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v3, v1, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-static {v0, v3, v4}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->val$progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v4, v1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {v0, v4, v5}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask$7;->this$0:Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    iget-object v5, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    iget-object v6, v1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateNotification(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

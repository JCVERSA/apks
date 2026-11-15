.class Lcom/transsion/sniffer_load/DownloadService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadService;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/DownloadService;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$2;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$2;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->c(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyv5;->j(Landroid/content/Context;)V

    invoke-static {}, Lr03;->t()Lr03;

    move-result-object v0

    invoke-virtual {v0}, Lr03;->r()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "visha_DownloadService"

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okgo/model/Progress;

    iget-object v4, v2, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "there has a progress request is null!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v3, Ldr9;->a:Ldr9$a;

    iget v4, v2, Lcom/lzy/okgo/model/Progress;->source:I

    invoke-virtual {v3, v4}, Ldr9$a;->e(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput v3, v2, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/lzy/okgo/model/Progress;->source:I

    iput v3, v2, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lzz0;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->s:Z

    if-eqz v2, :cond_3

    const-string v2, "haveClearAllCloudTask not restoreCloudTaskFromDB!"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getAllDownloadingTask()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-static {v3}, Lr13;->k(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/lzy/okgo/model/Progress;

    move-result-object v3

    iget v4, v3, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadService$2;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/sniffer_load/DownloadService;->i(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object v1

    new-instance v2, Lcom/transsion/sniffer_load/DownloadService$2$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/sniffer_load/DownloadService$2$1;-><init>(Lcom/transsion/sniffer_load/DownloadService$2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lyv5;->b(Lwu4;)V

    return-void
.end method

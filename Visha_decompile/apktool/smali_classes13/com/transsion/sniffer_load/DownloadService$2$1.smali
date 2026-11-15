.class public Lcom/transsion/sniffer_load/DownloadService$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwu4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/DownloadService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/sniffer_load/DownloadService$2;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService$2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$2$1;->b:Lcom/transsion/sniffer_load/DownloadService$2;

    iput-object p2, p0, Lcom/transsion/sniffer_load/DownloadService$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/sniffer_load/DownloadService$2$1;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lr13;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;)Lcom/lzy/okgo/model/Progress;

    move-result-object v3

    new-instance v4, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    invoke-direct {v4, v3, v2}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/transsion/sniffer_load/DownloadService$2$1$1;

    invoke-direct {p1, p0}, Lcom/transsion/sniffer_load/DownloadService$2$1$1;-><init>(Lcom/transsion/sniffer_load/DownloadService$2$1;)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/DownloadService$2$1;->b:Lcom/transsion/sniffer_load/DownloadService$2;

    iget-object v2, v2, Lcom/transsion/sniffer_load/DownloadService$2;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v2}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/sniffer_load/DownloadService$b;->E(Lcom/transsion/sniffer_load/DownloadService$b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x7

    new-array v1, p1, [I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    new-instance v3, Lcom/transsion/sniffer_load/DownloadService$d;

    iget-object v4, p0, Lcom/transsion/sniffer_load/DownloadService$2$1;->b:Lcom/transsion/sniffer_load/DownloadService$2;

    iget-object v4, v4, Lcom/transsion/sniffer_load/DownloadService$2;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {v3, v4}, Lcom/transsion/sniffer_load/DownloadService$d;-><init>(Lcom/transsion/sniffer_load/DownloadService;)V

    invoke-virtual {v2, v3}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    iget-object v3, p0, Lcom/transsion/sniffer_load/DownloadService$2$1;->b:Lcom/transsion/sniffer_load/DownloadService$2;

    iget-object v3, v3, Lcom/transsion/sniffer_load/DownloadService$2;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v3}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v3

    iget-object v4, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v4, v4, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    iget-object v5, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v5, v5, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-static {v3, v4, v2, v5}, Lcom/transsion/sniffer_load/DownloadService$b;->H(Lcom/transsion/sniffer_load/DownloadService$b;Ljava/lang/String;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v2, v2, Lcom/lzy/okgo/model/Progress;->status:I

    rem-int/2addr v2, p1

    aget v3, v1, v2

    add-int/2addr v3, v7

    aput v3, v1, v2

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$2$1;->b:Lcom/transsion/sniffer_load/DownloadService$2;

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$2;->this$0:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->V()V

    invoke-static {v1}, Ldz5;->d([I)V

    return-void
.end method

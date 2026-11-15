.class Lcom/transsion/magicvideo/data/VideoDuration$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/data/VideoDuration;->loadDuration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/data/VideoDuration;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/data/VideoDuration;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->this$0:Lcom/transsion/magicvideo/data/VideoDuration;

    iput-object p2, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uriString:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Long;
    .locals 8

    .line 2
    const-string v0, "VideoDuration"

    const-string v1, ":::"

    iget-object v2, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Lgpb;->c(Landroid/net/Uri;)J

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start-onBackground:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uriString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v4, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uriString:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->this$0:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-static {v4}, Lcom/transsion/magicvideo/data/VideoDuration;->a(Lcom/transsion/magicvideo/data/VideoDuration;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    const/16 v4, 0x9

    .line 8
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadDuration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uriString:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v3, v2

    .line 13
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 14
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    return-object v2

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 15
    :catch_4
    :cond_2
    throw p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/data/VideoDuration$1;->onBackground()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/Long;)V
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult-1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uriString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoDuration"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->this$0:Lcom/transsion/magicvideo/data/VideoDuration;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/transsion/magicvideo/data/VideoDuration;->d(Lcom/transsion/magicvideo/data/VideoDuration;Z)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/transsion/magicvideo/data/VideoDuration;->e()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uriString:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->this$0:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/transsion/magicvideo/data/VideoDuration;->c(Lcom/transsion/magicvideo/data/VideoDuration;J)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult-2:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->val$uriString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->this$0:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-static {p1}, Lcom/transsion/magicvideo/data/VideoDuration;->b(Lcom/transsion/magicvideo/data/VideoDuration;)Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/transsion/magicvideo/data/VideoDuration$1;->this$0:Lcom/transsion/magicvideo/data/VideoDuration;

    invoke-static {p0}, Lcom/transsion/magicvideo/data/VideoDuration;->b(Lcom/transsion/magicvideo/data/VideoDuration;)Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/magicvideo/data/VideoDuration$IVideoDurationListener;->onVideoDurationDone()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/data/VideoDuration$1;->onResult(Ljava/lang/Long;)V

    return-void
.end method

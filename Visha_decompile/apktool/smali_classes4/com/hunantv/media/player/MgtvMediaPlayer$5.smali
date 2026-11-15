.class Lcom/hunantv/media/player/MgtvMediaPlayer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSystemPlayer()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/libnative/FFmpegApi;->remove_all_dns_cache()I

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8102(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onNetworkChanged DnsNetStrategy mDnsNoNetWaiter notifyAll"

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$5;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

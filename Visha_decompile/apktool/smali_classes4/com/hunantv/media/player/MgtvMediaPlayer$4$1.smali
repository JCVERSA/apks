.class Lcom/hunantv/media/player/MgtvMediaPlayer$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer$4;->domainResolve(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/player/MgtvMediaPlayer$4;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer$4;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4$1;->this$1:Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDnsFail(Lcom/hunantv/media/player/a/a;)V
    .locals 0

    return-void
.end method

.method public onDnsFinish(Lcom/hunantv/media/player/a/a;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4$1;->this$1:Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    iget-object p1, p1, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4$1;->this$1:Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDnsStart(Lcom/hunantv/media/player/a/a;)V
    .locals 0

    return-void
.end method

.method public onDnsSuc(Lcom/hunantv/media/player/a/a;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

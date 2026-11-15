.class Lcom/aliyun/player/externalplayer/MediaPlayer$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;->onCompletion()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 19
    .line 20
    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {p1, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

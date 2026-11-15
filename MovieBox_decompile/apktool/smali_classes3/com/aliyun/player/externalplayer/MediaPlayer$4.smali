.class Lcom/aliyun/player/externalplayer/MediaPlayer$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "what="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ", extra="

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p1, v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;->onError(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 50
    .line 51
    sget-object p2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    .line 52
    .line 53
    const/4 p3, 0x1

    .line 54
    invoke-static {p1, p2, p3}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    .line 55
    .line 56
    .line 57
    return p3
.end method

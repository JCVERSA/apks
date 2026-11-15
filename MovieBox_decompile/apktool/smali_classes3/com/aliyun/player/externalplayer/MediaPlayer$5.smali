.class Lcom/aliyun/player/externalplayer/MediaPlayer$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    const/16 p1, 0x2be

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;->onLoadingEnd()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p1, 0x2bd

    .line 24
    .line 25
    if-ne p2, p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;->onLoadingStart()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x3

    .line 46
    if-ne p2, p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;->onFirstFrameRender()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 66
    return p1
.end method

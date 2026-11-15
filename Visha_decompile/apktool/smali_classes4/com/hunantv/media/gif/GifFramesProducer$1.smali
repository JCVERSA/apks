.class Lcom/hunantv/media/gif/GifFramesProducer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/gif/GifFramesProducer;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/gif/GifFramesProducer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/gif/GifFramesProducer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$1;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$1;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-virtual {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->getLogTagKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPrepared in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$1;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$1;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/gif/GifFramesProducer$Callback;->onStart()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$1;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$100(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPrepared4StartMode()Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_AUTOPLAY:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$1;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$100(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->start()V

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer$1;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-virtual {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->getLogTagKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onPrepared out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

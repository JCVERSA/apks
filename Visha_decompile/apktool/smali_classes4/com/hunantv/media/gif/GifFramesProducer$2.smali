.class Lcom/hunantv/media/gif/GifFramesProducer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;


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

    iput-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetFrameImageInfo(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-virtual {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->getLogTagKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetFrameImageInfo result_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timestamp:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", file_name:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p1}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/gif/GifFramesProducer$Callback;->onImage(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetFrameImageStatus(II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-virtual {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->getLogTagKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetFrameImageStatus what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p1}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    const v0, 0x6ad78e

    invoke-static {p1, v0, p2}, Lcom/hunantv/media/gif/GifFramesProducer;->access$300(Lcom/hunantv/media/gif/GifFramesProducer;II)V

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object p0

    invoke-interface {p0, v0, p2}, Lcom/hunantv/media/gif/GifFramesProducer$Callback;->onError(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p1}, Lcom/hunantv/media/gif/GifFramesProducer;->access$200(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/report/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p1}, Lcom/hunantv/media/gif/GifFramesProducer;->access$200(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/report/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/report/a;->b()V

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p1}, Lcom/hunantv/media/gif/GifFramesProducer;->access$100(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p1}, Lcom/hunantv/media/gif/GifFramesProducer;->access$100(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p1}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer$2;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/gif/GifFramesProducer$Callback;->onSuccess()V

    :cond_4
    :goto_0
    return-void
.end method

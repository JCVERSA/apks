.class Lcom/hunantv/media/gif/GifFramesProducer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;


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

    iput-object p1, p0, Lcom/hunantv/media/gif/GifFramesProducer$3;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$3;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {v0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/gif/GifFramesProducer$3;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/gif/GifFramesProducer;->access$300(Lcom/hunantv/media/gif/GifFramesProducer;II)V

    iget-object p0, p0, Lcom/hunantv/media/gif/GifFramesProducer$3;->this$0:Lcom/hunantv/media/gif/GifFramesProducer;

    invoke-static {p0}, Lcom/hunantv/media/gif/GifFramesProducer;->access$000(Lcom/hunantv/media/gif/GifFramesProducer;)Lcom/hunantv/media/gif/GifFramesProducer$Callback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/gif/GifFramesProducer$Callback;->onError(II)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

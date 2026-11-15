.class Lcom/hunantv/media/recoder/GifRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/utils/ExTicker$onTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/recoder/GifRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/recoder/GifRecorder;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/recoder/GifRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(I)V
    .locals 4

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {p1}, Lcom/hunantv/media/recoder/GifRecorder;->access$000(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder$Status;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/recoder/GifRecorder$Status;->START:Lcom/hunantv/media/recoder/GifRecorder$Status;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {p1}, Lcom/hunantv/media/recoder/GifRecorder;->access$100(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    move-result-object p1

    iget p1, p1, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->maxDuration:I

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v0}, Lcom/hunantv/media/recoder/GifRecorder;->access$100(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    move-result-object v0

    iget v0, v0, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->fps:I

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v0}, Lcom/hunantv/media/recoder/GifRecorder;->access$200(Lcom/hunantv/media/recoder/GifRecorder;)I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interrupt beyond maxFrames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x69

    invoke-virtual {p0, v0, v1, p1}, Lcom/hunantv/media/recoder/GifRecorder;->interrupt(IILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v0}, Lcom/hunantv/media/recoder/GifRecorder;->access$300(Lcom/hunantv/media/recoder/GifRecorder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v0}, Lcom/hunantv/media/recoder/GifRecorder;->access$200(Lcom/hunantv/media/recoder/GifRecorder;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v0}, Lcom/hunantv/media/recoder/GifRecorder;->access$400(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v2}, Lcom/hunantv/media/recoder/GifRecorder;->access$100(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    move-result-object v2

    iget v2, v2, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesWidth:I

    iget-object v3, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v3}, Lcom/hunantv/media/recoder/GifRecorder;->access$100(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder$Configuration;

    move-result-object v3

    iget v3, v3, Lcom/hunantv/media/recoder/GifRecorder$Configuration;->framesHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hunantv/media/utils/BitmapUtil;->saveJpeg(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {p1}, Lcom/hunantv/media/recoder/GifRecorder;->access$208(Lcom/hunantv/media/recoder/GifRecorder;)I

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {p1, v1}, Lcom/hunantv/media/recoder/GifRecorder;->access$502(Lcom/hunantv/media/recoder/GifRecorder;I)I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {p1}, Lcom/hunantv/media/recoder/GifRecorder;->access$508(Lcom/hunantv/media/recoder/GifRecorder;)I

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {p1}, Lcom/hunantv/media/recoder/GifRecorder;->access$500(Lcom/hunantv/media/recoder/GifRecorder;)I

    move-result p1

    iget-object v0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {v0}, Lcom/hunantv/media/recoder/GifRecorder;->access$600(Lcom/hunantv/media/recoder/GifRecorder;)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framesErrorCounter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/recoder/GifRecorder$1;->this$0:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-static {p0}, Lcom/hunantv/media/recoder/GifRecorder;->access$500(Lcom/hunantv/media/recoder/GifRecorder;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc9

    invoke-static {p1, v0, v1, p0}, Lcom/hunantv/media/recoder/GifRecorder;->access$700(Lcom/hunantv/media/recoder/GifRecorder;IILjava/lang/String;)V

    :cond_4
    return-void
.end method

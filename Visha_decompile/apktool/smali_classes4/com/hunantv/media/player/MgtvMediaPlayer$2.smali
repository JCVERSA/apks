.class Lcom/hunantv/media/player/MgtvMediaPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private needInnerRetry(II)Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->v()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x30d43

    if-ne p1, p0, :cond_0

    const p0, 0x188fe

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onError(II)Z
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",netType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/recoder/GifRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/recoder/GifRecorder;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/hunantv/media/recoder/GifRecorder;->interrupt(I)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->needInnerRetry(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onError needInnerRetry"

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$102(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$702(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$800(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->aj()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->H()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->v()I

    move-result p0

    invoke-virtual {v0, v2, p1, p2, p0}, Lcom/hunantv/media/player/h;->a(Ljava/lang/String;III)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->H()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hunantv/media/player/h;->a(Ljava/lang/String;II)Z

    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$900(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1000(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V

    const v0, 0x6acfc6

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v2, ""

    invoke-static {v0, p1, p2, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1100(Lcom/hunantv/media/player/MgtvMediaPlayer;IILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1200(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->ERROR:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    invoke-static {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1302(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1402(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$2;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.class Lcom/hunantv/media/player/MgtvMediaPlayer$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/utils/ExTicker$onTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V
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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$20;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(I)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$20;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayTicker onTick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",fps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$20;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFpsMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$20;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$20;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/report/a;->a(I)V

    :cond_0
    return-void
.end method

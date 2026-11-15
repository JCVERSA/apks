.class Lcom/hunantv/media/player/MgtvMediaPlayer$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;


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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(II)V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/recoder/GifRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/recoder/GifRecorder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/hunantv/media/recoder/GifRecorder;->interrupt(I)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1200(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/report/a;->a(II)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0xc3509

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->COMPLETED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1302(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$12;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;->onCompletion(II)V

    :cond_3
    return-void
.end method

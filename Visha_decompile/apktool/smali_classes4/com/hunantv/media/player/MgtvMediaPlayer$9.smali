.class Lcom/hunantv/media/player/MgtvMediaPlayer$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;


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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->setDuration(I)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared mIsInnerRetrying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PLAYING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PREPARED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1302(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3502(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/subtitle/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/subtitle/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/b;->b()V

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;->onPrepared()V

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isBackUpLoaderSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$9;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p0

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getBackUpLoaderSoMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0xc3506

    const-string v3, "0"

    invoke-interface {p0, v2, v3, v0, v1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->setBackUpLoaderSuccess(Z)V

    :cond_5
    return-void
.end method

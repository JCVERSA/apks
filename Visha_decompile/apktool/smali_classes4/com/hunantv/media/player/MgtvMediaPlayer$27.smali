.class Lcom/hunantv/media/player/MgtvMediaPlayer$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field lastSwitchingKey:I

.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->lastSwitchingKey:I

    return-void
.end method


# virtual methods
.method public onSmoothSwitchSourceComplete(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmoothSwitchSourceComplete (type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",key:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",msg:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSmoothSwitchSourceComplete current: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/hunantv/media/player/MgtvMediaSource;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/hunantv/media/player/h;->c(Z)V

    :cond_2
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVfps()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVfps()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14502(Lcom/hunantv/media/player/MgtvMediaPlayer;F)F

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14702(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->c()V

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2002(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/report/a;)Lcom/hunantv/media/report/a;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/report/a;)Lcom/hunantv/media/player/h;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getReadType()I

    move-result v1

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getPlayingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hunantv/media/player/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {p3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getEnableImgoAIQE()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->h(Z)V

    :cond_5
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getVideoFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getAudioFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setAudioFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v0

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaSource;->getFileFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setFileFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    :cond_6
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {p3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->deepCopy(Lcom/hunantv/media/report/ReportParams;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->b()V

    :cond_7
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getDef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14900(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, v1, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find smoothKeyFrameKey :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " set to player"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v1, v1, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object p3, p3, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->videoFileHash:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/hunantv/media/utils/KeyFrameInfoUtils;->isKeyFrameDataValid([BLjava/lang/String;)I

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setKeyFrameInfoFileBuf([B)I

    :cond_8
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2300(Lcom/hunantv/media/player/MgtvMediaPlayer;I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p2

    if-nez p2, :cond_9

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "onSmoothSwitchSourceComplete matchKeySource failed"

    invoke-static {p0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_9
    invoke-virtual {p2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getSwitchMod()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_a

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/hunantv/media/player/h;->d(Z)V

    :cond_a
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$15002(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/smooth/SmoothMediaSource;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12502(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12602(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8202(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/flow/FlowReportProcessor;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p3

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvMediaSource;->getP2pTask()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/p2p/IP2pTask;)V

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p3

    invoke-virtual {p2}, Lcom/hunantv/media/player/MgtvMediaSource;->getReadType()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/hunantv/media/player/h;->b(I)V

    :cond_b
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p3, p3, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    move-result-object p3

    if-eqz p3, :cond_c

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceSuccess(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V

    :cond_c
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSmoothSwitchSourceFailed(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmoothSwitchSourceFailed (type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmoothSwitchSourceFailed current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const v1, 0x61d46

    const/4 v2, -0x1

    :try_start_1
    invoke-static {p4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    array-length v3, p4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-static {v3}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object p4, p4, v0

    invoke-static {p4}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    move-exception p4

    :try_start_2
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v1, v2, v4}, Lcom/hunantv/media/report/a;->a(IILjava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSmoothSwitchSourceFailed mReportParams:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getP2ps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSmoothSwitchSourceFailed currentSource.getReportParams():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getP2ps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/media/report/ReportParams;->isP2p()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/media/report/ReportParams;->isP2p()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hunantv/media/player/h;->c(Z)V

    :cond_4
    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isThrowErrorIfSwitchFailed()Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$15100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object p0

    const p2, 0x61d47

    invoke-interface {p0, p2, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    monitor-exit p1

    return-void

    :cond_5
    if-ne p3, v0, :cond_6

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$15100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    monitor-exit p1

    return-void

    :cond_6
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2300(Lcom/hunantv/media/player/MgtvMediaPlayer;I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p2

    if-nez p2, :cond_7

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "onSmoothSwitchSourceFailed matchKeySource failed"

    invoke-static {p0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_7
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, p2, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$15200(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSmoothSwitchSourceInfo(Lcom/hunantv/media/player/d;IILjava/lang/String;)V
    .locals 5

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmoothSwitchSourceInfo (event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmoothSwitchSourceInfo current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$14300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    const/4 v0, 0x3

    if-eqz p4, :cond_8

    if-eqz p3, :cond_7

    const/16 v1, 0xb

    if-eq p3, v1, :cond_6

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stop()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p4}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stop()V

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_3_timestamp:J

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->genFlowReporter()V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_2_timestamp:J

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_11_timestamp:J

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->s_event_0_timestamp:J

    :cond_8
    :goto_2
    if-ne p3, v0, :cond_b

    iget-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p4

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->lastSwitchingKey:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/hunantv/media/report/a;->c()V

    :cond_9
    iput p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->lastSwitchingKey:I

    iget-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz p2, :cond_a

    iget-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    move-result-object p4

    if-eqz p4, :cond_a

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceInfo(Lcom/hunantv/media/player/smooth/SmoothMediaSource;I)V

    :cond_a
    monitor-exit p1

    return-void

    :cond_b
    iget-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p4, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2300(Lcom/hunantv/media/player/MgtvMediaPlayer;I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p2

    if-nez p2, :cond_c

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "onSmoothSwitchSourceInfo matchKeySource failed"

    invoke-static {p0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_c
    if-eqz p3, :cond_d

    goto :goto_3

    :cond_d
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$27;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$12602(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)Z
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x384

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iput-boolean v0, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlayOK:Z

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x2bd

    const-string v3, "extra:"

    if-eq p1, v2, :cond_10

    const/16 v2, 0x2be

    const/4 v4, 0x0

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_5

    const/16 v1, 0xaf3

    if-eq p1, v1, :cond_4

    const v1, 0xaae61

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDownloadSpeedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iput p2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mDataSourceType:I

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-wide v6, v5, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartPlayTime:J

    sub-long/2addr v2, v6

    iput-wide v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstFrameCostMs:J

    iput-boolean v4, v5, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBeforeFirstFrame:Z

    invoke-virtual {v5}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_RENDERING_START cost(ms):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-wide v5, v3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstFrameCostMs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isFirstPlay:Z

    if-eqz v2, :cond_9

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->a()V

    :cond_7
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnInfoListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;->onInfo(II)Z

    :cond_8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    iput-boolean v4, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isFirstPlay:Z

    :cond_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end buffering:what"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    if-eqz v2, :cond_e

    iget-wide v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartBufferingTime:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-lez v2, :cond_b

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-wide v5, v5, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartBufferingTime:J

    sub-long/2addr v2, v5

    iput-wide v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->buffertime:J

    goto :goto_0

    :cond_b
    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    iput-wide v5, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->buffertime:J

    :goto_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    iput v4, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->type:I

    const/4 v3, 0x2

    if-ne p2, v3, :cond_c

    iput v0, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->type:I

    iget v3, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingNum:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingNum:I

    iget-wide v5, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingTime:J

    iget-wide v2, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->buffertime:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingTime:J

    goto :goto_1

    :cond_c
    iput v4, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->type:I

    iget v3, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingNum:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingNum:I

    iget-wide v5, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingTime:J

    iget-wide v2, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->buffertime:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingTime:J

    :goto_1
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffering cost(ms):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mLastBufferTime:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;

    iget-wide v5, v3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$BufferTime;->buffertime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffering_end(ms) mBufferingNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mBufferingTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-wide v5, v3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffering_end(ms) mSeekingTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSeekingTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-wide v5, v3, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mSeekingTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;

    if-eqz v1, :cond_d

    const-string v2, "100"

    invoke-interface {v1, v2}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;->onBufferUpdate(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iput-boolean v4, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    :cond_e
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c()V

    :cond_f
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/utils/a;->b()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1, p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->endBuffering(I)V

    goto :goto_2

    :cond_10
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start buffering:what"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iput-boolean v0, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBufferStart:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mStartBufferingTime:J

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->b()V

    :cond_11
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mCpuMonitor:Lcom/mgtv/thirdsdk/playcore/utils/a;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/utils/a;->a()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1, p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->startBuffering(I)V

    :goto_2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$12;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnInfoListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;

    if-eqz p0, :cond_12

    invoke-interface {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;->onInfo(II)Z

    :cond_12
    return v0
.end method

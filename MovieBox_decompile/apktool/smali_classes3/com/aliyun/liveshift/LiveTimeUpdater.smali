.class public Lcom/aliyun/liveshift/LiveTimeUpdater;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveTimeUpdater"

.field private static WHAT_UPDATE_LIVE_TIME:I = 0x0

.field private static WHAT_UPDATE_PLAY_TIME:I = 0x1


# instance fields
.field private contextWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private liveTime:J

.field private mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

.field private final mTimeShift:Lcom/aliyun/player/source/LiveShift;

.field private needPause:Z

.field private playTime:J

.field private timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

.field private timer:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 6
    .line 7
    new-instance v0, Lcom/aliyun/liveshift/LiveTimeUpdater$1;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/aliyun/liveshift/LiveTimeUpdater$1;-><init>(Lcom/aliyun/liveshift/LiveTimeUpdater;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    .line 20
    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->contextWeak:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mTimeShift:Lcom/aliyun/player/source/LiveShift;

    .line 29
    .line 30
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$100(Lcom/aliyun/liveshift/LiveTimeUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->updateLiveTimer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getEndTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic access$200(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdateLiveTimerDelay(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 1
    sget v0, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$400(Lcom/aliyun/liveshift/LiveTimeUpdater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$502(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$508(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    .line 7
    .line 8
    return-wide v0
.end method

.method static synthetic access$600(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$602(Lcom/aliyun/liveshift/LiveTimeUpdater;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$608(Lcom/aliyun/liveshift/LiveTimeUpdater;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    .line 7
    .line 8
    return-wide v0
.end method

.method static synthetic access$700(Lcom/aliyun/liveshift/LiveTimeUpdater;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdatePlayTimerDelay(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/liveshift/LiveTimeUpdater;)Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/aliyun/liveshift/LiveTimeUpdater;Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/liveshift/LiveTimeUpdater;->getStartTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private getEndTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    .line 22
    .line 23
    iget-wide v0, p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;->end:J

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_0
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    return-wide v0
.end method

.method private getStartTime(Lcom/aliyun/liveshift/bean/TimeLineContent;)J
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    .line 17
    .line 18
    iget-wide v0, p1, Lcom/aliyun/liveshift/bean/TimeLineInfo;->start:J

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    return-wide v0
.end method

.method private startUpdateLiveTimerDelay(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdateLiveTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    .line 5
    .line 6
    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    .line 7
    .line 8
    mul-int/lit16 p1, p1, 0x3e8

    .line 9
    .line 10
    int-to-long v2, p1

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private startUpdatePlayTimerDelay(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdatePlayTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    .line 5
    .line 6
    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    .line 7
    .line 8
    mul-int/lit16 p1, p1, 0x3e8

    .line 9
    .line 10
    int-to-long v2, p1

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private stopUpdateLiveTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    .line 2
    .line 3
    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_LIVE_TIME:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private stopUpdatePlayTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timer:Landroid/os/Handler;

    .line 2
    .line 3
    sget v1, Lcom/aliyun/liveshift/LiveTimeUpdater;->WHAT_UPDATE_PLAY_TIME:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private updateLiveTimer()V
    .locals 4

    .line 1
    new-instance v0, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->contextWeak:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mTimeShift:Lcom/aliyun/player/source/LiveShift;

    .line 12
    .line 13
    new-instance v3, Lcom/aliyun/liveshift/LiveTimeUpdater$2;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/aliyun/liveshift/LiveTimeUpdater$2;-><init>(Lcom/aliyun/liveshift/LiveTimeUpdater;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;-><init>(Landroid/content/Context;Lcom/aliyun/player/source/LiveShift;Lcom/aliyun/utils/BaseRequest$OnRequestListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mReferrer:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setRefer(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 31
    .line 32
    iget v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mNetworkTimeout:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setTimeout(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mHttpProxy:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setHttpProxy(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/aliyun/player/nativeclass/PlayerConfig;->mUserAgent:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setUerAgent(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/aliyun/player/nativeclass/PlayerConfig;->getCustomHeaders()[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/aliyun/liveshift/request/GetTimeShiftRequest;->setCustomHeaders([Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/utils/BaseRequest;->getAsync()V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public getLiveTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->liveTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public pauseUpdater()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    .line 3
    .line 4
    return-void
.end method

.method public resumeUpdater()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->needPause:Z

    .line 3
    .line 4
    return-void
.end method

.method public setConfig(Lcom/aliyun/player/nativeclass/PlayerConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->mConfig:Lcom/aliyun/player/nativeclass/PlayerConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setStartPlayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->playTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setUpdaterListener(Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/liveshift/LiveTimeUpdater;->timeShiftUpdaterListener:Lcom/aliyun/player/AliLiveShiftPlayer$OnTimeShiftUpdaterListener;

    .line 2
    .line 3
    return-void
.end method

.method public startUpdater()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdater()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->startUpdateLiveTimerDelay(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public stopUpdater()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdateLiveTimer()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/aliyun/liveshift/LiveTimeUpdater;->stopUpdatePlayTimer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

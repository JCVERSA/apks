.class public Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient abilityCallback:Lk2;

.field private abilityStatus:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

.field private adURL:Ljava/lang/String;

.field private transient adView:Landroid/view/View;

.field private config:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

.field private explorerID:Ljava/lang/String;

.field private exposeCallBack:Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

.field private exposeValidDuration:I

.field private impressionID:Ljava/lang/String;

.field private isNeedRecord:Z

.field private isStrongInteract:Z

.field private isVideoProcessMonitor:Z

.field private isVideoProcessTracking:Z

.field private isViewabilityTrackFinished:Z

.field private monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field private videoProcessIdentifier:Ljava/lang/String;

.field private videoProgressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;",
            ">;"
        }
    .end annotation
.end field

.field private viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

.field public viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

.field private viewabilityState:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewabilityState:Z

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessMonitor:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isNeedRecord:Z

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->videoProcessIdentifier:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessTracking:Z

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isViewabilityTrackFinished:Z

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isStrongInteract:Z

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->explorerID:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adURL:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adView:Landroid/view/View;

    iput-object p4, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->impressionID:Ljava/lang/String;

    sget-object p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;->EXPLORERING:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->abilityStatus:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    iput-object p5, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->config:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    iput-object p6, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    iput-object p7, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->exposeCallBack:Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

    iput-object p8, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    invoke-virtual {p6}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLShowCoverRate()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLShowCoverRate()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getCoverRateScale()F

    move-result p2

    :goto_0
    new-instance p1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {p6}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getViewabilityTrackPolicy()I

    move-result p3

    invoke-virtual {p5}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getMaxUploadAmount()I

    move-result p4

    invoke-direct {p1, p3, p4, p2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;-><init>(IIF)V

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-direct {p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->initConfigParams()V

    return-void
.end method

.method private initConfigParams()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLExposeDuration()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLExposeDuration()I

    move-result v0

    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->exposeValidDuration:I

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->isVideoExpose()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->config:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getVideoExposeValidDuration()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->config:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getExposeValidDuration()I

    move-result v0

    :goto_0
    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->exposeValidDuration:I

    :goto_1
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    const-string v1, "AdviewabilityVideoProgress"

    invoke-virtual {v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->isVideoExpose()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLVideoDuration()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->isVideoProgressTrack()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessMonitor:Z

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLVideoProcessTrackList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->videoProgressList:Ljava/util/List;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->videoProcessIdentifier:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessMonitor:Z

    :goto_2
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    const-string v1, "AdviewabilityRecord"

    invoke-virtual {v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getEqualizer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adURL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isNeedRecord:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method

.method private trackVideoProgress()V
    .locals 7

    const-class v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessTracking:Z

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->videoProgressList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getURLVideoDuration()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sget-object v4, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK1_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    if-ne v1, v4, :cond_0

    :goto_0
    int-to-long v3, v3

    goto :goto_1

    :cond_0
    sget-object v4, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK2_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    if-ne v1, v4, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    sget-object v4, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK3_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    if-ne v1, v4, :cond_2

    mul-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_2
    sget-object v4, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK4_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    if-ne v1, v4, :cond_3

    mul-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {v5}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->getMaxDuration()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->videoProgressList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->videoProgressList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adView:Landroid/view/View;

    if-nez v1, :cond_6

    :cond_5
    iput-boolean v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessTracking:Z

    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private verifyBreakCondition()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isViewabilityTrackFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->getMaxDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->config:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-virtual {v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getMaxDuration()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const-string v1, "ID:"

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->getExposeDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->impressionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5df2\u7ecf\u8fbe\u5230\u6700\u5927\u76d1\u6d4b\u65f6\u957f,\u4e14\u5f53\u524d\u65e0\u66dd\u5149,\u7ec8\u6b62\u5b9a\u65f6\u4efb\u52a1,\u7b49\u5f85\u6570\u636e\u4e0a\u62a5,max duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->getMaxDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  config duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->config:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;

    invoke-virtual {v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->getInspectInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->h(Ljava/lang/Object;)V

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->NONVIEWABLE:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->getExposeDuration()J

    move-result-wide v2

    iget v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->exposeValidDuration:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->impressionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u5df2\u6ee1\u8db3\u53ef\u89c6\u66dd\u5149\u65f6\u957f,\u7ec8\u6b62\u5b9a\u65f6\u4efb\u52a1,\u7b49\u5f85\u6570\u636e\u4e0a\u62a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->h(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewabilityState:Z

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->VIEWABLE:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adView:Landroid/view/View;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->impressionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AdView \u5df2\u88ab\u91ca\u653e,\u7ec8\u6b62\u5b9a\u65f6\u4efb\u52a1,\u7b49\u5f85\u6570\u636e\u4e0a\u62a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loe5;->h(Ljava/lang/Object;)V

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->UNMEASURED:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    :goto_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->exposeCallBack:Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    invoke-virtual {p0, v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->breakToUpload(Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public breakToUpload(Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    iget-object p2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {p1, p2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->generateUploadEvents(Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-boolean p2, Lcn/com/custommma/mobile/tracking/api/Countly;->n:Z

    const-string v0, "<-------------------------------------------------------------------------------->"

    const-string v1, "AdMeasurability"

    const/4 v2, 0x4

    const-string v3, "AdviewabilityResult"

    const-string v4, "Adviewability"

    const-string v5, "AdviewabilityEvents"

    const/4 v6, 0x1

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v7, "ImpressionID"

    iget-object v8, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->impressionID:Ljava/lang/String;

    invoke-virtual {p2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v7, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewabilityState:Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v7, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewabilityState:Z

    if-eqz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 10
    invoke-static {v0}, Loe5;->b(Ljava/lang/Object;)V

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID:"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->impressionID:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u539f\u59cb\u6570\u636e\u5e27\u957f\u5ea6:"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {v8}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->blockLength()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u51c6\u5907\u751f\u6210MMA\u76d1\u6d4b\u94fe\u63a5"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Loe5;->a(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Loe5;->e(Ljava/lang/String;)V

    .line 13
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v7, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adURL:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v7, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v7}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getSeparator()Ljava/lang/String;

    move-result-object v7

    .line 18
    iget-object v8, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v8}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getEqualizer()Ljava/lang/String;

    move-result-object v8

    .line 19
    iget-object v9, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v9, v5}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isNeedRecord:Z

    if-eqz v9, :cond_2

    .line 21
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v5, "utf-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 25
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {p1, v4}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 27
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewabilityState:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_3
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {p1, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 33
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewabilityState:Z

    if-eqz p1, :cond_4

    move v2, v6

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_5
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {p1, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    if-nez v1, :cond_6

    .line 39
    :try_start_1
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_6
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    const-string v1, "AdviewabilityVideoPlayType"

    invoke-virtual {p1, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->isVideoExpose()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getVideoPlayType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_7
    iget-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isStrongInteract:Z

    if-eqz p1, :cond_8

    .line 50
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewAbilityStats:Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;

    const-string v1, "AdviewabilityStrongInteract"

    invoke-virtual {p1, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 52
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 56
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :cond_8
    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6700\u7ec8\u76d1\u6d4b\u94fe\u63a5:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Loe5;->a(Ljava/lang/Object;)V

    .line 59
    iput-boolean v6, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isViewabilityTrackFinished:Z

    .line 60
    iget-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessMonitor:Z

    if-eqz p1, :cond_9

    iget-boolean p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessTracking:Z

    if-eqz p0, :cond_9

    .line 61
    invoke-static {v0}, Loe5;->b(Ljava/lang/Object;)V

    return-void

    :cond_9
    const/4 p0, 0x0

    .line 62
    throw p0
.end method

.method public breakToUpload(Lk2;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p2, p3}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->breakToUpload(Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V

    return-void
.end method

.method public getAbilityStatus()Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->abilityStatus:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityStatus;

    return-object p0
.end method

.method public onExplore(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-class v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adView:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v2, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    invoke-direct {v2, v1, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getCoverRate()D

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {p1, v2}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->onPush(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessMonitor:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->videoProgressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->trackVideoProgress()V

    :cond_1
    invoke-direct {p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->verifyBreakCondition()V

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setAbilityCallback(Lk2;)V
    .locals 0

    return-void
.end method

.method public setStrongInteract(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isStrongInteract:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewabilityState:Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->isVideoProcessTracking:Z

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->exposeCallBack:Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    invoke-virtual {p0, v0, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->breakToUpload(Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ impressionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->impressionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",explorerID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->explorerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityExplorer;->viewFrameBlock:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

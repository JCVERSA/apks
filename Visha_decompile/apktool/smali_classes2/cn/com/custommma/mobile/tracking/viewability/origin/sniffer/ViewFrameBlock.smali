.class public Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exposeDuration:J

.field private framesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;",
            ">;"
        }
    .end annotation
.end field

.field private lastSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

.field private maxAmount:I

.field private maxDuration:J

.field private prevIsVisibleSlice:Z

.field private startSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

.field private trackPolicy:I

.field private urlCoverRateScale:F

.field private visibleSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;


# direct methods
.method public constructor <init>(IIF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->prevIsVisibleSlice:Z

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->trackPolicy:I

    iput p2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxAmount:I

    iput p3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->urlCoverRateScale:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->exposeDuration:J

    iput-wide p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxDuration:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->startSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->lastSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    return-void
.end method

.method private isValidedSlice(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)Z
    .locals 4

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->lastSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->trackPolicy:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    iget-boolean v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->prevIsVisibleSlice:Z

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->urlCoverRateScale:F

    invoke-virtual {p1, p0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->validateAdVisible(F)Z

    move-result p0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    invoke-virtual {v0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->isSameAs(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v1
.end method


# virtual methods
.method public blockLength()I
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public generateUploadEvents(Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->lastSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->lastSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxAmount:I

    if-le v1, v2, :cond_1

    sub-int v2, v1, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    invoke-virtual {p1, v3}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getAbilitySliceTrackEvents(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u539f\u59cb\u5e27\u957f\u5ea6:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  MaxAmount:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxAmount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  \u622a\u53d6\u70b9:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  \u4e0a\u4f20\u957f\u5ea6:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loe5;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public getExposeDuration()J
    .locals 2

    iget-wide v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->exposeDuration:J

    return-wide v0
.end method

.method public getMaxDuration()J
    .locals 2

    iget-wide v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxDuration:J

    return-wide v0
.end method

.method public onPush(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->startSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    :cond_1
    invoke-direct {p0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->isValidedSlice(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f53\u524d\u5e27\u538b\u5165\u65f6\u95f4\u8f74\u5e8f\u5217:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loe5;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxAmount:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->lastSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    iget v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->urlCoverRateScale:F

    invoke-virtual {p1, v1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->validateAdVisible(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->visibleSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    if-nez v2, :cond_3

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->visibleSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    :cond_3
    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getCaptureTime()J

    move-result-wide v2

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->visibleSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getCaptureTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->exposeDuration:J

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->visibleSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->exposeDuration:J

    :goto_0
    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->lastSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getCaptureTime()J

    move-result-wide v2

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->startSlice:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getCaptureTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxDuration:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[collectAndPush] frames`s len:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  needRecord:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  is visible:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   \u6301\u7eed\u66dd\u5149\u65f6\u957f:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->exposeDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "    \u6301\u7eed\u76d1\u6d4b\u65f6\u957f:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Loe5;->g(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->prevIsVisibleSlice:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ exposeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->exposeDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",maxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->maxDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",framesList`len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameBlock;->framesList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

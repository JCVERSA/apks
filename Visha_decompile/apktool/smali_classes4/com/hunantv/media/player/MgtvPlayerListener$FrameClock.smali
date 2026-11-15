.class public Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameClock"
.end annotation


# static fields
.field public static final CLOCK_TYPE_DEBUG:I = 0x0

.field public static final CLOCK_TYPE_NORMAL_MS:I = 0x1

.field public static final CLOCK_TYPE_PKT_PTS_ABORT_END:I = 0x5

.field public static final CLOCK_TYPE_PKT_PTS_NORMAL:I = 0x2

.field public static final CLOCK_TYPE_PKT_PTS_NORMAL_END:I = 0x4

.field public static final CLOCK_TYPE_PKT_PTS_SEEK:I = 0x3

.field public static final CLOCK_TYPE_PKT_PTS_VV_START:I = 0x6


# instance fields
.field public cTimeMs:J

.field public clock_type:I

.field public endPts:J

.field public pkt_pts:J

.field public ptsMs:J

.field public seekSerial:J

.field public startPts:J

.field public tTimeMs:J

.field public vframe_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValid(I)Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-wide v5, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->seekSerial:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_1

    iget-wide p0, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    cmp-long p0, p0, v3

    if-ltz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    iget-wide p0, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    cmp-long p0, p0, v3

    if-ltz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-ltz p1, :cond_5

    iget-wide v5, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->tTimeMs:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_5

    iget-wide v5, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->ptsMs:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_5

    iget-wide v5, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->cTimeMs:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_5

    iget-wide p0, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    cmp-long p0, p0, v3

    if-ltz p0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_0
    iget-wide v5, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->startPts:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_7

    iget-wide v5, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->endPts:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_7

    iget-wide p0, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    cmp-long p0, p0, v3

    if-ltz p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v1, 0x2

    const-string v2, ", pkt_pts="

    const/16 v3, 0x7d

    const-string v4, "FrameClock{clock_type="

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x3

    const-string v5, ", vframe_time="

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->vframe_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", seekSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->seekSerial:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->vframe_time:J

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->tTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ptsMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->ptsMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->cTimeMs:J

    goto :goto_0

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startPts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->startPts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endPts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->endPts:J

    goto/16 :goto_0
.end method

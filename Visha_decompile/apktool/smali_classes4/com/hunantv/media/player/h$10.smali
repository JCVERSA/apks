.class Lcom/hunantv/media/player/h$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V
    .locals 8

    const/16 p1, 0x20

    const-string v0, "codec_name"

    if-eq p2, p1, :cond_11

    const/16 p1, 0x21

    if-eq p2, p1, :cond_10

    const/16 p1, 0x29

    if-eq p2, p1, :cond_f

    const/16 p1, 0x40

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    if-eq p2, p1, :cond_d

    const p1, 0x12204

    const-string v3, "-"

    if-eq p2, p1, :cond_c

    const/16 p1, 0x30

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eq p2, p1, :cond_b

    const/16 p1, 0x31

    const/4 v7, -0x1

    if-eq p2, p1, :cond_8

    const/16 p1, 0x50

    const/16 v0, 0x51

    if-eq p2, p1, :cond_0

    if-eq p2, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-ne p2, v0, :cond_1

    const-string p1, "afame_coming_info"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "vfame_coming_info"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-object p1, p2

    :goto_0
    iget-object p2, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_12

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getInnerFrameListener()Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_12

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    array-length p2, p1

    if-lt p2, v6, :cond_12

    new-instance p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;

    invoke-direct {p2}, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;-><init>()V

    aget-object p3, p1, v4

    invoke-static {p3, v7}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const-wide/16 v3, -0x1

    if-ne p3, v2, :cond_2

    aget-object p3, p1, v2

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->tTimeMs:J

    aget-object p3, p1, v1

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->ptsMs:J

    aget-object p1, p1, v0

    invoke-static {p1, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->cTimeMs:J

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    aget-object p3, p1, v2

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    aget-object p1, p1, v1

    :goto_1
    invoke-static {p1, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->vframe_time:J

    goto :goto_3

    :cond_3
    if-eq p3, v1, :cond_6

    if-eq p3, v6, :cond_6

    if-ne p3, v5, :cond_4

    goto :goto_2

    :cond_4
    if-ne p3, v0, :cond_5

    aget-object p3, p1, v2

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    aget-object p3, p1, v1

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->vframe_time:J

    aget-object p1, p1, v0

    invoke-static {p1, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->seekSerial:J

    goto :goto_3

    :cond_5
    const/4 v0, 0x6

    if-ne p3, v0, :cond_7

    aget-object p3, p1, v2

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    aget-object p1, p1, v1

    goto :goto_1

    :cond_6
    :goto_2
    aget-object p3, p1, v2

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->pkt_pts:J

    aget-object p3, p1, v1

    invoke-static {p3, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->startPts:J

    aget-object p1, p1, v0

    invoke-static {p1, v3, v4}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->endPts:J

    :cond_7
    :goto_3
    iget p1, p2, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->clock_type:I

    invoke-virtual {p2, p1}, Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;->checkValid(I)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;->onVFrameClockCome(Lcom/hunantv/media/player/MgtvPlayerListener$FrameClock;)V

    goto/16 :goto_6

    :cond_8
    if-eqz p3, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    const-string p2, "dns_abort_time"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->W(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    const/16 p2, 0x1e

    if-le p1, p2, :cond_9

    move p1, p2

    :cond_9
    div-int/lit8 v7, p1, 0x5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->r(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->r(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cost:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->W(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->X(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v1, 0xc3566

    invoke-interface {p1, v1, p2, p3, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update mCurrentDnsAbortTime(ms):"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->W(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    if-eqz p3, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    const-string p2, "seg_size_info"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/h;->d(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update mCurrentHLSSegSizeInfo :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p3}, Lcom/hunantv/media/player/h;->U(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->U(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->U(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    array-length p2, p1

    if-lt p2, v5, :cond_12

    const-string p2, "4"

    aget-object p3, p1, v4

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2, v2}, Lcom/hunantv/media/player/h;->i(Lcom/hunantv/media/player/h;Z)Z

    iget-object p2, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    aget-object p1, p1, v6

    invoke-static {p2, p1}, Lcom/hunantv/media/player/h;->e(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update mCurrentHLSSegSizeInfo error mLastSegInfoErrFileName:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->V(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->u(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    move-result-object p1

    if-eqz p1, :cond_12

    if-eqz p3, :cond_12

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->u(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "update_dl_bytes"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "av_cached_time_ms"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-interface {p0, p2, p1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;->onInfo(ILjava/lang/String;)Z

    goto/16 :goto_6

    :cond_d
    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->Y(Lcom/hunantv/media/player/h;)I

    move-result p1

    if-ne p1, v2, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->Z(Lcom/hunantv/media/player/h;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->r(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->s(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/a;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->s(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_e
    const-string p1, "00"

    :goto_5
    iget-object p2, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->r(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p2

    const p3, 0xc3569

    invoke-interface {p2, p3, p1, v1, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0, v2}, Lcom/hunantv/media/player/h;->j(Lcom/hunantv/media/player/h;Z)Z

    goto :goto_6

    :cond_f
    if-eqz p3, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    const-string p2, "drm_method"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update mCurrentDrmMetodName :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->T(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_10
    if-eqz p3, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update mCurrentAudioDecoderName :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->S(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_11
    if-eqz p3, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update mCurrentVideoDecoderName :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/h$10;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->R(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_12
    :goto_6
    return-void
.end method

.class Lcom/hunantv/media/player/h$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$g;


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

    iput-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;II)Z
    .locals 8

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x3

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p2, p1, :cond_15

    const/4 v4, 0x6

    const/4 v5, 0x2

    if-eq p2, v4, :cond_13

    const/16 v4, 0x321

    if-eq p2, v4, :cond_11

    const/16 v6, 0x32a

    if-eq p2, v6, :cond_d

    const/16 p1, 0xafa

    if-eq p2, p1, :cond_c

    const/16 p1, 0xb40

    if-eq p2, p1, :cond_b

    const/16 p1, 0xb4a

    if-eq p2, p1, :cond_a

    const/16 p1, 0x2725

    if-eq p2, p1, :cond_9

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_7

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_5

    const/16 p1, 0x2712

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2713

    if-eq p2, p1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chodison MEDIA_INFO_MEDIACODEC_H265_NOSUPPORT:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->j(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/utils/PreferencesUtil;

    move-result-object p0

    const-string p1, "prekey_h265_support"

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->putBoolean(Ljava/lang/String;Z)Z

    return v3

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chodison info MEDIA_INFO_MEDIACODEC_H264_NOSUPPORT:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    if-eq p3, v3, :cond_3

    if-eq p3, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->j(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/utils/PreferencesUtil;

    move-result-object p0

    const-string p1, "prekey_h264_support_high"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->putBoolean(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->j(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/utils/PreferencesUtil;

    move-result-object p0

    const-string p1, "prekey_h264_support_main"

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->j(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/utils/PreferencesUtil;

    move-result-object p0

    const-string p1, "prekey_h264_support_base"

    goto :goto_0

    :goto_1
    return v3

    :cond_5
    if-ne p3, v3, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->i(Lcom/hunantv/media/player/h;)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v5}, Lcom/hunantv/media/player/h;->i(Lcom/hunantv/media/player/h;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {p1, v3, v4}, Lcom/hunantv/media/player/h;->d(Lcom/hunantv/media/player/h;J)J

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v1, v2}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;J)J

    :cond_6
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v0}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;Z)Z

    goto/16 :goto_6

    :cond_7
    if-ne p3, v3, :cond_8

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;J)J

    :cond_8
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v3}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;Z)Z

    goto/16 :goto_6

    :cond_9
    if-ne p3, v3, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->k(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->k(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p1

    invoke-interface {p1}, Lcom/hunantv/media/p2p/IP2pTask;->getStatus()I

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "p2p not running before player load data paused"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIA_INFO_M3U8_EXIST_DATA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIA_INFO_MOMERY_PLAY_TYPE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v3}, Lcom/hunantv/media/player/h;->e(Lcom/hunantv/media/player/h;Z)Z

    if-ne p3, v5, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v3}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;Z)Z

    goto/16 :goto_6

    :cond_c
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, p3}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;I)I

    goto/16 :goto_6

    :cond_d
    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->l(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->l(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->m(Lcom/hunantv/media/player/h;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->d()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "live in vod change not seekable 0"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1, v0}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;Z)Z

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;->onInfo(II)Z

    goto :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->n(Lcom/hunantv/media/player/h;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->o(Lcom/hunantv/media/player/h;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->p(Lcom/hunantv/media/player/h;)I

    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->q(Lcom/hunantv/media/player/h;)I

    move-result v0

    if-le v0, p1, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live in vod mSegCounter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->q(Lcom/hunantv/media/player/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsLive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->m(Lcom/hunantv/media/player/h;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",getDuration():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->l(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->l(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->m(Lcom/hunantv/media/player/h;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->d()I

    move-result p1

    if-gtz p1, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "live in vod complete in"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v3}, Lcom/hunantv/media/player/h;->d(Lcom/hunantv/media/player/h;Z)Z

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->a()V

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->C()V

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->r(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p1

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "psuuid_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->s(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->s(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    const-string v0, "00"

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->r(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    const-string v1, "0"

    const/4 v2, 0x0

    const v3, 0xc3515

    invoke-interface {v0, v3, v1, p1, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->t(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->t(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    move-result-object p1

    const/16 v0, 0x7544

    const/16 v1, 0x270f

    invoke-interface {p1, v0, v1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;->onCompletion(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    if-ne p3, v3, :cond_12

    invoke-static {p1, v3}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;Z)Z

    goto :goto_6

    :cond_12
    invoke-static {p1, v0}, Lcom/hunantv/media/player/h;->c(Lcom/hunantv/media/player/h;Z)Z

    goto :goto_6

    :cond_13
    if-nez p3, :cond_14

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v3}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;I)I

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MEDIA_INFO_VIDEO_DECODER_OPEN:SW"

    goto/16 :goto_2

    :cond_14
    if-ne p3, v3, :cond_17

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v5}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;I)I

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MEDIA_INFO_VIDEO_DECODER_OPEN:HW"

    goto/16 :goto_2

    :cond_15
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->g(Lcom/hunantv/media/player/h;)J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-lez p1, :cond_16

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->g(Lcom/hunantv/media/player/h;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {p1, v4, v5}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;J)J

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----chodison--first video render--loading video consume time huafei\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {v4}, Lcom/hunantv/media/player/h;->h(Lcom/hunantv/media/player/h;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v1, v2}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;J)J

    :cond_16
    iget-object p1, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v3}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;Z)Z

    :cond_17
    :goto_6
    iget-object p0, p0, Lcom/hunantv/media/player/h$17;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;->onInfo(II)Z

    move-result p0

    return p0

    :cond_18
    return v0
.end method

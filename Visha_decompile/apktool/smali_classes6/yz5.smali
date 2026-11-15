.class public abstract Lyz5;
.super Lhb0;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "vd_ott_videostartplaying"

.field public static b:Ljava/lang/String; = "vd_ott_player_janky"

.field public static c:Ljava/lang/String; = "vd_ott_channel_video_duration"

.field public static d:Ljava/lang/String; = "videoID"

.field public static e:Ljava/lang/String; = "duration"

.field public static f:Ljava/lang/String; = "channelid"

.field public static g:Ljava/lang/String; = "topicid"

.field public static h:Ljava/lang/String; = "banner"

.field public static i:Ljava/lang/String; = "topic"

.field public static j:Ljava/lang/String; = "live"

.field public static k:J

.field public static l:J

.field public static m:J

.field public static n:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, Lyz5;->j:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lyz5;->h:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2

    sget-object p0, Lyz5;->i:Ljava/lang/String;

    return-object p0

    :cond_2
    sget-object p0, Lyz5;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static c(JJJJLjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    sget-object v2, Lyz5;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lyz5;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lyz5;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lyz5;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, p6, p7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "type"

    invoke-virtual {v0, v2, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lyz5;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    sget-object p0, Lyz5;->d:Ljava/lang/String;

    invoke-virtual {v1, p0, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    sget-object p0, Lyz5;->f:Ljava/lang/String;

    invoke-virtual {v1, p0, p4, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    sget-object p0, Lyz5;->g:Ljava/lang/String;

    invoke-virtual {v1, p0, p6, p7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p8}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    sget-object p0, Lyz5;->c:Ljava/lang/String;

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    sget-object v2, Lyz5;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lyz5;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "type"

    invoke-virtual {v0, v2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "source_id"

    invoke-virtual {v0, v3, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lyz5;->e:Ljava/lang/String;

    invoke-virtual {v1, v4, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    sget-object p0, Lyz5;->f:Ljava/lang/String;

    invoke-virtual {v1, p0, p2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v3, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    sget-object p0, Lyz5;->c:Ljava/lang/String;

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static e(JJLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    sget-wide v4, Lyz5;->k:J

    const-string v18, "5"

    const/16 v19, 0x0

    const-string v17, ""

    invoke-static/range {v0 .. v19}, Lwz5;->S(JJJLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    return-void
.end method

.method public static f()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lyz5;->n:J

    return-void
.end method

.method public static g()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lyz5;->l:J

    return-void
.end method

.method public static h(J)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lyz5;->n:J

    sub-long/2addr v0, v2

    sput-wide v0, Lyz5;->m:J

    sget-object v0, Lyz5;->b:Ljava/lang/String;

    sget-object v1, Lyz5;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object p1, Lyz5;->e:Ljava/lang/String;

    sget-wide v2, Lyz5;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, p0, p1, v2}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lyz5;->l:J

    sub-long/2addr v0, v2

    sput-wide v0, Lyz5;->k:J

    return-void
.end method

.class public abstract Le06;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b(Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "videoname"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "videoID"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "serialsname"

    invoke-virtual {v0, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "vertical"

    const-string v5, "horizontal"

    if-eqz p4, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    const-string v7, "playermode"

    invoke-virtual {v0, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v6}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {v6, v1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v6, v2, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v6, v3, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p4, :cond_1

    move-object v4, v5

    :cond_1
    invoke-virtual {v6, v7, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_ott_detail_tryplay_cl"

    invoke-static {p0, v6, v0}, Lhb0;->markDirect(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "videoname"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "videoID"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "serialsname"

    invoke-virtual {v0, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "duration"

    invoke-virtual {v0, v4, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v5}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {v5, v1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v5, v2, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v5, v3, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v5, v4, p4, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_ott_detail_tryplay_duration"

    invoke-static {p0, v5, v0}, Lhb0;->markDirect(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

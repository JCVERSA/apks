.class public abstract Lfz5;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b(ZII)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "duration"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "from"

    invoke-virtual {v0, v3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v3, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    if-eqz p0, :cond_0

    const-string p0, "vd_video_play_gesture_doubletap_forwardtime"

    goto :goto_0

    :cond_0
    const-string p0, "vd_video_play_gesture_doubletap_retreattime"

    :goto_0
    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static c(FF)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p0, v2

    const-string v3, "volume0"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    mul-float/2addr p1, v2

    const-string v2, "volume1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    float-to-double v4, p0

    invoke-virtual {v1, v3, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    float-to-double p0, p1

    invoke-virtual {v1, v2, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_video_play_gesture_volume"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

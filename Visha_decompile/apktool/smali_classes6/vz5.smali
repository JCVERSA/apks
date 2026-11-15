.class public abstract Lvz5;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b()V
    .locals 4

    const-string v0, "vd_ott_nodata_show"

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Z)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "fail"

    const-string v3, "success"

    if-eqz p0, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const-string v5, "result"

    invoke-virtual {v0, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v1, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_ott_nodata_retry_cl"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

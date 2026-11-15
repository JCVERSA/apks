.class public abstract Lk06;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b(Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "btn"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v2, "is_video"

    invoke-virtual {v0, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "vd_noti_cl"

    invoke-static {p0, v0, v3}, Lhb0;->markDirect(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;)V

    return-void
.end method

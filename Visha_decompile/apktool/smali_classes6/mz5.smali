.class public abstract Lmz5;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "vd_audio_locmusic_cl"

    const-string v1, "play_control"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "loop list"

    goto :goto_0

    :cond_0
    const-string p0, "random play"

    goto :goto_0

    :cond_1
    const-string p0, "loop one"

    :goto_0
    const-string v0, "vd_audio_locmusic_cl"

    const-string v1, "play_loop"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

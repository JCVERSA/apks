.class public abstract Lj06;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "vd_video_playqueue_cl"

    const-string v1, "from"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "vd_video_playqueue_delete"

    const-string v1, "from"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "vd_video_playlist_show"

    const-string v1, "from"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "vd_video_playqueue_subdrag"

    const-string v1, "from"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static f(ILjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "autoplay off"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "repeat one"

    goto :goto_0

    :cond_1
    const-string p0, "repeat all"

    :goto_0
    const-string v0, "loop"

    const-string v1, "from"

    const-string v2, "vd_video_playqueue_loop"

    invoke-static {v2, v0, p0, v1, p1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

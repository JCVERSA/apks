.class public final Ln16$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln16$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ln16$a;->c(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lp06;->j0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ln16$a;->c(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljz5;->b(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lp06;->k0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 3

    const-string p0, "action"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    if-nez p2, :cond_1

    const-string p0, "MarkVideoPlayClick"

    const-string p1, "markMediaBtnClick mediaInfo null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "btn"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "video_id"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "video_title"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "medialibrary_id"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->geMediaLibraryTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "medialibrary_title"

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->geMediaLibraryTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_2
    const-string p1, "vd_mlvideo_play_cl"

    const-wide/16 v1, 0x246c

    invoke-static {v0, p0, p1, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

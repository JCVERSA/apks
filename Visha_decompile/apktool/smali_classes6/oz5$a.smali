.class public final Loz5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loz5;
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
    invoke-direct {p0}, Loz5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/lang/String;
    .locals 0

    const-string p0, "videoData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    const/16 p1, 0x3eb

    if-ne p0, p1, :cond_0

    const-string p0, "collect"

    goto :goto_1

    :cond_0
    const/16 p1, 0x3ec

    if-ne p0, p1, :cond_1

    const-string p0, "download"

    goto :goto_1

    :cond_1
    const/16 p1, 0x3e9

    if-eq p0, p1, :cond_4

    const/16 p1, 0x3ee

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x31

    if-ne p0, p1, :cond_3

    const-string p0, "search"

    goto :goto_1

    :cond_3
    const-string p0, "media_library_page"

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "recent"

    :goto_1
    return-object p0
.end method

.method public final b(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 4

    const-string v0, "videoData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MarkMIMedia"

    const-string p1, "markMediaPlayShow mediaInfo null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "video_id"

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v2, "video_title"

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v2, "source"

    invoke-virtual {p0, p1}, Loz5$a;->a(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "medialibrary_id"

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMediaLibraryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->geMediaLibraryTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "medialibrary_title"

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->geMediaLibraryTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_1
    const-string p0, "vd_mlvideo_play_show"

    const-wide/16 v2, 0x246c

    const/4 p1, 0x0

    invoke-static {v1, p1, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public final c(Lcom/transsion/dbdata/beans/media/PlayVideoData;I)V
    .locals 2

    const-string p0, "videoData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "MarkMIMedia"

    const-string p1, "markMediaPlayShow mediaInfo null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "video_id"

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v0, "video_title"

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v0, "playtime"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p2, "medialibrary_id"

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->geMediaLibraryTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "medialibrary_title"

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->geMediaLibraryTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_1
    const-string p0, "vd_mlvideo_play_time"

    const-wide/16 v0, 0x246c

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "click_type"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    if-eqz p2, :cond_0

    const-string p1, "share_link"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_0
    const-string p1, "medialibrary_id"

    invoke-virtual {p0, p1, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "medialibrary_title"

    invoke-virtual {p0, p1, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "user_name"

    invoke-virtual {p0, p1, p5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "user_avatar"

    invoke-virtual {p0, p1, p6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_mlpage_share_cl"

    const-wide/16 p2, 0x246c

    const/4 p4, 0x0

    invoke-static {p0, p4, p1, p2, p3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v0, "medialibrary_id"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "medialibrary_title"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "user_name"

    invoke-virtual {p0, p1, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "user_avatar"

    invoke-virtual {p0, p1, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_mlpage_share_show"

    const-wide/16 p2, 0x246c

    const/4 p4, 0x0

    invoke-static {p0, p4, p1, p2, p3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

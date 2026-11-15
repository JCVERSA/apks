.class public interface abstract Lh6a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract queryNewestSubtitleSetting()Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleSetting WHERE time = (SELECT MAX(time) FROM SubtitleSetting)"
    .end annotation
.end method

.method public abstract querySubtitleByVideoId(I)Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleSetting WHERE video_id = :videoId"
    .end annotation
.end method

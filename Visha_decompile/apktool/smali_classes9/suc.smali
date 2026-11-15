.class public abstract Lsuc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v0

    invoke-interface {v0, p0}, Livb;->getFavoriteItem(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoPlayListMedia;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFavorite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "YoutubeDataConvertUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static b(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/transsion/dbdata/beans/YoutubeData;
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/beans/YoutubeData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/YoutubeData;-><init>()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAgeLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setAgeLimit(I)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setDashMpdUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setDescription(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setDuration(J)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDislikeCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setDislikeCount(J)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHlsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setHlsUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setHost(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLanguageInfo()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLanguageInfo()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setLanguage(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLicence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setLicence(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLikeCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setLikeCount(J)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStartPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setStartPosition(J)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setStreamType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/Image;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setSubChannelAvatarUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setSubChannelName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setSubChannelUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSupportInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setSupportInfo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setTextualUploadDate(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/Image;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setThumbnailUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/Image;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setUploaderAvatarUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setUploaderName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setUploaderSubscriberCount(J)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setUploaderUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->isUploaderVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setUploaderVerified(Z)V

    invoke-static {p0}, Lsuc;->c(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setVideoStream(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setWidth(I)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/YoutubeData;->setHeight(I)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setViewCount(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/YoutubeData;->setDateModified(J)V

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/YoutubeData;->setOriginUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lyl5;->e(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    return-object p0
.end method

.method public static d(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    invoke-static {p0}, Lsuc;->b(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/transsion/dbdata/beans/YoutubeData;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->a()Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->b()Ltuc;

    move-result-object v0

    invoke-interface {v0, p0}, Ltuc;->insertYoutubeData(Lcom/transsion/dbdata/beans/YoutubeData;)J

    return-void
.end method

.class public Lcom/transsion/dbdata/beans/YoutubeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "youtube_video"
.end annotation


# instance fields
.field private ageLimit:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "age_limit"
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "category"
    .end annotation
.end field

.field private dashMpdUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "dash_mpd_url"
    .end annotation
.end field

.field private dateModified:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "date_modified"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "description"
    .end annotation
.end field

.field private dislikeCount:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "dislike_count"
    .end annotation
.end field

.field private duration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "duration"
    .end annotation
.end field

.field private height:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "height"
    .end annotation
.end field

.field private hlsUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "hls_url"
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "host"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = false
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "language"
    .end annotation
.end field

.field private licence:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "licence"
    .end annotation
.end field

.field private likeCount:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "like_count"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "name"
    .end annotation
.end field

.field private originUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "origin_url"
    .end annotation
.end field

.field private startPosition:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "start_position"
    .end annotation
.end field

.field private streamType:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "stream_type"
    .end annotation
.end field

.field private subChannelAvatarUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_channel_avatar"
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_channel_name"
    .end annotation
.end field

.field private subChannelUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sub_channel_url"
    .end annotation
.end field

.field private supportInfo:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "support_info"
    .end annotation
.end field

.field private textualUploadDate:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "textual_upload_date"
    .end annotation
.end field

.field private thumbnailUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "thumbnail_url"
    .end annotation
.end field

.field private uploaderAvatarUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "uploader_avatar_url"
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "uploader_name"
    .end annotation
.end field

.field private uploaderSubscriberCount:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "uploader_subscriber_count"
    .end annotation
.end field

.field private uploaderUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "uploader_url"
    .end annotation
.end field

.field private uploaderVerified:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "uploader_verified"
    .end annotation
.end field

.field private videoStream:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_stream"
    .end annotation
.end field

.field private viewCount:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "view_count"
    .end annotation
.end field

.field private width:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->thumbnailUrl:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->duration:J

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->viewCount:J

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->likeCount:J

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dislikeCount:J

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderAvatarUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderVerified:Z

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderSubscriberCount:J

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelAvatarUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dashMpdUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->hlsUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->startPosition:J

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->licence:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->supportInfo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgeLimit()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->ageLimit:I

    return p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dashMpdUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getDateModified()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dateModified:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDislikeCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dislikeCount:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->height:I

    return p0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->hlsUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->host:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->licence:Ljava/lang/String;

    return-object p0
.end method

.method public getLikeCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->likeCount:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->originUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->startPosition:J

    return-wide v0
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->streamType:Ljava/lang/String;

    return-object p0
.end method

.method public getSubChannelAvatarUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelAvatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->supportInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->textualUploadDate:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->thumbnailUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUploaderAvatarUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderAvatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getUploaderSubscriberCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderSubscriberCount:J

    return-wide v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoStream()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->videoStream:Ljava/lang/String;

    return-object p0
.end method

.method public getViewCount()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->viewCount:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->width:I

    return p0
.end method

.method public isUploaderVerified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderVerified:Z

    return p0
.end method

.method public setAgeLimit(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->ageLimit:I

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->category:Ljava/lang/String;

    return-void
.end method

.method public setDashMpdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dashMpdUrl:Ljava/lang/String;

    return-void
.end method

.method public setDateModified(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dateModified:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->description:Ljava/lang/String;

    return-void
.end method

.method public setDislikeCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->dislikeCount:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->duration:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->height:I

    return-void
.end method

.method public setHlsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->hlsUrl:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->host:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->id:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->language:Ljava/lang/String;

    return-void
.end method

.method public setLicence(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->licence:Ljava/lang/String;

    return-void
.end method

.method public setLikeCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->likeCount:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->name:Ljava/lang/String;

    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->originUrl:Ljava/lang/String;

    return-void
.end method

.method public setStartPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->startPosition:J

    return-void
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->streamType:Ljava/lang/String;

    return-void
.end method

.method public setSubChannelAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setSubChannelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelName:Ljava/lang/String;

    return-void
.end method

.method public setSubChannelUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->subChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public setSupportInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->supportInfo:Ljava/lang/String;

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderSubscriberCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderSubscriberCount:J

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->uploaderVerified:Z

    return-void
.end method

.method public setVideoStream(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->videoStream:Ljava/lang/String;

    return-void
.end method

.method public setViewCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->viewCount:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/YoutubeData;->width:I

    return-void
.end method

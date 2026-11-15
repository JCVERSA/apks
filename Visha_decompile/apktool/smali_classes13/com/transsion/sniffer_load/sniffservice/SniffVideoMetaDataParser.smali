.class public Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "visha_SniffVideoParser"


# instance fields
.field private bHasAudio:Z

.field private bHasVideo:Z

.field private bParsed:Z

.field private height:I

.field private mimeType:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoResolution(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_SD:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, v0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    const/16 v1, 0x438

    if-lt p0, v1, :cond_0

    .line 2
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_1080P:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d0

    if-lt p0, v1, :cond_1

    .line 3
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_720P:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e0

    if-lt p0, v1, :cond_2

    .line 4
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_480P:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x168

    if-lt p0, v1, :cond_3

    .line 5
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_360P:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->height:I

    return p0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 2

    .line 6
    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_SD:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, v0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    .line 7
    iget-boolean v1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bParsed:Z

    if-nez v1, :cond_0

    .line 8
    const-string p0, "must parse video first!"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "visha_SniffVideoParser"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->height:I

    const/16 v1, 0x438

    if-lt p0, v1, :cond_1

    .line 10
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_1080P:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v1, 0x2d0

    if-lt p0, v1, :cond_2

    .line 11
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_720P:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x1e0

    if-lt p0, v1, :cond_3

    .line 12
    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_480P:Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->width:I

    return p0
.end method

.method public hasAudioTrack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bParsed:Z

    if-nez v0, :cond_0

    const-string p0, "must parse video first!"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_SniffVideoParser"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bHasAudio:Z

    return p0
.end method

.method public hasVideoTrack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bParsed:Z

    if-nez v0, :cond_0

    const-string p0, "must parse video first!"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_SniffVideoParser"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bHasVideo:Z

    return p0
.end method

.method public parseSync(Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_3

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->mimeType:Ljava/lang/String;

    invoke-static {v5}, Lr0a;->i(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->mimeType:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "height"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->height:I

    const-string v5, "width"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->width:I

    iput-boolean v3, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bHasVideo:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->mimeType:Ljava/lang/String;

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bHasAudio:Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-boolean v3, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->bParsed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return v1
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffVideoMetaDataParser;->width:I

    return-void
.end method

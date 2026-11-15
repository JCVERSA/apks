.class public final Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accelerateSpeed:J

.field public collectionImage:Ljava/lang/String;

.field public collectionName:Ljava/lang/String;

.field public contentId:Ljava/lang/String;

.field public doneSize:J

.field public doneSizeStr:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public isSelected:Z

.field public mediaType:Ljava/lang/Integer;

.field public nname:Ljava/lang/String;

.field public priority:I

.field public resolution:I

.field public speed:J

.field public status:I

.field public title:Ljava/lang/String;

.field public totalSize:J

.field public totalSizeStr:Ljava/lang/String;

.field public videoid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    return-void
.end method


# virtual methods
.method public copyArgs(Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->videoid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->videoid:Ljava/lang/String;

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->contentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->contentId:Ljava/lang/String;

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->image:Ljava/lang/String;

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->title:Ljava/lang/String;

    iget-wide v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSize:J

    iput-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSize:J

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSizeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSizeStr:Ljava/lang/String;

    iget v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    iput v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    iget v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->resolution:I

    iput v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->resolution:I

    iget-wide v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSize:J

    iput-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSize:J

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSizeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSizeStr:Ljava/lang/String;

    iget-wide v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->speed:J

    iput-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->speed:J

    iget-wide v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->accelerateSpeed:J

    iput-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->accelerateSpeed:J

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->extra:Ljava/lang/String;

    iget v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->priority:I

    iput v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->priority:I

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->collectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->collectionName:Ljava/lang/String;

    iget-object v0, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->collectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->collectionImage:Ljava/lang/String;

    iget-object p1, p1, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->mediaType:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->mediaType:Ljava/lang/Integer;

    return-void
.end method

.method public getAccelerateSpeed()J
    .locals 2

    iget-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->accelerateSpeed:J

    return-wide v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method public getDoneSize()J
    .locals 2

    iget-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSize:J

    return-wide v0
.end method

.method public getDoneSizeStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSizeStr:Ljava/lang/String;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->image:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->priority:I

    return p0
.end method

.method public getResolution()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->resolution:I

    return p0
.end method

.method public getSpeed()J
    .locals 2

    iget-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->speed:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSize:J

    return-wide v0
.end method

.method public getTotalSizeStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSizeStr:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->videoid:Ljava/lang/String;

    return-object p0
.end method

.method public isCompleted()Z
    .locals 1

    iget p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDownloading()Z
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAccelerateSpeed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->accelerateSpeed:J

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setDoneSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSize:J

    return-void
.end method

.method public setDoneSizeStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->doneSizeStr:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->extra:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->image:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->priority:I

    return-void
.end method

.method public setResolution(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->resolution:I

    return-void
.end method

.method public setSpeed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->speed:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSize:J

    return-void
.end method

.method public setTotalSizeStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->totalSizeStr:Ljava/lang/String;

    return-void
.end method

.method public setVideoid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/downloadsdk/DownloadTaskInfo;->videoid:Ljava/lang/String;

    return-void
.end method

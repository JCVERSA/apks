.class public Lcom/transsion/videodownloader/model/VideoTaskItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mCoverPath:Ljava/lang/String;

.field private mCoverUrl:Ljava/lang/String;

.field private mCurTs:I

.field private mDownloadCreateTime:J

.field private mDownloadSize:J

.field private mErrorCode:I

.field private mFileHash:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFinalFileName:Ljava/lang/String;

.field private mFinalUrl:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mIsCompleted:Z

.field private mIsInDatabase:Z

.field private mLastUpdateTime:J

.field private mM3U8:Lpv5;

.field private mMimeType:Ljava/lang/String;

.field private volatile mPaused:Z

.field private mPercent:F

.field private mSaveDir:Ljava/lang/String;

.field private mSniffId:Ljava/lang/String;

.field private mSpeed:F

.field private mTaskState:I

.field private mTitle:Ljava/lang/String;

.field private mTotalSize:J

.field private mTotalTs:I

.field private mTsSavePath:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private mVideoType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mUrl:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverUrl:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTitle:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mGroupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadCreateTime:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setDownloadCreateTime(J)V

    iget v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setMimeType(Ljava/lang/String;)V

    iget v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mErrorCode:I

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setErrorCode(I)V

    iget v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mVideoType:I

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setVideoType(I)V

    iget v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPercent:F

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setPercent(F)V

    iget-wide v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadSize:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setDownloadSize(J)V

    iget v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSpeed:F

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setSpeed(F)V

    iget-wide v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalSize:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTotalSize(J)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileHash(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setCoverUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setCoverPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setGroupName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFinalFileName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSniffId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFinalFileName(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/transsion/videodownloader/model/VideoTaskItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/videodownloader/model/VideoTaskItem;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverPath:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCurTs()I
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCurTs:I

    return p0
.end method

.method public getDownloadCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadCreateTime:J

    return-wide v0
.end method

.method public getDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadSize:J

    return-wide v0
.end method

.method public getDownloadSizeString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadSize:J

    invoke-static {v0, v1}, Li7c;->e(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mErrorCode:I

    return p0
.end method

.method public getFileHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileHash:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFinalFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFinalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getLastUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getM3U8()Lpv5;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mM3U8:Lpv5;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getPercent()F
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPercent:F

    return p0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPercent:F

    invoke-static {p0}, Lfrb;->e(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSaveDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSaveDir:Ljava/lang/String;

    return-object p0
.end method

.method public getSniffId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSniffId:Ljava/lang/String;

    return-object p0
.end method

.method public getSpeed()F
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSpeed:F

    return p0
.end method

.method public getSpeedString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSpeed:F

    float-to-long v1, p0

    invoke-static {v1, v2}, Li7c;->e(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTaskState()I
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalSize:J

    return-wide v0
.end method

.method public getTotalTs()I
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalTs:I

    return p0
.end method

.method public getTransPeercent()F
    .locals 1

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPercent:F

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getTsSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTsSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoType()I
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mVideoType:I

    return p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mIsCompleted:Z

    return p0
.end method

.method public isErrorState()Z
    .locals 1

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHlsType()Z
    .locals 1

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mVideoType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInDatabase()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mIsInDatabase:Z

    return p0
.end method

.method public isInitialTask()Z
    .locals 0

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInterruptTask()Z
    .locals 1

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPaused:Z

    return p0
.end method

.method public isPendingTask()Z
    .locals 2

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isRunningTask()Z
    .locals 1

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccessState()Z
    .locals 1

    iget p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadCreateTime:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mMimeType:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mErrorCode:I

    iput v3, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mVideoType:I

    iput v3, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    iput-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mM3U8:Lpv5;

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSpeed:F

    iput v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPercent:F

    iput-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadSize:J

    iput-wide v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalSize:J

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSniffId:Ljava/lang/String;

    return-void
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverPath:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setCurTs(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCurTs:I

    return-void
.end method

.method public setDownloadCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadCreateTime:J

    return-void
.end method

.method public setDownloadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadSize:J

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mErrorCode:I

    return-void
.end method

.method public setFileHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileHash:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFinalFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalFileName:Ljava/lang/String;

    return-void
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalUrl:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setIsCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mIsCompleted:Z

    return-void
.end method

.method public setIsInDatabase(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mIsInDatabase:Z

    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mLastUpdateTime:J

    return-void
.end method

.method public setM3U8(Lpv5;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mM3U8:Lpv5;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPaused:Z

    return-void
.end method

.method public setPercent(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPercent:F

    return-void
.end method

.method public setSaveDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSaveDir:Ljava/lang/String;

    return-void
.end method

.method public setSniffId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSniffId:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSpeed:F

    return-void
.end method

.method public setTaskState(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalSize:J

    return-void
.end method

.method public setTotalTs(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalTs:I

    return-void
.end method

.method public setTsSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTsSavePath:Ljava/lang/String;

    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mVideoType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoTaskItem{mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCoverUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCoverPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCoverPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mGroupName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDownloadCreateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mTaskState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTaskState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFinalUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mErrorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mErrorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mVideoType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mM3U8="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mM3U8:Lpv5;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalTs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mCurTs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSpeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSpeed:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mPercent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPercent:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mDownloadSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mDownloadSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTotalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mFileHash=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileHash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSaveDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSaveDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCompleted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mIsCompleted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsInDatabase="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mIsInDatabase:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLastUpdateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mLastUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFilePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPaused="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mPaused:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFinalFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mFinalFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSniffId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mSniffId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTsSavePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/videodownloader/model/VideoTaskItem;->mTsSavePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

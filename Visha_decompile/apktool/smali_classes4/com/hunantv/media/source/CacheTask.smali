.class public Lcom/hunantv/media/source/CacheTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/source/CacheTask$Status;
    }
.end annotation


# static fields
.field public static final TYPE_FLV:I = 0x2

.field public static final TYPE_M3U8:I = 0x0

.field public static final TYPE_MP4:I = 0x1

.field public static final TYPE_UNKNOW:I = -0x1


# instance fields
.field private volatile mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

.field private mDetailCode:I

.field private mErrorCode:I

.field private mFileName:Ljava/lang/String;

.field private mFullPath:Ljava/lang/String;

.field private mStartTimeMs:I

.field protected mStreamId:I

.field private mTaskID:Ljava/lang/String;

.field private mTempPath:Ljava/lang/String;

.field private mTsNames:[Ljava/lang/String;

.field private mTsNum:I

.field private mType:I

.field protected mUrl:Ljava/lang/String;

.field protected mVid:Ljava/lang/String;

.field private mWriteM3u8:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hunantv/media/source/CacheTask$Status;->NONE:Lcom/hunantv/media/source/CacheTask$Status;

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/source/CacheTask;->mWriteM3u8:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/source/CacheTask;->mType:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mTsNames:[Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/source/CacheTask;->mVid:Ljava/lang/String;

    iput p3, p0, Lcom/hunantv/media/source/CacheTask;->mStreamId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hunantv/media/source/CacheTask$Status;->NONE:Lcom/hunantv/media/source/CacheTask$Status;

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/source/CacheTask;->mType:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mTsNames:[Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/source/CacheTask;->mVid:Ljava/lang/String;

    iput p3, p0, Lcom/hunantv/media/source/CacheTask;->mStreamId:I

    iput p4, p0, Lcom/hunantv/media/source/CacheTask;->mWriteM3u8:I

    return-void
.end method


# virtual methods
.method public getCurrentStatus()Lcom/hunantv/media/source/CacheTask$Status;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

    return-object p0
.end method

.method public getDetailCode()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/CacheTask;->mDetailCode:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/CacheTask;->mErrorCode:I

    return p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mFullPath:Ljava/lang/String;

    return-object p0
.end method

.method public getStartTimeMs()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/CacheTask;->mStartTimeMs:I

    return p0
.end method

.method public getStreamId()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/CacheTask;->mStreamId:I

    return p0
.end method

.method public getTaskID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mTaskID:Ljava/lang/String;

    return-object p0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTsNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mTsNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getTsNum()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/CacheTask;->mTsNum:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/CacheTask;->mType:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mVid:Ljava/lang/String;

    return-object p0
.end method

.method public getWriteM3u8()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/CacheTask;->mWriteM3u8:I

    return p0
.end method

.method public isFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

    sget-object v0, Lcom/hunantv/media/source/CacheTask$Status;->FAILED:Lcom/hunantv/media/source/CacheTask$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStart()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

    sget-object v0, Lcom/hunantv/media/source/CacheTask$Status;->NONE:Lcom/hunantv/media/source/CacheTask$Status;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

    sget-object v0, Lcom/hunantv/media/source/CacheTask$Status;->SUCCESS:Lcom/hunantv/media/source/CacheTask$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 3

    sget-object v0, Lcom/hunantv/media/source/CacheTask$Status;->NONE:Lcom/hunantv/media/source/CacheTask$Status;

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mTempPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/source/CacheTask;->mTsNum:I

    iput v1, p0, Lcom/hunantv/media/source/CacheTask;->mErrorCode:I

    iput v1, p0, Lcom/hunantv/media/source/CacheTask;->mDetailCode:I

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mFullPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mFileName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/source/CacheTask;->mType:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/source/CacheTask;->mTsNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/source/CacheTask;->mTaskID:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setCurrentStatus(Lcom/hunantv/media/source/CacheTask$Status;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/CacheTask$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDetailCode(I)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/CacheTask;->mDetailCode:I

    return-object p0
.end method

.method public setErrorCode(I)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/CacheTask;->mErrorCode:I

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setFullPath(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mFullPath:Ljava/lang/String;

    return-object p0
.end method

.method public setStartTimeMs(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/CacheTask;->mStartTimeMs:I

    return-void
.end method

.method public setStreamId(I)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/CacheTask;->mStreamId:I

    return-object p0
.end method

.method public setTaskID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mTaskID:Ljava/lang/String;

    return-void
.end method

.method public setTempPath(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mTempPath:Ljava/lang/String;

    return-object p0
.end method

.method public setTsNames([Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mTsNames:[Ljava/lang/String;

    return-object p0
.end method

.method public setTsNum(I)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/CacheTask;->mTsNum:I

    return-object p0
.end method

.method public setType(I)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/CacheTask;->mType:I

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/CacheTask;->mVid:Ljava/lang/String;

    return-object p0
.end method

.method public setWriteM3u8(I)Lcom/hunantv/media/source/CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/CacheTask;->mWriteM3u8:I

    return-object p0
.end method

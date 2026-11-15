.class public Lcom/hunantv/media/source/M3u8CacheTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/source/M3u8CacheTask$Status;
    }
.end annotation


# instance fields
.field private mCurrentStatus:Lcom/hunantv/media/source/M3u8CacheTask$Status;

.field private mFullPath:Ljava/lang/String;

.field private mM3u8Name:Ljava/lang/String;

.field private mStreamId:I

.field public mTaskID:Ljava/lang/String;

.field private mTsNames:[Ljava/lang/String;

.field private mTsNum:I

.field private mUrl:Ljava/lang/String;

.field private mVid:Ljava/lang/String;

.field private mWriteM3u8:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hunantv/media/source/M3u8CacheTask$Status;->NONE:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    iput-object v0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mTsNames:[Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mVid:Ljava/lang/String;

    iput p3, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mStreamId:I

    iput p4, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mTsNum:I

    iput-boolean p5, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mWriteM3u8:Z

    return-void
.end method


# virtual methods
.method public getCurrentStatus()Lcom/hunantv/media/source/M3u8CacheTask$Status;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    return-object p0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mFullPath:Ljava/lang/String;

    return-object p0
.end method

.method public getM3u8Name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mM3u8Name:Ljava/lang/String;

    return-object p0
.end method

.method public getStreamId()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mStreamId:I

    return p0
.end method

.method public getTsNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mTsNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getTsNum()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mTsNum:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mVid:Ljava/lang/String;

    return-object p0
.end method

.method public isFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    sget-object v0, Lcom/hunantv/media/source/M3u8CacheTask$Status;->FAILED:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    sget-object v0, Lcom/hunantv/media/source/M3u8CacheTask$Status;->SUCCESS:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWriteM3u8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mWriteM3u8:Z

    return p0
.end method

.method public setCurrentStatus(Lcom/hunantv/media/source/M3u8CacheTask$Status;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mCurrentStatus:Lcom/hunantv/media/source/M3u8CacheTask$Status;

    return-object p0
.end method

.method public setFullPath(Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mFullPath:Ljava/lang/String;

    return-object p0
.end method

.method public setM3u8Name(Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mM3u8Name:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamId(I)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mStreamId:I

    return-object p0
.end method

.method public setTsNames([Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mTsNames:[Ljava/lang/String;

    return-object p0
.end method

.method public setTsNum(I)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mTsNum:I

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mVid:Ljava/lang/String;

    return-object p0
.end method

.method public setWriteM3u8(Z)Lcom/hunantv/media/source/M3u8CacheTask;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/source/M3u8CacheTask;->mWriteM3u8:Z

    return-object p0
.end method

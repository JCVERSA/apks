.class public Lcom/aliyun/player/source/SourceBase;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private mCoverPath:Ljava/lang/String;

.field protected mForceQuality:Z

.field protected mQuality:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/aliyun/player/source/SourceBase;->mForceQuality:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mCoverPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mQuality:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isForceQuality()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/aliyun/player/source/SourceBase;->mForceQuality:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/SourceBase;->mCoverPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/SourceBase;->mTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/aliyun/player/source/UrlSource;
.super Lcom/aliyun/player/source/SourceBase;
.source "source.java"


# instance fields
.field private mCacheFilePath:Ljava/lang/String;

.field private mOriginSize:J

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "AUTO"

    .line 10
    .line 11
    iput-object v0, p0, Lcom/aliyun/player/source/SourceBase;->mQuality:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/aliyun/player/source/SourceBase;->mForceQuality:Z

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getCacheFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCacheFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/UrlSource;->mCacheFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/player/source/UrlSource;->mOriginSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/UrlSource;->mUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

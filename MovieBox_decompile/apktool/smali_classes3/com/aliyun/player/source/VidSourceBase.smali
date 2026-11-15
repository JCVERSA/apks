.class public Lcom/aliyun/player/source/VidSourceBase;
.super Lcom/aliyun/player/source/SourceBase;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/source/VidSourceBase$OutputType;,
        Lcom/aliyun/player/source/VidSourceBase$StreamType;,
        Lcom/aliyun/player/source/VidSourceBase$ResultType;
    }
.end annotation


# instance fields
.field private mAuthTimeout:J

.field private mDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/Definition;",
            ">;"
        }
    .end annotation
.end field

.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

.field private mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

.field private mReAuthInfo:Ljava/lang/String;

.field private mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

.field private mStreamTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 14
    .line 15
    const-wide/16 v0, 0xe10

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getAuthTimeout()J
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected getDefinitionStr()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    .line 13
    .line 14
    sget-object v1, Lcom/aliyun/player/source/Definition;->DEFINITION_AUTO:Lcom/aliyun/player/source/Definition;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/aliyun/player/source/Definition;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/aliyun/player/source/Definition;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/aliyun/player/source/Definition;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ","

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x1

    .line 72
    if-le v1, v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int/2addr v1, v2

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 88
    return-object v0
.end method

.method protected getFormatStr()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/aliyun/player/source/MediaFormat;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/aliyun/player/source/MediaFormat;->getFormat()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ","

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x1

    .line 57
    if-le v1, v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-int/2addr v1, v2

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 73
    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputType()Lcom/aliyun/player/source/VidSourceBase$OutputType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getOutputTypeStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/source/VidSourceBase$OutputType;->getOutputType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getPlayConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/VidPlayerConfigGen;->genConfig()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getReAuthInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getReAuthInfoStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResultType()Lcom/aliyun/player/source/VidSourceBase$ResultType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getResultTypeStr()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/source/VidSourceBase$ResultType;->getResultType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getStreamType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getStreamTypeStr()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/aliyun/player/source/VidSourceBase$StreamType;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/aliyun/player/source/VidSourceBase$StreamType;->getStreamType()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ","

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-le v1, v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    sub-int/2addr v1, v2

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public setAuthTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mAuthTimeout:J

    .line 2
    .line 3
    return-void
.end method

.method public setDefinition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/Definition;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mDefinitions:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mFormats:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setOutputType(Lcom/aliyun/player/source/VidSourceBase$OutputType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mOutputType:Lcom/aliyun/player/source/VidSourceBase$OutputType;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayConfig(Lcom/aliyun/player/VidPlayerConfigGen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mPlayConfig:Lcom/aliyun/player/VidPlayerConfigGen;

    .line 2
    .line 3
    return-void
.end method

.method public setReAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mReAuthInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResultType(Lcom/aliyun/player/source/VidSourceBase$ResultType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mResultType:Lcom/aliyun/player/source/VidSourceBase$ResultType;

    .line 2
    .line 3
    return-void
.end method

.method public setStreamType(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/aliyun/player/source/VidSourceBase$StreamType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/VidSourceBase;->mStreamTypes:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/aliyun/player/source/StsInfo;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/source/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getFormatStr()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

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
    iget-object v1, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

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


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeySecret:Ljava/lang/String;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mRegion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/StsInfo;->mSecurityToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeyId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mAccessKeySecret:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mFormats:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mRegion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/StsInfo;->mSecurityToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

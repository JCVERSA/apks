.class public Lcom/aliyun/player/source/LiveSts;
.super Lcom/aliyun/player/source/SourceBase;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;
    }
.end annotation


# instance fields
.field private mAccessKeyId:Ljava/lang/String;

.field private mAccessKeySecret:Ljava/lang/String;

.field private mApp:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mEncryptionType:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

.field private mRegion:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;

.field private mStream:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeyId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeySecret:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mApp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEncryptionTypeValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mEncryptionType:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;->NoEncryption:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mRegion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mSecurityToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStream()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mStream:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/LiveSts;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeyId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mAccessKeySecret:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mApp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEncryptionType(Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mEncryptionType:Lcom/aliyun/player/source/LiveSts$LiveEncryptionType;

    .line 2
    .line 3
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mRegion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSecurityToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mSecurityToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStream(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mStream:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/LiveSts;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/aliyun/player/bean/ErrorInfo;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private mCode:Lcom/aliyun/player/bean/ErrorCode;

.field private mExtra:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;


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


# virtual methods
.method public getCode()Lcom/aliyun/player/bean/ErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/bean/ErrorInfo;->mCode:Lcom/aliyun/player/bean/ErrorCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/bean/ErrorInfo;->mExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/bean/ErrorInfo;->mMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCode(Lcom/aliyun/player/bean/ErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/bean/ErrorInfo;->mCode:Lcom/aliyun/player/bean/ErrorCode;

    .line 2
    .line 3
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/bean/ErrorInfo;->mExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/bean/ErrorInfo;->mMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

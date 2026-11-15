.class public Lcom/aliyun/player/source/BitStreamSource;
.super Lcom/aliyun/player/source/SourceBase;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/source/BitStreamSource$SeekCallback;,
        Lcom/aliyun/player/source/BitStreamSource$ReadCallback;
    }
.end annotation


# static fields
.field public static final EINVAL:I = 0x16

.field public static final EIO:I = 0x5

.field public static final SEEK_CUR:I = 0x1

.field public static final SEEK_END:I = 0x2

.field public static final SEEK_SET:I = 0x0

.field public static final SEEK_SIZE:I = 0x10000


# instance fields
.field private mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

.field private mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/aliyun/player/source/SourceBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/player/source/BitStreamSource;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/aliyun/player/source/BitStreamSource;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

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
    return-void
.end method


# virtual methods
.method public getReadCallback()Lcom/aliyun/player/source/BitStreamSource$ReadCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/BitStreamSource;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeekCallback()Lcom/aliyun/player/source/BitStreamSource$SeekCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/source/BitStreamSource;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public setReadCallback(Lcom/aliyun/player/source/BitStreamSource$ReadCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/BitStreamSource;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setSeekCallback(Lcom/aliyun/player/source/BitStreamSource$SeekCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/player/source/BitStreamSource;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    .line 2
    .line 3
    return-void
.end method

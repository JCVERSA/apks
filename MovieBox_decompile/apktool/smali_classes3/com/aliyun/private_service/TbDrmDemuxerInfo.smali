.class public Lcom/aliyun/private_service/TbDrmDemuxerInfo;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private contextAddr:J

.field private createAddr:J

.field private releaseAddr:J


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

.method private setContextAddr(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->contextAddr:J

    .line 2
    .line 3
    return-void
.end method

.method private setCreateAddr(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->createAddr:J

    .line 2
    .line 3
    return-void
.end method

.method private setReleaseAddr(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->releaseAddr:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getContextAddr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->contextAddr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCreateAddr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->createAddr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getReleaseAddr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/aliyun/private_service/TbDrmDemuxerInfo;->releaseAddr:J

    .line 2
    .line 3
    return-wide v0
.end method

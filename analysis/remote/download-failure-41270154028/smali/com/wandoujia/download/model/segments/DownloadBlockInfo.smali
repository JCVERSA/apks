.class public Lcom/wandoujia/download/model/segments/DownloadBlockInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final WDJ_CDN_HOST:Ljava/lang/String; = "dservice.wdjcdn.com"

.field private static final serialVersionUID:J = -0x4a485144c1c2576bL


# instance fields
.field private blockId:I

.field private currentSize:J

.field private endPos:J

.field private startPos:J

.field private usedUrlIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->blockId:I

    iput-wide p2, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->startPos:J

    iput-wide p4, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->endPos:J

    iput-wide p6, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->currentSize:J

    iput p8, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->usedUrlIndex:I

    return-void
.end method


# virtual methods
.method public getBlockId()I
    .locals 1

    iget v0, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->blockId:I

    return v0
.end method

.method public getCurrentSize()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->currentSize:J

    return-wide v0
.end method

.method public getEndPos()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->endPos:J

    return-wide v0
.end method

.method public getStartPos()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->startPos:J

    return-wide v0
.end method

.method public getUsedUrlIndex()I
    .locals 1

    iget v0, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->usedUrlIndex:I

    return v0
.end method

.method public setCurrentSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->currentSize:J

    return-void
.end method

.method public setEndPos(J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->endPos:J

    return-void
.end method

.method public setUsedUrlIndex(I)V
    .locals 0

    iput p1, p0, Lcom/wandoujia/download/model/segments/DownloadBlockInfo;->usedUrlIndex:I

    return-void
.end method

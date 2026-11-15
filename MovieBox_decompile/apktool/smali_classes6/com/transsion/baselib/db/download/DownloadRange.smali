.class public final Lcom/transsion/baselib/db/download/DownloadRange;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014J\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0014J\u0008\u00100\u001a\u00020\u000eH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u0011\u0010$\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0016R\u001e\u0010&\u001a\u00020 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001e\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0007\"\u0004\u0008,\u0010\tR\u001e\u0010-\u001a\u00020 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\'\"\u0004\u0008/\u0010)\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/baselib/db/download/DownloadRange;",
        "",
        "<init>",
        "()V",
        "threadId",
        "",
        "getThreadId",
        "()I",
        "setThreadId",
        "(I)V",
        "rangeId",
        "getRangeId",
        "setRangeId",
        "resourceId",
        "",
        "getResourceId",
        "()Ljava/lang/String;",
        "setResourceId",
        "(Ljava/lang/String;)V",
        "start",
        "",
        "getStart",
        "()J",
        "setStart",
        "(J)V",
        "end",
        "getEnd",
        "setEnd",
        "progress",
        "getProgress",
        "setProgress",
        "contains",
        "",
        "position",
        "isRangeDownloadSuccess",
        "totalProgress",
        "rangeSize",
        "getRangeSize",
        "isDownloading",
        "()Z",
        "setDownloading",
        "(Z)V",
        "threadIndex",
        "getThreadIndex",
        "setThreadIndex",
        "reDownload",
        "getReDownload",
        "setReDownload",
        "toString",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private end:J

.field private volatile isDownloading:Z

.field private volatile progress:J

.field private rangeId:I

.field private reDownload:Z

.field private resourceId:Ljava/lang/String;

.field private start:J

.field private threadId:I

.field private threadIndex:I


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
.method public final contains(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    .line 4
    .line 5
    cmp-long v2, p1, v2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    cmp-long p1, v0, p1

    .line 11
    .line 12
    if-gtz p1, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    :cond_0
    return v3
.end method

.method public final getEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRangeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->rangeId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRangeSize()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public final getReDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->reDownload:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getThreadId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getThreadIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final isDownloading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRangeDownloadSuccess()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    .line 6
    .line 7
    sub-long/2addr v2, v4

    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final setDownloading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    .line 2
    .line 3
    return-void
.end method

.method public final setProgress(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRangeId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->rangeId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setReDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->reDownload:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    .line 2
    .line 3
    return-void
.end method

.method public final setThreadId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setThreadIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadId:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->rangeId:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->resourceId:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    .line 10
    .line 11
    iget-wide v7, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    .line 12
    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v10, "DownloadRange {threadId="

    .line 19
    .line 20
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", rangeId="

    .line 27
    .line 28
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", resourceId="

    .line 35
    .line 36
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", start="

    .line 43
    .line 44
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", end="

    .line 51
    .line 52
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", progress="

    .line 59
    .line 60
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "}"

    .line 67
    .line 68
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method public final totalProgress()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.class public Lcom/transsion/socket/internal/SocketOutputStream;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# instance fields
.field private MAX_ADD_COUNT:I

.field private mOnceTotalCount:J

.field private mRelCount:J

.field private mSkip:Z

.field private stopCount:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const p1, 0x3fffffff    # 1.9999999f

    iput p1, p0, Lcom/transsion/socket/internal/SocketOutputStream;->MAX_ADD_COUNT:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mRelCount:J

    iput-wide v0, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mOnceTotalCount:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/socket/internal/SocketOutputStream;->stopCount:Z

    iput-boolean p1, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mSkip:Z

    return-void
.end method


# virtual methods
.method public getOutputSize()J
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/socket/internal/SocketOutputStream;->stopCount:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mOnceTotalCount:J

    return-wide v0

    :cond_0
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    iget v1, p0, Lcom/transsion/socket/internal/SocketOutputStream;->MAX_ADD_COUNT:I

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/DataOutputStream;->written:I

    iget-wide v2, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mRelCount:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mRelCount:J

    :goto_0
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    iget v2, p0, Lcom/transsion/socket/internal/SocketOutputStream;->MAX_ADD_COUNT:I

    if-le v0, v2, :cond_1

    iput v1, p0, Ljava/io/DataOutputStream;->written:I

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mRelCount:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public resetSendTraffic()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mRelCount:J

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/DataOutputStream;->written:I

    iput-wide v0, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mOnceTotalCount:J

    invoke-virtual {p0, v2}, Lcom/transsion/socket/internal/SocketOutputStream;->setStopCount(Z)V

    return-void
.end method

.method public setStopCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/internal/SocketOutputStream;->stopCount:Z

    return-void
.end method

.method public stopSendCount()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/socket/internal/SocketOutputStream;->getOutputSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/socket/internal/SocketOutputStream;->mOnceTotalCount:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/socket/internal/SocketOutputStream;->setStopCount(Z)V

    return-void
.end method

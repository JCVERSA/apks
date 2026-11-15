.class public Lcom/transsion/socket/internal/SocketInputStream;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# instance fields
.field private mCIS:Lcom/transsion/socket/internal/CountInputStream;

.field private mIS:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lcom/transsion/socket/internal/CountInputStream;

    invoke-direct {v0, p1}, Lcom/transsion/socket/internal/CountInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/transsion/socket/internal/CountInputStream;

    iput-object v0, p0, Lcom/transsion/socket/internal/SocketInputStream;->mCIS:Lcom/transsion/socket/internal/CountInputStream;

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketInputStream;->mIS:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getInputSize()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketInputStream;->mCIS:Lcom/transsion/socket/internal/CountInputStream;

    invoke-virtual {p0}, Lcom/transsion/socket/internal/CountInputStream;->getInputSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketInputStream;->mCIS:Lcom/transsion/socket/internal/CountInputStream;

    iget-wide v1, v0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketInputStream;->mIS:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public resetReceiveTraffic()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketInputStream;->mCIS:Lcom/transsion/socket/internal/CountInputStream;

    invoke-virtual {p0}, Lcom/transsion/socket/internal/CountInputStream;->resetCount()V

    return-void
.end method

.method public stopReceiveCount()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/socket/internal/SocketInputStream;->mCIS:Lcom/transsion/socket/internal/CountInputStream;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/socket/internal/CountInputStream;->setStopCount(Z)V

    return-void
.end method

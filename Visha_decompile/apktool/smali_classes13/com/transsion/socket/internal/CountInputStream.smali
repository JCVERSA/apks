.class public Lcom/transsion/socket/internal/CountInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field mCount:J

.field private mIn:Ljava/io/InputStream;

.field private mSkipCount:Z

.field tmp:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/socket/internal/CountInputStream;->tmp:I

    iput-boolean v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mSkipCount:Z

    iput-object p1, p0, Lcom/transsion/socket/internal/CountInputStream;->mIn:Ljava/io/InputStream;

    return-void
.end method

.method private increase(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mSkipCount:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelSkip()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mSkipCount:Z

    return-void
.end method

.method public flagSkip()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mSkipCount:Z

    return-void
.end method

.method public getInputSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/transsion/socket/internal/CountInputStream;->tmp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/transsion/socket/internal/CountInputStream;->mSkipCount:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    :cond_1
    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mIn:Ljava/io/InputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iput p1, p0, Lcom/transsion/socket/internal/CountInputStream;->tmp:I

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/socket/internal/CountInputStream;->increase(I)V

    .line 6
    iget p0, p0, Lcom/transsion/socket/internal/CountInputStream;->tmp:I

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iput p1, p0, Lcom/transsion/socket/internal/CountInputStream;->tmp:I

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/socket/internal/CountInputStream;->increase(I)V

    .line 9
    iget p0, p0, Lcom/transsion/socket/internal/CountInputStream;->tmp:I

    return p0
.end method

.method public resetCount()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/socket/internal/CountInputStream;->mCount:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/socket/internal/CountInputStream;->setStopCount(Z)V

    return-void
.end method

.method public setStopCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/internal/CountInputStream;->mSkipCount:Z

    return-void
.end method

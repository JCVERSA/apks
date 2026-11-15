.class public Lcom/amazonaws/util/LengthCheckInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "source.java"


# instance fields
.field private final a:J

.field private final b:Z

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p2, v0

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    iput-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->a:J

    .line 11
    .line 12
    iput-boolean p4, p0, Lcom/amazonaws/util/LengthCheckInputStream;->b:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method private l(Z)V
    .locals 5

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/amazonaws/util/LengthCheckInputStream;->a:J

    .line 8
    .line 9
    cmp-long p1, v1, v3

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Data read ("

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ") has a different length than the expected ("

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->a:J

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 53
    .line 54
    iget-wide v3, p0, Lcom/amazonaws/util/LengthCheckInputStream;->a:J

    .line 55
    .line 56
    cmp-long p1, v1, v3

    .line 57
    .line 58
    if-gtz p1, :cond_2

    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :cond_2
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "More data read ("

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 74
    .line 75
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, ") than expected ("

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->a:J

    .line 84
    .line 85
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method


# virtual methods
.method public mark(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->d:J

    .line 7
    .line 8
    return-void
.end method

.method public read()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazonaws/util/LengthCheckInputStream;->l(Z)V

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result p1

    .line 5
    iget-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    if-ltz p1, :cond_0

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazonaws/util/LengthCheckInputStream;->l(Z)V

    return p1
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->markSupported()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->d:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-boolean v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 16
    .line 17
    add-long/2addr v0, p1

    .line 18
    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->c:J

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/amazonaws/util/LengthCheckInputStream;->l(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-wide p1
.end method

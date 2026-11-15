.class public Lvt/b;
.super Lcom/transsion/transfer/androidasync/t;
.source "source.java"


# instance fields
.field g:J

.field h:J

.field i:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvt/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 10
    .line 11
    iput-wide p1, p0, Lvt/b;->g:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lvt/b;->g:J

    .line 6
    .line 7
    iget-wide v3, p0, Lvt/b;->h:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    int-to-long v3, v0

    .line 11
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lvt/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 16
    .line 17
    long-to-int v0, v0

    .line 18
    invoke-virtual {p2, v2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lvt/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lvt/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 28
    .line 29
    invoke-super {p0, p1, v1}, Lcom/transsion/transfer/androidasync/t;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lvt/b;->h:J

    .line 33
    .line 34
    iget-object p1, p0, Lvt/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    sub-int/2addr v0, p1

    .line 41
    int-to-long v3, v0

    .line 42
    add-long/2addr v1, v3

    .line 43
    iput-wide v1, p0, Lvt/b;->h:J

    .line 44
    .line 45
    iget-object p1, p0, Lvt/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 48
    .line 49
    .line 50
    iget-wide p1, p0, Lvt/b;->h:J

    .line 51
    .line 52
    iget-wide v0, p0, Lvt/b;->g:J

    .line 53
    .line 54
    cmp-long p1, p1, v0

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lvt/b;->M(Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method protected M(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lvt/b;->h:J

    .line 4
    .line 5
    iget-wide v2, p0, Lvt/b;->g:J

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/transfer/androidasync/http/filter/PrematureDataEndException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "End of data reached before content length was read: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Lvt/b;->h:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "/"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v1, p0, Lvt/b;->g:J

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " Paused: "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/t;->isPaused()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/PrematureDataEndException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

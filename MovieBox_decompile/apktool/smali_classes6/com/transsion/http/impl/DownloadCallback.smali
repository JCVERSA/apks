.class public abstract Lcom/transsion/http/impl/DownloadCallback;
.super Lcom/transsion/http/impl/q;
.source "source.java"


# instance fields
.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/http/impl/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x12c

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/transsion/http/impl/DownloadCallback;->f:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public A(ILjava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/transsion/http/impl/e;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/http/impl/e;-><init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract B(Ljava/lang/String;Ljava/io/File;)V
.end method

.method public m(I[BLjava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s(I[B)V
    .locals 0

    .line 1
    return-void
.end method

.method public w(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/transsion/http/impl/d;

    .line 2
    .line 3
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/http/impl/d;-><init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract x(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public y(ILjava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/transsion/http/impl/DownloadCallback;->e:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/transsion/http/impl/DownloadCallback;->f:J

    .line 10
    .line 11
    cmp-long p1, v2, v4

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/transsion/http/impl/DownloadCallback;->e:J

    .line 16
    .line 17
    new-instance p1, Lcom/transsion/http/impl/f;

    .line 18
    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p0

    .line 21
    move-object v4, p2

    .line 22
    move-wide v5, p3

    .line 23
    move-wide v7, p5

    .line 24
    invoke-direct/range {v2 .. v8}, Lcom/transsion/http/impl/f;-><init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;JJ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public abstract z(Ljava/lang/String;JJ)V
.end method

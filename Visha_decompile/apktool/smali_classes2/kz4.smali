.class public final Lkz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma9;


# instance fields
.field public final a:J

.field public final b:Lzq5;

.field public final c:Lzq5;

.field public d:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkz4;->d:J

    iput-wide p5, p0, Lkz4;->a:J

    new-instance p1, Lzq5;

    invoke-direct {p1}, Lzq5;-><init>()V

    iput-object p1, p0, Lkz4;->b:Lzq5;

    new-instance p2, Lzq5;

    invoke-direct {p2}, Lzq5;-><init>()V

    iput-object p2, p0, Lkz4;->c:Lzq5;

    const-wide/16 p5, 0x0

    invoke-virtual {p1, p5, p6}, Lzq5;->a(J)V

    invoke-virtual {p2, p3, p4}, Lzq5;->a(J)V

    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 4

    iget-object p0, p0, Lkz4;->b:Lzq5;

    invoke-virtual {p0}, Lzq5;->c()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lzq5;->b(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(JJ)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lkz4;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkz4;->b:Lzq5;

    invoke-virtual {v0, p1, p2}, Lzq5;->a(J)V

    iget-object p0, p0, Lkz4;->c:Lzq5;

    invoke-virtual {p0, p3, p4}, Lzq5;->a(J)V

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lkz4;->d:J

    return-void
.end method

.method public getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Lkz4;->a:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lkz4;->d:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 7

    iget-object v0, p0, Lkz4;->b:Lzq5;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lblb;->f(Lzq5;JZZ)I

    move-result v0

    new-instance v2, Lla9;

    iget-object v3, p0, Lkz4;->b:Lzq5;

    invoke-virtual {v3, v0}, Lzq5;->b(I)J

    move-result-wide v3

    iget-object v5, p0, Lkz4;->c:Lzq5;

    invoke-virtual {v5, v0}, Lzq5;->b(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lla9;-><init>(JJ)V

    iget-wide v3, v2, Lla9;->a:J

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lkz4;->b:Lzq5;

    invoke-virtual {p1}, Lzq5;->c()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lla9;

    iget-object p2, p0, Lkz4;->b:Lzq5;

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lzq5;->b(I)J

    move-result-wide v3

    iget-object p0, p0, Lkz4;->c:Lzq5;

    invoke-virtual {p0, v0}, Lzq5;->b(I)J

    move-result-wide v0

    invoke-direct {p1, v3, v4, v0, v1}, Lla9;-><init>(JJ)V

    new-instance p0, Lja9$a;

    invoke-direct {p0, v2, p1}, Lja9$a;-><init>(Lla9;Lla9;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lja9$a;

    invoke-direct {p0, v2}, Lja9$a;-><init>(Lla9;)V

    return-object p0
.end method

.method public getTimeUs(J)J
    .locals 2

    iget-object v0, p0, Lkz4;->c:Lzq5;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lblb;->f(Lzq5;JZZ)I

    move-result p1

    iget-object p0, p0, Lkz4;->b:Lzq5;

    invoke-virtual {p0, p1}, Lzq5;->b(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

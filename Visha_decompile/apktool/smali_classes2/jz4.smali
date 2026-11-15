.class public final Ljz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    array-length v0, p2

    if-lez v0, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Ljz4;->d:Z

    if-eqz v1, :cond_2

    aget-wide v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    new-array v4, v1, [J

    iput-object v4, p0, Ljz4;->a:[J

    new-array v1, v1, [J

    iput-object v1, p0, Ljz4;->b:[J

    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    iput-object p1, p0, Ljz4;->a:[J

    iput-object p2, p0, Ljz4;->b:[J

    :goto_2
    iput-wide p3, p0, Ljz4;->c:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Ljz4;->c:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 7

    iget-boolean v0, p0, Ljz4;->d:Z

    if-nez v0, :cond_0

    new-instance p0, Lja9$a;

    sget-object p1, Lla9;->c:Lla9;

    invoke-direct {p0, p1}, Lja9$a;-><init>(Lla9;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Ljz4;->b:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lblb;->i([JJZZ)I

    move-result v0

    new-instance v2, Lla9;

    iget-object v3, p0, Ljz4;->b:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Ljz4;->a:[J

    aget-wide v5, v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lla9;-><init>(JJ)V

    iget-wide v3, v2, Lla9;->a:J

    cmp-long p1, v3, p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ljz4;->b:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lla9;

    iget-object p2, p0, Ljz4;->b:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p0, p0, Ljz4;->a:[J

    aget-wide v0, p0, v0

    invoke-direct {p1, v3, v4, v0, v1}, Lla9;-><init>(JJ)V

    new-instance p0, Lja9$a;

    invoke-direct {p0, v2, p1}, Lja9$a;-><init>(Lla9;Lla9;)V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lja9$a;

    invoke-direct {p0, v2}, Lja9$a;-><init>(Lla9;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    iget-boolean p0, p0, Ljz4;->d:Z

    return p0
.end method

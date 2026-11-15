.class public final Lvx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja9;


# instance fields
.field public final a:Lwx3;

.field public final b:J


# direct methods
.method public constructor <init>(Lwx3;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvx3;->a:Lwx3;

    iput-wide p2, p0, Lvx3;->b:J

    return-void
.end method


# virtual methods
.method public final a(JJ)Lla9;
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget-object v0, p0, Lvx3;->a:Lwx3;

    iget v0, v0, Lwx3;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-wide v0, p0, Lvx3;->b:J

    add-long/2addr v0, p3

    new-instance p0, Lla9;

    invoke-direct {p0, p1, p2, v0, v1}, Lla9;-><init>(JJ)V

    return-object p0
.end method

.method public getDurationUs()J
    .locals 2

    iget-object p0, p0, Lvx3;->a:Lwx3;

    invoke-virtual {p0}, Lwx3;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lja9$a;
    .locals 9

    iget-object v0, p0, Lvx3;->a:Lwx3;

    iget-object v0, v0, Lwx3;->k:Lwx3$a;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lvx3;->a:Lwx3;

    iget-object v1, v0, Lwx3;->k:Lwx3$a;

    iget-object v2, v1, Lwx3$a;->a:[J

    iget-object v1, v1, Lwx3$a;->b:[J

    invoke-virtual {v0, p1, p2}, Lwx3;->i(J)J

    move-result-wide v3

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v0}, Lblb;->i([JJZZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    aget-wide v7, v2, v0

    :goto_0
    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v3, v1, v0

    :goto_1
    invoke-virtual {p0, v7, v8, v3, v4}, Lvx3;->a(JJ)Lla9;

    move-result-object v3

    iget-wide v6, v3, Lla9;->a:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_3

    array-length p1, v2

    sub-int/2addr p1, v5

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v0, v5

    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lvx3;->a(JJ)Lla9;

    move-result-object p0

    new-instance p1, Lja9$a;

    invoke-direct {p1, v3, p0}, Lja9$a;-><init>(Lla9;Lla9;)V

    return-object p1

    :cond_3
    :goto_2
    new-instance p0, Lja9$a;

    invoke-direct {p0, v3}, Lja9$a;-><init>(Lla9;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

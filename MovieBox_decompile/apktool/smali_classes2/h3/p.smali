.class public abstract Lh3/p;
.super Landroidx/media3/decoder/h;
.source "source.java"

# interfaces
.implements Lh3/k;


# instance fields
.field private a:Lh3/k;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/decoder/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(JLh3/k;J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Landroidx/media3/decoder/h;->timeUs:J

    .line 2
    .line 3
    iput-object p3, p0, Lh3/p;->a:Lh3/k;

    .line 4
    .line 5
    const-wide v0, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p3, p4, v0

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-wide p1, p4

    .line 16
    :goto_0
    iput-wide p1, p0, Lh3/p;->b:J

    .line 17
    .line 18
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/media3/decoder/h;->clear()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lh3/p;->a:Lh3/k;

    .line 6
    .line 7
    return-void
.end method

.method public getCues(J)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/p;->a:Lh3/k;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh3/k;

    .line 8
    .line 9
    iget-wide v1, p0, Lh3/p;->b:J

    .line 10
    .line 11
    sub-long/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Lh3/k;->getCues(J)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public getEventTime(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/p;->a:Lh3/k;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh3/k;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lh3/k;->getEventTime(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lh3/p;->b:J

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lh3/p;->a:Lh3/k;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh3/k;

    .line 8
    .line 9
    invoke-interface {v0}, Lh3/k;->getEventTimeCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lh3/p;->a:Lh3/k;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh3/k;

    .line 8
    .line 9
    iget-wide v1, p0, Lh3/p;->b:J

    .line 10
    .line 11
    sub-long/2addr p1, v1

    .line 12
    invoke-interface {v0, p1, p2}, Lh3/k;->getNextEventTimeIndex(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.class public final Llw9;
.super Lw44;
.source "SourceFile"


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(Lpk3;J)V
    .locals 2

    invoke-direct {p0, p1}, Lw44;-><init>(Lpk3;)V

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lzi;->a(Z)V

    iput-wide p2, p0, Llw9;->b:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 4

    invoke-super {p0}, Lw44;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Llw9;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    invoke-super {p0}, Lw44;->getPeekPosition()J

    move-result-wide v0

    iget-wide v2, p0, Llw9;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    invoke-super {p0}, Lw44;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Llw9;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

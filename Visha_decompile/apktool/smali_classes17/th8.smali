.class public abstract Lth8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JJ)J
    .locals 0

    div-long/2addr p0, p2

    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public static final b(J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const-wide/16 v0, 0x14

    invoke-static {p0, p1, v0, v1}, Lth8;->a(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x3e8

    cmp-long v4, p0, v2

    if-gez v4, :cond_2

    invoke-static {p0, p1, v0, v1}, Lth8;->a(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x7d0

    cmp-long v4, p0, v0

    if-gez v4, :cond_3

    const-wide/16 v0, 0xc8

    invoke-static {p0, p1, v0, v1}, Lth8;->a(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x1388

    cmp-long v6, p0, v4

    if-gez v6, :cond_4

    const-wide/16 v0, 0x1f4

    invoke-static {p0, p1, v0, v1}, Lth8;->a(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x2710

    cmp-long v6, p0, v6

    if-gez v6, :cond_5

    invoke-static {p0, p1, v2, v3}, Lth8;->a(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x4e20

    cmp-long v2, p0, v2

    if-gez v2, :cond_6

    invoke-static {p0, p1, v0, v1}, Lth8;->a(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_6
    const-wide/32 v0, 0xc350

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    invoke-static {p0, p1, v4, v5}, Lth8;->a(JJ)J

    move-result-wide v0

    :cond_7
    :goto_0
    return-wide v0
.end method

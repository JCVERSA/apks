.class public abstract Lkotlin/uuid/b;
.super Lkotlin/uuid/a;
.source "SourceFile"


# direct methods
.method public static final synthetic b(J[BII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/uuid/b;->d(J[BII)V

    return-void
.end method

.method public static final synthetic c(J[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/uuid/b;->e(J[BI)V

    return-void
.end method

.method public static final d(J[BII)V
    .locals 4

    mul-int/lit8 v0, p4, 0x2

    add-int/2addr p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p0

    long-to-int v1, v1

    invoke-static {}, Lmp4;->a()[I

    move-result-object v2

    aget v1, v2, v1

    add-int/lit8 v2, p3, -0x1

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    add-int/lit8 p3, p3, -0x2

    const/16 v2, 0x8

    shr-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final e(J[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v2, v0, 0x7

    mul-int/2addr v2, v1

    add-int v1, p3, v0

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

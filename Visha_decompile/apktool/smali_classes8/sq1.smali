.class public Lsq1;
.super Ls0;
.source "SourceFile"


# direct methods
.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls0;-><init>([BZ)V

    return-void
.end method

.method public static C(Lo1;ZB[BII)V
    .locals 7

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lo1;->n(ZIB[BII)V

    return-void
.end method

.method public static D(Lo1;Z[BII)V
    .locals 6

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo1;->p(ZI[BII)V

    return-void
.end method

.method public static E(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method


# virtual methods
.method public n(Lo1;Z)V
    .locals 1

    const/4 v0, 0x3

    iget-object p0, p0, Ls0;->b:[B

    invoke-virtual {p1, p2, v0, p0}, Lo1;->o(ZI[B)V

    return-void
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public q(Z)I
    .locals 0

    iget-object p0, p0, Ls0;->b:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public v()Lp1;
    .locals 0

    return-object p0
.end method

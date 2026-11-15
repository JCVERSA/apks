.class public Lwp1;
.super Lm1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lx0;->j()Lp1;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lm1;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lm1;-><init>([B)V

    return-void
.end method

.method public static B(Lo1;Z[BII)V
    .locals 6

    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo1;->p(ZI[BII)V

    return-void
.end method

.method public static C(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method


# virtual methods
.method public n(Lo1;Z)V
    .locals 1

    const/4 v0, 0x4

    iget-object p0, p0, Lm1;->b:[B

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

    iget-object p0, p0, Lm1;->b:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public u()Lp1;
    .locals 0

    return-object p0
.end method

.method public v()Lp1;
    .locals 0

    return-object p0
.end method

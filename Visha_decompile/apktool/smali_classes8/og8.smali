.class public Log8;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:Lg1;

.field public c:Loa;

.field public d:Lm1;

.field public e:Lt1;

.field public f:Ls0;


# direct methods
.method public constructor <init>(Loa;Lx0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-void
.end method

.method public constructor <init>(Loa;Lx0;Lt1;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Log8;-><init>(Loa;Lx0;Lt1;[B)V

    return-void
.end method

.method public constructor <init>(Loa;Lx0;Lt1;[B)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Lg1;

    if-eqz p4, :cond_0

    sget-object v1, Lge0;->b:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v1, Lge0;->a:Ljava/math/BigInteger;

    :goto_0
    invoke-direct {v0, v1}, Lg1;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Log8;->b:Lg1;

    iput-object p1, p0, Log8;->c:Loa;

    new-instance p1, Lwp1;

    invoke-direct {p1, p2}, Lwp1;-><init>(Lx0;)V

    iput-object p1, p0, Log8;->d:Lm1;

    iput-object p3, p0, Log8;->e:Lt1;

    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lnp1;

    invoke-direct {p1, p4}, Lnp1;-><init>([B)V

    :goto_1
    iput-object p1, p0, Log8;->f:Ls0;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->B()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v0

    iput-object v0, p0, Log8;->b:Lg1;

    invoke-static {v0}, Log8;->s(Lg1;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object v1

    iput-object v1, p0, Log8;->c:Loa;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v1

    iput-object v1, p0, Log8;->d:Lm1;

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1;

    invoke-virtual {v2}, Ly1;->J()I

    move-result v3

    if-le v3, v1, :cond_3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-lt v0, v4, :cond_0

    invoke-static {v2, v1}, Ls0;->y(Ly1;Z)Ls0;

    move-result-object v1

    iput-object v1, p0, Log8;->f:Ls0;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown optional field in private key info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v2, v1}, Lt1;->x(Ly1;Z)Lt1;

    move-result-object v1

    iput-object v1, p0, Log8;->e:Lt1;

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid optional field in private key info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static n(Ljava/lang/Object;)Log8;
    .locals 1

    instance-of v0, p0, Log8;

    if-eqz v0, :cond_0

    check-cast p0, Log8;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Log8;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Log8;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Lg1;)I
    .locals 1

    invoke-virtual {p0}, Lg1;->F()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Log8;->b:Lg1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Log8;->c:Loa;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Log8;->d:Lm1;

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object v1, p0, Log8;->e:Lt1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Ldq1;

    invoke-direct {v3, v2, v2, v1}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v3}, Ly0;->a(Lx0;)V

    :cond_0
    iget-object p0, p0, Log8;->f:Ls0;

    if-eqz p0, :cond_1

    new-instance v1, Ldq1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_1
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Lt1;
    .locals 0

    iget-object p0, p0, Log8;->e:Lt1;

    return-object p0
.end method

.method public o()Lm1;
    .locals 1

    new-instance v0, Lwp1;

    iget-object p0, p0, Log8;->d:Lm1;

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lwp1;-><init>([B)V

    return-object v0
.end method

.method public p()Loa;
    .locals 0

    iget-object p0, p0, Log8;->c:Loa;

    return-object p0
.end method

.method public q()I
    .locals 0

    iget-object p0, p0, Log8;->d:Lm1;

    invoke-virtual {p0}, Lm1;->A()I

    move-result p0

    return p0
.end method

.method public r()Ls0;
    .locals 0

    iget-object p0, p0, Log8;->f:Ls0;

    return-object p0
.end method

.method public t()Z
    .locals 0

    iget-object p0, p0, Log8;->f:Ls0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u()Lx0;
    .locals 0

    iget-object p0, p0, Log8;->d:Lm1;

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    invoke-static {p0}, Lp1;->t([B)Lp1;

    move-result-object p0

    return-object p0
.end method

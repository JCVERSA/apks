.class public Lerc;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:[B

.field public final i:[B


# direct methods
.method public constructor <init>(J[B[B[B[B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lerc;->b:I

    iput-wide p1, p0, Lerc;->c:J

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->e:[B

    invoke-static {p4}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->f:[B

    invoke-static {p5}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->g:[B

    invoke-static {p6}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->h:[B

    invoke-static {p7}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->i:[B

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lerc;->d:J

    return-void
.end method

.method public constructor <init>(J[B[B[B[B[BJ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lerc;->b:I

    iput-wide p1, p0, Lerc;->c:J

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->e:[B

    invoke-static {p4}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->f:[B

    invoke-static {p5}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->g:[B

    invoke-static {p6}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->h:[B

    invoke-static {p7}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->i:[B

    iput-wide p8, p0, Lerc;->d:J

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1;->B(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Lg1;->B(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown version of sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lg1;->F()I

    move-result v1

    iput v1, p0, Lerc;->b:I

    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key sequence wrong size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls1;->A(I)Lx0;

    move-result-object v5

    invoke-static {v5}, Lg1;->y(Ljava/lang/Object;)Lg1;

    move-result-object v5

    invoke-virtual {v5}, Lg1;->I()J

    move-result-wide v5

    iput-wide v5, p0, Lerc;->c:J

    invoke-virtual {v1, v3}, Ls1;->A(I)Lx0;

    move-result-object v5

    invoke-static {v5}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v5

    invoke-virtual {v5}, Lm1;->z()[B

    move-result-object v5

    invoke-static {v5}, Lci;->f([B)[B

    move-result-object v5

    iput-object v5, p0, Lerc;->e:[B

    invoke-virtual {v1, v4}, Ls1;->A(I)Lx0;

    move-result-object v5

    invoke-static {v5}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v5

    invoke-virtual {v5}, Lm1;->z()[B

    move-result-object v5

    invoke-static {v5}, Lci;->f([B)[B

    move-result-object v5

    iput-object v5, p0, Lerc;->f:[B

    invoke-virtual {v1, v2}, Ls1;->A(I)Lx0;

    move-result-object v5

    invoke-static {v5}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v5

    invoke-virtual {v5}, Lm1;->z()[B

    move-result-object v5

    invoke-static {v5}, Lci;->f([B)[B

    move-result-object v5

    iput-object v5, p0, Lerc;->g:[B

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ls1;->A(I)Lx0;

    move-result-object v5

    invoke-static {v5}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v5

    invoke-virtual {v5}, Lm1;->z()[B

    move-result-object v5

    invoke-static {v5}, Lci;->f([B)[B

    move-result-object v5

    iput-object v5, p0, Lerc;->h:[B

    invoke-virtual {v1}, Ls1;->size()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_5

    invoke-virtual {v1, v7}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object v1

    invoke-virtual {v1}, Ly1;->J()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1, v0}, Lg1;->x(Ly1;Z)Lg1;

    move-result-object v0

    invoke-virtual {v0}, Lg1;->I()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lerc;->d:J

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in XMSSPrivateKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {v1}, Ls1;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1, v4}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Ly1;->H(Ljava/lang/Object;)Ly1;

    move-result-object p1

    invoke-static {p1, v3}, Lm1;->x(Ly1;Z)Lm1;

    move-result-object p1

    invoke-virtual {p1}, Lm1;->z()[B

    move-result-object p1

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lerc;->i:[B

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Lerc;->i:[B

    :goto_4
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keySeq should be 5 or 6 in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/lang/Object;)Lerc;
    .locals 1

    instance-of v0, p0, Lerc;

    if-eqz v0, :cond_0

    check-cast p0, Lerc;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lerc;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lerc;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 7

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    iget-wide v1, p0, Lerc;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    new-instance v1, Lg1;

    const-wide/16 v5, 0x1

    invoke-direct {v1, v5, v6}, Lg1;-><init>(J)V

    :goto_0
    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lg1;

    invoke-direct {v1, v3, v4}, Lg1;-><init>(J)V

    goto :goto_0

    :goto_1
    new-instance v1, Ly0;

    invoke-direct {v1}, Ly0;-><init>()V

    new-instance v2, Lg1;

    iget-wide v5, p0, Lerc;->c:J

    invoke-direct {v2, v5, v6}, Lg1;-><init>(J)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    new-instance v2, Lwp1;

    iget-object v5, p0, Lerc;->e:[B

    invoke-direct {v2, v5}, Lwp1;-><init>([B)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    new-instance v2, Lwp1;

    iget-object v5, p0, Lerc;->f:[B

    invoke-direct {v2, v5}, Lwp1;-><init>([B)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    new-instance v2, Lwp1;

    iget-object v5, p0, Lerc;->g:[B

    invoke-direct {v2, v5}, Lwp1;-><init>([B)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    new-instance v2, Lwp1;

    iget-object v5, p0, Lerc;->h:[B

    invoke-direct {v2, v5}, Lwp1;-><init>([B)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    iget-wide v5, p0, Lerc;->d:J

    cmp-long v2, v5, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    new-instance v2, Ldq1;

    new-instance v4, Lg1;

    iget-wide v5, p0, Lerc;->d:J

    invoke-direct {v4, v5, v6}, Lg1;-><init>(J)V

    invoke-direct {v2, v3, v3, v4}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v1, v2}, Ly0;->a(Lx0;)V

    :cond_1
    new-instance v2, Laq1;

    invoke-direct {v2, v1}, Laq1;-><init>(Ly0;)V

    invoke-virtual {v0, v2}, Ly0;->a(Lx0;)V

    new-instance v1, Ldq1;

    new-instance v2, Lwp1;

    iget-object p0, p0, Lerc;->i:[B

    invoke-direct {v2, p0}, Lwp1;-><init>([B)V

    const/4 p0, 0x1

    invoke-direct {v1, p0, v3, v2}, Ldq1;-><init>(ZILx0;)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()[B
    .locals 0

    iget-object p0, p0, Lerc;->i:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lerc;->c:J

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lerc;->d:J

    return-wide v0
.end method

.method public q()[B
    .locals 0

    iget-object p0, p0, Lerc;->g:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public r()[B
    .locals 0

    iget-object p0, p0, Lerc;->h:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public s()[B
    .locals 0

    iget-object p0, p0, Lerc;->f:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public t()[B
    .locals 0

    iget-object p0, p0, Lerc;->e:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public u()I
    .locals 0

    iget p0, p0, Lerc;->b:I

    return p0
.end method

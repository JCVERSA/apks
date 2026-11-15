.class public final Lzfc;
.super Lsy9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzfc$a;
    }
.end annotation


# instance fields
.field public n:Lzfc$a;

.field public o:I

.field public p:Z

.field public q:Lagc$d;

.field public r:Lagc$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsy9;-><init>()V

    return-void
.end method

.method public static n(Lqw7;J)V
    .locals 6

    invoke-virtual {p0}, Lqw7;->b()I

    move-result v0

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lqw7;->L([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lqw7;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lqw7;->N(I)V

    :goto_0
    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    invoke-virtual {p0}, Lqw7;->f()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method public static o(BLzfc$a;)I
    .locals 2

    iget v0, p1, Lzfc$a;->e:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lzfc;->p(BII)I

    move-result p0

    iget-object v0, p1, Lzfc$a;->d:[Lagc$c;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lagc$c;->a:Z

    if-nez p0, :cond_0

    iget-object p0, p1, Lzfc$a;->a:Lagc$d;

    iget p0, p0, Lagc$d;->g:I

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lzfc$a;->a:Lagc$d;

    iget p0, p0, Lagc$d;->h:I

    :goto_0
    return p0
.end method

.method public static p(BII)I
    .locals 0

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static r(Lqw7;)Z
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, v0}, Lagc;->m(ILqw7;Z)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public e(J)V
    .locals 2

    invoke-super {p0, p1, p2}, Lsy9;->e(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lzfc;->p:Z

    iget-object p1, p0, Lzfc;->q:Lagc$d;

    if-eqz p1, :cond_1

    iget p2, p1, Lagc$d;->g:I

    :cond_1
    iput p2, p0, Lzfc;->o:I

    return-void
.end method

.method public f(Lqw7;)J
    .locals 5

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Lzfc;->n:Lzfc$a;

    invoke-static {v3}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzfc$a;

    invoke-static {v0, v3}, Lzfc;->o(BLzfc$a;)I

    move-result v0

    iget-boolean v3, p0, Lzfc;->p:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lzfc;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_1
    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lzfc;->n(Lqw7;J)V

    iput-boolean v2, p0, Lzfc;->p:Z

    iput v0, p0, Lzfc;->o:I

    return-wide v3
.end method

.method public i(Lqw7;JLsy9$b;)Z
    .locals 2

    iget-object p2, p0, Lzfc;->n:Lzfc$a;

    if-eqz p2, :cond_0

    iget-object p0, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lzfc;->q(Lqw7;)Lzfc$a;

    move-result-object p1

    iput-object p1, p0, Lzfc;->n:Lzfc$a;

    const/4 p0, 0x1

    if-nez p1, :cond_1

    return p0

    :cond_1
    iget-object p2, p1, Lzfc$a;->a:Lagc$d;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lagc$d;->j:[B

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lzfc$a;->c:[B

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lzfc$a;->b:Lagc$b;

    iget-object p1, p1, Lagc$b;->b:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lagc;->c(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    const-string v1, "audio/vorbis"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v1, p2, Lagc$d;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->G(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v1, p2, Lagc$d;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->Z(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v1, p2, Lagc$d;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget p2, p2, Lagc$d;->c:I

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    iput-object p1, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    return p0
.end method

.method public l(Z)V
    .locals 0

    invoke-super {p0, p1}, Lsy9;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lzfc;->n:Lzfc$a;

    iput-object p1, p0, Lzfc;->q:Lagc$d;

    iput-object p1, p0, Lzfc;->r:Lagc$b;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lzfc;->o:I

    iput-boolean p1, p0, Lzfc;->p:Z

    return-void
.end method

.method public q(Lqw7;)Lzfc$a;
    .locals 6

    iget-object v1, p0, Lzfc;->q:Lagc$d;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    invoke-static {p1}, Lagc;->k(Lqw7;)Lagc$d;

    move-result-object p1

    iput-object p1, p0, Lzfc;->q:Lagc$d;

    return-object v0

    :cond_0
    iget-object v2, p0, Lzfc;->r:Lagc$b;

    if-nez v2, :cond_1

    invoke-static {p1}, Lagc;->i(Lqw7;)Lagc$b;

    move-result-object p1

    iput-object p1, p0, Lzfc;->r:Lagc$b;

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lqw7;->f()I

    move-result p0

    new-array v3, p0, [B

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p0

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, v1, Lagc$d;->b:I

    invoke-static {p1, p0}, Lagc;->l(Lqw7;I)[Lagc$c;

    move-result-object v4

    array-length p0, v4

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Lagc;->a(I)I

    move-result v5

    new-instance p0, Lzfc$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzfc$a;-><init>(Lagc$d;Lagc$b;[B[Lagc$c;I)V

    return-object p0
.end method

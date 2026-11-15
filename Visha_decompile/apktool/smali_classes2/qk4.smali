.class public final Lqk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk4$b;
    }
.end annotation


# instance fields
.field public final a:Lra9;

.field public final b:Z

.field public final c:Z

.field public final d:Lzx6;

.field public final e:Lzx6;

.field public final f:Lzx6;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lfva;

.field public k:Lqk4$b;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lqw7;


# direct methods
.method public constructor <init>(Lra9;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqk4;->a:Lra9;

    iput-boolean p2, p0, Lqk4;->b:Z

    iput-boolean p3, p0, Lqk4;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lqk4;->h:[Z

    new-instance p1, Lzx6;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lzx6;-><init>(II)V

    iput-object p1, p0, Lqk4;->d:Lzx6;

    new-instance p1, Lzx6;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lzx6;-><init>(II)V

    iput-object p1, p0, Lqk4;->e:Lzx6;

    new-instance p1, Lzx6;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lzx6;-><init>(II)V

    iput-object p1, p0, Lqk4;->f:Lzx6;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lqk4;->m:J

    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Lqk4;->o:Lqw7;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lqk4;->j:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lqk4;->k:Lqk4$b;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 14

    invoke-direct {p0}, Lqk4;->d()V

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v0

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v1

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v2

    iget-wide v3, p0, Lqk4;->g:J

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lqk4;->g:J

    iget-object v3, p0, Lqk4;->j:Lfva;

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lfva;->d(Lqw7;I)V

    :goto_0
    iget-object p1, p0, Lqk4;->h:[Z

    invoke-static {v2, v0, v1, p1}, Lay6;->c([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2, v0, v1}, Lqk4;->f([BII)V

    return-void

    :cond_0
    invoke-static {v2, p1}, Lay6;->f([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    invoke-virtual {p0, v2, v0, p1}, Lqk4;->f([BII)V

    :cond_1
    sub-int v10, v1, p1

    iget-wide v4, p0, Lqk4;->g:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    :goto_1
    move v11, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-wide v12, p0, Lqk4;->m:J

    move-object v7, p0

    move-wide v8, v4

    invoke-virtual/range {v7 .. v13}, Lqk4;->e(JIIJ)V

    iget-wide v7, p0, Lqk4;->m:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lqk4;->g(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lqk3;Lnab$d;)V
    .locals 4

    invoke-virtual {p2}, Lnab$d;->a()V

    invoke-virtual {p2}, Lnab$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqk4;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object v0

    iput-object v0, p0, Lqk4;->j:Lfva;

    new-instance v1, Lqk4$b;

    iget-boolean v2, p0, Lqk4;->b:Z

    iget-boolean v3, p0, Lqk4;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lqk4$b;-><init>(Lfva;ZZ)V

    iput-object v1, p0, Lqk4;->k:Lqk4$b;

    iget-object p0, p0, Lqk4;->a:Lra9;

    invoke-virtual {p0, p1, p2}, Lra9;->b(Lqk3;Lnab$d;)V

    return-void
.end method

.method public final e(JIIJ)V
    .locals 7

    iget-boolean v0, p0, Lqk4;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {v0}, Lqk4$b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0, p4}, Lzx6;->b(I)Z

    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0, p4}, Lzx6;->b(I)Z

    iget-boolean v0, p0, Lqk4;->l:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0}, Lzx6;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0}, Lzx6;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lqk4;->d:Lzx6;

    iget-object v3, v2, Lzx6;->d:[B

    iget v2, v2, Lzx6;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lqk4;->e:Lzx6;

    iget-object v3, v2, Lzx6;->d:[B

    iget v2, v2, Lzx6;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lqk4;->d:Lzx6;

    iget-object v3, v2, Lzx6;->d:[B

    iget v2, v2, Lzx6;->e:I

    invoke-static {v3, v1, v2}, Lay6;->l([BII)Lay6$c;

    move-result-object v2

    iget-object v3, p0, Lqk4;->e:Lzx6;

    iget-object v4, v3, Lzx6;->d:[B

    iget v3, v3, Lzx6;->e:I

    invoke-static {v4, v1, v3}, Lay6;->j([BII)Lay6$b;

    move-result-object v1

    iget v3, v2, Lay6$c;->a:I

    iget v4, v2, Lay6$c;->b:I

    iget v5, v2, Lay6$c;->c:I

    invoke-static {v3, v4, v5}, Lb51;->a(III)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lqk4;->j:Lfva;

    new-instance v5, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    iget-object v6, p0, Lqk4;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v5

    const-string/jumbo v6, "video/avc"

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/k$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v3

    iget v5, v2, Lay6$c;->f:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/k$b;->j0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v3

    iget v5, v2, Lay6$c;->g:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/k$b;->Q(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v3

    iget v5, v2, Lay6$c;->h:F

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/k$b;->a0(F)Lcom/google/android/exoplayer2/k$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    invoke-interface {v4, v0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqk4;->l:Z

    iget-object v0, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {v0, v2}, Lqk4$b;->f(Lay6$c;)V

    iget-object v0, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {v0, v1}, Lqk4$b;->e(Lay6$b;)V

    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0}, Lzx6;->d()V

    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0}, Lzx6;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0}, Lzx6;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqk4;->d:Lzx6;

    iget-object v2, v0, Lzx6;->d:[B

    iget v0, v0, Lzx6;->e:I

    invoke-static {v2, v1, v0}, Lay6;->l([BII)Lay6$c;

    move-result-object v0

    iget-object v1, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {v1, v0}, Lqk4$b;->f(Lay6$c;)V

    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0}, Lzx6;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0}, Lzx6;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lqk4;->e:Lzx6;

    iget-object v2, v0, Lzx6;->d:[B

    iget v0, v0, Lzx6;->e:I

    invoke-static {v2, v1, v0}, Lay6;->j([BII)Lay6$b;

    move-result-object v0

    iget-object v1, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {v1, v0}, Lqk4$b;->e(Lay6$b;)V

    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0}, Lzx6;->d()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lqk4;->f:Lzx6;

    invoke-virtual {v0, p4}, Lzx6;->b(I)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lqk4;->f:Lzx6;

    iget-object v0, p4, Lzx6;->d:[B

    iget p4, p4, Lzx6;->e:I

    invoke-static {v0, p4}, Lay6;->q([BI)I

    move-result p4

    iget-object v0, p0, Lqk4;->o:Lqw7;

    iget-object v1, p0, Lqk4;->f:Lzx6;

    iget-object v1, v1, Lzx6;->d:[B

    invoke-virtual {v0, v1, p4}, Lqw7;->M([BI)V

    iget-object p4, p0, Lqk4;->o:Lqw7;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lqw7;->O(I)V

    iget-object p4, p0, Lqk4;->a:Lra9;

    iget-object v0, p0, Lqk4;->o:Lqw7;

    invoke-virtual {p4, p5, p6, v0}, Lra9;->a(JLqw7;)V

    :cond_4
    iget-object v1, p0, Lqk4;->k:Lqk4$b;

    iget-boolean v5, p0, Lqk4;->l:Z

    iget-boolean v6, p0, Lqk4;->n:Z

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lqk4$b;->b(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lqk4;->n:Z

    :cond_5
    return-void
.end method

.method public final f([BII)V
    .locals 1

    iget-boolean v0, p0, Lqk4;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {v0}, Lqk4$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0, p1, p2, p3}, Lzx6;->a([BII)V

    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0, p1, p2, p3}, Lzx6;->a([BII)V

    :cond_1
    iget-object v0, p0, Lqk4;->f:Lzx6;

    invoke-virtual {v0, p1, p2, p3}, Lzx6;->a([BII)V

    iget-object p0, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {p0, p1, p2, p3}, Lqk4$b;->a([BII)V

    return-void
.end method

.method public final g(JIJ)V
    .locals 7

    iget-boolean v0, p0, Lqk4;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqk4;->k:Lqk4$b;

    invoke-virtual {v0}, Lqk4$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0, p3}, Lzx6;->e(I)V

    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0, p3}, Lzx6;->e(I)V

    :cond_1
    iget-object v0, p0, Lqk4;->f:Lzx6;

    invoke-virtual {v0, p3}, Lzx6;->e(I)V

    iget-object v1, p0, Lqk4;->k:Lqk4$b;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lqk4$b;->h(JIJ)V

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lqk4;->m:J

    :cond_0
    iget-boolean p1, p0, Lqk4;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lqk4;->n:Z

    return-void
.end method

.method public seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lqk4;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqk4;->n:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lqk4;->m:J

    iget-object v0, p0, Lqk4;->h:[Z

    invoke-static {v0}, Lay6;->a([Z)V

    iget-object v0, p0, Lqk4;->d:Lzx6;

    invoke-virtual {v0}, Lzx6;->d()V

    iget-object v0, p0, Lqk4;->e:Lzx6;

    invoke-virtual {v0}, Lzx6;->d()V

    iget-object v0, p0, Lqk4;->f:Lzx6;

    invoke-virtual {v0}, Lzx6;->d()V

    iget-object p0, p0, Lqk4;->k:Lqk4$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lqk4$b;->g()V

    :cond_0
    return-void
.end method

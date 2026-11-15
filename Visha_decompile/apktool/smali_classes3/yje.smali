.class public final Lyje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lu4h;

.field public final c:Lp3h;

.field public final d:Lu4h;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lrae;

.field public h:D

.field public i:D

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public final q:Lzje;

.field public r:I

.field public s:I

.field public t:I

.field public u:J

.field public v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lyje;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lyje;->e:I

    new-instance p1, Lu4h;

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lu4h;-><init>([BI)V

    iput-object p1, p0, Lyje;->b:Lu4h;

    new-instance p1, Lp3h;

    invoke-direct {p1}, Lp3h;-><init>()V

    iput-object p1, p0, Lyje;->c:Lp3h;

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lyje;->d:Lu4h;

    new-instance p1, Lzje;

    invoke-direct {p1}, Lzje;-><init>()V

    iput-object p1, p0, Lyje;->q:Lzje;

    const p1, -0x7fffffff

    iput p1, p0, Lyje;->r:I

    const/4 p1, -0x1

    iput p1, p0, Lyje;->s:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyje;->u:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyje;->k:Z

    iput-boolean p1, p0, Lyje;->n:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lyje;->h:D

    iput-wide v0, p0, Lyje;->i:D

    return-void
.end method

.method public static final d(Lu4h;Lu4h;Z)V
    .locals 4

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v0

    invoke-virtual {p0}, Lu4h;->u()I

    move-result v1

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v2

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lu4h;->h([BII)V

    invoke-virtual {p1, v1}, Lu4h;->m(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lu4h;->l(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 13

    iget-object v0, p0, Lyje;->g:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_13

    iget v0, p0, Lyje;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const/4 v3, 0x2

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lyje;->q:Lzje;

    iget v4, v0, Lzje;->a:I

    const/16 v5, 0x11

    if-eq v4, v1, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lyje;->d:Lu4h;

    invoke-static {p1, v4, v1}, Lyje;->d(Lu4h;Lu4h;Z)V

    :cond_2
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v4

    iget v6, v0, Lzje;->c:I

    iget v7, p0, Lyje;->o:I

    sub-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v6, p0, Lyje;->g:Lrae;

    invoke-interface {v6, p1, v4}, Lrae;->d(Lu4h;I)V

    iget v6, p0, Lyje;->o:I

    add-int/2addr v6, v4

    iput v6, p0, Lyje;->o:I

    iget v4, v0, Lzje;->c:I

    if-ne v6, v4, :cond_0

    iget v4, v0, Lzje;->a:I

    if-ne v4, v1, :cond_6

    iget-object v2, p0, Lyje;->d:Lu4h;

    new-instance v3, Lp3h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v2

    array-length v4, v2

    invoke-direct {v3, v2, v4}, Lp3h;-><init>([BI)V

    invoke-static {v3}, Lcke;->a(Lp3h;)Lake;

    move-result-object v2

    iget v3, v2, Lake;->b:I

    iput v3, p0, Lyje;->r:I

    iget v3, v2, Lake;->c:I

    iput v3, p0, Lyje;->s:I

    iget-wide v3, p0, Lyje;->u:J

    iget-wide v5, v0, Lzje;->b:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    iput-wide v5, p0, Lyje;->u:J

    iget v0, v2, Lake;->a:I

    const/4 v3, -0x1

    const-string v4, "mhm1"

    if-eq v0, v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ".%02X"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v0, v2, Lake;->d:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    sget-object v2, Lkfh;->c:[B

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v2

    :cond_4
    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    iget-object v3, p0, Lyje;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v3, p0, Lyje;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v3, "audio/mhm1"

    invoke-virtual {v0, v3}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget v3, p0, Lyje;->r:I

    invoke-virtual {v0, v3}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v0, v4}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0, v2}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object v0

    iget-object v2, p0, Lyje;->g:Lrae;

    invoke-interface {v2, v0}, Lrae;->f(Lerj;)V

    :cond_5
    iput-boolean v1, p0, Lyje;->v:Z

    goto :goto_3

    :cond_6
    if-ne v4, v5, :cond_8

    iget-object v0, p0, Lyje;->d:Lu4h;

    new-instance v4, Lp3h;

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v0

    array-length v5, v0

    invoke-direct {v4, v0, v5}, Lp3h;-><init>([BI)V

    invoke-virtual {v4}, Lp3h;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4, v3}, Lp3h;->n(I)V

    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Lp3h;->d(I)I

    move-result v2

    :cond_7
    iput v2, p0, Lyje;->t:I

    goto :goto_3

    :cond_8
    if-ne v4, v3, :cond_b

    iget-boolean v0, p0, Lyje;->v:Z

    if-eqz v0, :cond_9

    iput-boolean v2, p0, Lyje;->k:Z

    move v6, v1

    goto :goto_1

    :cond_9
    move v6, v2

    :goto_1
    iget v0, p0, Lyje;->s:I

    iget v3, p0, Lyje;->t:I

    sub-int/2addr v0, v3

    iget v3, p0, Lyje;->r:I

    int-to-double v3, v3

    iget-wide v7, p0, Lyje;->h:D

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    iget-boolean v5, p0, Lyje;->j:Z

    if-eqz v5, :cond_a

    iput-boolean v2, p0, Lyje;->j:Z

    iget-wide v3, p0, Lyje;->i:D

    iput-wide v3, p0, Lyje;->h:D

    goto :goto_2

    :cond_a
    int-to-double v9, v0

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    div-double/2addr v9, v3

    iget-wide v3, p0, Lyje;->h:D

    add-double/2addr v3, v9

    iput-wide v3, p0, Lyje;->h:D

    :goto_2
    iget-object v3, p0, Lyje;->g:Lrae;

    iget v0, p0, Lyje;->p:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v4, v7

    move v7, v0

    move v8, v9

    move-object v9, v10

    invoke-interface/range {v3 .. v9}, Lrae;->g(JIIILqae;)V

    iput-boolean v2, p0, Lyje;->v:Z

    iput v2, p0, Lyje;->t:I

    iput v2, p0, Lyje;->p:I

    :cond_b
    :goto_3
    iput v1, p0, Lyje;->e:I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lyje;->b:Lu4h;

    invoke-static {p1, v0, v2}, Lyje;->d(Lu4h;Lu4h;Z)V

    invoke-virtual {v0}, Lu4h;->u()I

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lyje;->c:Lp3h;

    invoke-virtual {v0}, Lu4h;->x()I

    move-result v5

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lp3h;->k([BI)V

    iget-object v6, p0, Lyje;->q:Lzje;

    invoke-static {v4, v6}, Lcke;->b(Lp3h;Lzje;)Z

    move-result v4

    if-eqz v4, :cond_d

    iput v2, p0, Lyje;->o:I

    iget v4, p0, Lyje;->p:I

    iget v7, v6, Lzje;->c:I

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    iput v4, p0, Lyje;->p:I

    invoke-virtual {v0, v2}, Lu4h;->l(I)V

    iget-object v2, p0, Lyje;->g:Lrae;

    invoke-virtual {v0}, Lu4h;->x()I

    move-result v4

    invoke-interface {v2, v0, v4}, Lrae;->d(Lu4h;I)V

    invoke-virtual {v0, v3}, Lu4h;->i(I)V

    iget-object v0, p0, Lyje;->d:Lu4h;

    iget v2, v6, Lzje;->c:I

    invoke-virtual {v0, v2}, Lu4h;->i(I)V

    iput-boolean v1, p0, Lyje;->n:Z

    iput v3, p0, Lyje;->e:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lu4h;->x()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    invoke-virtual {v0}, Lu4h;->x()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lu4h;->k(I)V

    :cond_e
    iput-boolean v2, p0, Lyje;->n:Z

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lyje;->l:I

    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_10

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v0

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    goto/16 :goto_0

    :cond_10
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_12

    :cond_11
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lyje;->m:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lyje;->m:I

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v3

    or-int/2addr v0, v3

    iput v0, p0, Lyje;->m:I

    const v3, 0xffffff

    and-int/2addr v0, v3

    const v3, 0xc001a5

    if-ne v0, v3, :cond_11

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    iput v2, p0, Lyje;->m:I

    :cond_12
    iput v1, p0, Lyje;->e:I

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public final b(JI)V
    .locals 2

    iput p3, p0, Lyje;->l:I

    iget-boolean p3, p0, Lyje;->k:Z

    if-nez p3, :cond_1

    iget p3, p0, Lyje;->p:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lyje;->n:Z

    if-nez p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lyje;->j:Z

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lyje;->j:Z

    long-to-double p1, p1

    if-eqz p3, :cond_2

    iput-wide p1, p0, Lyje;->i:D

    return-void

    :cond_2
    iput-wide p1, p0, Lyje;->h:D

    :cond_3
    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 1

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyje;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lyje;->g:Lrae;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lyje;->e:I

    iput v0, p0, Lyje;->m:I

    iget-object v1, p0, Lyje;->b:Lu4h;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lu4h;->i(I)V

    iput v0, p0, Lyje;->o:I

    iput v0, p0, Lyje;->p:I

    const v1, -0x7fffffff

    iput v1, p0, Lyje;->r:I

    const/4 v1, -0x1

    iput v1, p0, Lyje;->s:I

    iput v0, p0, Lyje;->t:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lyje;->u:J

    iput-boolean v0, p0, Lyje;->v:Z

    iput-boolean v0, p0, Lyje;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyje;->n:Z

    iput-boolean v0, p0, Lyje;->k:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lyje;->h:D

    iput-wide v0, p0, Lyje;->i:D

    return-void
.end method

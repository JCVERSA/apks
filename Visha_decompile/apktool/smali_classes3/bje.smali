.class public final Lbje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Lp3h;

.field public final b:Lu4h;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lrae;

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Lerj;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp3h;

    const/16 v1, 0x80

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lp3h;-><init>([BI)V

    iput-object v0, p0, Lbje;->a:Lp3h;

    new-instance v1, Lu4h;

    iget-object v0, v0, Lp3h;->a:[B

    invoke-direct {v1, v0}, Lu4h;-><init>([B)V

    iput-object v1, p0, Lbje;->b:Lu4h;

    const/4 v0, 0x0

    iput v0, p0, Lbje;->h:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lbje;->n:J

    iput-object p1, p0, Lbje;->c:Ljava/lang/String;

    iput p2, p0, Lbje;->d:I

    iput-object p3, p0, Lbje;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 11

    iget-object v0, p0, Lbje;->g:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_b

    iget v0, p0, Lbje;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v1, p0, Lbje;->m:I

    iget v4, p0, Lbje;->i:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lbje;->g:Lrae;

    invoke-interface {v1, p1, v0}, Lrae;->d(Lu4h;I)V

    iget v1, p0, Lbje;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lbje;->i:I

    iget v0, p0, Lbje;->m:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lbje;->n:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Ln7g;->f(Z)V

    iget-object v4, p0, Lbje;->g:Lrae;

    iget-wide v5, p0, Lbje;->n:J

    iget v8, p0, Lbje;->m:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lrae;->g(JIIILqae;)V

    iget-wide v0, p0, Lbje;->n:J

    iget-wide v4, p0, Lbje;->k:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lbje;->n:J

    iput v3, p0, Lbje;->h:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbje;->b:Lu4h;

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v2

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v4

    iget v5, p0, Lbje;->i:I

    const/16 v6, 0x80

    rsub-int v5, v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lbje;->i:I

    invoke-virtual {p1, v2, v5, v4}, Lu4h;->h([BII)V

    iget v2, p0, Lbje;->i:I

    add-int/2addr v2, v4

    iput v2, p0, Lbje;->i:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lbje;->a:Lp3h;

    invoke-virtual {v2, v3}, Lp3h;->l(I)V

    invoke-static {v2}, Lw7e;->e(Lp3h;)Lq7e;

    move-result-object v2

    iget-object v4, p0, Lbje;->l:Lerj;

    if-eqz v4, :cond_3

    iget v5, v2, Lq7e;->c:I

    iget v7, v4, Lerj;->E:I

    if-ne v5, v7, :cond_3

    iget v5, v2, Lq7e;->b:I

    iget v7, v4, Lerj;->F:I

    if-ne v5, v7, :cond_3

    iget-object v5, v2, Lq7e;->a:Ljava/lang/String;

    iget-object v4, v4, Lerj;->o:Ljava/lang/String;

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    new-instance v4, Lgpj;

    invoke-direct {v4}, Lgpj;-><init>()V

    iget-object v5, p0, Lbje;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v5, p0, Lbje;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    iget-object v5, v2, Lq7e;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget v7, v2, Lq7e;->c:I

    invoke-virtual {v4, v7}, Lgpj;->b(I)Lgpj;

    iget v7, v2, Lq7e;->b:I

    invoke-virtual {v4, v7}, Lgpj;->F(I)Lgpj;

    iget-object v7, p0, Lbje;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget v7, p0, Lbje;->d:I

    invoke-virtual {v4, v7}, Lgpj;->C(I)Lgpj;

    iget v7, v2, Lq7e;->f:I

    invoke-virtual {v4, v7}, Lgpj;->y(I)Lgpj;

    const-string v8, "audio/ac3"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v7}, Lgpj;->a(I)Lgpj;

    :cond_4
    invoke-virtual {v4}, Lgpj;->K()Lerj;

    move-result-object v4

    iput-object v4, p0, Lbje;->l:Lerj;

    iget-object v5, p0, Lbje;->g:Lrae;

    invoke-interface {v5, v4}, Lrae;->f(Lerj;)V

    :cond_5
    iget v4, v2, Lq7e;->d:I

    iput v4, p0, Lbje;->m:I

    iget v2, v2, Lq7e;->e:I

    iget-object v4, p0, Lbje;->l:Lerj;

    iget v4, v4, Lerj;->F:I

    int-to-long v7, v2

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    int-to-long v4, v4

    div-long/2addr v7, v4

    iput-wide v7, p0, Lbje;->k:J

    invoke-virtual {v0, v3}, Lu4h;->l(I)V

    iget-object v2, p0, Lbje;->g:Lrae;

    invoke-interface {v2, v0, v6}, Lrae;->d(Lu4h;I)V

    iput v1, p0, Lbje;->h:I

    goto/16 :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lbje;->j:Z

    const/16 v4, 0xb

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lu4h;->G()I

    move-result v0

    if-ne v0, v4, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lbje;->j:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lu4h;->G()I

    move-result v0

    const/16 v5, 0x77

    if-ne v0, v5, :cond_9

    iput-boolean v3, p0, Lbje;->j:Z

    iput v2, p0, Lbje;->h:I

    iget-object v0, p0, Lbje;->b:Lu4h;

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v6

    aput-byte v4, v6, v3

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v0

    aput-byte v5, v0, v2

    iput v1, p0, Lbje;->i:I

    goto/16 :goto_0

    :cond_9
    if-ne v0, v4, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lbje;->j:Z

    goto :goto_2

    :cond_b
    return-void
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Lbje;->n:J

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 1

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbje;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lbje;->g:Lrae;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lbje;->h:I

    iput v0, p0, Lbje;->i:I

    iput-boolean v0, p0, Lbje;->j:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lbje;->n:J

    return-void
.end method

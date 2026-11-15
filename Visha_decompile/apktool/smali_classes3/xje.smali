.class public final Lxje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Lu4h;

.field public final b:Lu9e;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Lrae;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:J

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lxje;->h:I

    new-instance v1, Lu4h;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lu4h;-><init>(I)V

    iput-object v1, p0, Lxje;->a:Lu4h;

    invoke-virtual {v1}, Lu4h;->n()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Lu9e;

    invoke-direct {v0}, Lu9e;-><init>()V

    iput-object v0, p0, Lxje;->b:Lu9e;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lxje;->n:J

    iput-object p1, p0, Lxje;->c:Ljava/lang/String;

    iput p2, p0, Lxje;->d:I

    iput-object p3, p0, Lxje;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 11

    iget-object v0, p0, Lxje;->f:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Lxje;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v1, p0, Lxje;->m:I

    iget v4, p0, Lxje;->i:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lxje;->f:Lrae;

    invoke-interface {v1, p1, v0}, Lrae;->d(Lu4h;I)V

    iget v1, p0, Lxje;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lxje;->i:I

    iget v0, p0, Lxje;->m:I

    if-lt v1, v0, :cond_0

    iget-wide v0, p0, Lxje;->n:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Ln7g;->f(Z)V

    iget-object v4, p0, Lxje;->f:Lrae;

    iget-wide v5, p0, Lxje;->n:J

    iget v8, p0, Lxje;->m:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lrae;->g(JIIILqae;)V

    iget-wide v0, p0, Lxje;->n:J

    iget-wide v4, p0, Lxje;->l:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lxje;->n:J

    iput v3, p0, Lxje;->i:I

    iput v3, p0, Lxje;->h:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v4, p0, Lxje;->i:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lxje;->a:Lu4h;

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v6

    iget v7, p0, Lxje;->i:I

    invoke-virtual {p1, v6, v7, v0}, Lu4h;->h([BII)V

    iget v6, p0, Lxje;->i:I

    add-int/2addr v6, v0

    iput v6, p0, Lxje;->i:I

    if-lt v6, v5, :cond_0

    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    iget-object v0, p0, Lxje;->b:Lu9e;

    invoke-virtual {v4}, Lu4h;->A()I

    move-result v6

    invoke-virtual {v0, v6}, Lu9e;->a(I)Z

    move-result v6

    if-nez v6, :cond_3

    iput v3, p0, Lxje;->i:I

    iput v2, p0, Lxje;->h:I

    goto/16 :goto_0

    :cond_3
    iget v6, v0, Lu9e;->c:I

    iput v6, p0, Lxje;->m:I

    iget-boolean v6, p0, Lxje;->j:Z

    if-nez v6, :cond_4

    iget v6, v0, Lu9e;->g:I

    int-to-long v6, v6

    iget v8, v0, Lu9e;->d:I

    const-wide/32 v9, 0xf4240

    mul-long/2addr v6, v9

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, p0, Lxje;->l:J

    new-instance v6, Lgpj;

    invoke-direct {v6}, Lgpj;-><init>()V

    iget-object v7, p0, Lxje;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v7, p0, Lxje;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    iget-object v7, v0, Lu9e;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Lgpj;->t(I)Lgpj;

    iget v7, v0, Lu9e;->e:I

    invoke-virtual {v6, v7}, Lgpj;->b(I)Lgpj;

    iget v0, v0, Lu9e;->d:I

    invoke-virtual {v6, v0}, Lgpj;->F(I)Lgpj;

    iget-object v0, p0, Lxje;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget v0, p0, Lxje;->d:I

    invoke-virtual {v6, v0}, Lgpj;->C(I)Lgpj;

    invoke-virtual {v6}, Lgpj;->K()Lerj;

    move-result-object v0

    iget-object v6, p0, Lxje;->f:Lrae;

    invoke-interface {v6, v0}, Lrae;->f(Lerj;)V

    iput-boolean v2, p0, Lxje;->j:Z

    :cond_4
    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    iget-object v0, p0, Lxje;->f:Lrae;

    invoke-interface {v0, v4, v5}, Lrae;->d(Lu4h;I)V

    iput v1, p0, Lxje;->h:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v0

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v4

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_9

    add-int/lit8 v6, v4, 0x1

    aget-byte v7, v0, v4

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_6

    move v8, v2

    goto :goto_3

    :cond_6
    move v8, v3

    :goto_3
    iget-boolean v9, p0, Lxje;->k:Z

    if-eqz v9, :cond_7

    and-int/lit16 v7, v7, 0xe0

    const/16 v9, 0xe0

    if-ne v7, v9, :cond_7

    move v7, v2

    goto :goto_4

    :cond_7
    move v7, v3

    :goto_4
    iput-boolean v8, p0, Lxje;->k:Z

    if-eqz v7, :cond_8

    invoke-virtual {p1, v6}, Lu4h;->l(I)V

    iput-boolean v3, p0, Lxje;->k:Z

    iget-object v3, p0, Lxje;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v3

    aget-byte v0, v0, v4

    aput-byte v0, v3, v2

    iput v1, p0, Lxje;->i:I

    iput v2, p0, Lxje;->h:I

    goto/16 :goto_0

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v5}, Lu4h;->l(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Lxje;->n:J

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 1

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxje;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lxje;->f:Lrae;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lxje;->h:I

    iput v0, p0, Lxje;->i:I

    iput-boolean v0, p0, Lxje;->k:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lxje;->n:J

    return-void
.end method

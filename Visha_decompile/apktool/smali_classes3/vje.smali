.class public final Lvje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lu4h;

.field public c:Lrae;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lvje;->a:Ljava/lang/String;

    new-instance p1, Lu4h;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lvje;->b:Lu4h;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lvje;->e:J

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 8

    iget-object v0, p0, Lvje;->c:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lvje;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v1, p0, Lvje;->g:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v3

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v4

    iget-object v5, p0, Lvje;->b:Lu4h;

    invoke-virtual {v5}, Lu4h;->n()[B

    move-result-object v6

    iget v7, p0, Lvje;->g:I

    invoke-static {v3, v4, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lvje;->g:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lu4h;->l(I)V

    invoke-virtual {v5}, Lu4h;->G()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    invoke-virtual {v5}, Lu4h;->G()I

    move-result v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_2

    invoke-virtual {v5}, Lu4h;->G()I

    move-result v3

    const/16 v4, 0x33

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lu4h;->m(I)V

    invoke-virtual {v5}, Lu4h;->F()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lvje;->f:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lvje;->d:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Lvje;->f:I

    iget v2, p0, Lvje;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lvje;->c:Lrae;

    invoke-interface {v1, p1, v0}, Lrae;->d(Lu4h;I)V

    iget p1, p0, Lvje;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lvje;->g:I

    return-void
.end method

.method public final b(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lvje;->d:Z

    iput-wide p1, p0, Lvje;->e:J

    const/4 p1, 0x0

    iput p1, p0, Lvje;->f:I

    iput p1, p0, Lvje;->g:I

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 2

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->a()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lvje;->c:Lrae;

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object p0, p0, Lvje;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string p0, "application/id3"

    invoke-virtual {v0, p0}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p0

    invoke-interface {p1, p0}, Lrae;->f(Lerj;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 8

    iget-object p1, p0, Lvje;->c:Lrae;

    invoke-static {p1}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lvje;->d:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lvje;->f:I

    if-eqz p1, :cond_2

    iget v0, p0, Lvje;->g:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lvje;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p1}, Ln7g;->f(Z)V

    iget-object v1, p0, Lvje;->c:Lrae;

    iget-wide v2, p0, Lvje;->e:J

    iget v5, p0, Lvje;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lrae;->g(JIIILqae;)V

    iput-boolean v0, p0, Lvje;->d:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvje;->d:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lvje;->e:J

    return-void
.end method

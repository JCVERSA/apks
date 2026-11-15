.class public final Lkje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:[Lrae;

.field public d:Z

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkje;->a:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lkje;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lrae;

    iput-object p1, p0, Lkje;->c:[Lrae;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lkje;->g:J

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 5

    iget-boolean v0, p0, Lkje;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lkje;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lkje;->d(Lu4h;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lkje;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lkje;->d(Lu4h;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lu4h;->w()I

    move-result v0

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v2

    iget-object v3, p0, Lkje;->c:[Lrae;

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v4, v3, v1

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    invoke-interface {v4, p1, v2}, Lrae;->d(Lu4h;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lkje;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lkje;->f:I

    :cond_3
    return-void
.end method

.method public final b(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lkje;->d:Z

    iput-wide p1, p0, Lkje;->g:J

    const/4 p1, 0x0

    iput p1, p0, Lkje;->f:I

    const/4 p1, 0x2

    iput p1, p0, Lkje;->e:I

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkje;->c:[Lrae;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lkje;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzke;

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->a()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lf9e;->j(II)Lrae;

    move-result-object v3

    new-instance v4, Lgpj;

    invoke-direct {v4}, Lgpj;-><init>()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v5, p0, Lkje;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v5, "application/dvbsubs"

    invoke-virtual {v4, v5}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget-object v5, v2, Lzke;->b:[B

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgpj;->p(Ljava/util/List;)Lgpj;

    iget-object v2, v2, Lzke;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    invoke-virtual {v4}, Lgpj;->K()Lerj;

    move-result-object v2

    invoke-interface {v3, v2}, Lrae;->f(Lerj;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lu4h;I)Z
    .locals 2

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lu4h;->G()I

    move-result p1

    if-eq p1, p2, :cond_1

    iput-boolean v1, p0, Lkje;->d:Z

    :cond_1
    iget p1, p0, Lkje;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lkje;->e:I

    iget-boolean p0, p0, Lkje;->d:Z

    return p0
.end method

.method public final zzc(Z)V
    .locals 10

    iget-boolean p1, p0, Lkje;->d:Z

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lkje;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Ln7g;->f(Z)V

    iget-object p1, p0, Lkje;->c:[Lrae;

    move v1, v0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    iget-wide v4, p0, Lkje;->g:J

    iget v7, p0, Lkje;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lrae;->g(JIIILqae;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lkje;->d:Z

    :cond_2
    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkje;->d:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lkje;->g:J

    return-void
.end method

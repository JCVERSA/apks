.class public final Lmae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Lf9e;

.field public g:Lrae;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmae;->a:I

    iput p2, p0, Lmae;->b:I

    iput-object p3, p0, Lmae;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lmae;->e:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Lmae;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lmae;->d:I

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 9

    iget p2, p0, Lmae;->e:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object p2, p0, Lmae;->g:Lrae;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {p2, p1, v3, v2}, Lrae;->a(Lk8j;IZ)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lmae;->e:I

    iget-object v2, p0, Lmae;->g:Lrae;

    iget v6, p0, Lmae;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Lrae;->g(JIIILqae;)V

    iput p2, p0, Lmae;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lmae;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lmae;->d:I

    :goto_0
    return p2
.end method

.method public final e(Ld9e;)Z
    .locals 5

    iget v0, p0, Lmae;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v4, p0, Lmae;->b:I

    if-eq v4, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Ln7g;->f(Z)V

    iget p0, p0, Lmae;->b:I

    new-instance v3, Lu4h;

    invoke-direct {v3, p0}, Lu4h;-><init>(I)V

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    check-cast p1, Lm8e;

    invoke-virtual {p1, v4, v2, p0, v2}, Lm8e;->e([BIIZ)Z

    invoke-virtual {v3}, Lu4h;->K()I

    move-result p0

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final f(Lf9e;)V
    .locals 3

    iput-object p1, p0, Lmae;->f:Lf9e;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lmae;->g:Lrae;

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    iget-object v1, p0, Lmae;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0, v1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object v0

    invoke-interface {p1, v0}, Lrae;->f(Lerj;)V

    iget-object p1, p0, Lmae;->f:Lf9e;

    invoke-interface {p1}, Lf9e;->zzG()V

    iget-object p1, p0, Lmae;->f:Lf9e;

    new-instance v0, Lnae;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lnae;-><init>(J)V

    invoke-interface {p1, v0}, Lf9e;->i(Lkae;)V

    const/4 p1, 0x1

    iput p1, p0, Lmae;->e:I

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

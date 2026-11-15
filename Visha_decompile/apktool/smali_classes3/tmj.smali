.class public final Ltmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzmj;
.implements Lymj;


# instance fields
.field public final b:Lbnj;

.field public final c:J

.field public d:Lknj;

.field public e:Lzmj;

.field public f:Lymj;

.field public g:J

.field public final h:Lnrj;


# direct methods
.method public constructor <init>(Lbnj;Lnrj;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltmj;->b:Lbnj;

    iput-object p2, p0, Ltmj;->h:Lnrj;

    iput-wide p3, p0, Ltmj;->c:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ltmj;->g:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    invoke-interface {p0, p1, p2}, Lzmj;->a(J)V

    return-void
.end method

.method public final b(Lz7j;)Z
    .locals 0

    iget-object p0, p0, Ltmj;->e:Lzmj;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lzmj;->b(Lz7j;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(J)J
    .locals 1

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    invoke-interface {p0, p1, p2}, Lzmj;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final d(Lymj;J)V
    .locals 0

    iput-object p1, p0, Ltmj;->f:Lymj;

    iget-object p1, p0, Ltmj;->e:Lzmj;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Ltmj;->c:J

    invoke-virtual {p0, p2, p3}, Ltmj;->p(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lzmj;->d(Lymj;J)V

    :cond_0
    return-void
.end method

.method public final e(JZ)V
    .locals 0

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget p3, Lkfh;->a:I

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lzmj;->e(JZ)V

    return-void
.end method

.method public final f(Lzmj;)V
    .locals 1

    iget-object p1, p0, Ltmj;->f:Lymj;

    sget v0, Lkfh;->a:I

    invoke-interface {p1, p0}, Lymj;->f(Lzmj;)V

    return-void
.end method

.method public final g(JLkaj;)J
    .locals 1

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    invoke-interface {p0, p1, p2, p3}, Lzmj;->g(JLkaj;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final bridge synthetic h(Lapj;)V
    .locals 1

    check-cast p1, Lzmj;

    iget-object p1, p0, Ltmj;->f:Lymj;

    sget v0, Lkfh;->a:I

    invoke-interface {p1, p0}, Lzoj;->h(Lapj;)V

    return-void
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Ltmj;->g:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Ltmj;->c:J

    return-wide v0
.end method

.method public final k(Lbnj;)V
    .locals 4

    iget-wide v0, p0, Ltmj;->c:J

    invoke-virtual {p0, v0, v1}, Ltmj;->p(J)J

    move-result-wide v0

    iget-object v2, p0, Ltmj;->d:Lknj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Ltmj;->h:Lnrj;

    invoke-interface {v2, p1, v3, v0, v1}, Lknj;->b(Lbnj;Lnrj;J)Lzmj;

    move-result-object p1

    iput-object p1, p0, Ltmj;->e:Lzmj;

    iget-object v2, p0, Ltmj;->f:Lymj;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Lzmj;->d(Lymj;J)V

    :cond_0
    return-void
.end method

.method public final l(J)V
    .locals 0

    iput-wide p1, p0, Ltmj;->g:J

    return-void
.end method

.method public final m([Ltqj;[Z[Lyoj;[ZJ)J
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Ltmj;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Ltmj;->c:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iput-wide v3, v0, Ltmj;->g:J

    iget-object v6, v0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v6 .. v12}, Lzmj;->m([Ltqj;[Z[Lyoj;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Ltmj;->e:Lzmj;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ltmj;->d:Lknj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v0}, Lknj;->h(Lzmj;)V

    :cond_0
    return-void
.end method

.method public final o(Lknj;)V
    .locals 1

    iget-object v0, p0, Ltmj;->d:Lknj;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iput-object p1, p0, Ltmj;->d:Lknj;

    return-void
.end method

.method public final p(J)J
    .locals 4

    iget-wide v0, p0, Ltmj;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method public final zzb()J
    .locals 2

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    invoke-interface {p0}, Lzmj;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    invoke-interface {p0}, Lzmj;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    invoke-interface {p0}, Lzmj;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()Lnpj;
    .locals 1

    iget-object p0, p0, Ltmj;->e:Lzmj;

    sget v0, Lkfh;->a:I

    invoke-interface {p0}, Lzmj;->zzg()Lnpj;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()V
    .locals 1

    iget-object v0, p0, Ltmj;->e:Lzmj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzmj;->zzi()V

    return-void

    :cond_0
    iget-object p0, p0, Ltmj;->d:Lknj;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lknj;->zzz()V

    :cond_1
    return-void
.end method

.method public final zzp()Z
    .locals 0

    iget-object p0, p0, Ltmj;->e:Lzmj;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lzmj;->zzp()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

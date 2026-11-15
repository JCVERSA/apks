.class public final Lemj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyoj;


# instance fields
.field public final a:Lyoj;

.field public b:Z

.field public final synthetic c:Lfmj;


# direct methods
.method public constructor <init>(Lfmj;Lyoj;)V
    .locals 0

    iput-object p1, p0, Lemj;->c:Lfmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lemj;->a:Lyoj;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lemj;->c:Lfmj;

    invoke-virtual {v0}, Lfmj;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    iget-object p0, p0, Lemj;->a:Lyoj;

    invoke-interface {p0, p1, p2}, Lyoj;->a(J)I

    move-result p0

    return p0
.end method

.method public final b(Lp7j;Lxzi;I)I
    .locals 11

    iget-object v0, p0, Lemj;->c:Lfmj;

    invoke-virtual {v0}, Lfmj;->j()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lemj;->b:Z

    const/4 v3, 0x4

    const/4 v4, -0x4

    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Lezi;->c(I)V

    return v4

    :cond_1
    invoke-virtual {v0}, Lfmj;->zzb()J

    move-result-wide v5

    iget-object v1, p0, Lemj;->a:Lyoj;

    invoke-interface {v1, p1, p2, p3}, Lyoj;->b(Lp7j;Lxzi;I)I

    move-result p3

    const/4 v1, -0x5

    const-wide/high16 v7, -0x8000000000000000L

    if-ne p3, v1, :cond_5

    iget-object p0, p1, Lp7j;->a:Lerj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lerj;->H:I

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iget p2, p0, Lerj;->I:I

    if-eqz p2, :cond_4

    move p2, p3

    :cond_2
    iget-wide v2, v0, Lfmj;->f:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget p3, p0, Lerj;->I:I

    :goto_0
    invoke-virtual {p0}, Lerj;->b()Lgpj;

    move-result-object p0

    invoke-virtual {p0, p2}, Lgpj;->i(I)Lgpj;

    invoke-virtual {p0, p3}, Lgpj;->j(I)Lgpj;

    invoke-virtual {p0}, Lgpj;->K()Lerj;

    move-result-object p0

    iput-object p0, p1, Lp7j;->a:Lerj;

    :cond_4
    return v1

    :cond_5
    iget-wide v0, v0, Lfmj;->f:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_8

    if-ne p3, v4, :cond_6

    iget-wide v9, p2, Lxzi;->f:J

    cmp-long p1, v9, v0

    if-gez p1, :cond_7

    :cond_6
    if-ne p3, v2, :cond_8

    cmp-long p1, v5, v7

    if-nez p1, :cond_8

    iget-boolean p1, p2, Lxzi;->e:Z

    if-nez p1, :cond_8

    :cond_7
    invoke-virtual {p2}, Lezi;->b()V

    invoke-virtual {p2, v3}, Lezi;->c(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lemj;->b:Z

    return v4

    :cond_8
    return p3
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lemj;->b:Z

    return-void
.end method

.method public final zzd()V
    .locals 0

    iget-object p0, p0, Lemj;->a:Lyoj;

    invoke-interface {p0}, Lyoj;->zzd()V

    return-void
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lemj;->c:Lfmj;

    invoke-virtual {v0}, Lfmj;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lemj;->a:Lyoj;

    invoke-interface {p0}, Lyoj;->zze()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

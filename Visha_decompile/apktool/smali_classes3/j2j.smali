.class public final Lj2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8j;


# instance fields
.field public final a:Lnaj;

.field public final b:Lh2j;

.field public c:Lx9j;

.field public d:Lb8j;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lh2j;Ltbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2j;->b:Lh2j;

    new-instance p1, Lnaj;

    invoke-direct {p1, p2}, Lnaj;-><init>(Ltbg;)V

    iput-object p1, p0, Lj2j;->a:Lnaj;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj2j;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 5

    iget-object v0, p0, Lj2j;->c:Lx9j;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lx9j;->f()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lj2j;->c:Lx9j;

    invoke-interface {v0}, Lx9j;->l()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lj2j;->c:Lx9j;

    invoke-interface {v0}, Lx9j;->zzX()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_4

    iget-object p1, p0, Lj2j;->c:Lx9j;

    invoke-interface {p1}, Lx9j;->zzQ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lj2j;->d:Lb8j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lb8j;->zza()J

    move-result-wide v0

    iget-boolean v2, p0, Lj2j;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lj2j;->a:Lnaj;

    invoke-virtual {v2}, Lnaj;->zza()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    invoke-virtual {v2}, Lnaj;->c()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lj2j;->e:Z

    iget-boolean v3, p0, Lj2j;->f:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lnaj;->b()V

    :cond_3
    iget-object v2, p0, Lj2j;->a:Lnaj;

    invoke-virtual {v2, v0, v1}, Lnaj;->a(J)V

    invoke-interface {p1}, Lb8j;->zzc()Lvwe;

    move-result-object p1

    invoke-virtual {v2}, Lnaj;->zzc()Lvwe;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvwe;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2, p1}, Lnaj;->h(Lvwe;)V

    iget-object v0, p0, Lj2j;->b:Lh2j;

    invoke-interface {v0, p1}, Lh2j;->b(Lvwe;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lj2j;->e:Z

    iget-boolean p1, p0, Lj2j;->f:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p1}, Lnaj;->b()V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lj2j;->zza()J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Lx9j;)V
    .locals 1

    iget-object v0, p0, Lj2j;->c:Lx9j;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lj2j;->d:Lb8j;

    iput-object p1, p0, Lj2j;->c:Lx9j;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj2j;->e:Z

    :cond_0
    return-void
.end method

.method public final c(Lx9j;)V
    .locals 2

    invoke-interface {p1}, Lx9j;->zzl()Lb8j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lj2j;->d:Lb8j;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lj2j;->d:Lb8j;

    iput-object p1, p0, Lj2j;->c:Lx9j;

    iget-object p0, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p0}, Lnaj;->zzc()Lvwe;

    move-result-object p0

    invoke-interface {v0, p0}, Lb8j;->h(Lvwe;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Multiple renderer media clocks enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public final d(J)V
    .locals 0

    iget-object p0, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p0, p1, p2}, Lnaj;->a(J)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2j;->f:Z

    iget-object p0, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p0}, Lnaj;->b()V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj2j;->f:Z

    iget-object p0, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p0}, Lnaj;->c()V

    return-void
.end method

.method public final h(Lvwe;)V
    .locals 1

    iget-object v0, p0, Lj2j;->d:Lb8j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb8j;->h(Lvwe;)V

    iget-object p1, p0, Lj2j;->d:Lb8j;

    invoke-interface {p1}, Lb8j;->zzc()Lvwe;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p0, p1}, Lnaj;->h(Lvwe;)V

    return-void
.end method

.method public final zza()J
    .locals 2

    iget-boolean v0, p0, Lj2j;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p0}, Lnaj;->zza()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj2j;->d:Lb8j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lb8j;->zza()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final zzc()Lvwe;
    .locals 1

    iget-object v0, p0, Lj2j;->d:Lb8j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb8j;->zzc()Lvwe;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lj2j;->a:Lnaj;

    invoke-virtual {p0}, Lnaj;->zzc()Lvwe;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lj2j;->e:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lj2j;->d:Lb8j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lb8j;->zzj()Z

    move-result p0

    return p0
.end method

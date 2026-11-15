.class public final Lcom/google/android/gms/ads/internal/client/zzeh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/Set;

.field public final d:Landroid/os/Bundle;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/util/Set;

.field public final i:Landroid/os/Bundle;

.field public final j:Ljava/util/Set;

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:I

.field public n:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzeg;Lnwh;)V
    .locals 2
    .param p2    # Lnwh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->n:J

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->g(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->n(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->l(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->c:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->e(Lcom/google/android/gms/ads/internal/client/zzeg;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->d:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->j(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->h(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->i(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->c(Lcom/google/android/gms/ads/internal/client/zzeg;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->g:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->m(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->h:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->d(Lcom/google/android/gms/ads/internal/client/zzeg;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->i:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->k(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->j:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->a(Lcom/google/android/gms/ads/internal/client/zzeg;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->k:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->f(Lcom/google/android/gms/ads/internal/client/zzeg;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzeg;->b(Lcom/google/android/gms/ads/internal/client/zzeg;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->m:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->m:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->g:I

    return p0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->n:J

    return-wide v0
.end method

.method public final zzd(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->d:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zze()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->i:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->d:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->d:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->b:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzm()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->j:Ljava/util/Set;

    return-object p0
.end method

.method public final zzn()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->c:Ljava/util/Set;

    return-object p0
.end method

.method public final zzo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->n:J

    return-void
.end method

.method public final zzp()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->k:Z

    return p0
.end method

.method public final zzq(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzet;->zzf()Lcom/google/android/gms/ads/internal/client/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzet;->zzc()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzeh;->h:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

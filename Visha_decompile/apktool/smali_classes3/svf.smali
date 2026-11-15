.class public final Lsvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1g;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lp2g;
.implements Ld0g;
.implements Lkzf;
.implements Lu5g;


# instance fields
.field public final b:Lfy0;

.field public final c:Lhef;


# direct methods
.method public constructor <init>(Lfy0;Lhef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsvf;->b:Lfy0;

    iput-object p2, p0, Lsvf;->c:Lhef;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-virtual {p0}, Lhef;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 0

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-virtual {p0, p1}, Lhef;->j(Lcom/google/android/gms/ads/internal/client/zzm;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 0

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-virtual {p0}, Lhef;->d()V

    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 0

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 0

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-virtual {p0}, Lhef;->i()V

    return-void
.end method

.method public final w(Lvmh;)V
    .locals 2

    iget-object p1, p0, Lsvf;->b:Lfy0;

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lhef;->k(J)V

    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/ads/g2;)V
    .locals 0

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-virtual {p0}, Lhef;->g()V

    return-void
.end method

.method public final zza()V
    .locals 0

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-virtual {p0}, Lhef;->e()V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    return-void
.end method

.method public final zzs()V
    .locals 0

    iget-object p0, p0, Lsvf;->c:Lhef;

    invoke-virtual {p0}, Lhef;->f()V

    return-void
.end method

.method public final zzt()V
    .locals 1

    iget-object p0, p0, Lsvf;->c:Lhef;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhef;->h(Z)V

    return-void
.end method

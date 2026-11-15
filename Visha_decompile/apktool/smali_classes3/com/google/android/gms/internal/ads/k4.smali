.class public final Lcom/google/android/gms/internal/ads/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkzf;
.implements Lv7g;


# instance fields
.field public final b:Lndf;

.field public final c:Landroid/content/Context;

.field public final d:Lrdf;

.field public final e:Landroid/view/View;

.field public f:Ljava/lang/String;

.field public final g:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;


# direct methods
.method public constructor <init>(Lndf;Landroid/content/Context;Lrdf;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k4;->b:Lndf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k4;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/k4;->d:Lrdf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/k4;->e:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/k4;->g:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k4;->d:Lrdf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k4;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lrdf;->p(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Lrdf;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k4;->b:Lndf;

    invoke-virtual {p0}, Lndf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbvk;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbvk;->zzb()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lrdf;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Remote Exception to get reward item."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k4;->b:Lndf;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lndf;->b(Z)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k4;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k4;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k4;->d:Lrdf;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k4;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lrdf;->o(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k4;->b:Lndf;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lndf;->b(Z)V

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

.method public final zzu()V
    .locals 0

    return-void
.end method

.method public final zzv()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k4;->g:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k4;->d:Lrdf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k4;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lrdf;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/k4;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    if-ne v0, v2, :cond_1

    const-string v0, "/Rewarded"

    goto :goto_0

    :cond_1
    const-string v0, "/Interstitial"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/k4;->f:Ljava/lang/String;

    return-void
.end method

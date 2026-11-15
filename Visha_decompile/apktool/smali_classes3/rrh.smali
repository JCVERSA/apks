.class public final Lrrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7g;
.implements Lzzf;
.implements Lz7g;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final c:Lwrh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrrh;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    const/16 p2, 0xd

    invoke-static {p1, p2}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object p1

    iput-object p1, p0, Lrrh;->c:Lwrh;

    return-void
.end method


# virtual methods
.method public final h(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    sget-object v0, Lsze;->d:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrrh;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Lrrh;->c:Lwrh;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zza()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lwrh;->zzc(Ljava/lang/String;)Lwrh;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 2

    sget-object v0, Lsze;->d:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrrh;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Lrrh;->c:Lwrh;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    :cond_0
    return-void
.end method

.method public final zzu()V
    .locals 0

    return-void
.end method

.method public final zzv()V
    .locals 1

    sget-object v0, Lsze;->d:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrrh;->c:Lwrh;

    invoke-interface {p0}, Lwrh;->zzi()Lwrh;

    :cond_0
    return-void
.end method

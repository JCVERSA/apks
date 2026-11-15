.class public final Lesh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final synthetic b:Lwrh;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Z)V
    .locals 0

    iput-object p1, p0, Lesh;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p2, p0, Lesh;->b:Lwrh;

    iput-boolean p3, p0, Lesh;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lesh;->b:Lwrh;

    invoke-interface {v0}, Lwrh;->zzk()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lesh;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-interface {v0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-boolean p0, p0, Lesh;->c:Z

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lesh;->b:Lwrh;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lwrh;->zzg(Z)Lwrh;

    iget-object v0, p0, Lesh;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-boolean p0, p0, Lesh;->c:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    :cond_0
    return-void
.end method

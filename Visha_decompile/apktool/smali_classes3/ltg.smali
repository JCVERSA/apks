.class public final Lltg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbui;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbur;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/android/gms/internal/ads/zzbur;Lcom/google/android/gms/internal/ads/zzbui;)V
    .locals 0

    iput-object p2, p0, Lltg;->b:Lcom/google/android/gms/internal/ads/zzbur;

    iput-object p3, p0, Lltg;->a:Lcom/google/android/gms/internal/ads/zzbui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lltg;->b:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbb;->zzb(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzbb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbur;->zze(Lcom/google/android/gms/ads/internal/util/zzbb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Service can\'t call client"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lltg;->b:Lcom/google/android/gms/internal/ads/zzbur;

    iget-object p0, p0, Lltg;->a:Lcom/google/android/gms/internal/ads/zzbui;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbur;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbui;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Service can\'t call client"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

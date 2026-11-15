.class final Lcom/google/android/gms/ads/internal/client/zzfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzfc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfb;->zza:Lcom/google/android/gms/ads/internal/client/zzfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfb;->zza:Lcom/google/android/gms/ads/internal/client/zzfc;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfc;->zza:Lcom/google/android/gms/ads/internal/client/zzfe;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzfe;->zzb(Lcom/google/android/gms/ads/internal/client/zzfe;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/zzfe;->zzb(Lcom/google/android/gms/ads/internal/client/zzfe;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzbk;->zze(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Could not notify onAdFailedToLoad event."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

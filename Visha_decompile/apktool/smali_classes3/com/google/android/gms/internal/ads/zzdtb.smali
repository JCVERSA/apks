.class public final synthetic Lcom/google/android/gms/internal/ads/zzdtb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/t4;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzblo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/t4;Lcom/google/android/gms/internal/ads/zzblo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zza:Lcom/google/android/gms/internal/ads/t4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzb:Lcom/google/android/gms/internal/ads/zzblo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zza:Lcom/google/android/gms/internal/ads/t4;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzb:Lcom/google/android/gms/internal/ads/zzblo;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t4;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzblo;->zzb(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

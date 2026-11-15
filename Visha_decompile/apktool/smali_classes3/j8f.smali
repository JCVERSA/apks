.class public final Lj8f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbll;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpz;Lcom/google/android/gms/internal/ads/zzbll;)V
    .locals 0

    iput-object p2, p0, Lj8f;->a:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj8f;->a:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbll;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationSucceeded()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lj8f;->a:Lcom/google/android/gms/internal/ads/zzbll;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbll;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

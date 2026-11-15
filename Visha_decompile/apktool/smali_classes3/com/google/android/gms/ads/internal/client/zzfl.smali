.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbwk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbwk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzbwk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzbwk;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwk;->zze(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

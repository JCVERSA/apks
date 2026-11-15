.class public final synthetic Ly4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnzf;


# instance fields
.field public final synthetic b:Lk4h;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbmc;


# direct methods
.method public synthetic constructor <init>(Lk4h;Lcom/google/android/gms/internal/ads/zzbmc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4h;->b:Lk4h;

    iput-object p2, p0, Ly4h;->c:Lcom/google/android/gms/internal/ads/zzbmc;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    iget-object v0, p0, Ly4h;->b:Lk4h;

    invoke-virtual {v0, p1}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object p0, p0, Ly4h;->c:Lcom/google/android/gms/internal/ads/zzbmc;

    const-string v0, "#007 Could not call remote method."

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbmc;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    :try_start_1
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbmc;->zze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

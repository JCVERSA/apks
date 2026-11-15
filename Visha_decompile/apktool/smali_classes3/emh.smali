.class public final Lemh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/ads/internal/client/zzcb;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzfar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0

    iput-object p2, p0, Lemh;->b:Lcom/google/android/gms/ads/internal/client/zzcb;

    iput-object p1, p0, Lemh;->c:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 1

    iget-object v0, p0, Lemh;->c:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzv(Lcom/google/android/gms/internal/ads/zzfar;)Lwig;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lemh;->b:Lcom/google/android/gms/ads/internal/client/zzcb;

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzcb;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.class public final Lthg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbgx;

.field public final b:Lhig;

.field public final c:Lzxi;


# direct methods
.method public constructor <init>(Lsdg;Lddg;Lhig;Lzxi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lddg;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsdg;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgx;

    move-result-object p1

    iput-object p1, p0, Lthg;->a:Lcom/google/android/gms/internal/ads/zzbgx;

    iput-object p3, p0, Lthg;->b:Lhig;

    iput-object p4, p0, Lthg;->c:Lzxi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Lthg;->a:Lcom/google/android/gms/internal/ads/zzbgx;

    iget-object p0, p0, Lthg;->c:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbgx;->zze(Lcom/google/android/gms/internal/ads/zzbgn;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lthg;->a:Lcom/google/android/gms/internal/ads/zzbgx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lthg;->b:Lhig;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lhig;->l(Ljava/lang/String;Ln3f;)V

    return-void
.end method

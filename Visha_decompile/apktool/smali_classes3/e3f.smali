.class public final Le3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lejf;

    invoke-interface {p1}, Lejf;->zzJ()Lmve;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lejf;->zzJ()Lmve;

    move-result-object p0

    invoke-interface {p0}, Lmve;->zza()V

    :cond_0
    invoke-interface {p1}, Lejf;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb()V

    return-void

    :cond_1
    invoke-interface {p1}, Lejf;->zzM()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb()V

    return-void

    :cond_2
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void
.end method

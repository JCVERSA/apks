.class public final Lcom/google/android/gms/internal/ads/zzbqa;
.super Lcom/google/android/gms/internal/ads/zzbpg;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zza:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    return-void
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zza:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationBannerAd;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zza:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;->shouldDelegateInterscrollerEffect()Z

    move-result p0

    return p0
.end method

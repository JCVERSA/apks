.class public final Ll9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbrq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrq;)V
    .locals 0

    iput-object p1, p0, Ll9f;->b:Lcom/google/android/gms/internal/ads/zzbrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdE()V
    .locals 0

    const-string p0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdi()V
    .locals 0

    const-string p0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdo()V
    .locals 0

    const-string p0, "Delay close AdMobCustomTabsAdapter overlay."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdp()V
    .locals 1

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    iget-object p0, p0, Ll9f;->b:Lcom/google/android/gms/internal/ads/zzbrq;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbrq;->b(Lcom/google/android/gms/internal/ads/zzbrq;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final zzdr()V
    .locals 0

    return-void
.end method

.method public final zzds(I)V
    .locals 0

    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    iget-object p0, p0, Ll9f;->b:Lcom/google/android/gms/internal/ads/zzbrq;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbrq;->b(Lcom/google/android/gms/internal/ads/zzbrq;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/ads/rewarded/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/ads/AdRequest;

.field public final synthetic zzd:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zzc:Lcom/google/android/gms/ads/AdRequest;

    iput-object p4, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zzd:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zzc:Lcom/google/android/gms/ads/AdRequest;

    iget-object p0, p0, Lcom/google/android/gms/ads/rewarded/zzc;->zzd:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    :try_start_0
    new-instance v3, Lkcf;

    invoke-direct {v3, v0, v1}, Lkcf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/ads/internal/client/zzeh;

    move-result-object v1

    invoke-virtual {v3, v1, p0}, Lkcf;->a(Lcom/google/android/gms/ads/internal/client/zzeh;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {v0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object v0

    const-string v1, "RewardedAd.load"

    invoke-interface {v0, p0, v1}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

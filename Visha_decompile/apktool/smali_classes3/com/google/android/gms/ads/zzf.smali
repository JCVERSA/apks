.class public final synthetic Lcom/google/android/gms/ads/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/BaseAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/BaseAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/zzf;->zza:Lcom/google/android/gms/ads/BaseAdView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/ads/zzf;->zza:Lcom/google/android/gms/ads/BaseAdView;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzn()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object p0

    const-string v1, "BaseAdView.pause"

    invoke-interface {p0, v0, v1}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

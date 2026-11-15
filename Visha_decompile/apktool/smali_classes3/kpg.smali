.class public final synthetic Lkpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdva;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdva;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpg;->a:Lcom/google/android/gms/internal/ads/zzdva;

    iput-object p2, p0, Lkpg;->b:Ljava/lang/String;

    iput-object p3, p0, Lkpg;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 2

    iget-object v0, p0, Lkpg;->a:Lcom/google/android/gms/internal/ads/zzdva;

    iget-object v1, p0, Lkpg;->b:Ljava/lang/String;

    iget-object p0, p0, Lkpg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzg(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

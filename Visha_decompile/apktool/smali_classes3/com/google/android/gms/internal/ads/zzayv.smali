.class public final Lcom/google/android/gms/internal/ads/zzayv;
.super Lcom/google/android/gms/ads/internal/client/zzck;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/admanager/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzck;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayv;->zza:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayv;->zza:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayv;->zza:Lcom/google/android/gms/ads/admanager/AppEventListener;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/ads/admanager/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

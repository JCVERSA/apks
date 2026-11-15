.class public final synthetic Lcom/google/android/gms/internal/ads/zzgar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/f8;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfwr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/zzfwr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Lcom/google/android/gms/internal/ads/f8;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Lcom/google/android/gms/internal/ads/zzfwr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Lcom/google/android/gms/internal/ads/f8;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/f8;->z(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/zzfwr;)V

    return-void
.end method

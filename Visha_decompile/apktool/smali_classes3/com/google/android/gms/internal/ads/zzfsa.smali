.class public final synthetic Lcom/google/android/gms/internal/ads/zzfsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/j6;

.field public final synthetic zzb:Lm1i;

.field public final synthetic zzc:Lp1i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/j6;Lm1i;Lp1i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/j6;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lm1i;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzc:Lp1i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/j6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lm1i;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzc:Lp1i;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j6;->c(Lcom/google/android/gms/internal/ads/j6;Lm1i;Lp1i;)V

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzexc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lpih;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lpih;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexc;->zza:Lpih;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexc;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexc;->zza:Lpih;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzexc;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-static {v0, p0}, Lpih;->h(Lpih;Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzeys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lckh;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lckh;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeys;->zza:Lckh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeys;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeys;->zza:Lckh;

    iget-object v0, v0, Lckh;->e:Ldkh;

    invoke-static {v0}, Ldkh;->b(Ldkh;)Lk4h;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeys;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, p0}, Lk4h;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

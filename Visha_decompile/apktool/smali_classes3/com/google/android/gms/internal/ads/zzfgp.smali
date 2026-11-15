.class public final synthetic Lcom/google/android/gms/internal/ads/zzfgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final synthetic zzb:Lash;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgq;Lash;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zza:Lcom/google/android/gms/internal/ads/zzfgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Lash;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zza:Lcom/google/android/gms/internal/ads/zzfgq;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Lash;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzb(Lcom/google/android/gms/internal/ads/zzfgq;Lash;)V

    return-void
.end method

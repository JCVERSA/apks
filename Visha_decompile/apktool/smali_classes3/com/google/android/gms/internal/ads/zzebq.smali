.class public final synthetic Lcom/google/android/gms/internal/ads/zzebq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/b6;

.field public final synthetic zzb:Lojf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/b6;Lojf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebq;->zza:Lcom/google/android/gms/internal/ads/b6;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebq;->zzb:Lojf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebq;->zza:Lcom/google/android/gms/internal/ads/b6;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzebq;->zzb:Lojf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/b6;->g(Lojf;)V

    return-void
.end method

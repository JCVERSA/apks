.class public final synthetic Lcom/google/android/gms/internal/ads/zzcbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcby;

.field public final synthetic zzb:Z

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcby;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbr;->zza:Lcom/google/android/gms/internal/ads/zzcby;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcbr;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcbr;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbr;->zza:Lcom/google/android/gms/internal/ads/zzcby;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbr;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcbr;->zzc:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcby;->zzR(Lcom/google/android/gms/internal/ads/zzcby;ZJ)V

    return-void
.end method

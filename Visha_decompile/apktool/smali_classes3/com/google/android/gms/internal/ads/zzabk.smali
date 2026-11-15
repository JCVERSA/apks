.class public final synthetic Lcom/google/android/gms/internal/ads/zzabk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lk7e;

.field public final synthetic zzb:Ljava/lang/Object;

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lk7e;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabk;->zza:Lk7e;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzb:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabk;->zza:Lk7e;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzb:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabk;->zzc:J

    invoke-static {v0, v1, v2, v3}, Lk7e;->h(Lk7e;Ljava/lang/Object;J)V

    return-void
.end method

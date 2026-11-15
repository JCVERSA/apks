.class public final synthetic Lcom/google/android/gms/internal/ads/zzabj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lk7e;

.field public final synthetic zzb:I

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lk7e;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabj;->zza:Lk7e;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzabj;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzabj;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabj;->zza:Lk7e;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabj;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabj;->zzc:J

    invoke-static {v0, v1, v2, v3}, Lk7e;->d(Lk7e;IJ)V

    return-void
.end method

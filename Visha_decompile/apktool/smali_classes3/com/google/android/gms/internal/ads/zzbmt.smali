.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/t3;

.field public final synthetic zzb:Lq6f;

.field public final synthetic zzc:Ls5f;

.field public final synthetic zzd:Ljava/util/ArrayList;

.field public final synthetic zze:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/t3;Lq6f;Ls5f;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zza:Lcom/google/android/gms/internal/ads/t3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzb:Lq6f;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzc:Ls5f;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzd:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zze:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zza:Lcom/google/android/gms/internal/ads/t3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzb:Lq6f;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzc:Ls5f;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zzd:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbmt;->zze:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/t3;->i(Lcom/google/android/gms/internal/ads/t3;Lq6f;Ls5f;Ljava/util/ArrayList;J)V

    return-void
.end method

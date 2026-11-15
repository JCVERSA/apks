.class public final synthetic Lcom/google/android/gms/internal/ads/zzdtd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/t4;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbll;

.field public final synthetic zzd:Leoh;

.field public final synthetic zze:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbll;Leoh;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zza:Lcom/google/android/gms/internal/ads/t4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzc:Lcom/google/android/gms/internal/ads/zzbll;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzd:Leoh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zza:Lcom/google/android/gms/internal/ads/t4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzc:Lcom/google/android/gms/internal/ads/zzbll;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zzd:Leoh;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdtd;->zze:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/t4;->m(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbll;Leoh;Ljava/util/List;)V

    return-void
.end method

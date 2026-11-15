.class public final synthetic Lcom/google/android/gms/internal/ads/zzdsy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/t4;

.field public final synthetic zzb:Ljava/lang/Object;

.field public final synthetic zzc:Leff;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:J

.field public final synthetic zzf:Lwrh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/Object;Leff;Ljava/lang/String;JLwrh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zza:Lcom/google/android/gms/internal/ads/t4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzc:Leff;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzf:Lwrh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zza:Lcom/google/android/gms/internal/ads/t4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzc:Leff;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zze:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzf:Lwrh;

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/t4;->i(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/Object;Leff;Ljava/lang/String;JLwrh;)V

    return-void
.end method

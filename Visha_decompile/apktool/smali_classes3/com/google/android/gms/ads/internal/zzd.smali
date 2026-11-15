.class public final synthetic Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/zzf;

.field public final synthetic zzb:Ljava/lang/Long;

.field public final synthetic zzc:Lsmg;

.field public final synthetic zzd:Lwrh;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfgq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lsmg;Lwrh;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/ads/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lsmg;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lwrh;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzd;->zze:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/ads/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lsmg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lwrh;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzd;->zze:Lcom/google/android/gms/internal/ads/zzfgq;

    move-object v5, p1

    check-cast v5, Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lsmg;Lwrh;Lcom/google/android/gms/internal/ads/zzfgq;Lorg/json/JSONObject;)Lim5;

    move-result-object p0

    return-object p0
.end method

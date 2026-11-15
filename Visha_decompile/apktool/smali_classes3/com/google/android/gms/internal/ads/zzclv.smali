.class public final synthetic Lcom/google/android/gms/internal/ads/zzclv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lwth;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;


# direct methods
.method public synthetic constructor <init>(Lwth;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclv;->zza:Lwth;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zza:Lwth;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzb:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzclv;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzdta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/t4;

.field public final synthetic zzb:Leff;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/t4;Leff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdta;->zza:Lcom/google/android/gms/internal/ads/t4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdta;->zzb:Leff;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdta;->zza:Lcom/google/android/gms/internal/ads/t4;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdta;->zzb:Leff;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/t4;->k(Lcom/google/android/gms/internal/ads/t4;Leff;)V

    return-void
.end method

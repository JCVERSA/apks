.class final Lcom/google/android/gms/internal/ads/zzgag$zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/x7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/x7;"
        }
    .end annotation
.end field

.field final zzb:Lim5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lim5;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x7;Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgag$zzb;->zza:Lcom/google/android/gms/internal/ads/x7;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgag$zzb;->zzb:Lim5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgag$zzb;->zza:Lcom/google/android/gms/internal/ads/x7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/d8;->zzw()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgag$zzb;->zzb:Lim5;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgag$zzb;->zza:Lcom/google/android/gms/internal/ads/x7;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x7;->zzg(Lim5;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/ads/d8;->zzD(Lcom/google/android/gms/internal/ads/d8;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgag$zzb;->zza:Lcom/google/android/gms/internal/ads/x7;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/x7;->zzj(Lcom/google/android/gms/internal/ads/x7;Z)V

    :cond_1
    :goto_0
    return-void
.end method

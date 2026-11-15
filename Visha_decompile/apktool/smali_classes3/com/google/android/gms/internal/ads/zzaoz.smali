.class final Lcom/google/android/gms/internal/ads/zzaoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/c;

.field private final zzb:Lkme;

.field private final zzc:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c;Lkme;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zza:Lcom/google/android/gms/internal/ads/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzb:Lkme;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzc:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zza:Lcom/google/android/gms/internal/ads/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c;->zzw()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzb:Lkme;

    invoke-virtual {v1}, Lkme;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lkme;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lkme;->c:Lcom/google/android/gms/internal/ads/zzaps;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/c;->zzn(Lcom/google/android/gms/internal/ads/zzaps;)V

    :goto_0
    iget-boolean v1, v1, Lkme;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c;->e(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaoz;->zzc:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/zzgct;
.super Lcom/google/android/gms/internal/ads/i8;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/ads/zzgca;


# direct methods
.method public constructor <init>(Lj7i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i8;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgcr;-><init>(Lcom/google/android/gms/internal/ads/zzgct;Lj7i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Lcom/google/android/gms/internal/ads/zzgca;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i8;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgcs;-><init>(Lcom/google/android/gms/internal/ads/zzgct;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Lcom/google/android/gms/internal/ads/zzgca;

    return-void
.end method

.method public static zze(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgct;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgct;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Lcom/google/android/gms/internal/ads/zzgca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgca;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Lcom/google/android/gms/internal/ads/zzgca;

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Lcom/google/android/gms/internal/ads/zzgca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/x7;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x7;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Lcom/google/android/gms/internal/ads/zzgca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgca;->zzh()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgct;->zza:Lcom/google/android/gms/internal/ads/zzgca;

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzdar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lz5g;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lz5g;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdar;->zza:Lz5g;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdar;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdar;->zza:Lz5g;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdar;->zzb:Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, p0}, Lz5g;->zza(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "EventEmitter.notify"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Event emitter exception."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

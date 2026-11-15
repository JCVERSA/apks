.class final Lcom/google/android/libraries/places/internal/zzajp$zze;
.super Lcom/google/android/libraries/places/internal/zzajp$zza;
.source "source.java"


# instance fields
.field final zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/libraries/places/internal/zzajp$zzj;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/libraries/places/internal/zzajp$zzj;",
            "Lcom/google/android/libraries/places/internal/zzajp$zzj;",
            ">;"
        }
    .end annotation
.end field

.field final zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/libraries/places/internal/zzajp;",
            "Lcom/google/android/libraries/places/internal/zzajp$zzj;",
            ">;"
        }
    .end annotation
.end field

.field final zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/libraries/places/internal/zzajp;",
            "Lcom/google/android/libraries/places/internal/zzajp$zzd;",
            ">;"
        }
    .end annotation
.end field

.field final zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/libraries/places/internal/zzajp;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzajp$zza;-><init>(Lcom/google/android/libraries/places/internal/zzajo;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;)Lcom/google/android/libraries/places/internal/zzajp$zzd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/libraries/places/internal/zzajp$zzd;

    .line 8
    .line 9
    return-object p1
.end method

.method final zzb(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;)Lcom/google/android/libraries/places/internal/zzajp$zzj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/libraries/places/internal/zzajp$zzj;

    .line 8
    .line 9
    return-object p1
.end method

.method final zzc(Lcom/google/android/libraries/places/internal/zzajp$zzj;Lcom/google/android/libraries/places/internal/zzajp$zzj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final zzd(Lcom/google/android/libraries/places/internal/zzajp$zzj;Ljava/lang/Thread;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final zze(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;Lcom/google/android/libraries/places/internal/zzajp$zzd;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzajq;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method final zzf(Lcom/google/android/libraries/places/internal/zzajp;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzajq;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method final zzg(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;Lcom/google/android/libraries/places/internal/zzajp$zzj;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzajp$zze;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzajq;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.class final Lcom/google/android/libraries/places/internal/zzbqb;
.super Lcom/google/android/libraries/places/internal/zzbpz;
.source "source.java"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lcom/google/android/libraries/places/internal/zzbqa;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzbpz;-><init>(Lcom/google/android/libraries/places/internal/zzbpy;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbqb;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbqe;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqb;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbqe;II)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbqb;->zza:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p2, p1, p3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

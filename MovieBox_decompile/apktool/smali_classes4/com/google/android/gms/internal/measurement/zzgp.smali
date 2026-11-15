.class final Lcom/google/android/gms/internal/measurement/zzgp;
.super Landroid/database/ContentObserver;
.source "source.java"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzgn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgn;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgn;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzgn;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

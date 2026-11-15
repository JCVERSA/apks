.class final Lcom/google/android/gms/internal/play_billing/zzcf;
.super Lcom/google/android/gms/internal/play_billing/zzcl;
.source "source.java"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzcf;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcl;->zze()Lcom/google/android/gms/internal/play_billing/zzcl;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>(Lcom/google/android/gms/internal/play_billing/zzcl;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcf;->zza:Lcom/google/android/gms/internal/play_billing/zzcf;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcl;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    return-void
.end method

.method public static final zzb()Lcom/google/android/gms/internal/play_billing/zzcf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcf;->zza:Lcom/google/android/gms/internal/play_billing/zzcf;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/play_billing/zzbh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcl;->zza()Lcom/google/android/gms/internal/play_billing/zzbh;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/play_billing/zzcy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc()Lcom/google/android/gms/internal/play_billing/zzcy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcl;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.class public final Lcom/google/android/libraries/places/internal/zzbwo;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbwo;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzbwn;

.field private static final zzc:I

.field private static final zzd:[Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwo;->zza:Lcom/google/android/libraries/places/internal/zzbwo;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwn;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    new-array v2, v7, [B

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, v0

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>([BIIZZ)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwo;->zzb:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, v0

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sput v0, Lcom/google/android/libraries/places/internal/zzbwo;->zzc:I

    .line 39
    .line 40
    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    :goto_0
    if-ge v7, v0, :cond_0

    .line 43
    .line 44
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    .line 48
    .line 49
    aput-object v2, v1, v7

    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbwo;->zzd:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final zza()Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zzc()Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbwo;->zzb:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/android/libraries/places/internal/zzbwn;

    .line 12
    .line 13
    if-ne v2, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwn;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwn;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 42
    .line 43
    return-object v2
.end method

.method public static final zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zzc()Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbwo;->zzb:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/libraries/places/internal/zzbwn;

    .line 30
    .line 31
    if-eq v2, v1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v1

    .line 40
    :goto_0
    const/high16 v4, 0x10000

    .line 41
    .line 42
    if-lt v3, v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 49
    .line 50
    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 51
    .line 52
    add-int/lit16 v3, v3, 0x2000

    .line 53
    .line 54
    iput v3, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    return-void

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v0, "Failed requirement."

    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method private static final zzc()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget v2, Lcom/google/android/libraries/places/internal/zzbwo;->zzc:I

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    add-long/2addr v2, v4

    .line 15
    and-long/2addr v0, v2

    .line 16
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbwo;->zzd:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    long-to-int v0, v0

    .line 19
    aget-object v0, v2, v0

    .line 20
    .line 21
    return-object v0
.end method

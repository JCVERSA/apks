.class public final Lcom/google/android/libraries/places/internal/zzakd;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzakd;->zza:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzakd;->zzb:Ljava/lang/Boolean;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/libraries/places/internal/zzakd;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzakd;->zzb:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzakd;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object v1, v2, v0

    .line 10
    .line 11
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzakd;->zza:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0
.end method

.method public final zzc()Ljava/util/concurrent/ThreadFactory;
    .locals 8

    .line 1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzakd;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzakd;->zzb:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    invoke-direct {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    move-object v3, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    new-instance v7, Lcom/google/android/libraries/places/internal/zzakc;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v0, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzakc;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 28
    .line 29
    .line 30
    return-object v7
.end method

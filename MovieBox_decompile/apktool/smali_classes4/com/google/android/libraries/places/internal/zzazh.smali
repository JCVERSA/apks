.class final Lcom/google/android/libraries/places/internal/zzazh;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzazi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "io.grpc.override.ContextStorageOverride"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/google/android/libraries/places/internal/zzazi;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/libraries/places/internal/zzazi;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v2, "Storage override failed to initialize"

    .line 37
    .line 38
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbdx;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbdx;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_2
    sput-object v1, Lcom/google/android/libraries/places/internal/zzazh;->zza:Lcom/google/android/libraries/places/internal/zzazi;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v6, v0

    .line 57
    check-cast v6, Ljava/lang/Throwable;

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    sget-object v1, Lcom/google/android/libraries/places/internal/zzazj;->zza:Ljava/util/logging/Logger;

    .line 62
    .line 63
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 64
    .line 65
    const-string v4, "<clinit>"

    .line 66
    .line 67
    const-string v5, "Storage override doesn\'t exist. Using default"

    .line 68
    .line 69
    const-string v3, "io.grpc.Context$LazyStorage"

    .line 70
    .line 71
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.class public final Lcom/google/android/libraries/places/internal/zzbnz;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbkj;


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/lang/reflect/Constructor;

.field private static final zzc:Ljava/lang/reflect/Method;

.field private static final zzd:Ljava/lang/reflect/Method;

.field private static final zze:Ljava/lang/RuntimeException;

.field private static final zzf:[Ljava/lang/Object;


# instance fields
.field private final zzg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Lcom/google/android/libraries/places/internal/zzbnz;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbnz;->zza:Ljava/util/logging/Logger;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    const-string v3, "java.util.concurrent.atomic.LongAdder"

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "add"

    .line 23
    .line 24
    new-array v5, v1, [Ljava/lang/Class;

    .line 25
    .line 26
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    aput-object v6, v5, v0

    .line 29
    .line 30
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    :try_start_1
    const-string v5, "sum"

    .line 35
    .line 36
    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    array-length v6, v3

    .line 45
    move v7, v0

    .line 46
    :goto_0
    if-ge v7, v6, :cond_1

    .line 47
    .line 48
    aget-object v8, v3, v7

    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    array-length v9, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    if-nez v9, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    add-int/2addr v7, v1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v3

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    move-object v8, v2

    .line 63
    :goto_1
    move-object v3, v2

    .line 64
    goto :goto_4

    .line 65
    :goto_2
    move-object v10, v4

    .line 66
    move-object v11, v5

    .line 67
    goto :goto_3

    .line 68
    :catchall_1
    move-exception v3

    .line 69
    move-object v11, v2

    .line 70
    move-object v10, v4

    .line 71
    goto :goto_3

    .line 72
    :catchall_2
    move-exception v3

    .line 73
    move-object v10, v2

    .line 74
    move-object v11, v10

    .line 75
    :goto_3
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbnz;->zza:Ljava/util/logging/Logger;

    .line 76
    .line 77
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 78
    .line 79
    const-string v7, "<clinit>"

    .line 80
    .line 81
    const-string v8, "LongAdder can not be found via reflection, this is normal for JDK7 and below"

    .line 82
    .line 83
    const-string v6, "io.grpc.internal.ReflectionLongAdderCounter"

    .line 84
    .line 85
    move-object v9, v3

    .line 86
    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    move-object v8, v2

    .line 90
    move-object v4, v10

    .line 91
    move-object v5, v11

    .line 92
    :goto_4
    if-nez v3, :cond_2

    .line 93
    .line 94
    if-eqz v8, :cond_2

    .line 95
    .line 96
    sput-object v8, Lcom/google/android/libraries/places/internal/zzbnz;->zzb:Ljava/lang/reflect/Constructor;

    .line 97
    .line 98
    sput-object v4, Lcom/google/android/libraries/places/internal/zzbnz;->zzc:Ljava/lang/reflect/Method;

    .line 99
    .line 100
    sput-object v5, Lcom/google/android/libraries/places/internal/zzbnz;->zzd:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbnz;->zze:Ljava/lang/RuntimeException;

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_2
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbnz;->zzb:Ljava/lang/reflect/Constructor;

    .line 106
    .line 107
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbnz;->zzc:Ljava/lang/reflect/Method;

    .line 108
    .line 109
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbnz;->zzd:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    .line 112
    .line 113
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbnz;->zze:Ljava/lang/RuntimeException;

    .line 117
    .line 118
    :goto_5
    const-wide/16 v2, 0x1

    .line 119
    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v2, v1, v0

    .line 127
    .line 128
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbnz;->zzf:[Ljava/lang/Object;

    .line 129
    .line 130
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnz;->zze:Ljava/lang/RuntimeException;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnz;->zzb:Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnz;->zzg:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :catch_2
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_0
    throw v0
.end method

.method static zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnz;->zze:Ljava/lang/RuntimeException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method


# virtual methods
.method public final zza(J)V
    .locals 1

    .line 1
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbnz;->zzc:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnz;->zzg:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbnz;->zzf:[Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p2

    .line 21
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p2
.end method

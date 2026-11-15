.class public final Lcom/google/android/libraries/places/internal/zzbvr;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzbvp;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    :try_start_0
    const-string v6, "io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl"

    .line 9
    .line 10
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    move-object v7, v5

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v6

    .line 17
    move-object v7, v6

    .line 18
    move-object v6, v5

    .line 19
    :goto_0
    if-eqz v6, :cond_0

    .line 20
    .line 21
    :try_start_1
    const-class v8, Lcom/google/android/libraries/places/internal/zzbvp;

    .line 22
    .line 23
    invoke-virtual {v6, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    new-array v8, v3, [Ljava/lang/Class;

    .line 28
    .line 29
    const-class v9, Lcom/google/android/libraries/places/internal/zzbvs;

    .line 30
    .line 31
    aput-object v9, v8, v2

    .line 32
    .line 33
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    new-array v8, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v9, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    .line 40
    .line 41
    aput-object v9, v8, v2

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/google/android/libraries/places/internal/zzbvp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v6

    .line 51
    move-object v7, v6

    .line 52
    :cond_0
    move-object v6, v5

    .line 53
    :goto_1
    if-eqz v6, :cond_1

    .line 54
    .line 55
    sput-object v6, Lcom/google/android/libraries/places/internal/zzbvr;->zzb:Lcom/google/android/libraries/places/internal/zzbvp;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    new-instance v6, Lcom/google/android/libraries/places/internal/zzbvp;

    .line 59
    .line 60
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    .line 61
    .line 62
    invoke-direct {v6, v8}, Lcom/google/android/libraries/places/internal/zzbvp;-><init>(Lcom/google/android/libraries/places/internal/zzbvs;)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lcom/google/android/libraries/places/internal/zzbvr;->zzb:Lcom/google/android/libraries/places/internal/zzbvp;

    .line 66
    .line 67
    :goto_2
    if-eqz v7, :cond_2

    .line 68
    .line 69
    :try_start_2
    const-string v6, "io.perfmark.PerfMark.debug"

    .line 70
    .line 71
    invoke-static {v6}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    const-string v6, "java.util.logging.Logger"

    .line 78
    .line 79
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v8, "getLogger"

    .line 84
    .line 85
    new-array v9, v3, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v4, v9, v2

    .line 88
    .line 89
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    const-class v9, Lcom/google/android/libraries/places/internal/zzbvr;

    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    new-array v10, v3, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v9, v10, v2

    .line 102
    .line 103
    invoke-virtual {v8, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const-string v9, "java.util.logging.Level"

    .line 108
    .line 109
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    const-string v10, "FINE"

    .line 114
    .line 115
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const-string v10, "log"

    .line 124
    .line 125
    new-array v11, v1, [Ljava/lang/Class;

    .line 126
    .line 127
    aput-object v9, v11, v2

    .line 128
    .line 129
    aput-object v4, v11, v3

    .line 130
    .line 131
    const-class v4, Ljava/lang/Throwable;

    .line 132
    .line 133
    aput-object v4, v11, v0

    .line 134
    .line 135
    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    new-array v1, v1, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v5, v1, v2

    .line 142
    .line 143
    const-string v2, "Error during PerfMark.<clinit>"

    .line 144
    .line 145
    aput-object v2, v1, v3

    .line 146
    .line 147
    aput-object v7, v1, v0

    .line 148
    .line 149
    invoke-virtual {v4, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 150
    .line 151
    .line 152
    :catchall_2
    :cond_2
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

.method public static zza()Lcom/google/android/libraries/places/internal/zzbvq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbvp;->zzb:Lcom/google/android/libraries/places/internal/zzbvq;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbvs;
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzbvs;
    .locals 0

    .line 1
    sget-object p0, Lcom/google/android/libraries/places/internal/zzbvp;->zza:Lcom/google/android/libraries/places/internal/zzbvs;

    .line 2
    .line 3
    return-object p0
.end method

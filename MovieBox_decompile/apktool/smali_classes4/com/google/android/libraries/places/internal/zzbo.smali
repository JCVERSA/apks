.class public final Lcom/google/android/libraries/places/internal/zzbo;
.super Lcom/google/android/libraries/places/internal/zzatu;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzaua;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzbo;

.field private static volatile zzf:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzg:I

.field private zzh:Lcom/google/android/libraries/places/internal/zzatz;

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:J

.field private zzm:F

.field private zzn:F

.field private zzo:I

.field private zzp:Lcom/google/android/libraries/places/internal/zzbj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbm;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbm;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbo;->zzb:Lcom/google/android/libraries/places/internal/zzaua;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbo;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbo;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    .line 14
    .line 15
    const-class v1, Lcom/google/android/libraries/places/internal/zzbo;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatu;->zzau()Lcom/google/android/libraries/places/internal/zzatz;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbo;->zzh:Lcom/google/android/libraries/places/internal/zzatz;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic zza()Lcom/google/android/libraries/places/internal/zzbo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x6

    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    if-eqz p1, :cond_7

    .line 10
    .line 11
    if-eq p1, v3, :cond_6

    .line 12
    .line 13
    if-eq p1, v2, :cond_5

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    if-eq p1, v1, :cond_4

    .line 17
    .line 18
    if-eq p1, v0, :cond_3

    .line 19
    .line 20
    if-eq p1, p3, :cond_0

    .line 21
    .line 22
    return-object p2

    .line 23
    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-class p2, Lcom/google/android/libraries/places/internal/zzbo;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zzf:Lcom/google/android/libraries/places/internal/zzavn;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit p2

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_2
    :goto_2
    return-object p1

    .line 51
    :cond_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbn;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzbn;-><init>(Lcom/google/android/libraries/places/internal/zzbg;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbo;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbo;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    const/16 p1, 0xe

    .line 67
    .line 68
    new-array p1, p1, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v4, "zzg"

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    aput-object v4, p1, v5

    .line 74
    .line 75
    const-string v4, "zzh"

    .line 76
    .line 77
    aput-object v4, p1, p2

    .line 78
    .line 79
    sget-object p2, Lcom/google/android/libraries/places/internal/zzas;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    .line 80
    .line 81
    aput-object p2, p1, v3

    .line 82
    .line 83
    const-string v3, "zzi"

    .line 84
    .line 85
    aput-object v3, p1, v2

    .line 86
    .line 87
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbh;->zza:Lcom/google/android/libraries/places/internal/zzaty;

    .line 88
    .line 89
    aput-object v2, p1, v1

    .line 90
    .line 91
    const-string v1, "zzj"

    .line 92
    .line 93
    aput-object v1, p1, v0

    .line 94
    .line 95
    aput-object v2, p1, p3

    .line 96
    .line 97
    const-string p3, "zzk"

    .line 98
    .line 99
    const/4 v0, 0x7

    .line 100
    aput-object p3, p1, v0

    .line 101
    .line 102
    const-string p3, "zzl"

    .line 103
    .line 104
    const/16 v0, 0x8

    .line 105
    .line 106
    aput-object p3, p1, v0

    .line 107
    .line 108
    const-string p3, "zzm"

    .line 109
    .line 110
    const/16 v0, 0x9

    .line 111
    .line 112
    aput-object p3, p1, v0

    .line 113
    .line 114
    const-string p3, "zzn"

    .line 115
    .line 116
    const/16 v0, 0xa

    .line 117
    .line 118
    aput-object p3, p1, v0

    .line 119
    .line 120
    const-string p3, "zzo"

    .line 121
    .line 122
    const/16 v0, 0xb

    .line 123
    .line 124
    aput-object p3, p1, v0

    .line 125
    .line 126
    const/16 p3, 0xc

    .line 127
    .line 128
    aput-object p2, p1, p3

    .line 129
    .line 130
    const-string p2, "zzp"

    .line 131
    .line 132
    const/16 p3, 0xd

    .line 133
    .line 134
    aput-object p2, p1, p3

    .line 135
    .line 136
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbo;->zze:Lcom/google/android/libraries/places/internal/zzbo;

    .line 137
    .line 138
    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001\u082c\u0002\u180c\u0000\u0003\u180c\u0001\u0004\u1004\u0002\u0005\u1002\u0003\u0006\u1001\u0004\u0007\u1001\u0005\u0008\u180c\u0006\t\u1009\u0007"

    .line 139
    .line 140
    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1
.end method

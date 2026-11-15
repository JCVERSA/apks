.class public final Lcom/google/android/libraries/places/internal/zzafq;
.super Lcom/google/android/libraries/places/internal/zzatu;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzafq;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/libraries/places/internal/zzwf;

.field private zzi:Lcom/google/android/libraries/places/internal/zzafe;

.field private zzj:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzafq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzafq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzafq;->zzb:Lcom/google/android/libraries/places/internal/zzafq;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/libraries/places/internal/zzafq;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaE(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzatu;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzafq;->zzj:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzafq;->zzg:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzafp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzafq;->zzb:Lcom/google/android/libraries/places/internal/zzafq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/libraries/places/internal/zzafp;

    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzafq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzafq;->zzb:Lcom/google/android/libraries/places/internal/zzafq;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzafq;Lcom/google/android/libraries/places/internal/zzafe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzafq;->zzi:Lcom/google/android/libraries/places/internal/zzafe;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzafq;->zzf:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzafq;->zzf:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_8

    .line 9
    .line 10
    if-eq p1, v3, :cond_7

    .line 11
    .line 12
    if-eq p1, v2, :cond_6

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq p1, v1, :cond_5

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq p1, v1, :cond_4

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    move p3, v0

    .line 26
    :cond_0
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzafq;->zzj:B

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafq;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    const-class p2, Lcom/google/android/libraries/places/internal/zzafq;

    .line 34
    .line 35
    monitor-enter p2

    .line 36
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafq;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    .line 41
    .line 42
    sget-object p3, Lcom/google/android/libraries/places/internal/zzafq;->zzb:Lcom/google/android/libraries/places/internal/zzafq;

    .line 43
    .line 44
    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 45
    .line 46
    .line 47
    sput-object p1, Lcom/google/android/libraries/places/internal/zzafq;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    monitor-exit p2

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1

    .line 56
    :cond_3
    :goto_2
    return-object p1

    .line 57
    :cond_4
    sget-object p1, Lcom/google/android/libraries/places/internal/zzafq;->zzb:Lcom/google/android/libraries/places/internal/zzafq;

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzafp;

    .line 61
    .line 62
    invoke-direct {p1, v2}, Lcom/google/android/libraries/places/internal/zzafp;-><init>(Lcom/google/android/libraries/places/internal/zzadu;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzafq;

    .line 67
    .line 68
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzafq;-><init>()V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_7
    new-array p1, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    const-string p2, "zzf"

    .line 75
    .line 76
    aput-object p2, p1, v0

    .line 77
    .line 78
    const-string p2, "zzg"

    .line 79
    .line 80
    aput-object p2, p1, p3

    .line 81
    .line 82
    const-string p2, "zzh"

    .line 83
    .line 84
    aput-object p2, p1, v3

    .line 85
    .line 86
    const-string p2, "zzi"

    .line 87
    .line 88
    aput-object p2, p1, v2

    .line 89
    .line 90
    sget-object p2, Lcom/google/android/libraries/places/internal/zzafq;->zzb:Lcom/google/android/libraries/places/internal/zzafq;

    .line 91
    .line 92
    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1409\u0001\u0003\u1009\u0002"

    .line 93
    .line 94
    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_8
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzafq;->zzj:B

    .line 100
    .line 101
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

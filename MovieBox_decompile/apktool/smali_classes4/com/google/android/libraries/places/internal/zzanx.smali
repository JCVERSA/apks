.class public final Lcom/google/android/libraries/places/internal/zzanx;
.super Lcom/google/android/libraries/places/internal/zzatu;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavg;


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzanx;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzavn;


# instance fields
.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:I

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzanx;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzanx;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzanx;->zzb:Lcom/google/android/libraries/places/internal/zzanx;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/libraries/places/internal/zzanx;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzanx;->zzf:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzanw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzanx;->zzb:Lcom/google/android/libraries/places/internal/zzanx;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzar()Lcom/google/android/libraries/places/internal/zzato;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/libraries/places/internal/zzanw;

    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/libraries/places/internal/zzanx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzanx;->zzb:Lcom/google/android/libraries/places/internal/zzanx;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzanx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzanx;->zzb:Lcom/google/android/libraries/places/internal/zzanx;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/libraries/places/internal/zzanx;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzanx;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/libraries/places/internal/zzanx;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzanx;->zzg:I

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzg(Lcom/google/android/libraries/places/internal/zzanx;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzanx;->zzh:I

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzh(Lcom/google/android/libraries/places/internal/zzanx;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzanx;->zzi:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x4

    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x2

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    if-eq p1, v1, :cond_6

    .line 10
    .line 11
    if-eq p1, v0, :cond_5

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eq p1, p3, :cond_4

    .line 15
    .line 16
    const/4 p3, 0x5

    .line 17
    if-eq p1, p3, :cond_3

    .line 18
    .line 19
    const/4 p3, 0x6

    .line 20
    if-eq p1, p3, :cond_0

    .line 21
    .line 22
    return-object p2

    .line 23
    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzanx;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-class p2, Lcom/google/android/libraries/places/internal/zzanx;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzanx;->zze:Lcom/google/android/libraries/places/internal/zzavn;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/libraries/places/internal/zzatp;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/libraries/places/internal/zzanx;->zzb:Lcom/google/android/libraries/places/internal/zzanx;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzatp;-><init>(Lcom/google/android/libraries/places/internal/zzatu;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/libraries/places/internal/zzanx;->zze:Lcom/google/android/libraries/places/internal/zzavn;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzanx;->zzb:Lcom/google/android/libraries/places/internal/zzanx;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_4
    new-instance p1, Lcom/google/android/libraries/places/internal/zzanw;

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzanw;-><init>(Lcom/google/android/libraries/places/internal/zzanv;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzanx;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzanx;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    new-array p1, p3, [Ljava/lang/Object;

    .line 67
    .line 68
    const-string p3, "zzf"

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    aput-object p3, p1, v2

    .line 72
    .line 73
    const-string p3, "zzg"

    .line 74
    .line 75
    aput-object p3, p1, p2

    .line 76
    .line 77
    const-string p2, "zzh"

    .line 78
    .line 79
    aput-object p2, p1, v1

    .line 80
    .line 81
    const-string p2, "zzi"

    .line 82
    .line 83
    aput-object p2, p1, v0

    .line 84
    .line 85
    sget-object p2, Lcom/google/android/libraries/places/internal/zzanx;->zzb:Lcom/google/android/libraries/places/internal/zzanx;

    .line 86
    .line 87
    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0004\u0003\u0004\u0004\u0007"

    .line 88
    .line 89
    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaB(Lcom/google/android/libraries/places/internal/zzavf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

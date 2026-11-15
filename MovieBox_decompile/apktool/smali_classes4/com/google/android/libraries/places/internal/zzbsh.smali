.class final enum Lcom/google/android/libraries/places/internal/zzbsh;
.super Ljava/lang/Enum;
.source "source.java"


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzbsh;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzbsh;

.field private static final synthetic zzg:[Lcom/google/android/libraries/places/internal/zzbsh;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsh;

    .line 2
    .line 3
    const-string v1, "HEADER_TABLE_SIZE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsh;->zza:Lcom/google/android/libraries/places/internal/zzbsh;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbsh;

    .line 13
    .line 14
    const-string v4, "ENABLE_PUSH"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbsh;->zzb:Lcom/google/android/libraries/places/internal/zzbsh;

    .line 21
    .line 22
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbsh;

    .line 23
    .line 24
    const-string v6, "MAX_CONCURRENT_STREAMS"

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/google/android/libraries/places/internal/zzbsh;->zzc:Lcom/google/android/libraries/places/internal/zzbsh;

    .line 31
    .line 32
    new-instance v6, Lcom/google/android/libraries/places/internal/zzbsh;

    .line 33
    .line 34
    const-string v8, "MAX_FRAME_SIZE"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    const/4 v10, 0x5

    .line 38
    invoke-direct {v6, v8, v9, v10}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v6, Lcom/google/android/libraries/places/internal/zzbsh;->zzd:Lcom/google/android/libraries/places/internal/zzbsh;

    .line 42
    .line 43
    new-instance v8, Lcom/google/android/libraries/places/internal/zzbsh;

    .line 44
    .line 45
    const-string v11, "MAX_HEADER_LIST_SIZE"

    .line 46
    .line 47
    const/4 v12, 0x6

    .line 48
    invoke-direct {v8, v11, v7, v12}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v8, Lcom/google/android/libraries/places/internal/zzbsh;->zze:Lcom/google/android/libraries/places/internal/zzbsh;

    .line 52
    .line 53
    new-instance v11, Lcom/google/android/libraries/places/internal/zzbsh;

    .line 54
    .line 55
    const-string v13, "INITIAL_WINDOW_SIZE"

    .line 56
    .line 57
    const/4 v14, 0x7

    .line 58
    invoke-direct {v11, v13, v10, v14}, Lcom/google/android/libraries/places/internal/zzbsh;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v11, Lcom/google/android/libraries/places/internal/zzbsh;->zzf:Lcom/google/android/libraries/places/internal/zzbsh;

    .line 62
    .line 63
    new-array v12, v12, [Lcom/google/android/libraries/places/internal/zzbsh;

    .line 64
    .line 65
    aput-object v0, v12, v2

    .line 66
    .line 67
    aput-object v1, v12, v3

    .line 68
    .line 69
    aput-object v4, v12, v5

    .line 70
    .line 71
    aput-object v6, v12, v9

    .line 72
    .line 73
    aput-object v8, v12, v7

    .line 74
    .line 75
    aput-object v11, v12, v10

    .line 76
    .line 77
    sput-object v12, Lcom/google/android/libraries/places/internal/zzbsh;->zzg:[Lcom/google/android/libraries/places/internal/zzbsh;

    .line 78
    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbsh;->zzh:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbsh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsh;->zzg:[Lcom/google/android/libraries/places/internal/zzbsh;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbsh;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbsh;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbsh;->zzh:I

    .line 2
    .line 3
    return v0
.end method

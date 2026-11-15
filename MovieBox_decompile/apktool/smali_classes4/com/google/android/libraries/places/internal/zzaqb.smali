.class public final enum Lcom/google/android/libraries/places/internal/zzaqb;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzatw;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzaqb;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzaqb;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzaqb;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzaqb;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzaqb;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzaqb;

.field public static final enum zzg:Lcom/google/android/libraries/places/internal/zzaqb;

.field private static final zzh:Lcom/google/android/libraries/places/internal/zzatx;

.field private static final synthetic zzi:[Lcom/google/android/libraries/places/internal/zzaqb;


# instance fields
.field private final zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 2
    .line 3
    const-string v1, "PRICE_LEVEL_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzaqb;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/libraries/places/internal/zzaqb;->zza:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 12
    .line 13
    const-string v3, "PRICE_LEVEL_FREE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/libraries/places/internal/zzaqb;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/libraries/places/internal/zzaqb;->zzb:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 20
    .line 21
    new-instance v3, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 22
    .line 23
    const-string v5, "PRICE_LEVEL_INEXPENSIVE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/libraries/places/internal/zzaqb;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/android/libraries/places/internal/zzaqb;->zzc:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 30
    .line 31
    new-instance v5, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 32
    .line 33
    const-string v7, "PRICE_LEVEL_MODERATE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/libraries/places/internal/zzaqb;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/android/libraries/places/internal/zzaqb;->zzd:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 40
    .line 41
    new-instance v7, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 42
    .line 43
    const-string v9, "PRICE_LEVEL_EXPENSIVE"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/libraries/places/internal/zzaqb;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/google/android/libraries/places/internal/zzaqb;->zze:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 50
    .line 51
    new-instance v9, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 52
    .line 53
    const-string v11, "PRICE_LEVEL_VERY_EXPENSIVE"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/libraries/places/internal/zzaqb;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/google/android/libraries/places/internal/zzaqb;->zzf:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 60
    .line 61
    new-instance v11, Lcom/google/android/libraries/places/internal/zzaqb;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const/4 v14, -0x1

    .line 65
    const-string v15, "UNRECOGNIZED"

    .line 66
    .line 67
    invoke-direct {v11, v15, v13, v14}, Lcom/google/android/libraries/places/internal/zzaqb;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v11, Lcom/google/android/libraries/places/internal/zzaqb;->zzg:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 71
    .line 72
    const/4 v14, 0x7

    .line 73
    new-array v14, v14, [Lcom/google/android/libraries/places/internal/zzaqb;

    .line 74
    .line 75
    aput-object v0, v14, v2

    .line 76
    .line 77
    aput-object v1, v14, v4

    .line 78
    .line 79
    aput-object v3, v14, v6

    .line 80
    .line 81
    aput-object v5, v14, v8

    .line 82
    .line 83
    aput-object v7, v14, v10

    .line 84
    .line 85
    aput-object v9, v14, v12

    .line 86
    .line 87
    aput-object v11, v14, v13

    .line 88
    .line 89
    sput-object v14, Lcom/google/android/libraries/places/internal/zzaqb;->zzi:[Lcom/google/android/libraries/places/internal/zzaqb;

    .line 90
    .line 91
    new-instance v0, Lcom/google/android/libraries/places/internal/zzaqa;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaqa;-><init>()V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/google/android/libraries/places/internal/zzaqb;->zzh:Lcom/google/android/libraries/places/internal/zzatx;

    .line 97
    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzaqb;->zzj:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzaqb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaqb;->zzi:[Lcom/google/android/libraries/places/internal/zzaqb;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzaqb;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/libraries/places/internal/zzaqb;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaqb;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaqb;->zzg:Lcom/google/android/libraries/places/internal/zzaqb;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzaqb;->zzj:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

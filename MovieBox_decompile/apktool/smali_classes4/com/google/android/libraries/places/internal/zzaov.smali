.class public final enum Lcom/google/android/libraries/places/internal/zzaov;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzatw;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzaov;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzaov;

.field private static final zzg:Lcom/google/android/libraries/places/internal/zzatx;

.field private static final synthetic zzh:[Lcom/google/android/libraries/places/internal/zzaov;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzaov;

    .line 2
    .line 3
    const-string v1, "BUSINESS_STATUS_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/libraries/places/internal/zzaov;->zza:Lcom/google/android/libraries/places/internal/zzaov;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/libraries/places/internal/zzaov;

    .line 12
    .line 13
    const-string v3, "OPERATIONAL"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/libraries/places/internal/zzaov;->zzb:Lcom/google/android/libraries/places/internal/zzaov;

    .line 20
    .line 21
    new-instance v3, Lcom/google/android/libraries/places/internal/zzaov;

    .line 22
    .line 23
    const-string v5, "CLOSED_TEMPORARILY"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/android/libraries/places/internal/zzaov;->zzc:Lcom/google/android/libraries/places/internal/zzaov;

    .line 30
    .line 31
    new-instance v5, Lcom/google/android/libraries/places/internal/zzaov;

    .line 32
    .line 33
    const-string v7, "CLOSED_PERMANENTLY"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/android/libraries/places/internal/zzaov;->zzd:Lcom/google/android/libraries/places/internal/zzaov;

    .line 40
    .line 41
    new-instance v7, Lcom/google/android/libraries/places/internal/zzaov;

    .line 42
    .line 43
    const-string v9, "FUTURE_OPENING"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/google/android/libraries/places/internal/zzaov;->zze:Lcom/google/android/libraries/places/internal/zzaov;

    .line 50
    .line 51
    new-instance v9, Lcom/google/android/libraries/places/internal/zzaov;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const/4 v12, -0x1

    .line 55
    const-string v13, "UNRECOGNIZED"

    .line 56
    .line 57
    invoke-direct {v9, v13, v11, v12}, Lcom/google/android/libraries/places/internal/zzaov;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v9, Lcom/google/android/libraries/places/internal/zzaov;->zzf:Lcom/google/android/libraries/places/internal/zzaov;

    .line 61
    .line 62
    const/4 v12, 0x6

    .line 63
    new-array v12, v12, [Lcom/google/android/libraries/places/internal/zzaov;

    .line 64
    .line 65
    aput-object v0, v12, v2

    .line 66
    .line 67
    aput-object v1, v12, v4

    .line 68
    .line 69
    aput-object v3, v12, v6

    .line 70
    .line 71
    aput-object v5, v12, v8

    .line 72
    .line 73
    aput-object v7, v12, v10

    .line 74
    .line 75
    aput-object v9, v12, v11

    .line 76
    .line 77
    sput-object v12, Lcom/google/android/libraries/places/internal/zzaov;->zzh:[Lcom/google/android/libraries/places/internal/zzaov;

    .line 78
    .line 79
    new-instance v0, Lcom/google/android/libraries/places/internal/zzaou;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzaou;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/google/android/libraries/places/internal/zzaov;->zzg:Lcom/google/android/libraries/places/internal/zzatx;

    .line 85
    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzaov;->zzi:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzaov;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaov;->zzh:[Lcom/google/android/libraries/places/internal/zzaov;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzaov;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/libraries/places/internal/zzaov;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzaov;->zzi:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

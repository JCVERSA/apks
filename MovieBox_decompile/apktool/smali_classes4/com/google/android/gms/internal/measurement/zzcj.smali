.class public final enum Lcom/google/android/gms/internal/measurement/zzcj;
.super Ljava/lang/Enum;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzcj;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjy;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzcj;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzcj;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzcj;

.field private static final enum zzd:Lcom/google/android/gms/internal/measurement/zzcj;

.field private static final enum zze:Lcom/google/android/gms/internal/measurement/zzcj;

.field private static final enum zzf:Lcom/google/android/gms/internal/measurement/zzcj;

.field private static final enum zzg:Lcom/google/android/gms/internal/measurement/zzcj;

.field private static final enum zzh:Lcom/google/android/gms/internal/measurement/zzcj;

.field private static final enum zzi:Lcom/google/android/gms/internal/measurement/zzcj;

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/measurement/zzcj;


# instance fields
.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 2
    .line 3
    const-string v1, "UNSPECIFIED_TYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzd:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 12
    .line 13
    const-string v3, "RAW_FILE_IO_TYPE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcj;->zza:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 20
    .line 21
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 22
    .line 23
    const-string v5, "MOBSTORE_TYPE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzcj;->zze:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 30
    .line 31
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 32
    .line 33
    const-string v7, "SQLITE_OPEN_HELPER_TYPE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/android/gms/internal/measurement/zzcj;->zzb:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 40
    .line 41
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 42
    .line 43
    const-string v9, "LEVEL_DB_TYPE"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const/4 v11, 0x5

    .line 47
    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lcom/google/android/gms/internal/measurement/zzcj;->zzf:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 51
    .line 52
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 53
    .line 54
    const-string v12, "ROOM_TYPE"

    .line 55
    .line 56
    const/4 v13, 0x6

    .line 57
    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v9, Lcom/google/android/gms/internal/measurement/zzcj;->zzg:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 61
    .line 62
    new-instance v12, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 63
    .line 64
    const-string v14, "SHARED_PREFS_TYPE"

    .line 65
    .line 66
    const/4 v15, 0x7

    .line 67
    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v12, Lcom/google/android/gms/internal/measurement/zzcj;->zzc:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 71
    .line 72
    new-instance v14, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 73
    .line 74
    const-string v13, "PROTO_DATA_STORE_TYPE"

    .line 75
    .line 76
    const/16 v11, 0x8

    .line 77
    .line 78
    invoke-direct {v14, v13, v15, v11}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/google/android/gms/internal/measurement/zzcj;->zzh:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 82
    .line 83
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 84
    .line 85
    const-string v15, "UNRECOGNIZED"

    .line 86
    .line 87
    const/4 v10, -0x1

    .line 88
    invoke-direct {v13, v15, v11, v10}, Lcom/google/android/gms/internal/measurement/zzcj;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v13, Lcom/google/android/gms/internal/measurement/zzcj;->zzi:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 92
    .line 93
    const/16 v10, 0x9

    .line 94
    .line 95
    new-array v10, v10, [Lcom/google/android/gms/internal/measurement/zzcj;

    .line 96
    .line 97
    aput-object v0, v10, v2

    .line 98
    .line 99
    aput-object v1, v10, v4

    .line 100
    .line 101
    aput-object v3, v10, v6

    .line 102
    .line 103
    aput-object v5, v10, v8

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    aput-object v7, v10, v0

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    aput-object v9, v10, v0

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    aput-object v12, v10, v0

    .line 113
    .line 114
    const/4 v0, 0x7

    .line 115
    aput-object v14, v10, v0

    .line 116
    .line 117
    aput-object v13, v10, v11

    .line 118
    .line 119
    sput-object v10, Lcom/google/android/gms/internal/measurement/zzcj;->zzj:[Lcom/google/android/gms/internal/measurement/zzcj;

    .line 120
    .line 121
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzcj;->zzk:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzcj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzj:[Lcom/google/android/gms/internal/measurement/zzcj;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzcj;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzcj;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/zzcj;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcj;->zzi:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 34
    .line 35
    if-eq p0, v1, :cond_0

    .line 36
    .line 37
    const-string v1, " number="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcj;->zza()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_0
    const-string v1, " name="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x3e

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcj;->zzi:Lcom/google/android/gms/internal/measurement/zzcj;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcj;->zzk:I

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

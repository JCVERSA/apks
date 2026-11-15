.class final Lcom/google/android/gms/internal/play_billing/zzgf;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzgm<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/play_billing/zzgc;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/play_billing/zzfq;

.field private final zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

.field private final zzn:Lcom/google/android/gms/internal/play_billing/zzek;

.field private final zzo:Lcom/google/android/gms/internal/play_billing/zzgh;

.field private final zzp:Lcom/google/android/gms/internal/play_billing/zzfx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zza:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzg()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzgc;IZ[IIILcom/google/android/gms/internal/play_billing/zzgh;Lcom/google/android/gms/internal/play_billing/zzfq;Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzfx;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p5

    .line 3
    move-object/from16 v2, p14

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object v3, p1

    .line 9
    iput-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 10
    .line 11
    move-object v3, p2

    .line 12
    iput-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd:[Ljava/lang/Object;

    .line 13
    .line 14
    move v3, p3

    .line 15
    iput v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zze:I

    .line 16
    .line 17
    move v3, p4

    .line 18
    iput v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzf:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/play_billing/zzek;->zzc(Lcom/google/android/gms/internal/play_billing/zzgc;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    :cond_0
    iput-boolean v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    .line 31
    .line 32
    move-object v3, p8

    .line 33
    iput-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzi:[I

    .line 34
    .line 35
    move v3, p9

    .line 36
    iput v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzj:I

    .line 37
    .line 38
    move v3, p10

    .line 39
    iput v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzk:I

    .line 40
    .line 41
    move-object/from16 v3, p11

    .line 42
    .line 43
    iput-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo:Lcom/google/android/gms/internal/play_billing/zzgh;

    .line 44
    .line 45
    move-object/from16 v3, p12

    .line 46
    .line 47
    iput-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzl:Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 48
    .line 49
    move-object/from16 v3, p13

    .line 50
    .line 51
    iput-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 52
    .line 53
    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 54
    .line 55
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzg:Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 56
    .line 57
    move-object/from16 v1, p15

    .line 58
    .line 59
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzp:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 60
    .line 61
    return-void
.end method

.method private static zzA(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "Mutating immutable message: "

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method private final zzB(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p3, v4

    .line 80
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 85
    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    aget p1, p1, p3

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, "Source subfield "

    .line 100
    .line 101
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " is present but null: "

    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method

.method private final zzC(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 2
    .line 3
    aget v0, v0, p3

    .line 4
    .line 5
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v1, v2

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v3, v1

    .line 23
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzE(Ljava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p3, v0

    .line 84
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 89
    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    aget p1, p1, p3

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Source subfield "

    .line 104
    .line 105
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " is present but null: "

    .line 112
    .line 113
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method private final zzD(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzp(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p2

    .line 9
    int-to-long v0, v0

    .line 10
    const-wide/32 v2, 0xfffff

    .line 11
    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    shl-int p2, v3, p2

    .line 26
    .line 27
    or-int/2addr p2, v2

    .line 28
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final zzE(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzp(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final zzF(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final zzG(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzE(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method private final zzI(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzp(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int v2, v0, v1

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    const-wide/32 v4, 0xfffff

    .line 12
    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-nez v4, :cond_14

    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    and-int v0, p2, v1

    .line 25
    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    int-to-long v0, v0

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    packed-switch p2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    return v6

    .line 49
    :cond_0
    return v5

    .line 50
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    return v6

    .line 59
    :cond_1
    return v5

    .line 60
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    return v6

    .line 67
    :cond_2
    return v5

    .line 68
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    cmp-long p1, p1, v2

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    return v6

    .line 77
    :cond_3
    return v5

    .line 78
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    return v6

    .line 85
    :cond_4
    return v5

    .line 86
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    return v6

    .line 93
    :cond_5
    return v5

    .line 94
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    return v6

    .line 101
    :cond_6
    return v5

    .line 102
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdw;->zzb:Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 103
    .line 104
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdw;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    return v6

    .line 115
    :cond_7
    return v5

    .line 116
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    return v6

    .line 123
    :cond_8
    return v5

    .line 124
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    instance-of p2, p1, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p2, :cond_a

    .line 131
    .line 132
    check-cast p1, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_9

    .line 139
    .line 140
    return v6

    .line 141
    :cond_9
    return v5

    .line 142
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 143
    .line 144
    if-eqz p2, :cond_c

    .line 145
    .line 146
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdw;->zzb:Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdw;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_b

    .line 153
    .line 154
    return v6

    .line 155
    :cond_b
    return v5

    .line 156
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzw(Ljava/lang/Object;J)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_d

    .line 172
    .line 173
    return v6

    .line 174
    :cond_d
    return v5

    .line 175
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 176
    .line 177
    .line 178
    move-result-wide p1

    .line 179
    cmp-long p1, p1, v2

    .line 180
    .line 181
    if-eqz p1, :cond_e

    .line 182
    .line 183
    return v6

    .line 184
    :cond_e
    return v5

    .line 185
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_f

    .line 190
    .line 191
    return v6

    .line 192
    :cond_f
    return v5

    .line 193
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 194
    .line 195
    .line 196
    move-result-wide p1

    .line 197
    cmp-long p1, p1, v2

    .line 198
    .line 199
    if-eqz p1, :cond_10

    .line 200
    .line 201
    return v6

    .line 202
    :cond_10
    return v5

    .line 203
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide p1

    .line 207
    cmp-long p1, p1, v2

    .line 208
    .line 209
    if-eqz p1, :cond_11

    .line 210
    .line 211
    return v6

    .line 212
    :cond_11
    return v5

    .line 213
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzb(Ljava/lang/Object;J)F

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_12

    .line 222
    .line 223
    return v6

    .line 224
    :cond_12
    return v5

    .line 225
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;J)D

    .line 226
    .line 227
    .line 228
    move-result-wide p1

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 230
    .line 231
    .line 232
    move-result-wide p1

    .line 233
    cmp-long p1, p1, v2

    .line 234
    .line 235
    if-eqz p1, :cond_13

    .line 236
    .line 237
    return v6

    .line 238
    :cond_13
    return v5

    .line 239
    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    .line 240
    .line 241
    shl-int p2, v6, p2

    .line 242
    .line 243
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    and-int/2addr p1, p2

    .line 248
    if-eqz p1, :cond_15

    .line 249
    .line 250
    return v6

    .line 251
    :cond_15
    return v5

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzJ(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private static zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzgm;)Z
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzk(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static zzL(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzt()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzp(I)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p3, v0

    .line 9
    int-to-long v0, p3

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method private static zzN(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzF(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 12
    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzd(ILcom/google/android/gms/internal/play_billing/zzdw;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzhe;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzc()Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzf()Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzgh;Lcom/google/android/gms/internal/play_billing/zzfq;Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzfx;)Lcom/google/android/gms/internal/play_billing/zzgf;
    .locals 33

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzd()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v5, 0xd800

    .line 23
    .line 24
    .line 25
    if-lt v4, v5, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-lt v4, v5, :cond_1

    .line 35
    .line 36
    move v4, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v7, 0x1

    .line 39
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 40
    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-lt v7, v5, :cond_3

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0x1fff

    .line 48
    .line 49
    const/16 v9, 0xd

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-lt v4, v5, :cond_2

    .line 58
    .line 59
    and-int/lit16 v4, v4, 0x1fff

    .line 60
    .line 61
    shl-int/2addr v4, v9

    .line 62
    or-int/2addr v7, v4

    .line 63
    add-int/lit8 v9, v9, 0xd

    .line 64
    .line 65
    move v4, v10

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    shl-int/2addr v4, v9

    .line 68
    or-int/2addr v7, v4

    .line 69
    move v4, v10

    .line 70
    :cond_3
    if-nez v7, :cond_4

    .line 71
    .line 72
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzgf;->zza:[I

    .line 73
    .line 74
    move v11, v3

    .line 75
    move v12, v11

    .line 76
    move v13, v12

    .line 77
    move v14, v13

    .line 78
    move/from16 v16, v14

    .line 79
    .line 80
    move/from16 v18, v16

    .line 81
    .line 82
    move-object/from16 v17, v7

    .line 83
    .line 84
    move/from16 v7, v18

    .line 85
    .line 86
    goto/16 :goto_a

    .line 87
    .line 88
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-lt v4, v5, :cond_6

    .line 95
    .line 96
    and-int/lit16 v4, v4, 0x1fff

    .line 97
    .line 98
    const/16 v9, 0xd

    .line 99
    .line 100
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 101
    .line 102
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-lt v7, v5, :cond_5

    .line 107
    .line 108
    and-int/lit16 v7, v7, 0x1fff

    .line 109
    .line 110
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    add-int/lit8 v9, v9, 0xd

    .line 113
    .line 114
    move v7, v10

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    shl-int/2addr v7, v9

    .line 117
    or-int/2addr v4, v7

    .line 118
    move v7, v10

    .line 119
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 120
    .line 121
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-lt v7, v5, :cond_8

    .line 126
    .line 127
    and-int/lit16 v7, v7, 0x1fff

    .line 128
    .line 129
    const/16 v10, 0xd

    .line 130
    .line 131
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 132
    .line 133
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-lt v9, v5, :cond_7

    .line 138
    .line 139
    and-int/lit16 v9, v9, 0x1fff

    .line 140
    .line 141
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    add-int/lit8 v10, v10, 0xd

    .line 144
    .line 145
    move v9, v11

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    shl-int/2addr v9, v10

    .line 148
    or-int/2addr v7, v9

    .line 149
    move v9, v11

    .line 150
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 151
    .line 152
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-lt v9, v5, :cond_a

    .line 157
    .line 158
    and-int/lit16 v9, v9, 0x1fff

    .line 159
    .line 160
    const/16 v11, 0xd

    .line 161
    .line 162
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 163
    .line 164
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-lt v10, v5, :cond_9

    .line 169
    .line 170
    and-int/lit16 v10, v10, 0x1fff

    .line 171
    .line 172
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    add-int/lit8 v11, v11, 0xd

    .line 175
    .line 176
    move v10, v12

    .line 177
    goto :goto_4

    .line 178
    :cond_9
    shl-int/2addr v10, v11

    .line 179
    or-int/2addr v9, v10

    .line 180
    move v10, v12

    .line 181
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 182
    .line 183
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-lt v10, v5, :cond_c

    .line 188
    .line 189
    and-int/lit16 v10, v10, 0x1fff

    .line 190
    .line 191
    const/16 v12, 0xd

    .line 192
    .line 193
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 194
    .line 195
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    if-lt v11, v5, :cond_b

    .line 200
    .line 201
    and-int/lit16 v11, v11, 0x1fff

    .line 202
    .line 203
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    add-int/lit8 v12, v12, 0xd

    .line 206
    .line 207
    move v11, v13

    .line 208
    goto :goto_5

    .line 209
    :cond_b
    shl-int/2addr v11, v12

    .line 210
    or-int/2addr v10, v11

    .line 211
    move v11, v13

    .line 212
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 213
    .line 214
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-lt v11, v5, :cond_e

    .line 219
    .line 220
    and-int/lit16 v11, v11, 0x1fff

    .line 221
    .line 222
    const/16 v13, 0xd

    .line 223
    .line 224
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 225
    .line 226
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-lt v12, v5, :cond_d

    .line 231
    .line 232
    and-int/lit16 v12, v12, 0x1fff

    .line 233
    .line 234
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    add-int/lit8 v13, v13, 0xd

    .line 237
    .line 238
    move v12, v14

    .line 239
    goto :goto_6

    .line 240
    :cond_d
    shl-int/2addr v12, v13

    .line 241
    or-int/2addr v11, v12

    .line 242
    move v12, v14

    .line 243
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 244
    .line 245
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-lt v12, v5, :cond_10

    .line 250
    .line 251
    and-int/lit16 v12, v12, 0x1fff

    .line 252
    .line 253
    const/16 v14, 0xd

    .line 254
    .line 255
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 256
    .line 257
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    if-lt v13, v5, :cond_f

    .line 262
    .line 263
    and-int/lit16 v13, v13, 0x1fff

    .line 264
    .line 265
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    add-int/lit8 v14, v14, 0xd

    .line 268
    .line 269
    move v13, v15

    .line 270
    goto :goto_7

    .line 271
    :cond_f
    shl-int/2addr v13, v14

    .line 272
    or-int/2addr v12, v13

    .line 273
    move v13, v15

    .line 274
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 275
    .line 276
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-lt v13, v5, :cond_12

    .line 281
    .line 282
    and-int/lit16 v13, v13, 0x1fff

    .line 283
    .line 284
    const/16 v15, 0xd

    .line 285
    .line 286
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 287
    .line 288
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-lt v14, v5, :cond_11

    .line 293
    .line 294
    and-int/lit16 v14, v14, 0x1fff

    .line 295
    .line 296
    shl-int/2addr v14, v15

    .line 297
    or-int/2addr v13, v14

    .line 298
    add-int/lit8 v15, v15, 0xd

    .line 299
    .line 300
    move/from16 v14, v16

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_11
    shl-int/2addr v14, v15

    .line 304
    or-int/2addr v13, v14

    .line 305
    move/from16 v14, v16

    .line 306
    .line 307
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 308
    .line 309
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-lt v14, v5, :cond_14

    .line 314
    .line 315
    and-int/lit16 v14, v14, 0x1fff

    .line 316
    .line 317
    const/16 v16, 0xd

    .line 318
    .line 319
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 320
    .line 321
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    if-lt v15, v5, :cond_13

    .line 326
    .line 327
    and-int/lit16 v15, v15, 0x1fff

    .line 328
    .line 329
    shl-int v15, v15, v16

    .line 330
    .line 331
    or-int/2addr v14, v15

    .line 332
    add-int/lit8 v16, v16, 0xd

    .line 333
    .line 334
    move/from16 v15, v17

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_13
    shl-int v15, v15, v16

    .line 338
    .line 339
    or-int/2addr v14, v15

    .line 340
    move/from16 v15, v17

    .line 341
    .line 342
    :cond_14
    add-int v16, v14, v12

    .line 343
    .line 344
    add-int v13, v16, v13

    .line 345
    .line 346
    add-int v16, v4, v4

    .line 347
    .line 348
    add-int v16, v16, v7

    .line 349
    .line 350
    new-array v7, v13, [I

    .line 351
    .line 352
    move-object/from16 v17, v7

    .line 353
    .line 354
    move v13, v9

    .line 355
    move/from16 v18, v14

    .line 356
    .line 357
    move v7, v4

    .line 358
    move v14, v10

    .line 359
    move v4, v15

    .line 360
    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zze()[Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zza()Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 367
    .line 368
    .line 369
    move-result-object v15

    .line 370
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    add-int v19, v18, v12

    .line 375
    .line 376
    add-int v12, v11, v11

    .line 377
    .line 378
    mul-int/lit8 v11, v11, 0x3

    .line 379
    .line 380
    new-array v11, v11, [I

    .line 381
    .line 382
    new-array v12, v12, [Ljava/lang/Object;

    .line 383
    .line 384
    move/from16 v20, v3

    .line 385
    .line 386
    move/from16 v21, v20

    .line 387
    .line 388
    move/from16 v22, v18

    .line 389
    .line 390
    move/from16 v23, v19

    .line 391
    .line 392
    :goto_b
    if-ge v4, v2, :cond_36

    .line 393
    .line 394
    add-int/lit8 v24, v4, 0x1

    .line 395
    .line 396
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-lt v4, v5, :cond_16

    .line 401
    .line 402
    and-int/lit16 v4, v4, 0x1fff

    .line 403
    .line 404
    move/from16 v3, v24

    .line 405
    .line 406
    const/16 v24, 0xd

    .line 407
    .line 408
    :goto_c
    add-int/lit8 v25, v3, 0x1

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-lt v3, v5, :cond_15

    .line 415
    .line 416
    and-int/lit16 v3, v3, 0x1fff

    .line 417
    .line 418
    shl-int v3, v3, v24

    .line 419
    .line 420
    or-int/2addr v4, v3

    .line 421
    add-int/lit8 v24, v24, 0xd

    .line 422
    .line 423
    move/from16 v3, v25

    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_15
    shl-int v3, v3, v24

    .line 427
    .line 428
    or-int/2addr v4, v3

    .line 429
    move/from16 v3, v25

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_16
    move/from16 v3, v24

    .line 433
    .line 434
    :goto_d
    add-int/lit8 v24, v3, 0x1

    .line 435
    .line 436
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-lt v3, v5, :cond_18

    .line 441
    .line 442
    and-int/lit16 v3, v3, 0x1fff

    .line 443
    .line 444
    move/from16 v8, v24

    .line 445
    .line 446
    const/16 v24, 0xd

    .line 447
    .line 448
    :goto_e
    add-int/lit8 v25, v8, 0x1

    .line 449
    .line 450
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    if-lt v8, v5, :cond_17

    .line 455
    .line 456
    and-int/lit16 v8, v8, 0x1fff

    .line 457
    .line 458
    shl-int v8, v8, v24

    .line 459
    .line 460
    or-int/2addr v3, v8

    .line 461
    add-int/lit8 v24, v24, 0xd

    .line 462
    .line 463
    move/from16 v8, v25

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_17
    shl-int v8, v8, v24

    .line 467
    .line 468
    or-int/2addr v3, v8

    .line 469
    move/from16 v8, v25

    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_18
    move/from16 v8, v24

    .line 473
    .line 474
    :goto_f
    and-int/lit16 v6, v3, 0x400

    .line 475
    .line 476
    if-eqz v6, :cond_19

    .line 477
    .line 478
    add-int/lit8 v6, v20, 0x1

    .line 479
    .line 480
    aput v21, v17, v20

    .line 481
    .line 482
    move/from16 v20, v6

    .line 483
    .line 484
    :cond_19
    and-int/lit16 v6, v3, 0xff

    .line 485
    .line 486
    and-int/lit16 v5, v3, 0x800

    .line 487
    .line 488
    move/from16 v26, v2

    .line 489
    .line 490
    const/16 v2, 0x33

    .line 491
    .line 492
    if-lt v6, v2, :cond_23

    .line 493
    .line 494
    add-int/lit8 v2, v8, 0x1

    .line 495
    .line 496
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 497
    .line 498
    .line 499
    move-result v8

    .line 500
    move/from16 v27, v2

    .line 501
    .line 502
    const v2, 0xd800

    .line 503
    .line 504
    .line 505
    if-lt v8, v2, :cond_1b

    .line 506
    .line 507
    and-int/lit16 v8, v8, 0x1fff

    .line 508
    .line 509
    const/16 v30, 0xd

    .line 510
    .line 511
    move/from16 v32, v27

    .line 512
    .line 513
    move/from16 v27, v8

    .line 514
    .line 515
    move/from16 v8, v32

    .line 516
    .line 517
    :goto_10
    add-int/lit8 v31, v8, 0x1

    .line 518
    .line 519
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    if-lt v8, v2, :cond_1a

    .line 524
    .line 525
    and-int/lit16 v2, v8, 0x1fff

    .line 526
    .line 527
    shl-int v2, v2, v30

    .line 528
    .line 529
    or-int v27, v27, v2

    .line 530
    .line 531
    add-int/lit8 v30, v30, 0xd

    .line 532
    .line 533
    move/from16 v8, v31

    .line 534
    .line 535
    const v2, 0xd800

    .line 536
    .line 537
    .line 538
    goto :goto_10

    .line 539
    :cond_1a
    shl-int v2, v8, v30

    .line 540
    .line 541
    or-int v8, v27, v2

    .line 542
    .line 543
    move/from16 v2, v31

    .line 544
    .line 545
    goto :goto_11

    .line 546
    :cond_1b
    move/from16 v2, v27

    .line 547
    .line 548
    :goto_11
    move/from16 v27, v2

    .line 549
    .line 550
    add-int/lit8 v2, v6, -0x33

    .line 551
    .line 552
    move/from16 v30, v14

    .line 553
    .line 554
    const/16 v14, 0x9

    .line 555
    .line 556
    if-eq v2, v14, :cond_1c

    .line 557
    .line 558
    const/16 v14, 0x11

    .line 559
    .line 560
    if-ne v2, v14, :cond_1d

    .line 561
    .line 562
    :cond_1c
    const/4 v14, 0x1

    .line 563
    goto :goto_14

    .line 564
    :cond_1d
    const/16 v14, 0xc

    .line 565
    .line 566
    if-ne v2, v14, :cond_20

    .line 567
    .line 568
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzc()I

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    const/4 v14, 0x1

    .line 573
    if-eq v2, v14, :cond_1f

    .line 574
    .line 575
    if-eqz v5, :cond_1e

    .line 576
    .line 577
    goto :goto_12

    .line 578
    :cond_1e
    const/4 v5, 0x0

    .line 579
    goto :goto_15

    .line 580
    :cond_1f
    :goto_12
    add-int/lit8 v2, v16, 0x1

    .line 581
    .line 582
    div-int/lit8 v24, v21, 0x3

    .line 583
    .line 584
    add-int v24, v24, v24

    .line 585
    .line 586
    add-int/lit8 v24, v24, 0x1

    .line 587
    .line 588
    aget-object v16, v10, v16

    .line 589
    .line 590
    aput-object v16, v12, v24

    .line 591
    .line 592
    :goto_13
    move/from16 v16, v2

    .line 593
    .line 594
    goto :goto_15

    .line 595
    :goto_14
    add-int/lit8 v2, v16, 0x1

    .line 596
    .line 597
    div-int/lit8 v24, v21, 0x3

    .line 598
    .line 599
    add-int v24, v24, v24

    .line 600
    .line 601
    add-int/lit8 v28, v24, 0x1

    .line 602
    .line 603
    aget-object v14, v10, v16

    .line 604
    .line 605
    aput-object v14, v12, v28

    .line 606
    .line 607
    goto :goto_13

    .line 608
    :cond_20
    :goto_15
    add-int/2addr v8, v8

    .line 609
    aget-object v2, v10, v8

    .line 610
    .line 611
    instance-of v14, v2, Ljava/lang/reflect/Field;

    .line 612
    .line 613
    if-eqz v14, :cond_21

    .line 614
    .line 615
    check-cast v2, Ljava/lang/reflect/Field;

    .line 616
    .line 617
    :goto_16
    move/from16 v31, v13

    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_21
    check-cast v2, Ljava/lang/String;

    .line 621
    .line 622
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    aput-object v2, v10, v8

    .line 627
    .line 628
    goto :goto_16

    .line 629
    :goto_17
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 630
    .line 631
    .line 632
    move-result-wide v13

    .line 633
    long-to-int v2, v13

    .line 634
    add-int/lit8 v8, v8, 0x1

    .line 635
    .line 636
    aget-object v13, v10, v8

    .line 637
    .line 638
    instance-of v14, v13, Ljava/lang/reflect/Field;

    .line 639
    .line 640
    if-eqz v14, :cond_22

    .line 641
    .line 642
    check-cast v13, Ljava/lang/reflect/Field;

    .line 643
    .line 644
    goto :goto_18

    .line 645
    :cond_22
    check-cast v13, Ljava/lang/String;

    .line 646
    .line 647
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 648
    .line 649
    .line 650
    move-result-object v13

    .line 651
    aput-object v13, v10, v8

    .line 652
    .line 653
    :goto_18
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 654
    .line 655
    .line 656
    move-result-wide v13

    .line 657
    long-to-int v8, v13

    .line 658
    move-object/from16 v28, v0

    .line 659
    .line 660
    move-object/from16 v29, v1

    .line 661
    .line 662
    move/from16 v0, v16

    .line 663
    .line 664
    move/from16 v25, v27

    .line 665
    .line 666
    move/from16 v16, v8

    .line 667
    .line 668
    const/4 v8, 0x0

    .line 669
    goto/16 :goto_24

    .line 670
    .line 671
    :cond_23
    move/from16 v31, v13

    .line 672
    .line 673
    move/from16 v30, v14

    .line 674
    .line 675
    add-int/lit8 v2, v16, 0x1

    .line 676
    .line 677
    aget-object v13, v10, v16

    .line 678
    .line 679
    check-cast v13, Ljava/lang/String;

    .line 680
    .line 681
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 682
    .line 683
    .line 684
    move-result-object v13

    .line 685
    const/16 v14, 0x9

    .line 686
    .line 687
    if-eq v6, v14, :cond_24

    .line 688
    .line 689
    const/16 v14, 0x11

    .line 690
    .line 691
    if-ne v6, v14, :cond_25

    .line 692
    .line 693
    :cond_24
    move-object/from16 v28, v0

    .line 694
    .line 695
    const/4 v0, 0x1

    .line 696
    goto/16 :goto_1e

    .line 697
    .line 698
    :cond_25
    const/16 v14, 0x1b

    .line 699
    .line 700
    if-eq v6, v14, :cond_2d

    .line 701
    .line 702
    const/16 v14, 0x31

    .line 703
    .line 704
    if-ne v6, v14, :cond_26

    .line 705
    .line 706
    add-int/lit8 v16, v16, 0x2

    .line 707
    .line 708
    move-object/from16 v28, v0

    .line 709
    .line 710
    const/4 v0, 0x1

    .line 711
    goto :goto_1d

    .line 712
    :cond_26
    const/16 v14, 0xc

    .line 713
    .line 714
    if-eq v6, v14, :cond_2a

    .line 715
    .line 716
    const/16 v14, 0x1e

    .line 717
    .line 718
    if-eq v6, v14, :cond_2a

    .line 719
    .line 720
    const/16 v14, 0x2c

    .line 721
    .line 722
    if-ne v6, v14, :cond_27

    .line 723
    .line 724
    goto :goto_1a

    .line 725
    :cond_27
    const/16 v14, 0x32

    .line 726
    .line 727
    if-ne v6, v14, :cond_28

    .line 728
    .line 729
    add-int/lit8 v14, v16, 0x2

    .line 730
    .line 731
    add-int/lit8 v28, v22, 0x1

    .line 732
    .line 733
    aput v21, v17, v22

    .line 734
    .line 735
    div-int/lit8 v22, v21, 0x3

    .line 736
    .line 737
    aget-object v2, v10, v2

    .line 738
    .line 739
    add-int v22, v22, v22

    .line 740
    .line 741
    aput-object v2, v12, v22

    .line 742
    .line 743
    if-eqz v5, :cond_29

    .line 744
    .line 745
    add-int/lit8 v22, v22, 0x1

    .line 746
    .line 747
    add-int/lit8 v2, v16, 0x3

    .line 748
    .line 749
    aget-object v14, v10, v14

    .line 750
    .line 751
    aput-object v14, v12, v22

    .line 752
    .line 753
    move/from16 v22, v28

    .line 754
    .line 755
    :cond_28
    :goto_19
    move-object/from16 v28, v0

    .line 756
    .line 757
    const/4 v0, 0x1

    .line 758
    goto :goto_1f

    .line 759
    :cond_29
    move v2, v14

    .line 760
    move/from16 v22, v28

    .line 761
    .line 762
    const/4 v5, 0x0

    .line 763
    goto :goto_19

    .line 764
    :cond_2a
    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzc()I

    .line 765
    .line 766
    .line 767
    move-result v14

    .line 768
    move-object/from16 v28, v0

    .line 769
    .line 770
    const/4 v0, 0x1

    .line 771
    if-eq v14, v0, :cond_2c

    .line 772
    .line 773
    if-eqz v5, :cond_2b

    .line 774
    .line 775
    goto :goto_1b

    .line 776
    :cond_2b
    const/4 v5, 0x0

    .line 777
    goto :goto_1f

    .line 778
    :cond_2c
    :goto_1b
    add-int/lit8 v16, v16, 0x2

    .line 779
    .line 780
    div-int/lit8 v14, v21, 0x3

    .line 781
    .line 782
    add-int/2addr v14, v14

    .line 783
    add-int/2addr v14, v0

    .line 784
    aget-object v2, v10, v2

    .line 785
    .line 786
    aput-object v2, v12, v14

    .line 787
    .line 788
    :goto_1c
    move/from16 v2, v16

    .line 789
    .line 790
    goto :goto_1f

    .line 791
    :cond_2d
    move-object/from16 v28, v0

    .line 792
    .line 793
    const/4 v0, 0x1

    .line 794
    add-int/lit8 v16, v16, 0x2

    .line 795
    .line 796
    :goto_1d
    div-int/lit8 v14, v21, 0x3

    .line 797
    .line 798
    add-int/2addr v14, v14

    .line 799
    add-int/2addr v14, v0

    .line 800
    aget-object v2, v10, v2

    .line 801
    .line 802
    aput-object v2, v12, v14

    .line 803
    .line 804
    goto :goto_1c

    .line 805
    :goto_1e
    div-int/lit8 v14, v21, 0x3

    .line 806
    .line 807
    add-int/2addr v14, v14

    .line 808
    add-int/2addr v14, v0

    .line 809
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    move-result-object v16

    .line 813
    aput-object v16, v12, v14

    .line 814
    .line 815
    :goto_1f
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 816
    .line 817
    .line 818
    move-result-wide v13

    .line 819
    long-to-int v13, v13

    .line 820
    and-int/lit16 v14, v3, 0x1000

    .line 821
    .line 822
    const v16, 0xfffff

    .line 823
    .line 824
    .line 825
    if-eqz v14, :cond_31

    .line 826
    .line 827
    const/16 v14, 0x11

    .line 828
    .line 829
    if-gt v6, v14, :cond_31

    .line 830
    .line 831
    add-int/lit8 v14, v8, 0x1

    .line 832
    .line 833
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 834
    .line 835
    .line 836
    move-result v8

    .line 837
    const v0, 0xd800

    .line 838
    .line 839
    .line 840
    if-lt v8, v0, :cond_2f

    .line 841
    .line 842
    and-int/lit16 v8, v8, 0x1fff

    .line 843
    .line 844
    const/16 v16, 0xd

    .line 845
    .line 846
    :goto_20
    add-int/lit8 v25, v14, 0x1

    .line 847
    .line 848
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 849
    .line 850
    .line 851
    move-result v14

    .line 852
    if-lt v14, v0, :cond_2e

    .line 853
    .line 854
    and-int/lit16 v14, v14, 0x1fff

    .line 855
    .line 856
    shl-int v14, v14, v16

    .line 857
    .line 858
    or-int/2addr v8, v14

    .line 859
    add-int/lit8 v16, v16, 0xd

    .line 860
    .line 861
    move/from16 v14, v25

    .line 862
    .line 863
    goto :goto_20

    .line 864
    :cond_2e
    shl-int v14, v14, v16

    .line 865
    .line 866
    or-int/2addr v8, v14

    .line 867
    goto :goto_21

    .line 868
    :cond_2f
    move/from16 v25, v14

    .line 869
    .line 870
    :goto_21
    add-int v14, v7, v7

    .line 871
    .line 872
    div-int/lit8 v16, v8, 0x20

    .line 873
    .line 874
    add-int v14, v14, v16

    .line 875
    .line 876
    aget-object v0, v10, v14

    .line 877
    .line 878
    move-object/from16 v29, v1

    .line 879
    .line 880
    instance-of v1, v0, Ljava/lang/reflect/Field;

    .line 881
    .line 882
    if-eqz v1, :cond_30

    .line 883
    .line 884
    check-cast v0, Ljava/lang/reflect/Field;

    .line 885
    .line 886
    goto :goto_22

    .line 887
    :cond_30
    check-cast v0, Ljava/lang/String;

    .line 888
    .line 889
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    aput-object v0, v10, v14

    .line 894
    .line 895
    :goto_22
    invoke-virtual {v9, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 896
    .line 897
    .line 898
    move-result-wide v0

    .line 899
    long-to-int v0, v0

    .line 900
    rem-int/lit8 v8, v8, 0x20

    .line 901
    .line 902
    move/from16 v16, v0

    .line 903
    .line 904
    goto :goto_23

    .line 905
    :cond_31
    move-object/from16 v29, v1

    .line 906
    .line 907
    move/from16 v25, v8

    .line 908
    .line 909
    const/4 v8, 0x0

    .line 910
    :goto_23
    const/16 v0, 0x12

    .line 911
    .line 912
    if-lt v6, v0, :cond_32

    .line 913
    .line 914
    const/16 v0, 0x31

    .line 915
    .line 916
    if-gt v6, v0, :cond_32

    .line 917
    .line 918
    add-int/lit8 v0, v23, 0x1

    .line 919
    .line 920
    aput v13, v17, v23

    .line 921
    .line 922
    move/from16 v23, v0

    .line 923
    .line 924
    :cond_32
    move v0, v2

    .line 925
    move v2, v13

    .line 926
    :goto_24
    add-int/lit8 v1, v21, 0x1

    .line 927
    .line 928
    aput v4, v11, v21

    .line 929
    .line 930
    add-int/lit8 v4, v21, 0x2

    .line 931
    .line 932
    and-int/lit16 v13, v3, 0x200

    .line 933
    .line 934
    if-eqz v13, :cond_33

    .line 935
    .line 936
    const/high16 v13, 0x20000000

    .line 937
    .line 938
    goto :goto_25

    .line 939
    :cond_33
    const/4 v13, 0x0

    .line 940
    :goto_25
    and-int/lit16 v3, v3, 0x100

    .line 941
    .line 942
    if-eqz v3, :cond_34

    .line 943
    .line 944
    const/high16 v3, 0x10000000

    .line 945
    .line 946
    goto :goto_26

    .line 947
    :cond_34
    const/4 v3, 0x0

    .line 948
    :goto_26
    if-eqz v5, :cond_35

    .line 949
    .line 950
    const/high16 v5, -0x80000000

    .line 951
    .line 952
    goto :goto_27

    .line 953
    :cond_35
    const/4 v5, 0x0

    .line 954
    :goto_27
    shl-int/lit8 v6, v6, 0x14

    .line 955
    .line 956
    or-int/2addr v3, v13

    .line 957
    or-int/2addr v3, v5

    .line 958
    or-int/2addr v3, v6

    .line 959
    or-int/2addr v2, v3

    .line 960
    aput v2, v11, v1

    .line 961
    .line 962
    add-int/lit8 v21, v21, 0x3

    .line 963
    .line 964
    shl-int/lit8 v1, v8, 0x14

    .line 965
    .line 966
    or-int v1, v1, v16

    .line 967
    .line 968
    aput v1, v11, v4

    .line 969
    .line 970
    move/from16 v16, v0

    .line 971
    .line 972
    move/from16 v4, v25

    .line 973
    .line 974
    move/from16 v2, v26

    .line 975
    .line 976
    move-object/from16 v0, v28

    .line 977
    .line 978
    move-object/from16 v1, v29

    .line 979
    .line 980
    move/from16 v14, v30

    .line 981
    .line 982
    move/from16 v13, v31

    .line 983
    .line 984
    const/4 v3, 0x0

    .line 985
    const v5, 0xd800

    .line 986
    .line 987
    .line 988
    goto/16 :goto_b

    .line 989
    .line 990
    :cond_36
    move-object/from16 v28, v0

    .line 991
    .line 992
    move/from16 v31, v13

    .line 993
    .line 994
    move/from16 v30, v14

    .line 995
    .line 996
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgf;

    .line 997
    .line 998
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/play_billing/zzgl;->zza()Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 999
    .line 1000
    .line 1001
    move-result-object v14

    .line 1002
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzc()I

    .line 1003
    .line 1004
    .line 1005
    move-result v15

    .line 1006
    const/16 v16, 0x0

    .line 1007
    .line 1008
    move-object v9, v0

    .line 1009
    move-object v10, v11

    .line 1010
    move-object v11, v12

    .line 1011
    move/from16 v12, v31

    .line 1012
    .line 1013
    move/from16 v13, v30

    .line 1014
    .line 1015
    move-object/from16 v20, p2

    .line 1016
    .line 1017
    move-object/from16 v21, p3

    .line 1018
    .line 1019
    move-object/from16 v22, p4

    .line 1020
    .line 1021
    move-object/from16 v23, p5

    .line 1022
    .line 1023
    move-object/from16 v24, p6

    .line 1024
    .line 1025
    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/play_billing/zzgf;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzgc;IZ[IIILcom/google/android/gms/internal/play_billing/zzgh;Lcom/google/android/gms/internal/play_billing/zzfq;Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzfx;)V

    .line 1026
    .line 1027
    .line 1028
    return-object v0

    .line 1029
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzha;

    .line 1030
    .line 1031
    const/4 v0, 0x0

    .line 1032
    throw v0
.end method

.method private static zzm(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Double;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private static zzn(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static zzo(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final zzp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private final zzq(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 17
    .line 18
    aget v4, v4, v3

    .line 19
    .line 20
    if-ne p1, v4, :cond_0

    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    if-ge p1, v4, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, v2, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v1
.end method

.method private static zzr(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method private final zzs(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method private static zzt(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private final zzu(I)Lcom/google/android/gms/internal/play_billing/zzfb;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd:[Ljava/lang/Object;

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfb;

    .line 11
    .line 12
    return-object p1
.end method

.method private final zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd:[Ljava/lang/Object;

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgk;->zza()Lcom/google/android/gms/internal/play_billing/zzgk;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd:[Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v0, v1, p1

    .line 30
    .line 31
    return-object v0
.end method

.method private final zzw(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd:[Ljava/lang/Object;

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    return-object p1
.end method

.method private final zzx(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    int-to-long v1, v1

    .line 25
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private final zzy(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const v1, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p3, v1

    .line 26
    int-to-long v1, p3

    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgm;->zze()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private static zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "Field "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " for "

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, " not found. Known fields are "

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    .line 1
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    const v11, 0xfffff

    move v0, v11

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v12, v2, :cond_1e

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    move-result v4

    iget-object v5, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    add-int/lit8 v14, v12, 0x2

    .line 2
    aget v15, v5, v12

    .line 3
    aget v5, v5, v14

    and-int v14, v5, v11

    const/16 v10, 0x11

    if-gt v4, v10, :cond_2

    if-eq v14, v0, :cond_1

    if-ne v14, v11, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v14

    .line 4
    invoke-virtual {v9, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v14

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v8, v5

    move v10, v0

    move v14, v1

    goto :goto_2

    :cond_2
    move v10, v0

    move v14, v1

    const/4 v5, 0x0

    :goto_2
    and-int v0, v2, v11

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzep;->zzJ:Lcom/google/android/gms/internal/play_billing/zzep;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzep;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzep;->zzW:Lcom/google/android/gms/internal/play_billing/zzep;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzep;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    :goto_3
    goto :goto_5

    .line 8
    :pswitch_0
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 10
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    .line 11
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzt(ILcom/google/android/gms/internal/play_billing/zzgc;Lcom/google/android/gms/internal/play_billing/zzgm;)I

    move-result v0

    :goto_4
    add-int/2addr v13, v0

    :cond_4
    :goto_5
    move/from16 v17, v12

    const/16 v16, 0x0

    goto/16 :goto_24

    .line 12
    :pswitch_1
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 13
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzy(J)I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    goto :goto_4

    .line 14
    :pswitch_2
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 15
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto :goto_6

    .line 16
    :pswitch_3
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    :goto_7
    add-int/lit8 v0, v0, 0x8

    goto :goto_4

    .line 18
    :pswitch_4
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    :goto_8
    add-int/lit8 v0, v0, 0x4

    goto :goto_4

    .line 20
    :pswitch_5
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 21
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzu(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto :goto_6

    .line 22
    :pswitch_6
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 23
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto :goto_6

    .line 24
    :pswitch_7
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 25
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 26
    sget v2, Lcom/google/android/gms/internal/play_billing/zzee;->zzb:I

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    goto/16 :goto_4

    .line 28
    :pswitch_8
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 30
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)I

    move-result v0

    goto/16 :goto_4

    .line 31
    :pswitch_9
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 32
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzdw;

    if-eqz v2, :cond_5

    .line 33
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdw;

    sget v2, Lcom/google/android/gms/internal/play_billing/zzee;->zzb:I

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto :goto_9

    .line 35
    :cond_5
    check-cast v1, Ljava/lang/String;

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzw(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_6

    .line 37
    :pswitch_a
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    add-int/2addr v0, v8

    goto/16 :goto_4

    .line 39
    :pswitch_b
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_8

    .line 41
    :pswitch_c
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_7

    .line 43
    :pswitch_d
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 44
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzu(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_6

    .line 45
    :pswitch_e
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 46
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzy(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_6

    .line 47
    :pswitch_f
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 48
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzy(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_6

    .line 49
    :pswitch_10
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_8

    .line 51
    :pswitch_11
    invoke-direct {v6, v7, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    shl-int/lit8 v0, v15, 0x3

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_7

    .line 53
    :pswitch_12
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 54
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfw;

    .line 55
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 56
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfw;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    throw v3

    .line 60
    :pswitch_13
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    .line 62
    sget v2, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    :goto_a
    const/4 v4, 0x0

    goto :goto_c

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v2, :cond_8

    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgc;

    invoke-static {v15, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzt(ILcom/google/android/gms/internal/play_billing/zzgc;Lcom/google/android/gms/internal/play_billing/zzgm;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v8

    goto :goto_b

    :cond_8
    :goto_c
    add-int/2addr v13, v4

    goto/16 :goto_5

    .line 65
    :pswitch_14
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    :goto_d
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/2addr v13, v1

    goto/16 :goto_5

    .line 67
    :pswitch_15
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto :goto_d

    .line 69
    :pswitch_16
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto :goto_d

    .line 71
    :pswitch_17
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto :goto_d

    .line 73
    :pswitch_18
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zza(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto :goto_d

    .line 75
    :pswitch_19
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto :goto_d

    .line 77
    :pswitch_1a
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 80
    :pswitch_1b
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 82
    :pswitch_1c
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 84
    :pswitch_1d
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 86
    :pswitch_1e
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 88
    :pswitch_1f
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 90
    :pswitch_20
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 92
    :pswitch_21
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_4

    shl-int/lit8 v1, v15, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto/16 :goto_d

    .line 94
    :pswitch_22
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_e
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_9
    shl-int/lit8 v2, v15, 0x3

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzj(Ljava/util/List;)I

    move-result v0

    .line 98
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    :goto_f
    mul-int/2addr v1, v2

    goto/16 :goto_6

    .line 99
    :pswitch_23
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    shl-int/lit8 v2, v15, 0x3

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzi(Ljava/util/List;)I

    move-result v0

    .line 103
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    goto :goto_f

    .line 104
    :pswitch_24
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    .line 105
    invoke-static {v15, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzd(ILjava/util/List;Z)I

    move-result v0

    :goto_10
    add-int/2addr v13, v0

    move/from16 v16, v3

    :cond_b
    :goto_11
    move/from16 v17, v12

    goto/16 :goto_24

    :pswitch_25
    const/4 v3, 0x0

    .line 106
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    invoke-static {v15, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_4

    .line 108
    :pswitch_26
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_e

    :cond_c
    shl-int/lit8 v2, v15, 0x3

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zza(Ljava/util/List;)I

    move-result v0

    .line 112
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    goto :goto_f

    .line 113
    :pswitch_27
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    shl-int/lit8 v2, v15, 0x3

    .line 116
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzk(Ljava/util/List;)I

    move-result v0

    .line 117
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    goto :goto_f

    .line 118
    :pswitch_28
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v2, 0x0

    goto :goto_13

    :cond_e
    shl-int/lit8 v2, v15, 0x3

    .line 121
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v1

    const/4 v1, 0x0

    .line 122
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v1, v8

    goto :goto_12

    :cond_f
    :goto_13
    add-int/2addr v13, v2

    goto/16 :goto_5

    .line 125
    :pswitch_29
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    .line 126
    sget v2, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_a

    :cond_10
    shl-int/lit8 v3, v15, 0x3

    .line 128
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v3

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_8

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v15, v5, Lcom/google/android/gms/internal/play_billing/zzfi;

    if-eqz v15, :cond_11

    .line 130
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 131
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzfi;->zza()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v15

    add-int/2addr v15, v5

    add-int/2addr v4, v15

    goto :goto_15

    .line 132
    :cond_11
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgc;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzv(Lcom/google/android/gms/internal/play_billing/zzgc;Lcom/google/android/gms/internal/play_billing/zzgm;)I

    move-result v5

    add-int/2addr v4, v5

    :goto_15
    add-int/2addr v3, v8

    goto :goto_14

    .line 133
    :pswitch_2a
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    :goto_16
    const/4 v3, 0x0

    goto :goto_1b

    :cond_12
    shl-int/lit8 v2, v15, 0x3

    instance-of v3, v0, Lcom/google/android/gms/internal/play_billing/zzfk;

    .line 135
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    mul-int/2addr v2, v1

    if-eqz v3, :cond_14

    .line 136
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfk;

    move v3, v2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_16

    .line 137
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzfk;->zzf(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzdw;

    if-eqz v5, :cond_13

    .line 138
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 139
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_18

    .line 140
    :cond_13
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzee;->zzw(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :goto_18
    add-int/2addr v2, v8

    goto :goto_17

    :cond_14
    move v3, v2

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_16

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/play_billing/zzdw;

    if-eqz v5, :cond_15

    .line 142
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 143
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_1a

    .line 144
    :cond_15
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzee;->zzw(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :goto_1a
    add-int/2addr v2, v8

    goto :goto_19

    :cond_16
    :goto_1b
    add-int/2addr v13, v3

    goto/16 :goto_5

    .line 145
    :pswitch_2b
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 146
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_e

    :cond_17
    shl-int/lit8 v1, v15, 0x3

    .line 148
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    add-int/2addr v1, v8

    mul-int/2addr v0, v1

    goto/16 :goto_4

    .line 149
    :pswitch_2c
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    .line 150
    invoke-static {v15, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_10

    :pswitch_2d
    const/4 v3, 0x0

    .line 151
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 152
    invoke-static {v15, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_4

    .line 153
    :pswitch_2e
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_16

    :cond_18
    shl-int/lit8 v2, v15, 0x3

    .line 156
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzf(Ljava/util/List;)I

    move-result v0

    .line 157
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    :goto_1c
    mul-int/2addr v1, v2

    add-int v3, v0, v1

    goto :goto_1b

    .line 158
    :pswitch_2f
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_16

    :cond_19
    shl-int/lit8 v2, v15, 0x3

    .line 161
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzl(Ljava/util/List;)I

    move-result v0

    .line 162
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    goto :goto_1c

    .line 163
    :pswitch_30
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 164
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_16

    :cond_1a
    shl-int/lit8 v1, v15, 0x3

    .line 166
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzg(Ljava/util/List;)I

    move-result v2

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int v3, v2, v0

    goto/16 :goto_1b

    .line 168
    :pswitch_31
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 169
    invoke-static {v15, v0, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzb(ILjava/util/List;Z)I

    move-result v0

    :goto_1d
    add-int/2addr v13, v0

    move/from16 v16, v4

    goto/16 :goto_11

    :pswitch_32
    const/4 v4, 0x0

    .line 170
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 171
    invoke-static {v15, v0, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto :goto_1d

    :pswitch_33
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide v2, v1

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move v2, v12

    move v3, v10

    move/from16 v16, v4

    move v4, v14

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide/from16 v3, v18

    .line 173
    invoke-virtual {v9, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 174
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    .line 175
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzt(ILcom/google/android/gms/internal/play_billing/zzgc;Lcom/google/android/gms/internal/play_billing/zzgm;)I

    move-result v0

    add-int/2addr v13, v0

    goto/16 :goto_11

    :pswitch_34
    move-wide v3, v1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v19, v12

    move-wide v11, v3

    move v3, v10

    move v4, v14

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v15, 0x3

    .line 177
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzy(J)I

    move-result v1

    :goto_1e
    add-int/2addr v0, v1

    :goto_1f
    add-int/2addr v13, v0

    :cond_1b
    move/from16 v17, v19

    goto/16 :goto_24

    :pswitch_35
    move/from16 v19, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move v4, v14

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v15, 0x3

    .line 179
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    goto :goto_1e

    :pswitch_36
    move/from16 v19, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move v4, v14

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v15, 0x3

    .line 181
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    goto :goto_1f

    :pswitch_37
    move/from16 v19, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move v4, v14

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v15, 0x3

    .line 183
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    goto :goto_1f

    :pswitch_38
    move/from16 v19, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move v4, v14

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v15, 0x3

    .line 185
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzu(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_39
    move/from16 v19, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move v4, v14

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v15, 0x3

    .line 187
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_3a
    move/from16 v19, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move v4, v14

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v15, 0x3

    .line 189
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 190
    sget v2, Lcom/google/android/gms/internal/play_billing/zzee;->zzb:I

    .line 191
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    add-int/2addr v0, v2

    goto/16 :goto_1f

    :pswitch_3b
    move/from16 v19, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move v4, v14

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 193
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move/from16 v4, v19

    .line 194
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)I

    move-result v0

    add-int/2addr v13, v0

    move/from16 v17, v4

    goto/16 :goto_24

    :pswitch_3c
    move v4, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v10

    move/from16 v17, v4

    move v4, v14

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 196
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/play_billing/zzdw;

    if-eqz v2, :cond_1c

    .line 197
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdw;

    sget v2, Lcom/google/android/gms/internal/play_billing/zzee;->zzb:I

    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    add-int/2addr v0, v2

    :goto_20
    add-int/2addr v13, v0

    goto/16 :goto_24

    .line 199
    :cond_1c
    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzw(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    :goto_21
    add-int/2addr v0, v1

    goto :goto_20

    :pswitch_3d
    move/from16 v17, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 201
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 202
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_20

    :pswitch_3e
    move/from16 v17, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 204
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    :goto_22
    add-int/lit8 v0, v0, 0x4

    goto :goto_20

    :pswitch_3f
    move/from16 v17, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 206
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    :goto_23
    add-int/lit8 v0, v0, 0x8

    goto :goto_20

    :pswitch_40
    move/from16 v17, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 208
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzee;->zzu(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto :goto_21

    :pswitch_41
    move/from16 v17, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 210
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzy(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_21

    :pswitch_42
    move/from16 v17, v12

    const/16 v16, 0x0

    move-wide v11, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 211
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 212
    invoke-virtual {v9, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzee;->zzy(J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_21

    :pswitch_43
    move/from16 v17, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 213
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 214
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_22

    :pswitch_44
    move/from16 v17, v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v10

    move v4, v14

    .line 215
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    shl-int/lit8 v0, v15, 0x3

    .line 216
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzee;->zzx(I)I

    move-result v0

    goto/16 :goto_23

    :cond_1d
    :goto_24
    add-int/lit8 v12, v17, 0x3

    move v0, v10

    move v1, v14

    const v11, 0xfffff

    goto/16 :goto_0

    .line 217
    :cond_1e
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 218
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zza(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v13, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    if-nez v0, :cond_1f

    return v13

    :cond_1f
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 220
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v0, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 13
    .line 14
    const v4, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v4, v2

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aget v3, v3, v0

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    const/16 v6, 0x25

    .line 26
    .line 27
    const/16 v7, 0x20

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x35

    .line 41
    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_1
    add-int/2addr v1, v2

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    mul-int/lit8 v1, v1, 0x35

    .line 60
    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 66
    .line 67
    :goto_2
    ushr-long v4, v2, v7

    .line 68
    .line 69
    xor-long/2addr v2, v4

    .line 70
    long-to-int v2, v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    mul-int/lit8 v1, v1, 0x35

    .line 79
    .line 80
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    goto :goto_1

    .line 85
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    mul-int/lit8 v1, v1, 0x35

    .line 92
    .line 93
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    mul-int/lit8 v1, v1, 0x35

    .line 107
    .line 108
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    goto :goto_1

    .line 113
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_1

    .line 118
    .line 119
    mul-int/lit8 v1, v1, 0x35

    .line 120
    .line 121
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    goto :goto_1

    .line 126
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    goto :goto_1

    .line 139
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_1

    .line 144
    .line 145
    mul-int/lit8 v1, v1, 0x35

    .line 146
    .line 147
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    goto :goto_1

    .line 156
    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_1

    .line 161
    .line 162
    mul-int/lit8 v1, v1, 0x35

    .line 163
    .line 164
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    goto :goto_1

    .line 173
    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_1

    .line 178
    .line 179
    mul-int/lit8 v1, v1, 0x35

    .line 180
    .line 181
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_1

    .line 198
    .line 199
    mul-int/lit8 v1, v1, 0x35

    .line 200
    .line 201
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzN(Ljava/lang/Object;J)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzfd;->zza(Z)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_1

    .line 216
    .line 217
    mul-int/lit8 v1, v1, 0x35

    .line 218
    .line 219
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_1

    .line 230
    .line 231
    mul-int/lit8 v1, v1, 0x35

    .line 232
    .line 233
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_1

    .line 246
    .line 247
    mul-int/lit8 v1, v1, 0x35

    .line 248
    .line 249
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_1

    .line 260
    .line 261
    mul-int/lit8 v1, v1, 0x35

    .line 262
    .line 263
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_1

    .line 276
    .line 277
    mul-int/lit8 v1, v1, 0x35

    .line 278
    .line 279
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    .line 280
    .line 281
    .line 282
    move-result-wide v2

    .line 283
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_1

    .line 292
    .line 293
    mul-int/lit8 v1, v1, 0x35

    .line 294
    .line 295
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn(Ljava/lang/Object;J)F

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_1

    .line 310
    .line 311
    mul-int/lit8 v1, v1, 0x35

    .line 312
    .line 313
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm(Ljava/lang/Object;J)D

    .line 314
    .line 315
    .line 316
    move-result-wide v2

    .line 317
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 318
    .line 319
    .line 320
    move-result-wide v2

    .line 321
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 322
    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 326
    .line 327
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 338
    .line 339
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    goto/16 :goto_1

    .line 348
    .line 349
    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 350
    .line 351
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    if-eqz v2, :cond_0

    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    :cond_0
    :goto_3
    add-int/2addr v1, v6

    .line 362
    goto/16 :goto_4

    .line 363
    .line 364
    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 365
    .line 366
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 367
    .line 368
    .line 369
    move-result-wide v2

    .line 370
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 371
    .line 372
    goto/16 :goto_2

    .line 373
    .line 374
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 375
    .line 376
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 383
    .line 384
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 389
    .line 390
    goto/16 :goto_2

    .line 391
    .line 392
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 393
    .line 394
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 401
    .line 402
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    goto/16 :goto_1

    .line 407
    .line 408
    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 409
    .line 410
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    goto/16 :goto_1

    .line 415
    .line 416
    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 417
    .line 418
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    goto/16 :goto_1

    .line 427
    .line 428
    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 429
    .line 430
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    if-eqz v2, :cond_0

    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    goto :goto_3

    .line 441
    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 442
    .line 443
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Ljava/lang/String;

    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 456
    .line 457
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzw(Ljava/lang/Object;J)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzfd;->zza(Z)I

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    goto/16 :goto_1

    .line 466
    .line 467
    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 468
    .line 469
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    goto/16 :goto_1

    .line 474
    .line 475
    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 476
    .line 477
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 478
    .line 479
    .line 480
    move-result-wide v2

    .line 481
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 482
    .line 483
    goto/16 :goto_2

    .line 484
    .line 485
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 486
    .line 487
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    goto/16 :goto_1

    .line 492
    .line 493
    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 494
    .line 495
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 496
    .line 497
    .line 498
    move-result-wide v2

    .line 499
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 500
    .line 501
    goto/16 :goto_2

    .line 502
    .line 503
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 504
    .line 505
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 506
    .line 507
    .line 508
    move-result-wide v2

    .line 509
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 510
    .line 511
    goto/16 :goto_2

    .line 512
    .line 513
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 514
    .line 515
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzb(Ljava/lang/Object;J)F

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 526
    .line 527
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;J)D

    .line 528
    .line 529
    .line 530
    move-result-wide v2

    .line 531
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 532
    .line 533
    .line 534
    move-result-wide v2

    .line 535
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 544
    .line 545
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 546
    .line 547
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    add-int/2addr v1, v0

    .line 556
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    .line 557
    .line 558
    if-nez v0, :cond_3

    .line 559
    .line 560
    return v1

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 562
    .line 563
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 564
    .line 565
    .line 566
    const/4 p1, 0x0

    .line 567
    throw p1

    .line 568
    nop

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzdj;)I
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzA(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    const/4 v14, 0x0

    const/4 v13, -0x1

    const v12, 0xfffff

    move/from16 v8, p3

    move v11, v12

    move v9, v13

    move v10, v14

    move/from16 v16, v10

    move/from16 v17, v16

    :goto_0
    const/16 v18, 0x0

    if-ge v8, v5, :cond_86

    add-int/lit8 v4, v8, 0x1

    .line 2
    aget-byte v8, v15, v8

    if-gez v8, :cond_0

    .line 3
    invoke-static {v8, v15, v4, v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzi(I[BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v4

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    :cond_0
    move/from16 v17, v8

    ushr-int/lit8 v8, v17, 0x3

    if-le v8, v9, :cond_2

    div-int/2addr v10, v3

    iget v9, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zze:I

    if-lt v8, v9, :cond_1

    iget v9, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzf:I

    if-gt v8, v9, :cond_1

    .line 4
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzq(II)I

    move-result v9

    goto :goto_1

    :cond_1
    move v9, v13

    :goto_1
    move v10, v9

    goto :goto_2

    .line 5
    :cond_2
    iget v9, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zze:I

    if-lt v8, v9, :cond_3

    iget v9, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzf:I

    if-gt v8, v9, :cond_3

    .line 6
    invoke-direct {v0, v8, v14}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzq(II)I

    move-result v9

    goto :goto_1

    :cond_3
    move v10, v13

    :goto_2
    if-ne v10, v13, :cond_4

    move-object/from16 v31, v1

    move/from16 v21, v3

    move-object v5, v6

    move v3, v8

    move/from16 v19, v13

    move v10, v14

    move/from16 v9, v17

    move-object v6, v0

    move/from16 v0, p5

    goto/16 :goto_4d

    :cond_4
    and-int/lit8 v9, v17, 0x7

    .line 7
    iget-object v13, v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    add-int/lit8 v21, v10, 0x1

    .line 8
    aget v14, v13, v21

    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    move-result v3

    and-int v2, v14, v12

    move-object/from16 p3, v13

    int-to-long v12, v2

    const/high16 v25, 0x20000000

    const-wide/16 v27, 0x0

    const-string v2, ""

    const/16 v5, 0x11

    if-gt v3, v5, :cond_24

    const/4 v5, 0x2

    add-int/lit8 v19, v10, 0x2

    .line 9
    aget v19, p3, v19

    ushr-int/lit8 v26, v19, 0x14

    const/16 v23, 0x1

    shl-int v26, v23, v26

    move-object/from16 v24, v2

    const v5, 0xfffff

    and-int v2, v19, v5

    if-eq v2, v11, :cond_7

    if-eq v11, v5, :cond_5

    int-to-long v5, v11

    move/from16 v11, v16

    .line 10
    invoke-virtual {v1, v7, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v5, 0xfffff

    :cond_5
    if-ne v2, v5, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    int-to-long v5, v2

    .line 11
    invoke-virtual {v1, v7, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_3
    move/from16 v16, v2

    goto :goto_4

    :cond_7
    move/from16 v5, v16

    move/from16 v16, v11

    :goto_4
    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x3

    if-ne v9, v3, :cond_8

    or-int v2, v5, v26

    .line 12
    invoke-direct {v0, v7, v10}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    shl-int/lit8 v6, v8, 0x3

    or-int/lit8 v13, v6, 0x4

    .line 13
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v9

    move v6, v8

    move-object v8, v5

    move v14, v10

    move-object/from16 v10, p2

    move v11, v4

    const v4, 0xfffff

    move/from16 v12, p4

    const/16 v19, -0x1

    move/from16 p3, v6

    move v6, v14

    move/from16 v29, v17

    move-object/from16 v14, p6

    .line 14
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;[BIIILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v8

    .line 15
    invoke-direct {v0, v7, v6, v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v9, p3

    move/from16 v5, p4

    move v12, v4

    move v10, v6

    move/from16 v11, v16

    move/from16 v13, v19

    const/4 v14, 0x0

    move-object/from16 v6, p6

    move/from16 v16, v2

    move/from16 v2, v23

    goto/16 :goto_0

    :cond_8
    move v6, v10

    const v10, 0xfffff

    const/16 v19, -0x1

    move-object v11, v1

    move v14, v3

    move v10, v6

    move/from16 v30, v8

    move/from16 v6, v17

    move/from16 v2, v23

    const/4 v0, 0x0

    move-object/from16 v8, p6

    goto/16 :goto_17

    :pswitch_0
    move/from16 p3, v8

    move v6, v10

    move/from16 v29, v17

    const/4 v3, 0x3

    const v10, 0xfffff

    const/16 v19, -0x1

    if-nez v9, :cond_9

    or-int v8, v5, v26

    move-object/from16 v5, p6

    .line 16
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v9

    iget-wide v3, v5, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzea;->zzc(J)J

    move-result-wide v17

    move-object v11, v1

    move/from16 v14, v23

    move-object/from16 v2, p1

    const/4 v10, 0x2

    move-wide v3, v12

    move/from16 v12, p3

    move v13, v6

    move-wide/from16 v5, v17

    .line 18
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v10, v13

    move v2, v14

    move/from16 v11, v16

    move/from16 v13, v19

    move/from16 v17, v29

    const/4 v3, 0x3

    const/4 v14, 0x0

    move/from16 v16, v8

    move v8, v9

    move v9, v12

    const v12, 0xfffff

    goto/16 :goto_0

    :cond_9
    move-object v11, v1

    move/from16 v30, p3

    move-object/from16 v8, p6

    move v14, v3

    move v10, v6

    move/from16 v2, v23

    move/from16 v6, v29

    const/4 v0, 0x0

    goto/16 :goto_17

    :pswitch_1
    move-object v11, v1

    move v6, v8

    move v3, v10

    move/from16 v29, v17

    move/from16 v14, v23

    const/4 v10, 0x2

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-nez v9, :cond_a

    or-int v1, v5, v26

    .line 19
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzea;->zzb(I)I

    move-result v4

    .line 21
    invoke-virtual {v11, v7, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move v10, v3

    move v9, v6

    move-object v6, v8

    move/from16 v13, v19

    move/from16 v17, v29

    const/4 v3, 0x3

    const v12, 0xfffff

    move v8, v2

    move v2, v14

    const/4 v14, 0x0

    :goto_5
    move/from16 v34, v16

    move/from16 v16, v1

    move-object v1, v11

    move/from16 v11, v34

    goto/16 :goto_0

    :cond_a
    move v10, v3

    move/from16 v30, v6

    move v2, v14

    :goto_6
    move/from16 v6, v29

    :goto_7
    const/4 v0, 0x0

    const/4 v14, 0x3

    goto/16 :goto_17

    :pswitch_2
    move-object v11, v1

    move v6, v8

    move v3, v10

    move/from16 v29, v17

    move/from16 v2, v23

    const/4 v10, 0x2

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-nez v9, :cond_d

    .line 22
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 23
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object v9

    const/high16 v17, -0x80000000

    and-int v14, v14, v17

    if-eqz v14, :cond_b

    if-eqz v9, :cond_b

    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    move/from16 v14, v29

    goto :goto_a

    .line 24
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v9

    int-to-long v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v14, v29

    invoke-virtual {v9, v14, v4}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzj(ILjava/lang/Object;)V

    :goto_8
    move v10, v3

    move v9, v6

    move-object v6, v8

    move/from16 v17, v14

    move/from16 v13, v19

    const/4 v3, 0x3

    const v12, 0xfffff

    const/4 v14, 0x0

    move v8, v1

    move-object v1, v11

    move/from16 v11, v16

    move/from16 v16, v5

    :goto_9
    move/from16 v5, p4

    goto/16 :goto_0

    :goto_a
    or-int v5, v5, v26

    .line 25
    invoke-virtual {v11, v7, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :cond_d
    move v10, v3

    move/from16 v30, v6

    goto :goto_6

    :pswitch_3
    move-object v11, v1

    move v6, v8

    move v3, v10

    move/from16 v14, v17

    move/from16 v2, v23

    const/4 v10, 0x2

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-ne v9, v10, :cond_e

    or-int v1, v5, v26

    .line 26
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zza([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v4

    iget-object v5, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    .line 27
    invoke-virtual {v11, v7, v12, v13, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, p4

    move v10, v3

    move v9, v6

    move-object v6, v8

    move/from16 v17, v14

    move/from16 v13, v19

    const/4 v3, 0x3

    const v12, 0xfffff

    const/4 v14, 0x0

    move v8, v4

    goto/16 :goto_5

    :cond_e
    move v10, v3

    move/from16 v30, v6

    move v6, v14

    goto/16 :goto_7

    :pswitch_4
    move-object v11, v1

    move v6, v8

    move v3, v10

    move/from16 v14, v17

    move/from16 v2, v23

    const/4 v10, 0x2

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-ne v9, v10, :cond_e

    or-int v9, v5, v26

    .line 28
    invoke-direct {v0, v7, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    .line 29
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v5

    move-object v1, v12

    move v13, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v3, p2

    move v10, v5

    move/from16 v5, p4

    move/from16 v30, v6

    move-object/from16 v6, p6

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;[BIILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    .line 31
    invoke-direct {v0, v7, v10, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v6, v8

    move v2, v13

    move/from16 v17, v14

    move/from16 v13, v19

    const/4 v3, 0x3

    const v12, 0xfffff

    const/4 v14, 0x0

    move v8, v1

    move-object v1, v11

    move/from16 v11, v16

    move/from16 v16, v9

    move/from16 v9, v30

    goto/16 :goto_0

    :pswitch_5
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    move/from16 v3, v23

    const/4 v1, 0x2

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-ne v9, v1, :cond_1e

    and-int v1, v14, v25

    if-eqz v1, :cond_1b

    or-int v1, v5, v26

    .line 32
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v4, :cond_1a

    if-nez v4, :cond_f

    move-object/from16 v9, v24

    .line 33
    iput-object v9, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    move/from16 v18, v1

    const/4 v3, 0x0

    goto/16 :goto_f

    .line 34
    :cond_f
    sget v5, Lcom/google/android/gms/internal/play_billing/zzhs;->zza:I

    .line 35
    array-length v5, v15

    sub-int v9, v5, v2

    or-int v14, v2, v4

    sub-int/2addr v9, v4

    or-int/2addr v9, v14

    if-ltz v9, :cond_19

    add-int v5, v2, v4

    .line 36
    new-array v4, v4, [C

    const/4 v14, 0x0

    :goto_b
    if-ge v2, v5, :cond_10

    .line 37
    aget-byte v9, v15, v2

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzho;->zzd(B)Z

    move-result v17

    if-eqz v17, :cond_10

    add-int/2addr v2, v3

    add-int/lit8 v17, v14, 0x1

    int-to-char v9, v9

    .line 38
    aput-char v9, v4, v14

    move/from16 v14, v17

    goto :goto_b

    :cond_10
    :goto_c
    if-ge v2, v5, :cond_18

    add-int/lit8 v9, v2, 0x1

    .line 39
    aget-byte v3, v15, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzho;->zzd(B)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x1

    add-int/lit8 v2, v14, 0x1

    int-to-char v3, v3

    .line 40
    aput-char v3, v4, v14

    move v14, v2

    move v2, v9

    :goto_d
    if-ge v2, v5, :cond_11

    .line 41
    aget-byte v3, v15, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzho;->zzd(B)Z

    move-result v9

    if-eqz v9, :cond_11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v14, 0x1

    int-to-char v3, v3

    .line 42
    aput-char v3, v4, v14

    move v14, v9

    goto :goto_d

    :cond_11
    move/from16 v3, v17

    goto :goto_c

    :cond_12
    move/from16 v18, v1

    const/16 v17, 0x1

    const/16 v1, -0x20

    if-ge v3, v1, :cond_14

    if-ge v9, v5, :cond_13

    add-int/lit8 v1, v14, 0x1

    const/16 v21, 0x2

    add-int/lit8 v2, v2, 0x2

    .line 43
    aget-byte v9, v15, v9

    invoke-static {v3, v9, v4, v14}, Lcom/google/android/gms/internal/play_billing/zzho;->zzc(BB[CI)V

    move v14, v1

    move/from16 v3, v17

    :goto_e
    move/from16 v1, v18

    goto :goto_c

    .line 44
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzc()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v1

    throw v1

    :cond_14
    const/16 v21, 0x2

    const/16 v1, -0x10

    if-ge v3, v1, :cond_16

    add-int/lit8 v1, v5, -0x1

    if-ge v9, v1, :cond_15

    add-int/lit8 v1, v14, 0x1

    add-int/lit8 v17, v2, 0x2

    .line 45
    aget-byte v9, v15, v9

    const/4 v0, 0x3

    add-int/2addr v2, v0

    aget-byte v0, v15, v17

    invoke-static {v3, v9, v0, v4, v14}, Lcom/google/android/gms/internal/play_billing/zzho;->zzb(BBB[CI)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v14, v1

    goto :goto_e

    .line 46
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzc()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_16
    add-int/lit8 v0, v5, -0x2

    if-ge v9, v0, :cond_17

    add-int/lit8 v0, v2, 0x2

    .line 47
    aget-byte v22, v15, v9

    const/4 v1, 0x3

    add-int/lit8 v9, v2, 0x3

    aget-byte v23, v15, v0

    add-int/lit8 v2, v2, 0x4

    aget-byte v24, v15, v9

    move/from16 v21, v3

    move-object/from16 v25, v4

    move/from16 v26, v14

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/play_billing/zzho;->zza(BBBB[CI)V

    const/4 v0, 0x2

    add-int/2addr v14, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    goto :goto_e

    .line 48
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzc()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_18
    move/from16 v18, v1

    .line 49
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v4, v3, v14}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    move v2, v5

    :goto_f
    move v0, v2

    move/from16 v2, v18

    const/4 v14, 0x3

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    .line 50
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x3

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_1b
    move-object/from16 v9, v24

    const/4 v3, 0x0

    const/4 v14, 0x3

    .line 53
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v0

    iget v1, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v1, :cond_1d

    or-int v2, v5, v26

    if-nez v1, :cond_1c

    .line 54
    iput-object v9, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    goto :goto_10

    :cond_1c
    new-instance v4, Ljava/lang/String;

    .line 55
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v4, v15, v0, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v4, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    add-int/2addr v0, v1

    .line 56
    :goto_10
    iget-object v1, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    .line 57
    invoke-virtual {v11, v7, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, p4

    move/from16 v17, v6

    move-object v6, v8

    move-object v1, v11

    move/from16 v11, v16

    move/from16 v13, v19

    move/from16 v9, v30

    const v12, 0xfffff

    move v8, v0

    move/from16 v16, v2

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p0

    move/from16 v34, v14

    move v14, v3

    move/from16 v3, v34

    goto/16 :goto_0

    .line 58
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_1e
    const/4 v14, 0x3

    const/4 v0, 0x0

    :goto_12
    const/4 v2, 0x1

    goto/16 :goto_17

    :pswitch_6
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    const/4 v3, 0x0

    const/4 v14, 0x3

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-nez v9, :cond_20

    or-int v0, v5, v26

    .line 59
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-wide v4, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    cmp-long v2, v4, v27

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_13

    :cond_1f
    move v2, v3

    .line 60
    :goto_13
    invoke-static {v7, v12, v13, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzm(Ljava/lang/Object;JZ)V

    move/from16 v5, p4

    move/from16 v17, v6

    move-object v6, v8

    move/from16 v13, v19

    move/from16 v9, v30

    const/4 v2, 0x1

    const v12, 0xfffff

    move v8, v1

    move-object v1, v11

    move/from16 v11, v16

    move/from16 v16, v0

    goto :goto_11

    :cond_20
    move v0, v3

    goto :goto_12

    :pswitch_7
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    const/4 v0, 0x5

    const/4 v3, 0x0

    const/4 v14, 0x3

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-ne v9, v0, :cond_20

    add-int/lit8 v0, v4, 0x4

    or-int v1, v5, v26

    .line 61
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v2

    invoke-virtual {v11, v7, v12, v13, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move/from16 v17, v6

    move-object v6, v8

    move/from16 v13, v19

    move/from16 v9, v30

    const/4 v2, 0x1

    const v12, 0xfffff

    move v8, v0

    move-object/from16 v0, p0

    move/from16 v34, v16

    move/from16 v16, v1

    move-object v1, v11

    move/from16 v11, v34

    move/from16 v35, v14

    move v14, v3

    move/from16 v3, v35

    goto/16 :goto_0

    :pswitch_8
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    move/from16 v0, v23

    const/4 v3, 0x0

    const/4 v14, 0x3

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-ne v9, v0, :cond_21

    add-int/lit8 v9, v4, 0x8

    or-int v17, v5, v26

    .line 62
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v21

    move-object v1, v11

    move-object/from16 v2, p1

    move v5, v0

    move v0, v3

    move-wide v3, v12

    move v13, v5

    move v12, v6

    move-wide/from16 v5, v21

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v6, v8

    move v8, v9

    move v2, v13

    move v3, v14

    move/from16 v11, v16

    move/from16 v16, v17

    move/from16 v13, v19

    move/from16 v9, v30

    move v14, v0

    move/from16 v17, v12

    :goto_14
    const v12, 0xfffff

    :goto_15
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_21
    move v13, v0

    move v0, v3

    move v2, v13

    goto/16 :goto_17

    :pswitch_9
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    move/from16 v3, v23

    const/4 v0, 0x0

    const/4 v14, 0x3

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-nez v9, :cond_22

    or-int v1, v5, v26

    .line 63
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v4, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 64
    invoke-virtual {v11, v7, v12, v13, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move/from16 v17, v6

    move-object v6, v8

    move/from16 v13, v19

    move/from16 v9, v30

    const v12, 0xfffff

    move v8, v2

    move v2, v3

    move v3, v14

    move v14, v0

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_22
    move v2, v3

    goto/16 :goto_17

    :pswitch_a
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    move/from16 v3, v23

    const/4 v0, 0x0

    const/4 v14, 0x3

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-nez v9, :cond_22

    or-int v9, v5, v26

    .line 65
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v17

    iget-wide v4, v8, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide/from16 v21, v4

    move v5, v3

    move-wide v3, v12

    move v13, v5

    move v12, v6

    move-wide/from16 v5, v21

    .line 66
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v6, v8

    move v2, v13

    move v3, v14

    move/from16 v11, v16

    move/from16 v8, v17

    move/from16 v13, v19

    move v14, v0

    move/from16 v16, v9

    move/from16 v17, v12

    move/from16 v9, v30

    goto :goto_14

    :pswitch_b
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    move/from16 v2, v23

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v14, 0x3

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-ne v9, v1, :cond_23

    add-int/lit8 v1, v4, 0x4

    or-int v3, v5, v26

    .line 67
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 68
    invoke-static {v7, v12, v13, v4}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzp(Ljava/lang/Object;JF)V

    :goto_16
    move/from16 v5, p4

    move/from16 v17, v6

    move-object v6, v8

    move/from16 v13, v19

    move/from16 v9, v30

    const v12, 0xfffff

    move v8, v1

    move-object v1, v11

    move/from16 v11, v16

    move/from16 v16, v3

    move v3, v14

    move v14, v0

    goto/16 :goto_15

    :pswitch_c
    move-object v11, v1

    move/from16 v30, v8

    move/from16 v6, v17

    move/from16 v2, v23

    const/4 v0, 0x0

    const/4 v14, 0x3

    const/16 v19, -0x1

    move-object/from16 v8, p6

    if-ne v9, v2, :cond_23

    add-int/lit8 v1, v4, 0x8

    or-int v3, v5, v26

    .line 69
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 70
    invoke-static {v7, v12, v13, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzo(Ljava/lang/Object;JD)V

    goto :goto_16

    :cond_23
    :goto_17
    move/from16 v0, p5

    move v9, v6

    move-object/from16 v31, v11

    move/from16 v21, v14

    move/from16 v11, v16

    move/from16 v3, v30

    move-object/from16 v6, p0

    move/from16 v16, v5

    move-object v5, v8

    goto/16 :goto_4d

    :cond_24
    move-object v5, v1

    move-object v1, v2

    move/from16 v30, v8

    const/4 v2, 0x1

    const/16 v19, -0x1

    move-object v8, v6

    move/from16 v6, v17

    const/16 v17, 0x3

    const/16 v0, 0x1b

    const/16 v21, 0xa

    if-ne v3, v0, :cond_28

    const/4 v0, 0x2

    if-ne v9, v0, :cond_27

    .line 71
    invoke-virtual {v5, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 72
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzfc;->zzc()Z

    move-result v3

    if-nez v3, :cond_26

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_25

    :goto_18
    move/from16 v3, v21

    goto :goto_19

    :cond_25
    add-int v21, v3, v3

    goto :goto_18

    .line 74
    :goto_19
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzfc;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzfc;

    move-result-object v1

    .line 75
    invoke-virtual {v5, v7, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_26
    move-object v13, v1

    move/from16 v3, v17

    move-object/from16 v1, p0

    .line 76
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v9

    move-object v8, v9

    move v9, v6

    move v12, v0

    move v14, v10

    const v0, 0xfffff

    move-object/from16 v10, p2

    move/from16 v20, v11

    move v11, v4

    move v4, v12

    move/from16 v12, p4

    move-object/from16 v15, p6

    move v0, v14

    move-object/from16 v14, p6

    .line 77
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdk;->zze(Lcom/google/android/gms/internal/play_billing/zzgm;I[BIILcom/google/android/gms/internal/play_billing/zzfc;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v8

    move v10, v0

    move-object v0, v1

    move-object v1, v5

    move/from16 v17, v6

    move-object v6, v15

    move/from16 v13, v19

    move/from16 v11, v20

    move/from16 v9, v30

    const v12, 0xfffff

    const/4 v14, 0x0

    move-object/from16 v15, p2

    goto/16 :goto_9

    :cond_27
    move/from16 v20, v11

    move v11, v0

    move-object/from16 v15, p2

    move/from16 v0, p4

    move-object/from16 v31, v5

    move/from16 v33, v6

    move v6, v10

    move/from16 v9, v30

    move-object/from16 v5, p0

    move/from16 v34, v11

    move v11, v4

    move-object v4, v8

    move/from16 v8, v34

    goto/16 :goto_42

    :cond_28
    move-object v15, v8

    move v0, v10

    move/from16 v20, v11

    move/from16 v8, v17

    const/4 v11, 0x2

    move-object/from16 v10, p0

    const/16 v2, 0x31

    if-gt v3, v2, :cond_73

    move v2, v9

    int-to-long v8, v14

    sget-object v14, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 78
    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/google/android/gms/internal/play_billing/zzfc;

    .line 79
    invoke-interface {v11}, Lcom/google/android/gms/internal/play_billing/zzfc;->zzc()Z

    move-result v17

    if-nez v17, :cond_2a

    .line 80
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_29

    :goto_1a
    move-object/from16 v17, v5

    move/from16 v5, v21

    goto :goto_1b

    :cond_29
    add-int v21, v17, v17

    goto :goto_1a

    .line 81
    :goto_1b
    invoke-interface {v11, v5}, Lcom/google/android/gms/internal/play_billing/zzfc;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzfc;

    move-result-object v5

    .line 82
    invoke-virtual {v14, v7, v12, v13, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v13, v5

    goto :goto_1c

    :cond_2a
    move-object/from16 v17, v5

    move-object v13, v11

    :goto_1c
    packed-switch v3, :pswitch_data_1

    const/4 v11, 0x3

    if-ne v2, v11, :cond_2e

    and-int/lit8 v1, v6, -0x8

    or-int/lit8 v8, v1, 0x4

    .line 83
    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v9

    move-object v1, v9

    const/4 v14, 0x1

    move-object/from16 v2, p2

    move v3, v4

    move v12, v4

    move/from16 v4, p4

    move-object/from16 v31, v17

    move v5, v8

    move v14, v6

    move-object/from16 v6, p6

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzc(Lcom/google/android/gms/internal/play_billing/zzgm;[BIIILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-object v2, v15, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    .line 85
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    move/from16 v0, p4

    :goto_1d
    if-ge v1, v0, :cond_2c

    move-object v5, v15

    move-object/from16 v15, p2

    .line 86
    invoke-static {v15, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v3

    iget v2, v5, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v14, v2, :cond_2b

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v11, v5

    move v5, v8

    move-object/from16 p3, v9

    move v9, v6

    move-object/from16 v6, p6

    .line 87
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzc(Lcom/google/android/gms/internal/play_billing/zzgm;[BIIILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-object v2, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    .line 88
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v9

    move-object v15, v11

    const/4 v11, 0x3

    move-object/from16 v9, p3

    goto :goto_1d

    :cond_2b
    move-object v11, v5

    move v9, v6

    goto :goto_1e

    :cond_2c
    move v9, v6

    move-object v11, v15

    move-object/from16 v15, p2

    :cond_2d
    :goto_1e
    move v2, v1

    move-object v10, v11

    move v11, v12

    move v12, v14

    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x2

    move v14, v9

    move/from16 v9, v30

    goto/16 :goto_41

    :cond_2e
    move v9, v0

    move-object v11, v15

    move-object/from16 v31, v17

    move-object/from16 v15, p2

    move/from16 v0, p4

    move v12, v6

    move v14, v9

    move-object v10, v11

    move/from16 v9, v30

    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x2

    move v11, v4

    goto/16 :goto_40

    :pswitch_d
    move v9, v0

    move v12, v4

    move v14, v6

    move-object v11, v15

    move-object/from16 v31, v17

    const/4 v1, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v1, :cond_31

    .line 89
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 90
    invoke-static {v15, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_2f

    .line 91
    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-wide v3, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 92
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzea;->zzc(J)J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    goto :goto_1f

    :cond_2f
    if-ne v1, v2, :cond_30

    goto :goto_1e

    .line 93
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_31
    if-nez v2, :cond_32

    .line 94
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 95
    invoke-static {v15, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-wide v2, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 96
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzea;->zzc(J)J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    :goto_20
    if-ge v1, v0, :cond_2d

    .line 97
    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v14, v3, :cond_2d

    .line 98
    invoke-static {v15, v2, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-wide v2, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzea;->zzc(J)J

    move-result-wide v2

    .line 99
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    goto :goto_20

    :cond_32
    move-object v10, v11

    move v11, v12

    move v12, v14

    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x2

    move v14, v9

    move/from16 v9, v30

    goto/16 :goto_40

    :pswitch_e
    move v9, v0

    move v12, v4

    move v14, v6

    move-object v11, v15

    move-object/from16 v31, v17

    const/4 v1, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v1, :cond_35

    .line 100
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzey;

    .line 101
    invoke-static {v15, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v2, v1

    :goto_21
    if-ge v1, v2, :cond_33

    .line 102
    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 103
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzea;->zzb(I)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(I)V

    goto :goto_21

    :cond_33
    if-ne v1, v2, :cond_34

    goto/16 :goto_1e

    .line 104
    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_35
    if-nez v2, :cond_32

    .line 105
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzey;

    .line 106
    invoke-static {v15, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 107
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzea;->zzb(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(I)V

    :goto_22
    if-ge v1, v0, :cond_2d

    .line 108
    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v14, v3, :cond_2d

    .line 109
    invoke-static {v15, v2, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzea;->zzb(I)I

    move-result v2

    .line 110
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(I)V

    goto :goto_22

    :pswitch_f
    move v9, v0

    move v12, v4

    move v14, v6

    move-object v11, v15

    move-object/from16 v31, v17

    const/4 v1, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v1, :cond_36

    .line 111
    invoke-static {v15, v12, v13, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzf([BILcom/google/android/gms/internal/play_billing/zzfc;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    goto :goto_23

    :cond_36
    if-nez v2, :cond_32

    move v1, v14

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move-object v5, v13

    move-object/from16 v6, p6

    .line 112
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzj(I[BIILcom/google/android/gms/internal/play_billing/zzfc;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    .line 113
    :goto_23
    invoke-direct {v10, v9}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 114
    sget v4, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    if-eqz v2, :cond_3c

    .line 115
    instance-of v4, v13, Ljava/util/RandomAccess;

    if-eqz v4, :cond_3a

    .line 116
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v8, v18

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_24
    if-ge v5, v4, :cond_39

    .line 117
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 p3, v1

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/Integer;

    move/from16 v17, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza(I)Z

    move-result v21

    if-eqz v21, :cond_38

    if-eq v5, v6, :cond_37

    .line 118
    invoke-interface {v13, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const/4 v1, 0x1

    add-int/2addr v6, v1

    move/from16 v21, v1

    move/from16 v1, v30

    goto :goto_25

    :cond_38
    move/from16 v1, v30

    .line 119
    invoke-static {v7, v1, v9, v8, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhd;)Ljava/lang/Object;

    move-result-object v8

    const/16 v21, 0x1

    :goto_25
    add-int/lit8 v5, v5, 0x1

    move/from16 v30, v1

    move/from16 v9, v17

    move/from16 v1, p3

    goto :goto_24

    :cond_39
    move/from16 p3, v1

    move/from16 v17, v9

    move/from16 v1, v30

    const/16 v21, 0x1

    if-eq v6, v4, :cond_3d

    .line 120
    invoke-interface {v13, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_27

    :cond_3a
    move/from16 p3, v1

    move/from16 v17, v9

    move/from16 v1, v30

    const/16 v21, 0x1

    .line 121
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v5, v18

    :cond_3b
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza(I)Z

    move-result v8

    if-nez v8, :cond_3b

    .line 123
    invoke-static {v7, v1, v6, v5, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzo(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhd;)Ljava/lang/Object;

    move-result-object v5

    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    :cond_3c
    move/from16 p3, v1

    move/from16 v17, v9

    move/from16 v1, v30

    const/16 v21, 0x1

    :cond_3d
    :goto_27
    move/from16 v2, p3

    :cond_3e
    move v9, v1

    move-object v10, v11

    move v11, v12

    move v12, v14

    move/from16 v14, v17

    move/from16 v1, v21

    const/4 v6, 0x3

    const/4 v8, 0x2

    goto/16 :goto_41

    :pswitch_10
    move v12, v4

    move v14, v6

    move-object v11, v15

    move-object/from16 v31, v17

    move/from16 v1, v30

    const/4 v3, 0x2

    const/16 v21, 0x1

    move-object/from16 v15, p2

    move/from16 v17, v0

    move/from16 v0, p4

    if-ne v2, v3, :cond_45

    .line 125
    invoke-static {v15, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v3, :cond_44

    .line 126
    array-length v4, v15

    sub-int/2addr v4, v2

    if-gt v3, v4, :cond_43

    if-nez v3, :cond_3f

    .line 127
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzdw;->zzb:Lcom/google/android/gms/internal/play_billing/zzdw;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 128
    :cond_3f
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzdw;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/2addr v2, v3

    :goto_29
    if-ge v2, v0, :cond_3e

    .line 129
    invoke-static {v15, v2, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v14, v4, :cond_3e

    .line 130
    invoke-static {v15, v3, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v3, :cond_42

    .line 131
    array-length v4, v15

    sub-int/2addr v4, v2

    if-gt v3, v4, :cond_41

    if-nez v3, :cond_40

    .line 132
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzdw;->zzb:Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 133
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 134
    :cond_40
    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzdw;->zzl([BII)Lcom/google/android/gms/internal/play_billing/zzdw;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 135
    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    .line 136
    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    .line 137
    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    .line 138
    :cond_44
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_45
    move v9, v1

    move v8, v3

    move-object v10, v11

    move v11, v12

    move v12, v14

    move/from16 v14, v17

    move/from16 v1, v21

    :goto_2a
    const/4 v6, 0x3

    goto/16 :goto_40

    :pswitch_11
    move v12, v4

    move v14, v6

    move-object v11, v15

    move-object/from16 v31, v17

    move/from16 v1, v30

    const/4 v3, 0x2

    const/16 v21, 0x1

    move-object/from16 v15, p2

    move/from16 v17, v0

    move/from16 v0, p4

    if-ne v2, v3, :cond_45

    move/from16 v9, v17

    .line 139
    invoke-direct {v10, v9}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v8

    const/4 v6, 0x3

    move v5, v9

    move v9, v14

    move-object/from16 v10, p2

    move-object v4, v11

    move v11, v12

    move v2, v12

    move/from16 v12, p4

    move/from16 v32, v14

    move-object/from16 v14, p6

    .line 140
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdk;->zze(Lcom/google/android/gms/internal/play_billing/zzgm;I[BIILcom/google/android/gms/internal/play_billing/zzfc;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v8

    move v9, v1

    move v11, v2

    move-object v10, v4

    move v14, v5

    move v2, v8

    move/from16 v12, v32

    const/4 v1, 0x1

    move v8, v3

    goto/16 :goto_41

    :pswitch_12
    move v5, v0

    move-object v10, v1

    move v11, v4

    move/from16 v32, v6

    move-object v4, v15

    move-object/from16 v31, v17

    move/from16 v1, v30

    const/4 v3, 0x2

    const/4 v6, 0x3

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v3, :cond_54

    const-wide/32 v21, 0x20000000

    and-long v8, v8, v21

    cmp-long v2, v8, v27

    if-nez v2, :cond_4c

    .line 141
    invoke-static {v15, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v8, :cond_4b

    if-nez v8, :cond_46

    .line 142
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 143
    :cond_46
    new-instance v9, Ljava/lang/String;

    .line 144
    sget-object v12, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v2, v8, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 145
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v8

    :goto_2b
    if-ge v2, v0, :cond_49

    .line 146
    invoke-static {v15, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v8

    iget v9, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    move/from16 v12, v32

    if-ne v12, v9, :cond_4a

    .line 147
    invoke-static {v15, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v8, :cond_48

    if-nez v8, :cond_47

    .line 148
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    move/from16 v32, v12

    goto :goto_2b

    :cond_47
    new-instance v9, Ljava/lang/String;

    .line 149
    sget-object v14, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v2, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 150
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v8

    goto :goto_2c

    .line 151
    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_49
    move/from16 v12, v32

    :cond_4a
    move v9, v1

    move v8, v3

    move-object v10, v4

    move v14, v5

    :goto_2d
    const/4 v1, 0x1

    goto/16 :goto_41

    .line 152
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_4c
    move/from16 v12, v32

    .line 153
    invoke-static {v15, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v8, :cond_53

    if-nez v8, :cond_4d

    .line 154
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4d
    add-int v9, v2, v8

    .line 155
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/play_billing/zzhs;->zze([BII)Z

    move-result v14

    if-eqz v14, :cond_52

    .line 156
    new-instance v14, Ljava/lang/String;

    .line 157
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v2, v8, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 158
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v9

    :goto_2e
    if-ge v2, v0, :cond_51

    .line 159
    invoke-static {v15, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v6

    iget v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v12, v8, :cond_51

    .line 160
    invoke-static {v15, v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v6, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ltz v6, :cond_50

    if-nez v6, :cond_4e

    .line 161
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4e
    add-int v8, v2, v6

    .line 162
    invoke-static {v15, v2, v8}, Lcom/google/android/gms/internal/play_billing/zzhs;->zze([BII)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 163
    new-instance v9, Ljava/lang/String;

    .line 164
    sget-object v14, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v2, v6, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 165
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_2e

    .line 166
    :cond_4f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzc()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    .line 167
    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_51
    :goto_2f
    move v9, v1

    move v8, v3

    move-object v10, v4

    move v14, v5

    const/4 v1, 0x1

    const/4 v6, 0x3

    goto/16 :goto_41

    .line 168
    :cond_52
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzc()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    .line 169
    :cond_53
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzd()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_54
    move/from16 v12, v32

    move v9, v1

    move v8, v3

    move-object v10, v4

    move v14, v5

    :cond_55
    const/4 v1, 0x1

    goto/16 :goto_40

    :pswitch_13
    move v5, v0

    move v11, v4

    move v12, v6

    move-object v4, v15

    move-object/from16 v31, v17

    move/from16 v1, v30

    const/4 v3, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v3, :cond_59

    .line 170
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdl;

    .line 171
    invoke-static {v15, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v6, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v6, v2

    :goto_30
    if-ge v2, v6, :cond_57

    .line 172
    invoke-static {v15, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget-wide v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    cmp-long v8, v8, v27

    if-eqz v8, :cond_56

    const/4 v8, 0x1

    goto :goto_31

    :cond_56
    const/4 v8, 0x0

    .line 173
    :goto_31
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzdl;->zze(Z)V

    goto :goto_30

    :cond_57
    if-ne v2, v6, :cond_58

    goto :goto_2f

    .line 174
    :cond_58
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_59
    if-nez v2, :cond_5c

    .line 175
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzdl;

    .line 176
    invoke-static {v15, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget-wide v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    cmp-long v6, v8, v27

    if-eqz v6, :cond_5a

    const/4 v6, 0x1

    goto :goto_32

    :cond_5a
    const/4 v6, 0x0

    .line 177
    :goto_32
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/play_billing/zzdl;->zze(Z)V

    :goto_33
    if-ge v2, v0, :cond_51

    .line 178
    invoke-static {v15, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v6

    iget v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v12, v8, :cond_51

    .line 179
    invoke-static {v15, v6, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget-wide v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    cmp-long v6, v8, v27

    if-eqz v6, :cond_5b

    const/4 v6, 0x1

    goto :goto_34

    :cond_5b
    const/4 v6, 0x0

    .line 180
    :goto_34
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/play_billing/zzdl;->zze(Z)V

    goto :goto_33

    :cond_5c
    move v9, v1

    move v8, v3

    move-object v10, v4

    move v14, v5

    const/4 v1, 0x1

    goto/16 :goto_2a

    :pswitch_14
    move v5, v0

    move v11, v4

    move v12, v6

    move-object v4, v15

    move-object/from16 v31, v17

    move/from16 v1, v30

    const/4 v3, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v3, :cond_5f

    .line 181
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzey;

    .line 182
    invoke-static {v15, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v6, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v6, v2

    :goto_35
    if-ge v2, v6, :cond_5d

    .line 183
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_35

    :cond_5d
    if-ne v2, v6, :cond_5e

    goto/16 :goto_2f

    .line 184
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_5f
    const/4 v6, 0x5

    if-ne v2, v6, :cond_5c

    add-int/lit8 v2, v11, 0x4

    .line 185
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzey;

    .line 186
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(I)V

    :goto_36
    if-ge v2, v0, :cond_51

    .line 187
    invoke-static {v15, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v6

    iget v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v12, v8, :cond_51

    .line 188
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zzf(I)V

    add-int/lit8 v2, v6, 0x4

    goto :goto_36

    :pswitch_15
    move v5, v0

    move v11, v4

    move v12, v6

    move-object v4, v15

    move-object/from16 v31, v17

    move/from16 v1, v30

    const/4 v3, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v3, :cond_62

    .line 189
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 190
    invoke-static {v15, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v6, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v6, v2

    :goto_37
    if-ge v2, v6, :cond_60

    .line 191
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_37

    :cond_60
    if-ne v2, v6, :cond_61

    goto/16 :goto_2f

    .line 192
    :cond_61
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_62
    const/4 v9, 0x1

    if-ne v2, v9, :cond_63

    add-int/lit8 v2, v11, 0x8

    .line 193
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 194
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    :goto_38
    if-ge v2, v0, :cond_51

    .line 195
    invoke-static {v15, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v6

    iget v8, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v12, v8, :cond_51

    .line 196
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    add-int/lit8 v2, v6, 0x8

    goto :goto_38

    :cond_63
    move v8, v3

    move-object v10, v4

    move v14, v5

    const/4 v6, 0x3

    move/from16 v34, v9

    move v9, v1

    move/from16 v1, v34

    goto/16 :goto_40

    :pswitch_16
    move v5, v0

    move v11, v4

    move v12, v6

    move-object v4, v15

    move-object/from16 v31, v17

    move/from16 v1, v30

    const/4 v3, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v3, :cond_64

    .line 197
    invoke-static {v15, v11, v13, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzf([BILcom/google/android/gms/internal/play_billing/zzfc;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    goto/16 :goto_2f

    :cond_64
    if-nez v2, :cond_5c

    move v9, v1

    move v1, v12

    move-object/from16 v2, p2

    move v8, v3

    move v3, v11

    move-object v10, v4

    move/from16 v4, p4

    move v14, v5

    move-object v5, v13

    const/4 v13, 0x3

    move-object/from16 v6, p6

    .line 198
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzj(I[BIILcom/google/android/gms/internal/play_billing/zzfc;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    move v2, v1

    move v6, v13

    goto/16 :goto_2d

    :pswitch_17
    move v14, v0

    move v11, v4

    move v12, v6

    move-object v10, v15

    move-object/from16 v31, v17

    move/from16 v9, v30

    const/4 v6, 0x3

    const/4 v8, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v8, :cond_68

    .line 199
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 200
    invoke-static {v15, v11, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v2, v1

    :goto_39
    if-ge v1, v2, :cond_65

    .line 201
    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-wide v3, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 202
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    goto :goto_39

    :cond_65
    if-ne v1, v2, :cond_67

    :cond_66
    :goto_3a
    move v2, v1

    goto/16 :goto_2d

    .line 203
    :cond_67
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_68
    if-nez v2, :cond_55

    .line 204
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 205
    invoke-static {v15, v11, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-wide v2, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 206
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    :goto_3b
    if-ge v1, v0, :cond_66

    .line 207
    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v3, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v12, v3, :cond_66

    .line 208
    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget-wide v2, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 209
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->zzf(J)V

    goto :goto_3b

    :pswitch_18
    move v14, v0

    move v11, v4

    move v12, v6

    move-object v10, v15

    move-object/from16 v31, v17

    move/from16 v9, v30

    const/4 v6, 0x3

    const/4 v8, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v8, :cond_6b

    .line 210
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzeq;

    .line 211
    invoke-static {v15, v11, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v2, v1

    :goto_3c
    if-ge v1, v2, :cond_69

    .line 212
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 213
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/play_billing/zzeq;->zze(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_3c

    :cond_69
    if-ne v1, v2, :cond_6a

    goto :goto_3a

    .line 214
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_6b
    const/4 v1, 0x5

    if-ne v2, v1, :cond_55

    add-int/lit8 v4, v11, 0x4

    .line 215
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzeq;

    .line 216
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 217
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zze(F)V

    :goto_3d
    if-ge v4, v0, :cond_6c

    .line 218
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v12, v2, :cond_6c

    .line 219
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 220
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzeq;->zze(F)V

    add-int/lit8 v4, v1, 0x4

    goto :goto_3d

    :cond_6c
    move v2, v4

    goto/16 :goto_2d

    :pswitch_19
    move v14, v0

    move v11, v4

    move v12, v6

    move-object v10, v15

    move-object/from16 v31, v17

    move/from16 v9, v30

    const/4 v6, 0x3

    const/4 v8, 0x2

    move-object/from16 v15, p2

    move/from16 v0, p4

    if-ne v2, v8, :cond_6f

    .line 221
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzeg;

    .line 222
    invoke-static {v15, v11, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    add-int/2addr v2, v1

    :goto_3e
    if-ge v1, v2, :cond_6d

    .line 223
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 224
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzeg;->zze(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3e

    :cond_6d
    if-ne v1, v2, :cond_6e

    goto/16 :goto_3a

    .line 225
    :cond_6e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_6f
    const/4 v1, 0x1

    if-ne v2, v1, :cond_71

    add-int/lit8 v4, v11, 0x8

    .line 226
    check-cast v13, Lcom/google/android/gms/internal/play_billing/zzeg;

    .line 227
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 228
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzeg;->zze(D)V

    :goto_3f
    if-ge v4, v0, :cond_70

    .line 229
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v3, v10, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-ne v12, v3, :cond_70

    .line 230
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 231
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzeg;->zze(D)V

    add-int/lit8 v4, v2, 0x8

    goto :goto_3f

    :cond_70
    move v2, v4

    goto :goto_41

    :cond_71
    :goto_40
    move v2, v11

    :goto_41
    if-eq v2, v11, :cond_72

    move v5, v0

    move v8, v2

    move v3, v6

    move-object v6, v10

    move/from16 v17, v12

    move v10, v14

    move/from16 v13, v19

    move/from16 v11, v20

    const v12, 0xfffff

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v2, v1

    move-object/from16 v1, v31

    goto/16 :goto_0

    :cond_72
    move/from16 v0, p5

    move v4, v2

    move/from16 v21, v6

    move v3, v9

    move-object v5, v10

    move v9, v12

    move v10, v14

    move/from16 v11, v20

    move-object/from16 v6, p0

    goto/16 :goto_4d

    :cond_73
    move-object/from16 v31, v5

    move/from16 v33, v6

    move v2, v9

    move-object v5, v10

    move v8, v11

    move/from16 v9, v30

    move v6, v0

    move-object v10, v1

    move v11, v4

    move-object v4, v15

    move-object/from16 v15, p2

    move/from16 v0, p4

    const/16 v1, 0x32

    if-ne v3, v1, :cond_76

    if-ne v2, v8, :cond_75

    .line 232
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 233
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 235
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzfw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zze()Z

    move-result v3

    if-nez v3, :cond_74

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfw;->zza()Lcom/google/android/gms/internal/play_billing/zzfw;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb()Lcom/google/android/gms/internal/play_billing/zzfw;

    move-result-object v3

    .line 237
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v0, v7, v12, v13, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 239
    :cond_74
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 240
    throw v18

    :cond_75
    :goto_42
    move/from16 v0, p5

    move v10, v6

    move v3, v9

    move/from16 v9, v33

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    :goto_43
    move/from16 v11, v20

    goto/16 :goto_4d

    :cond_76
    add-int/lit8 v1, v6, 0x2

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 241
    aget v1, p3, v1

    const v17, 0xfffff

    and-int v1, v1, v17

    int-to-long v0, v1

    packed-switch v3, :pswitch_data_2

    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/16 v21, 0x3

    :goto_44
    move-object v6, v5

    move-object v5, v4

    move v4, v11

    goto/16 :goto_4b

    :pswitch_1a
    const/4 v3, 0x3

    if-ne v2, v3, :cond_77

    move/from16 v0, v33

    and-int/lit8 v1, v0, -0x8

    or-int/lit8 v13, v1, 0x4

    .line 242
    invoke-direct {v5, v7, v9, v6}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 243
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v2

    const/4 v14, 0x2

    move-object v8, v1

    move v12, v9

    const/4 v10, 0x1

    move-object v9, v2

    move v2, v10

    move-object/from16 v10, p2

    move/from16 p3, v11

    move v3, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 244
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;[BIIILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v8

    .line 245
    invoke-direct {v5, v7, v3, v6, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move v9, v0

    move/from16 v17, v6

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move/from16 v4, p3

    goto/16 :goto_4c

    :cond_77
    move/from16 v21, v3

    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    goto :goto_44

    :pswitch_1b
    move v3, v9

    move/from16 p3, v11

    move/from16 v9, v33

    const/4 v11, 0x1

    if-nez v2, :cond_78

    move/from16 v10, p3

    .line 246
    invoke-static {v15, v10, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    move-wide/from16 v21, v12

    iget-wide v11, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 247
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/play_billing/zzea;->zzc(J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-wide/from16 v12, v21

    invoke-virtual {v8, v7, v12, v13, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 248
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_45
    move v8, v2

    move/from16 v17, v6

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v10

    goto/16 :goto_4c

    :cond_78
    move/from16 v17, v6

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move/from16 v4, p3

    goto/16 :goto_4b

    :pswitch_1c
    move v3, v9

    move v10, v11

    move/from16 v9, v33

    if-nez v2, :cond_79

    .line 249
    invoke-static {v15, v10, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v11, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 250
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/zzea;->zzb(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v7, v12, v13, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 251
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :cond_79
    move/from16 v17, v6

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v10

    goto/16 :goto_4b

    :pswitch_1d
    move v3, v9

    move v10, v11

    move/from16 v9, v33

    if-nez v2, :cond_79

    .line 252
    invoke-static {v15, v10, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v11, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 253
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object v14

    if-eqz v14, :cond_7b

    invoke-interface {v14, v11}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza(I)Z

    move-result v14

    if-eqz v14, :cond_7a

    goto :goto_46

    .line 254
    :cond_7a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v0

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzj(ILjava/lang/Object;)V

    goto :goto_45

    .line 255
    :cond_7b
    :goto_46
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v7, v12, v13, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 256
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_1e
    move v3, v9

    move v10, v11

    move/from16 v9, v33

    const/4 v11, 0x2

    if-ne v2, v11, :cond_79

    .line 257
    invoke-static {v15, v10, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zza([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget-object v14, v4, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/lang/Object;

    .line 258
    invoke-virtual {v8, v7, v12, v13, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 259
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_1f
    move v3, v9

    move v10, v11

    move/from16 v9, v33

    const/4 v11, 0x2

    if-ne v2, v11, :cond_7c

    .line 260
    invoke-direct {v5, v7, v3, v6}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    .line 261
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v2

    move-object v1, v0

    move v8, v3

    const/4 v12, 0x3

    move-object/from16 v3, p2

    move v4, v10

    move-object v13, v5

    move/from16 v5, p4

    move/from16 v21, v12

    move v12, v6

    move-object/from16 v6, p6

    .line 262
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;[BIILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    .line 263
    invoke-direct {v13, v7, v8, v12, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v5, p6

    move v3, v8

    move/from16 v17, v12

    move-object v6, v13

    move v8, v1

    goto/16 :goto_4c

    :cond_7c
    const/16 v21, 0x3

    move/from16 v17, v6

    move v4, v10

    move-object v6, v5

    move-object/from16 v5, p6

    goto/16 :goto_4b

    :pswitch_20
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    const/4 v11, 0x2

    if-ne v2, v11, :cond_81

    .line 264
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v11, v5, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    if-nez v11, :cond_7d

    .line 265
    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_48

    :cond_7d
    and-int v10, v14, v25

    add-int v14, v2, v11

    if-eqz v10, :cond_7f

    .line 266
    invoke-static {v15, v2, v14}, Lcom/google/android/gms/internal/play_billing/zzhs;->zze([BII)Z

    move-result v10

    if-eqz v10, :cond_7e

    goto :goto_47

    .line 267
    :cond_7e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zzc()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    .line 268
    :cond_7f
    :goto_47
    new-instance v10, Ljava/lang/String;

    move/from16 p3, v14

    .line 269
    sget-object v14, Lcom/google/android/gms/internal/play_billing/zzfd;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v10, v15, v2, v11, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 270
    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v2, p3

    .line 271
    :goto_48
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_49
    move v8, v2

    goto/16 :goto_4c

    :pswitch_21
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    if-nez v2, :cond_81

    .line 272
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget-wide v10, v5, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    cmp-long v10, v10, v27

    if-eqz v10, :cond_80

    const/4 v10, 0x1

    goto :goto_4a

    :cond_80
    const/4 v10, 0x0

    .line 273
    :goto_4a
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 274
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_22
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/4 v10, 0x5

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    if-ne v2, v10, :cond_81

    add-int/lit8 v2, v4, 0x4

    .line 275
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 276
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_23
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/4 v10, 0x1

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    if-ne v2, v10, :cond_81

    add-int/lit8 v2, v4, 0x8

    .line 277
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 278
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_24
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    if-nez v2, :cond_81

    .line 279
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzh([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget v10, v5, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:I

    .line 280
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 281
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_25
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    if-nez v2, :cond_81

    .line 282
    invoke-static {v15, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzk([BILcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v2

    iget-wide v10, v5, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:J

    .line 283
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 284
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_26
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/4 v10, 0x5

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    if-ne v2, v10, :cond_81

    add-int/lit8 v2, v4, 0x4

    .line 285
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb([BI)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 286
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 287
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_27
    move/from16 v17, v6

    move v3, v9

    move/from16 v9, v33

    const/4 v10, 0x1

    const/16 v21, 0x3

    move-object v6, v5

    move-object v5, v4

    move v4, v11

    if-ne v2, v10, :cond_81

    add-int/lit8 v2, v4, 0x8

    .line 288
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzn([BI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 289
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v7, v12, v13, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 290
    invoke-virtual {v8, v7, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :cond_81
    :goto_4b
    move v8, v4

    :goto_4c
    if-eq v8, v4, :cond_82

    move-object v0, v6

    move/from16 v10, v17

    move/from16 v13, v19

    move/from16 v11, v20

    move-object/from16 v1, v31

    const/4 v2, 0x1

    const v12, 0xfffff

    const/4 v14, 0x0

    move-object v6, v5

    move/from16 v17, v9

    move/from16 v5, p4

    move v9, v3

    move/from16 v3, v21

    goto/16 :goto_0

    :cond_82
    move/from16 v0, p5

    move v4, v8

    move/from16 v10, v17

    goto/16 :goto_43

    :goto_4d
    if-ne v9, v0, :cond_83

    if-eqz v0, :cond_83

    move v8, v4

    move-object v13, v6

    move/from16 v1, v16

    const v2, 0xfffff

    goto/16 :goto_50

    .line 291
    :cond_83
    iget-boolean v1, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    if-eqz v1, :cond_85

    iget-object v1, v5, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzej;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzej;->zza:Lcom/google/android/gms/internal/play_billing/zzej;

    if-eq v1, v2, :cond_85

    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzg:Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 292
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzej;->zzb(Lcom/google/android/gms/internal/play_billing/zzgc;I)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v1

    if-nez v1, :cond_84

    .line 293
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v8

    move v1, v9

    move-object/from16 v2, p2

    move v12, v3

    move v3, v4

    move/from16 v4, p4

    move-object v5, v8

    move-object v13, v6

    move-object/from16 v6, p6

    .line 294
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzg(I[BIILcom/google/android/gms/internal/play_billing/zzhe;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    :goto_4e
    move v8, v1

    goto :goto_4f

    :cond_84
    move-object v13, v6

    .line 295
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzeu;

    .line 296
    throw v18

    :cond_85
    move v12, v3

    move-object v13, v6

    .line 297
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v5

    move v1, v9

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 298
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzg(I[BIILcom/google/android/gms/internal/play_billing/zzhe;Lcom/google/android/gms/internal/play_billing/zzdj;)I

    move-result v1

    goto :goto_4e

    :goto_4f
    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v17, v9

    move v9, v12

    move-object v0, v13

    move/from16 v13, v19

    move/from16 v3, v21

    move-object/from16 v1, v31

    const/4 v2, 0x1

    const v12, 0xfffff

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_86
    move-object v13, v0

    move-object/from16 v31, v1

    move/from16 v20, v11

    move/from16 v0, p5

    move v2, v12

    move/from16 v1, v16

    move/from16 v9, v17

    :goto_50
    if-eq v11, v2, :cond_87

    int-to-long v2, v11

    move-object/from16 v4, v31

    .line 299
    invoke-virtual {v4, v7, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_87
    iget v1, v13, Lcom/google/android/gms/internal/play_billing/zzgf;->zzj:I

    :goto_51
    iget v2, v13, Lcom/google/android/gms/internal/play_billing/zzgf;->zzk:I

    if-ge v1, v2, :cond_8a

    iget-object v2, v13, Lcom/google/android/gms/internal/play_billing/zzgf;->zzi:[I

    iget-object v3, v13, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 300
    aget v2, v2, v1

    .line 301
    aget v3, v3, v2

    .line 302
    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v3, v4

    int-to-long v5, v3

    .line 303
    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_88

    :goto_52
    const/4 v5, 0x1

    goto :goto_53

    .line 304
    :cond_88
    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzu(I)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object v5

    if-nez v5, :cond_89

    goto :goto_52

    :goto_53
    add-int/2addr v1, v5

    goto :goto_51

    .line 305
    :cond_89
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzfw;

    .line 306
    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 307
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 308
    throw v18

    :cond_8a
    if-nez v0, :cond_8c

    move/from16 v1, p4

    if-ne v8, v1, :cond_8b

    goto :goto_54

    .line 309
    :cond_8b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zze()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    :cond_8c
    move/from16 v1, p4

    if-gt v8, v1, :cond_8d

    if-ne v9, v0, :cond_8d

    :goto_54
    return v8

    .line 310
    :cond_8d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzff;->zze()Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzg:Lcom/google/android/gms/internal/play_billing/zzgc;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzi()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzL(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzex;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzex;->zzq(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzdg;->zza:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzo()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 29
    .line 30
    :goto_0
    array-length v2, v0

    .line 31
    if-ge v1, v2, :cond_5

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const v3, 0xfffff

    .line 38
    .line 39
    .line 40
    and-int/2addr v3, v2

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-long v3, v3

    .line 46
    const/16 v5, 0x9

    .line 47
    .line 48
    if-eq v2, v5, :cond_3

    .line 49
    .line 50
    const/16 v5, 0x3c

    .line 51
    .line 52
    if-eq v2, v5, :cond_2

    .line 53
    .line 54
    const/16 v5, 0x44

    .line 55
    .line 56
    if-eq v2, v5, :cond_2

    .line 57
    .line 58
    packed-switch v2, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 63
    .line 64
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    move-object v6, v5

    .line 71
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzfw;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzc()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzl:Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 81
    .line 82
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfq;->zza(Ljava/lang/Object;J)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 87
    .line 88
    aget v2, v2, v1

    .line 89
    .line 90
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 101
    .line 102
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzf(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 121
    .line 122
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzf(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzg(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    .line 138
    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zzb(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_2
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzA(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const v2, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v2, v1

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aget v3, v3, v0

    .line 28
    .line 29
    int-to-long v4, v2

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzE(Ljava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzE(Ljava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    .line 82
    .line 83
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzl:Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 101
    .line 102
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfq;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzr(Ljava/lang/Object;JJ)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    .line 136
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    .line 154
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzr(Ljava/lang/Object;JJ)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    .line 172
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    .line 190
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    .line 208
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    .line 226
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_0

    .line 248
    .line 249
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    .line 267
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzw(Ljava/lang/Object;J)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzm(Ljava/lang/Object;JZ)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    .line 285
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 290
    .line 291
    .line 292
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_0

    .line 301
    .line 302
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 303
    .line 304
    .line 305
    move-result-wide v1

    .line 306
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzr(Ljava/lang/Object;JJ)V

    .line 307
    .line 308
    .line 309
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    .line 319
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzq(Ljava/lang/Object;JI)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    .line 336
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v1

    .line 340
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzr(Ljava/lang/Object;JJ)V

    .line 341
    .line 342
    .line 343
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_0

    .line 352
    .line 353
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 354
    .line 355
    .line 356
    move-result-wide v1

    .line 357
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzr(Ljava/lang/Object;JJ)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    .line 370
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzb(Ljava/lang/Object;J)F

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzp(Ljava/lang/Object;JF)V

    .line 375
    .line 376
    .line 377
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 378
    .line 379
    .line 380
    goto :goto_1

    .line 381
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzI(Ljava/lang/Object;I)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_0

    .line 386
    .line 387
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;J)D

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzo(Ljava/lang/Object;JD)V

    .line 392
    .line 393
    .line 394
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzD(Ljava/lang/Object;I)V

    .line 395
    .line 396
    .line 397
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 402
    .line 403
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzp(Lcom/google/android/gms/internal/play_billing/zzhd;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    .line 407
    .line 408
    if-nez p1, :cond_2

    .line 409
    .line 410
    return-void

    .line 411
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 412
    .line 413
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 414
    .line 415
    .line 416
    const/4 p1, 0x0

    .line 417
    throw p1

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzdj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/zzdj;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x1

    .line 1
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    const/4 v10, 0x0

    if-nez v0, :cond_7

    iget-object v11, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    sget-object v12, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    const v13, 0xfffff

    move v0, v13

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_0
    array-length v2, v11

    if-ge v15, v2, :cond_6

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    move-result v2

    iget-object v3, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    move-result v4

    .line 2
    aget v5, v3, v15

    const/16 v14, 0x11

    if-gt v4, v14, :cond_2

    add-int/lit8 v14, v15, 0x2

    .line 3
    aget v3, v3, v14

    and-int v14, v3, v13

    if-eq v14, v0, :cond_1

    if-ne v14, v13, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v14

    .line 4
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v14

    :cond_1
    ushr-int/lit8 v3, v3, 0x14

    shl-int v3, v9, v3

    move v14, v0

    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    const/16 v17, 0x0

    :goto_2
    and-int v0, v2, v13

    int-to-long v2, v0

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_3
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 5
    :pswitch_0
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    .line 7
    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)V

    goto :goto_3

    .line 8
    :pswitch_1
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzC(IJ)V

    goto :goto_3

    .line 10
    :pswitch_2
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzA(II)V

    goto :goto_3

    .line 12
    :pswitch_3
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzy(IJ)V

    goto :goto_3

    .line 14
    :pswitch_4
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzw(II)V

    goto :goto_3

    .line 16
    :pswitch_5
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzi(II)V

    goto :goto_3

    .line 18
    :pswitch_6
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzH(II)V

    goto :goto_3

    .line 20
    :pswitch_7
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdw;

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzd(ILcom/google/android/gms/internal/play_billing/zzdw;)V

    goto :goto_3

    .line 22
    :pswitch_8
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)V

    goto/16 :goto_3

    .line 25
    :pswitch_9
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, v8}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V

    goto/16 :goto_3

    .line 27
    :pswitch_a
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzN(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzb(IZ)V

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzk(II)V

    goto/16 :goto_3

    .line 31
    :pswitch_c
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzm(IJ)V

    goto/16 :goto_3

    .line 33
    :pswitch_d
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzr(II)V

    goto/16 :goto_3

    .line 35
    :pswitch_e
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzJ(IJ)V

    goto/16 :goto_3

    .line 37
    :pswitch_f
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzt(IJ)V

    goto/16 :goto_3

    .line 39
    :pswitch_10
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzo(IF)V

    goto/16 :goto_3

    .line 41
    :pswitch_11
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzf(ID)V

    goto/16 :goto_3

    .line 43
    :pswitch_12
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 44
    :cond_4
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 46
    throw v10

    .line 47
    :pswitch_13
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 48
    aget v0, v0, v15

    .line 49
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 50
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v2

    .line 51
    sget v3, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    if-eqz v1, :cond_3

    .line 52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 53
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 54
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzef;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzef;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)V

    add-int/2addr v3, v9

    goto :goto_4

    .line 55
    :pswitch_14
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 56
    aget v0, v0, v15

    .line 57
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 58
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 59
    :pswitch_15
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 60
    aget v0, v0, v15

    .line 61
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 62
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 63
    :pswitch_16
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 64
    aget v0, v0, v15

    .line 65
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 67
    :pswitch_17
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 68
    aget v0, v0, v15

    .line 69
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 70
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 71
    :pswitch_18
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 72
    aget v0, v0, v15

    .line 73
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 74
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 75
    :pswitch_19
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 76
    aget v0, v0, v15

    .line 77
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 79
    :pswitch_1a
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 80
    aget v0, v0, v15

    .line 81
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 82
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 83
    :pswitch_1b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 84
    aget v0, v0, v15

    .line 85
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 86
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 87
    :pswitch_1c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 88
    aget v0, v0, v15

    .line 89
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 91
    :pswitch_1d
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 92
    aget v0, v0, v15

    .line 93
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 94
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 95
    :pswitch_1e
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 96
    aget v0, v0, v15

    .line 97
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 98
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 99
    :pswitch_1f
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 100
    aget v0, v0, v15

    .line 101
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 102
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 103
    :pswitch_20
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 104
    aget v0, v0, v15

    .line 105
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 106
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 107
    :pswitch_21
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 108
    aget v0, v0, v15

    .line 109
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 110
    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_3

    .line 111
    :pswitch_22
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 112
    aget v0, v0, v15

    .line 113
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    .line 114
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    :goto_5
    move/from16 v18, v4

    goto/16 :goto_7

    :pswitch_23
    const/4 v4, 0x0

    .line 115
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 116
    aget v0, v0, v15

    .line 117
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 118
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto :goto_5

    :pswitch_24
    const/4 v4, 0x0

    .line 119
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 120
    aget v0, v0, v15

    .line 121
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto :goto_5

    :pswitch_25
    const/4 v4, 0x0

    .line 123
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 124
    aget v0, v0, v15

    .line 125
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto :goto_5

    :pswitch_26
    const/4 v4, 0x0

    .line 127
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 128
    aget v0, v0, v15

    .line 129
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 130
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto :goto_5

    :pswitch_27
    const/4 v4, 0x0

    .line 131
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 132
    aget v0, v0, v15

    .line 133
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 134
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto :goto_5

    .line 135
    :pswitch_28
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 136
    aget v0, v0, v15

    .line 137
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 138
    sget v2, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    if-eqz v1, :cond_3

    .line 139
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zze(ILjava/util/List;)V

    goto/16 :goto_3

    .line 141
    :pswitch_29
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 142
    aget v0, v0, v15

    .line 143
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 144
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v2

    .line 145
    sget v3, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    if-eqz v1, :cond_3

    .line 146
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v4, 0x0

    .line 147
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 148
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzef;

    invoke-virtual {v5, v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/zzef;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)V

    add-int/2addr v4, v9

    goto :goto_6

    .line 149
    :pswitch_2a
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 150
    aget v0, v0, v15

    .line 151
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    sget v2, Lcom/google/android/gms/internal/play_billing/zzgo;->zza:I

    if-eqz v1, :cond_3

    .line 153
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzG(ILjava/util/List;)V

    goto/16 :goto_3

    .line 155
    :pswitch_2b
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 156
    aget v0, v0, v15

    .line 157
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    .line 158
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v4, 0x0

    .line 159
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 160
    aget v0, v0, v15

    .line 161
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 162
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v4, 0x0

    .line 163
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 164
    aget v0, v0, v15

    .line 165
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 166
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v4, 0x0

    .line 167
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 168
    aget v0, v0, v15

    .line 169
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 170
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v4, 0x0

    .line 171
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 172
    aget v0, v0, v15

    .line 173
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 174
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzE(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v4, 0x0

    .line 175
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 176
    aget v0, v0, v15

    .line 177
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 178
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v4, 0x0

    .line 179
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 180
    aget v0, v0, v15

    .line 181
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 182
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v4, 0x0

    .line 183
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 184
    aget v0, v0, v15

    .line 185
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 186
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzhv;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v9, v2

    move v2, v15

    move v3, v14

    move/from16 v18, v4

    move/from16 v4, v16

    move v13, v5

    move/from16 v5, v17

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    .line 189
    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)V

    goto/16 :goto_7

    :pswitch_34
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzC(IJ)V

    goto/16 :goto_7

    :pswitch_35
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzA(II)V

    goto/16 :goto_7

    :pswitch_36
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzy(IJ)V

    goto/16 :goto_7

    :pswitch_37
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzw(II)V

    goto/16 :goto_7

    :pswitch_38
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzi(II)V

    goto/16 :goto_7

    :pswitch_39
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzH(II)V

    goto/16 :goto_7

    :pswitch_3a
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdw;

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzd(ILcom/google/android/gms/internal/play_billing/zzdw;)V

    goto/16 :goto_7

    :pswitch_3b
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 206
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    move-result-object v1

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzgm;)V

    goto/16 :goto_7

    :pswitch_3c
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0, v8}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V

    goto/16 :goto_7

    :pswitch_3d
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    .line 211
    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzb(IZ)V

    goto/16 :goto_7

    :pswitch_3e
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 212
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzk(II)V

    goto/16 :goto_7

    :pswitch_3f
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 214
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzm(IJ)V

    goto/16 :goto_7

    :pswitch_40
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzr(II)V

    goto/16 :goto_7

    :pswitch_41
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 218
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzJ(IJ)V

    goto/16 :goto_7

    :pswitch_42
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {v12, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzt(IJ)V

    goto :goto_7

    :pswitch_43
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 222
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 224
    invoke-interface {v8, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzo(IF)V

    goto :goto_7

    :pswitch_44
    move-wide v9, v2

    move v13, v5

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v17

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;J)D

    move-result-wide v0

    .line 227
    invoke-interface {v8, v13, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzf(ID)V

    :cond_5
    :goto_7
    add-int/lit8 v15, v15, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v13, 0xfffff

    goto/16 :goto_0

    .line 228
    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 229
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V

    return-void

    .line 230
    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 231
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    const/4 v0, 0x0

    .line 232
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const v3, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v4, v2, v3

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-long v4, v4

    .line 22
    packed-switch v2, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzp(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/2addr v2, v3

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v6, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_1
    if-nez v2, :cond_0

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    cmp-long v2, v2, v4

    .line 125
    .line 126
    if-nez v2, :cond_1

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v2, v3, :cond_1

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    cmp-long v2, v2, v4

    .line 163
    .line 164
    if-nez v2, :cond_1

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v2, v3, :cond_1

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_1

    .line 191
    .line 192
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v2, v3, :cond_1

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_1

    .line 209
    .line 210
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v2, v3, :cond_1

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_1

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_1

    .line 249
    .line 250
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_1

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    .line 272
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_1

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_1

    .line 293
    .line 294
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzw(Ljava/lang/Object;J)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzw(Ljava/lang/Object;J)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-ne v2, v3, :cond_1

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_1

    .line 311
    .line 312
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ne v2, v3, :cond_1

    .line 321
    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_1

    .line 329
    .line 330
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v4

    .line 338
    cmp-long v2, v2, v4

    .line 339
    .line 340
    if-nez v2, :cond_1

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_1

    .line 348
    .line 349
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzc(Ljava/lang/Object;J)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-ne v2, v3, :cond_1

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_1

    .line 365
    .line 366
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 367
    .line 368
    .line 369
    move-result-wide v2

    .line 370
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 371
    .line 372
    .line 373
    move-result-wide v4

    .line 374
    cmp-long v2, v2, v4

    .line 375
    .line 376
    if-nez v2, :cond_1

    .line 377
    .line 378
    goto :goto_2

    .line 379
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_1

    .line 384
    .line 385
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 386
    .line 387
    .line 388
    move-result-wide v2

    .line 389
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzd(Ljava/lang/Object;J)J

    .line 390
    .line 391
    .line 392
    move-result-wide v4

    .line 393
    cmp-long v2, v2, v4

    .line 394
    .line 395
    if-nez v2, :cond_1

    .line 396
    .line 397
    goto :goto_2

    .line 398
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eqz v2, :cond_1

    .line 403
    .line 404
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzb(Ljava/lang/Object;J)F

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzb(Ljava/lang/Object;J)F

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-ne v2, v3, :cond_1

    .line 421
    .line 422
    goto :goto_2

    .line 423
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_1

    .line 428
    .line 429
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;J)D

    .line 430
    .line 431
    .line 432
    move-result-wide v2

    .line 433
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 434
    .line 435
    .line 436
    move-result-wide v2

    .line 437
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzhn;->zza(Ljava/lang/Object;J)D

    .line 438
    .line 439
    .line 440
    move-result-wide v4

    .line 441
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    cmp-long v2, v2, v4

    .line 446
    .line 447
    if-nez v2, :cond_1

    .line 448
    .line 449
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_1
    :goto_3
    return v0

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 455
    .line 456
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzm:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 461
    .line 462
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-nez v1, :cond_3

    .line 471
    .line 472
    return v0

    .line 473
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    .line 474
    .line 475
    if-nez v0, :cond_4

    .line 476
    .line 477
    const/4 p1, 0x1

    .line 478
    return p1

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 480
    .line 481
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 482
    .line 483
    .line 484
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 485
    .line 486
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 487
    .line 488
    .line 489
    const/4 p1, 0x0

    .line 490
    throw p1

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const v9, 0xfffff

    .line 7
    .line 8
    .line 9
    move v1, v8

    .line 10
    move v10, v1

    .line 11
    move v0, v9

    .line 12
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzj:I

    .line 13
    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ge v10, v2, :cond_b

    .line 17
    .line 18
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzi:[I

    .line 19
    .line 20
    iget-object v4, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 21
    .line 22
    aget v12, v2, v10

    .line 23
    .line 24
    aget v13, v4, v12

    .line 25
    .line 26
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzs(I)I

    .line 27
    .line 28
    .line 29
    move-result v14

    .line 30
    iget-object v2, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzc:[I

    .line 31
    .line 32
    add-int/lit8 v4, v12, 0x2

    .line 33
    .line 34
    aget v2, v2, v4

    .line 35
    .line 36
    and-int v4, v2, v9

    .line 37
    .line 38
    ushr-int/lit8 v2, v2, 0x14

    .line 39
    .line 40
    shl-int v15, v3, v2

    .line 41
    .line 42
    if-eq v4, v0, :cond_1

    .line 43
    .line 44
    if-eq v4, v9, :cond_0

    .line 45
    .line 46
    int-to-long v0, v4

    .line 47
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzgf;->zzb:Lsun/misc/Unsafe;

    .line 48
    .line 49
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :cond_0
    move/from16 v17, v1

    .line 54
    .line 55
    move/from16 v16, v4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move/from16 v16, v0

    .line 59
    .line 60
    move/from16 v17, v1

    .line 61
    .line 62
    :goto_1
    const/high16 v0, 0x10000000

    .line 63
    .line 64
    and-int/2addr v0, v14

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    move-object/from16 v0, p0

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    .line 71
    move v2, v12

    .line 72
    move/from16 v3, v16

    .line 73
    .line 74
    move/from16 v4, v17

    .line 75
    .line 76
    move v5, v15

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    return v8

    .line 85
    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzr(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/16 v1, 0x9

    .line 90
    .line 91
    if-eq v0, v1, :cond_9

    .line 92
    .line 93
    const/16 v1, 0x11

    .line 94
    .line 95
    if-eq v0, v1, :cond_9

    .line 96
    .line 97
    const/16 v1, 0x1b

    .line 98
    .line 99
    if-eq v0, v1, :cond_7

    .line 100
    .line 101
    const/16 v1, 0x3c

    .line 102
    .line 103
    if-eq v0, v1, :cond_6

    .line 104
    .line 105
    const/16 v1, 0x44

    .line 106
    .line 107
    if-eq v0, v1, :cond_6

    .line 108
    .line 109
    const/16 v1, 0x31

    .line 110
    .line 111
    if-eq v0, v1, :cond_7

    .line 112
    .line 113
    const/16 v1, 0x32

    .line 114
    .line 115
    if-eq v0, v1, :cond_4

    .line 116
    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :cond_4
    and-int v0, v14, v9

    .line 120
    .line 121
    int-to-long v0, v0

    .line 122
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfw;

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzw(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 140
    .line 141
    throw v11

    .line 142
    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzM(Ljava/lang/Object;II)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzgm;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_a

    .line 157
    .line 158
    return v8

    .line 159
    :cond_7
    and-int v0, v14, v9

    .line 160
    .line 161
    int-to-long v0, v0

    .line 162
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_a

    .line 173
    .line 174
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    move v2, v8

    .line 179
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-ge v2, v3, :cond_a

    .line 184
    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzgm;->zzk(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_8

    .line 194
    .line 195
    return v8

    .line 196
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_9
    move-object/from16 v0, p0

    .line 200
    .line 201
    move-object/from16 v1, p1

    .line 202
    .line 203
    move v2, v12

    .line 204
    move/from16 v3, v16

    .line 205
    .line 206
    move/from16 v4, v17

    .line 207
    .line 208
    move v5, v15

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzJ(Ljava/lang/Object;IIII)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzgm;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/play_billing/zzgm;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_a

    .line 224
    .line 225
    return v8

    .line 226
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 227
    .line 228
    move/from16 v0, v16

    .line 229
    .line 230
    move/from16 v1, v17

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzh:Z

    .line 235
    .line 236
    if-nez v0, :cond_c

    .line 237
    .line 238
    return v3

    .line 239
    :cond_c
    iget-object v0, v6, Lcom/google/android/gms/internal/play_billing/zzgf;->zzn:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 240
    .line 241
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    .line 242
    .line 243
    .line 244
    throw v11
.end method

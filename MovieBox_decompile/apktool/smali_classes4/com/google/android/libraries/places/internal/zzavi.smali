.class final Lcom/google/android/libraries/places/internal/zzavi;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/zzavt<",
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

.field private final zzg:Lcom/google/android/libraries/places/internal/zzavf;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/libraries/places/internal/zzaut;

.field private final zzn:Lcom/google/android/libraries/places/internal/zzawn;

.field private final zzo:Lcom/google/android/libraries/places/internal/zzatg;

.field private final zzp:Lcom/google/android/libraries/places/internal/zzavl;

.field private final zzq:Lcom/google/android/libraries/places/internal/zzava;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zza:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzawx;->zzg()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/zzavf;IZ[IIILcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)V
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
    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 10
    .line 11
    move-object v3, p2

    .line 12
    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    .line 13
    .line 14
    move v3, p3

    .line 15
    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zze:I

    .line 16
    .line 17
    move v3, p4

    .line 18
    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzf:I

    .line 19
    .line 20
    instance-of v3, v1, Lcom/google/android/libraries/places/internal/zzatu;

    .line 21
    .line 22
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzi:Z

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, p5}, Lcom/google/android/libraries/places/internal/zzatg;->zzi(Lcom/google/android/libraries/places/internal/zzavf;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    :cond_0
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    .line 35
    .line 36
    move-object v3, p8

    .line 37
    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    .line 38
    .line 39
    move v3, p9

    .line 40
    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    .line 41
    .line 42
    move v3, p10

    .line 43
    iput v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    .line 44
    .line 45
    move-object/from16 v3, p11

    .line 46
    .line 47
    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzp:Lcom/google/android/libraries/places/internal/zzavl;

    .line 48
    .line 49
    move-object/from16 v3, p12

    .line 50
    .line 51
    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 52
    .line 53
    move-object/from16 v3, p13

    .line 54
    .line 55
    iput-object v3, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 56
    .line 57
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 58
    .line 59
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzg:Lcom/google/android/libraries/places/internal/zzavf;

    .line 60
    .line 61
    move-object/from16 v1, p15

    .line 62
    .line 63
    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzavi;->zzq:Lcom/google/android/libraries/places/internal/zzava;

    .line 64
    .line 65
    return-void
.end method

.method private final zzA(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 2
    .line 3
    aget v0, v0, p3

    .line 4
    .line 5
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    sget-object v2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

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
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

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
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {p2, v5, v1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

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
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

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
    invoke-interface {p2, p3, v1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

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

.method private final zzB(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzH(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v1

    .line 9
    int-to-long v1, p2

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzavs;->zzs()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzi:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzavs;->zzr()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {p3}, Lcom/google/android/libraries/places/internal/zzavs;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final zzC(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final zzD(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

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
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final zzE(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final zzF(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

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

.method private static zzH(I)Z
    .locals 1

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private final zzI(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

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
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    and-int v0, p2, v1

    .line 25
    .line 26
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    sget-object p2, Lcom/google/android/libraries/places/internal/zzask;->zzb:Lcom/google/android/libraries/places/internal/zzask;

    .line 103
    .line 104
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzask;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    instance-of p2, p1, Lcom/google/android/libraries/places/internal/zzask;

    .line 143
    .line 144
    if-eqz p2, :cond_c

    .line 145
    .line 146
    sget-object p2, Lcom/google/android/libraries/places/internal/zzask;->zzb:Lcom/google/android/libraries/places/internal/zzask;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzask;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

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
    invoke-static {p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

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

.method private static zzK(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavt;)Z
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
    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p0}, Lcom/google/android/libraries/places/internal/zzavt;->zzh(Ljava/lang/Object;)Z

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
    instance-of v0, p0, Lcom/google/android/libraries/places/internal/zzatu;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/libraries/places/internal/zzatu;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

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
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static final zzO(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V
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
    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzasy;->zzG(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzask;

    .line 12
    .line 13
    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/zzasy;->zzd(ILcom/google/android/libraries/places/internal/zzask;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static zzi(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzavc;Lcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)Lcom/google/android/libraries/places/internal/zzavi;
    .locals 33

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/zzavr;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/libraries/places/internal/zzavr;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zzd()Ljava/lang/String;

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
    sget-object v7, Lcom/google/android/libraries/places/internal/zzavi;->zza:[I

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
    sget-object v9, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zze()[Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zza()Lcom/google/android/libraries/places/internal/zzavf;

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
    add-int/lit8 v6, v21, 0x1

    .line 479
    .line 480
    aput v20, v17, v21

    .line 481
    .line 482
    move/from16 v21, v6

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
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zzc()I

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
    div-int/lit8 v24, v20, 0x3

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
    div-int/lit8 v24, v20, 0x3

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
    invoke-static {v15, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    invoke-static {v15, v13}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    invoke-static {v15, v13}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    aput v20, v17, v22

    .line 734
    .line 735
    div-int/lit8 v22, v20, 0x3

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
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzavr;->zzc()I

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
    div-int/lit8 v14, v20, 0x3

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
    div-int/lit8 v14, v20, 0x3

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
    div-int/lit8 v14, v20, 0x3

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
    invoke-static {v15, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    add-int/lit8 v1, v20, 0x1

    .line 927
    .line 928
    aput v4, v11, v20

    .line 929
    .line 930
    add-int/lit8 v4, v20, 0x2

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
    add-int/lit8 v20, v20, 0x3

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
    new-instance v0, Lcom/google/android/libraries/places/internal/zzavi;

    .line 997
    .line 998
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/libraries/places/internal/zzavr;->zza()Lcom/google/android/libraries/places/internal/zzavf;

    .line 999
    .line 1000
    .line 1001
    move-result-object v14

    .line 1002
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/libraries/places/internal/zzavr;->zzc()I

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
    invoke-direct/range {v9 .. v24}, Lcom/google/android/libraries/places/internal/zzavi;-><init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/zzavf;IZ[IIILcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)V

    .line 1026
    .line 1027
    .line 1028
    return-object v0

    .line 1029
    :cond_37
    check-cast v0, Lcom/google/android/libraries/places/internal/zzawh;

    .line 1030
    .line 1031
    const/4 v0, 0x0

    .line 1032
    throw v0
.end method

.method private static zzk(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static zzl(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private static zzm(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private final zzn(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

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

.method private static zzo(I)I
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

.method private final zzp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

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

.method private static zzq(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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

.method private final zzr(I)Lcom/google/android/libraries/places/internal/zzaty;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/libraries/places/internal/zzaty;

    .line 11
    .line 12
    return-object p1
.end method

.method private final zzs(I)Lcom/google/android/libraries/places/internal/zzavt;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

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
    check-cast v1, Lcom/google/android/libraries/places/internal/zzavt;

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
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

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
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v0, v1, p1

    .line 30
    .line 31
    return-object v0
.end method

.method private final zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 2
    .line 3
    aget p4, p4, p2

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    const p5, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p4, p5

    .line 13
    int-to-long p4, p4

    .line 14
    invoke-static {p1, p4, p5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    if-nez p4, :cond_1

    .line 26
    .line 27
    :goto_0
    return-object p3

    .line 28
    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzauz;

    .line 29
    .line 30
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/libraries/places/internal/zzauy;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1
.end method

.method private final zzu(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzd:[Ljava/lang/Object;

    .line 4
    .line 5
    add-int/2addr p1, p1

    .line 6
    aget-object p1, v0, p1

    .line 7
    .line 8
    return-object p1
.end method

.method private final zzv(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

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
    sget-object p2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

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
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private final zzw(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

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
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method private static zzx(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method private static zzy(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

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

.method private final zzz(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

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
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    sget-object v1, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

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
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

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
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v0}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

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
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzc()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p2, v4, p3}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

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
    invoke-interface {p2, p3, v0}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

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


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    .line 1
    sget-object v9, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    move v1, v10

    move v12, v1

    move v13, v12

    move v0, v11

    :goto_0
    iget-object v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    array-length v2, v2

    if-ge v12, v2, :cond_1c

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    add-int/lit8 v5, v12, 0x2

    .line 2
    aget v14, v4, v12

    .line 3
    aget v4, v4, v5

    and-int v5, v4, v11

    const/16 v15, 0x11

    if-gt v3, v15, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v11, :cond_0

    move v1, v10

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    .line 4
    invoke-virtual {v9, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v8, v4

    move v15, v0

    move/from16 v16, v1

    move v5, v4

    goto :goto_2

    :cond_2
    move v15, v0

    move/from16 v16, v1

    move v5, v10

    :goto_2
    and-int v0, v2, v11

    .line 5
    sget-object v1, Lcom/google/android/libraries/places/internal/zzatl;->zzJ:Lcom/google/android/libraries/places/internal/zzatl;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzatl;->zza()I

    move-result v1

    if-lt v3, v1, :cond_3

    sget-object v1, Lcom/google/android/libraries/places/internal/zzatl;->zzW:Lcom/google/android/libraries/places/internal/zzatl;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzatl;->zza()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_19

    .line 8
    :pswitch_0
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 9
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzavf;

    .line 10
    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    .line 11
    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzy(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    :goto_3
    add-int/2addr v13, v0

    goto/16 :goto_19

    .line 12
    :pswitch_1
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 13
    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 14
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    goto :goto_3

    .line 16
    :pswitch_2
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 17
    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 18
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 19
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto :goto_4

    .line 20
    :pswitch_3
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 21
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    :goto_5
    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    .line 22
    :pswitch_4
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 23
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    :goto_6
    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    .line 24
    :pswitch_5
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 25
    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 26
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 27
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto :goto_4

    .line 28
    :pswitch_6
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 29
    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    .line 30
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 31
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto :goto_4

    .line 32
    :pswitch_7
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 33
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    .line 34
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 35
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    .line 36
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    :goto_7
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_3

    .line 37
    :pswitch_8
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 38
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzavv;->zzh(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    goto/16 :goto_3

    .line 40
    :pswitch_9
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 41
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v2, :cond_4

    .line 42
    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    .line 43
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 44
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    .line 45
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_7

    .line 46
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 48
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    .line 49
    :pswitch_a
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 50
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    :goto_8
    add-int/2addr v0, v8

    goto/16 :goto_3

    .line 51
    :pswitch_b
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 52
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    .line 53
    :pswitch_c
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 54
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    .line 55
    :pswitch_d
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 56
    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 57
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 58
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    .line 59
    :pswitch_e
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 60
    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 61
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 62
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    .line 63
    :pswitch_f
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 64
    invoke-static {v7, v1, v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 65
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    .line 67
    :pswitch_10
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 68
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    .line 69
    :pswitch_11
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 70
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    .line 71
    :pswitch_12
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    move-result-object v1

    .line 72
    check-cast v0, Lcom/google/android/libraries/places/internal/zzauz;

    .line 73
    check-cast v1, Lcom/google/android/libraries/places/internal/zzauy;

    .line 74
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 75
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzauz;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_19

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :pswitch_13
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    .line 80
    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v10

    goto :goto_a

    :cond_6
    move v3, v10

    move v4, v3

    :goto_9
    if-ge v3, v2, :cond_7

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-static {v14, v5, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzy(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v8

    goto :goto_9

    :cond_7
    :goto_a
    add-int/2addr v13, v4

    goto/16 :goto_19

    .line 83
    :pswitch_14
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 85
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 86
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    :goto_b
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_c
    add-int/2addr v13, v1

    goto/16 :goto_19

    .line 87
    :pswitch_15
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 89
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 90
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    .line 91
    :pswitch_16
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 93
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 94
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    .line 95
    :pswitch_17
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 97
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 98
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    .line 99
    :pswitch_18
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zza(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 101
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 102
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    .line 103
    :pswitch_19
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 105
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 106
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_b

    .line 107
    :pswitch_1a
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 110
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 111
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 112
    :pswitch_1b
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 114
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 115
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 116
    :pswitch_1c
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 118
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 119
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 120
    :pswitch_1d
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 121
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 122
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 123
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 124
    :pswitch_1e
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 126
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 127
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 128
    :pswitch_1f
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 130
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 131
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 132
    :pswitch_20
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 134
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 135
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 136
    :pswitch_21
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v14, 0x3

    .line 138
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    .line 139
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_b

    .line 140
    :pswitch_22
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_d
    move v0, v10

    goto/16 :goto_3

    :cond_9
    shl-int/lit8 v2, v14, 0x3

    .line 143
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzj(Ljava/util/List;)I

    move-result v0

    .line 144
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    :goto_e
    mul-int/2addr v1, v2

    goto/16 :goto_4

    .line 145
    :pswitch_23
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 146
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_d

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    .line 148
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzi(Ljava/util/List;)I

    move-result v0

    .line 149
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_e

    .line 150
    :pswitch_24
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    .line 152
    :pswitch_25
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    .line 154
    :pswitch_26
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_d

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    .line 157
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zza(Ljava/util/List;)I

    move-result v0

    .line 158
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_e

    .line 159
    :pswitch_27
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 160
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_d

    :cond_c
    shl-int/lit8 v2, v14, 0x3

    .line 162
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzk(Ljava/util/List;)I

    move-result v0

    .line 163
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto :goto_e

    .line 164
    :pswitch_28
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v10

    goto/16 :goto_c

    :cond_d
    shl-int/lit8 v2, v14, 0x3

    .line 167
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v10

    .line 168
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzask;

    .line 170
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v3

    .line 171
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/2addr v2, v8

    goto :goto_f

    .line 172
    :pswitch_29
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    .line 173
    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v10

    goto :goto_12

    :cond_e
    shl-int/lit8 v3, v14, 0x3

    .line 175
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v10

    :goto_10
    if-ge v4, v2, :cond_10

    .line 176
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v14, v5, Lcom/google/android/libraries/places/internal/zzaul;

    if-eqz v14, :cond_f

    .line 177
    check-cast v5, Lcom/google/android/libraries/places/internal/zzaul;

    .line 178
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzaul;->zza()I

    move-result v5

    .line 179
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v14

    add-int/2addr v14, v5

    add-int/2addr v3, v14

    goto :goto_11

    .line 180
    :cond_f
    check-cast v5, Lcom/google/android/libraries/places/internal/zzavf;

    invoke-static {v5, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzz(Lcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_11
    add-int/2addr v4, v8

    goto :goto_10

    :cond_10
    :goto_12
    add-int/2addr v13, v3

    goto/16 :goto_19

    .line 181
    :pswitch_2a
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    :goto_13
    move v2, v10

    goto :goto_18

    :cond_11
    shl-int/lit8 v2, v14, 0x3

    .line 183
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/libraries/places/internal/zzaun;

    if-eqz v3, :cond_13

    .line 184
    check-cast v0, Lcom/google/android/libraries/places/internal/zzaun;

    move v3, v10

    :goto_14
    if-ge v3, v1, :cond_15

    .line 185
    invoke-interface {v0, v3}, Lcom/google/android/libraries/places/internal/zzaun;->zzf(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v5, :cond_12

    .line 186
    check-cast v4, Lcom/google/android/libraries/places/internal/zzask;

    .line 187
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v4

    .line 188
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_15

    .line 189
    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_15
    add-int/2addr v3, v8

    goto :goto_14

    :cond_13
    move v3, v10

    :goto_16
    if-ge v3, v1, :cond_15

    .line 190
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v5, :cond_14

    .line 191
    check-cast v4, Lcom/google/android/libraries/places/internal/zzask;

    .line 192
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v4

    .line 193
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_17

    .line 194
    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_17
    add-int/2addr v3, v8

    goto :goto_16

    :cond_15
    :goto_18
    add-int/2addr v13, v2

    goto/16 :goto_19

    .line 195
    :pswitch_2b
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 196
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_d

    :cond_16
    shl-int/lit8 v1, v14, 0x3

    .line 198
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    add-int/2addr v1, v8

    mul-int/2addr v0, v1

    goto/16 :goto_3

    .line 199
    :pswitch_2c
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    .line 201
    :pswitch_2d
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 202
    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    .line 203
    :pswitch_2e
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 204
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_d

    :cond_17
    shl-int/lit8 v2, v14, 0x3

    .line 206
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzf(Ljava/util/List;)I

    move-result v0

    .line 207
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_e

    .line 208
    :pswitch_2f
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_d

    :cond_18
    shl-int/lit8 v2, v14, 0x3

    .line 211
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzl(Ljava/util/List;)I

    move-result v0

    .line 212
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_e

    .line 213
    :pswitch_30
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 214
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_13

    :cond_19
    shl-int/lit8 v1, v14, 0x3

    .line 216
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzavv;->zzg(Ljava/util/List;)I

    move-result v2

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    goto/16 :goto_18

    .line 219
    :pswitch_31
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 220
    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    .line 221
    :pswitch_32
    invoke-virtual {v9, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 222
    invoke-static {v14, v0, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v12

    move-wide v10, v3

    move v3, v15

    move/from16 v4, v16

    .line 223
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 224
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzavf;

    .line 225
    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    .line 226
    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzy(ILcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 228
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 229
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 230
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_35
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 232
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 233
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 234
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 236
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 238
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_38
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 239
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 240
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 241
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 242
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_39
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 244
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 245
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 246
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3a
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 247
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 248
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    .line 249
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 250
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    .line 251
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3b
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 253
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 254
    invoke-direct {v6, v12}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/libraries/places/internal/zzavv;->zzh(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3c
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 255
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 256
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/libraries/places/internal/zzask;

    if-eqz v2, :cond_1a

    .line 257
    check-cast v1, Lcom/google/android/libraries/places/internal/zzask;

    .line 258
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 259
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzask;->zzd()I

    move-result v1

    .line 260
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v2

    goto/16 :goto_7

    .line 261
    :cond_1a
    check-cast v1, Ljava/lang/String;

    .line 262
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 263
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzasx;->zzA(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 265
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 267
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 269
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :pswitch_40
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 271
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 272
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 273
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_41
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 275
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 276
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 277
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_42
    move-wide v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 279
    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 280
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    .line 281
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzasx;->zzC(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 283
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_6

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v14, 0x3

    .line 285
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzasx;->zzB(I)I

    move-result v0

    goto/16 :goto_5

    :cond_1b
    :goto_19
    add-int/lit8 v12, v12, 0x3

    move v0, v15

    move/from16 v1, v16

    const/4 v10, 0x0

    const v11, 0xfffff

    goto/16 :goto_0

    .line 286
    :cond_1c
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 287
    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzawn;->zza(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v13, v0

    iget-boolean v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_1f

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 289
    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_1a
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    .line 290
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzawg;->zzb()I

    move-result v1

    if-ge v10, v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    .line 291
    invoke-virtual {v1, v10}, Lcom/google/android/libraries/places/internal/zzawg;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzatk;->zzb(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    add-int/2addr v10, v8

    goto :goto_1a

    :cond_1d
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    .line 293
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzawg;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzatj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzatk;->zzb(Lcom/google/android/libraries/places/internal/zzatj;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1b

    :cond_1e
    add-int v13, v13, v18

    :cond_1f
    return v13

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
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v0, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 13
    .line 14
    const v4, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v4, v2

    .line 18
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

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
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

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
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    goto :goto_1

    .line 85
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    goto :goto_1

    .line 113
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    goto :goto_1

    .line 126
    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    goto :goto_1

    .line 139
    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzN(Ljava/lang/Object;J)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaud;->zza(Z)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    .line 280
    .line 281
    .line 282
    move-result-wide v2

    .line 283
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzl(Ljava/lang/Object;J)F

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
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzk(Ljava/lang/Object;J)D

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
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 322
    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 326
    .line 327
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 367
    .line 368
    .line 369
    move-result-wide v2

    .line 370
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 371
    .line 372
    goto/16 :goto_2

    .line 373
    .line 374
    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 375
    .line 376
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 389
    .line 390
    goto/16 :goto_2

    .line 391
    .line 392
    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 393
    .line 394
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaud;->zza(Z)I

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 478
    .line 479
    .line 480
    move-result-wide v2

    .line 481
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 482
    .line 483
    goto/16 :goto_2

    .line 484
    .line 485
    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 486
    .line 487
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 496
    .line 497
    .line 498
    move-result-wide v2

    .line 499
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 500
    .line 501
    goto/16 :goto_2

    .line 502
    .line 503
    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 504
    .line 505
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 506
    .line 507
    .line 508
    move-result-wide v2

    .line 509
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    .line 510
    .line 511
    goto/16 :goto_2

    .line 512
    .line 513
    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 514
    .line 515
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

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
    sget-object v4, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 546
    .line 547
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    .line 557
    .line 558
    if-eqz v0, :cond_3

    .line 559
    .line 560
    mul-int/lit8 v1, v1, 0x35

    .line 561
    .line 562
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 563
    .line 564
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    .line 569
    .line 570
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzawg;->hashCode()I

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    add-int/2addr v1, p1

    .line 575
    :cond_3
    return v1

    .line 576
    nop

    .line 577
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

.method public final zzc()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzg:Lcom/google/android/libraries/places/internal/zzavf;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/libraries/places/internal/zzatu;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzat()Lcom/google/android/libraries/places/internal/zzatu;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzL(Ljava/lang/Object;)Z

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
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzatu;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/libraries/places/internal/zzatu;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzatu;->zzaF(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzart;->zza:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaD()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 29
    .line 30
    :goto_0
    array-length v2, v0

    .line 31
    if-ge v1, v2, :cond_5

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

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
    sget-object v2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

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
    check-cast v6, Lcom/google/android/libraries/places/internal/zzauz;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzauz;->zzc()V

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
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 81
    .line 82
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zzb(Ljava/lang/Object;J)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 87
    .line 88
    aget v2, v2, v1

    .line 89
    .line 90
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v5, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 101
    .line 102
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-object v5, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 121
    .line 122
    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v2, v3}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzm(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    .line 138
    .line 139
    if-eqz v0, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzf(Ljava/lang/Object;)V

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

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzy(Ljava/lang/Object;)V

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
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

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
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzA(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzA(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_4
    sget v1, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    .line 82
    .line 83
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzava;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 101
    .line 102
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzaut;->zzc(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzz(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    .line 136
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    .line 154
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_0

    .line 171
    .line 172
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    .line 190
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    .line 208
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    .line 226
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzz(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_0

    .line 248
    .line 249
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    .line 267
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzm(Ljava/lang/Object;JZ)V

    .line 272
    .line 273
    .line 274
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    .line 285
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 290
    .line 291
    .line 292
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_0

    .line 301
    .line 302
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 303
    .line 304
    .line 305
    move-result-wide v1

    .line 306
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 307
    .line 308
    .line 309
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    .line 319
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    .line 336
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v1

    .line 340
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 341
    .line 342
    .line 343
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_0

    .line 352
    .line 353
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 354
    .line 355
    .line 356
    move-result-wide v1

    .line 357
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    .line 370
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzp(Ljava/lang/Object;JF)V

    .line 375
    .line 376
    .line 377
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 378
    .line 379
    .line 380
    goto :goto_1

    .line 381
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzI(Ljava/lang/Object;I)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_0

    .line 386
    .line 387
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzo(Ljava/lang/Object;JD)V

    .line 392
    .line 393
    .line 394
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

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
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 402
    .line 403
    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavv;->zzr(Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    .line 407
    .line 408
    if-eqz v0, :cond_2

    .line 409
    .line 410
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 411
    .line 412
    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavv;->zzq(Lcom/google/android/libraries/places/internal/zzatg;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    :cond_2
    return-void

    .line 416
    nop

    .line 417
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

.method public final zzf(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Lcom/google/android/libraries/places/internal/zzatf;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzavi;->zzy(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v14, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 16
    .line 17
    iget-object v5, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 18
    .line 19
    const/16 v16, 0x0

    .line 20
    .line 21
    move-object/from16 v4, v16

    .line 22
    .line 23
    move-object v8, v4

    .line 24
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzc()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zze:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v9, -0x1

    .line 32
    const/4 v10, 0x1

    .line 33
    if-lt v2, v1, :cond_2

    .line 34
    .line 35
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzf:I

    .line 36
    .line 37
    if-gt v2, v1, :cond_2

    .line 38
    .line 39
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 40
    .line 41
    array-length v1, v1

    .line 42
    div-int/lit8 v1, v1, 0x3

    .line 43
    .line 44
    add-int/2addr v1, v9

    .line 45
    move v11, v3

    .line 46
    :goto_1
    if-gt v11, v1, :cond_2

    .line 47
    .line 48
    add-int v12, v1, v11

    .line 49
    .line 50
    ushr-int/2addr v12, v10

    .line 51
    mul-int/lit8 v13, v12, 0x3

    .line 52
    .line 53
    iget-object v9, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 54
    .line 55
    aget v9, v9, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    if-ne v2, v9, :cond_0

    .line 58
    .line 59
    move v9, v13

    .line 60
    goto :goto_3

    .line 61
    :cond_0
    if-ge v2, v9, :cond_1

    .line 62
    .line 63
    add-int/lit8 v1, v12, -0x1

    .line 64
    .line 65
    :goto_2
    const/4 v9, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v11, v12, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object v13, v4

    .line 72
    move-object v12, v14

    .line 73
    move-object v11, v15

    .line 74
    goto/16 :goto_18

    .line 75
    .line 76
    :cond_2
    const/4 v9, -0x1

    .line 77
    :goto_3
    if-gez v9, :cond_b

    .line 78
    .line 79
    const v1, 0x7fffffff

    .line 80
    .line 81
    .line 82
    if-ne v2, v1, :cond_4

    .line 83
    .line 84
    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    .line 85
    .line 86
    :goto_4
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    .line 87
    .line 88
    if-ge v0, v1, :cond_3

    .line 89
    .line 90
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    .line 91
    .line 92
    aget v3, v1, v0

    .line 93
    .line 94
    move-object/from16 v1, p0

    .line 95
    .line 96
    move-object/from16 v2, p1

    .line 97
    .line 98
    move-object v5, v14

    .line 99
    move-object/from16 v6, p1

    .line 100
    .line 101
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    move-object v12, v14

    .line 109
    move-object v11, v15

    .line 110
    goto/16 :goto_17

    .line 111
    .line 112
    :cond_4
    :try_start_1
    iget-boolean v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    .line 113
    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    move-object/from16 v11, v16

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_5
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzg:Lcom/google/android/libraries/places/internal/zzavf;

    .line 120
    .line 121
    invoke-virtual {v5, v6, v1, v2}, Lcom/google/android/libraries/places/internal/zzatg;->zzd(Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzavf;I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 125
    move-object v11, v1

    .line 126
    :goto_5
    if-eqz v11, :cond_8

    .line 127
    .line 128
    if-nez v8, :cond_6

    .line 129
    .line 130
    :try_start_2
    invoke-virtual {v5, v15}, Lcom/google/android/libraries/places/internal/zzatg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    .line 131
    .line 132
    .line 133
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    goto :goto_6

    .line 135
    :cond_6
    move-object v1, v8

    .line 136
    :goto_6
    move-object v8, v5

    .line 137
    move-object/from16 v9, p1

    .line 138
    .line 139
    move-object/from16 v10, p2

    .line 140
    .line 141
    move-object/from16 v12, p3

    .line 142
    .line 143
    move-object v13, v1

    .line 144
    move-object v3, v14

    .line 145
    move-object v14, v4

    .line 146
    move-object v2, v15

    .line 147
    move-object v15, v3

    .line 148
    :try_start_3
    invoke-virtual/range {v8 .. v15}, Lcom/google/android/libraries/places/internal/zzatg;->zze(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzatf;Lcom/google/android/libraries/places/internal/zzatk;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    move-object v8, v1

    .line 153
    :cond_7
    move-object v15, v2

    .line 154
    move-object v14, v3

    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :catchall_1
    move-exception v0

    .line 158
    move-object v11, v2

    .line 159
    move-object v12, v3

    .line 160
    :goto_7
    move-object v13, v4

    .line 161
    goto/16 :goto_18

    .line 162
    .line 163
    :cond_8
    move-object v3, v14

    .line 164
    move-object v2, v15

    .line 165
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzq(Lcom/google/android/libraries/places/internal/zzavs;)Z

    .line 166
    .line 167
    .line 168
    if-nez v4, :cond_9

    .line 169
    .line 170
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzawn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    move-object v4, v1

    .line 175
    :cond_9
    :try_start_4
    invoke-virtual {v3, v4, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzp(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;)Z

    .line 176
    .line 177
    .line 178
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 179
    if-nez v1, :cond_7

    .line 180
    .line 181
    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    .line 182
    .line 183
    :goto_8
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    .line 184
    .line 185
    if-ge v0, v1, :cond_a

    .line 186
    .line 187
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    .line 188
    .line 189
    aget v5, v1, v0

    .line 190
    .line 191
    move-object/from16 v1, p0

    .line 192
    .line 193
    move-object v11, v2

    .line 194
    move-object/from16 v2, p1

    .line 195
    .line 196
    move-object v12, v3

    .line 197
    move v3, v5

    .line 198
    move-object v5, v12

    .line 199
    move-object/from16 v6, p1

    .line 200
    .line 201
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    .line 207
    move-object v2, v11

    .line 208
    move-object v3, v12

    .line 209
    goto :goto_8

    .line 210
    :cond_a
    move-object v11, v2

    .line 211
    move-object v12, v3

    .line 212
    goto/16 :goto_17

    .line 213
    .line 214
    :catchall_2
    move-exception v0

    .line 215
    move-object v11, v2

    .line 216
    move-object v12, v3

    .line 217
    goto/16 :goto_19

    .line 218
    .line 219
    :catchall_3
    move-exception v0

    .line 220
    move-object v12, v14

    .line 221
    move-object v11, v15

    .line 222
    goto :goto_7

    .line 223
    :cond_b
    move-object v12, v14

    .line 224
    move-object v11, v15

    .line 225
    :try_start_5
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    .line 226
    .line 227
    .line 228
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 229
    :try_start_6
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    const v14, 0xfffff

    .line 234
    .line 235
    .line 236
    packed-switch v13, :pswitch_data_0

    .line 237
    .line 238
    .line 239
    if-nez v4, :cond_c

    .line 240
    .line 241
    invoke-virtual {v12, v11}, Lcom/google/android/libraries/places/internal/zzawn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1
    :try_end_6
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 245
    move-object v4, v1

    .line 246
    goto :goto_9

    .line 247
    :catchall_4
    move-exception v0

    .line 248
    goto :goto_7

    .line 249
    :cond_c
    :goto_9
    :try_start_7
    invoke-virtual {v12, v4, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzp(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;)Z

    .line 250
    .line 251
    .line 252
    move-result v1
    :try_end_7
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 253
    if-nez v1, :cond_d

    .line 254
    .line 255
    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    .line 256
    .line 257
    :goto_a
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    .line 258
    .line 259
    if-ge v0, v1, :cond_17

    .line 260
    .line 261
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    .line 262
    .line 263
    aget v3, v1, v0

    .line 264
    .line 265
    move-object/from16 v1, p0

    .line 266
    .line 267
    move-object/from16 v2, p1

    .line 268
    .line 269
    move-object v5, v12

    .line 270
    move-object/from16 v6, p1

    .line 271
    .line 272
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    add-int/lit8 v0, v0, 0x1

    .line 277
    .line 278
    goto :goto_a

    .line 279
    :cond_d
    :goto_b
    move-object v15, v11

    .line 280
    move-object v14, v12

    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :catchall_5
    move-exception v0

    .line 284
    goto/16 :goto_19

    .line 285
    .line 286
    :catch_0
    move-object v13, v4

    .line 287
    move-object v15, v5

    .line 288
    move-object v4, v6

    .line 289
    goto/16 :goto_15

    .line 290
    .line 291
    :pswitch_0
    :try_start_8
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzw(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    .line 296
    .line 297
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-interface {v0, v1, v3, v6}, Lcom/google/android/libraries/places/internal/zzavs;->zzt(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    .line 302
    .line 303
    .line 304
    invoke-direct {v7, v11, v2, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzF(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    :goto_c
    move-object v13, v4

    .line 308
    move-object v15, v5

    .line 309
    move-object v4, v6

    .line 310
    goto/16 :goto_14

    .line 311
    .line 312
    :pswitch_1
    and-int/2addr v1, v14

    .line 313
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzn()J

    .line 314
    .line 315
    .line 316
    move-result-wide v13

    .line 317
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    int-to-long v13, v1

    .line 322
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 326
    .line 327
    .line 328
    goto :goto_c

    .line 329
    :pswitch_2
    and-int/2addr v1, v14

    .line 330
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzi()I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    int-to-long v13, v1

    .line 339
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 343
    .line 344
    .line 345
    goto :goto_c

    .line 346
    :pswitch_3
    and-int/2addr v1, v14

    .line 347
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzm()J

    .line 348
    .line 349
    .line 350
    move-result-wide v13

    .line 351
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    int-to-long v13, v1

    .line 356
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 360
    .line 361
    .line 362
    goto :goto_c

    .line 363
    :pswitch_4
    and-int/2addr v1, v14

    .line 364
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzh()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    int-to-long v13, v1

    .line 373
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 377
    .line 378
    .line 379
    goto :goto_c

    .line 380
    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zze()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    if-eqz v10, :cond_f

    .line 389
    .line 390
    invoke-interface {v10, v3}, Lcom/google/android/libraries/places/internal/zzaty;->zza(I)Z

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    if-eqz v10, :cond_e

    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_e
    invoke-static {v11, v2, v3, v4, v12}, Lcom/google/android/libraries/places/internal/zzavv;->zzp(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    goto :goto_b

    .line 402
    :cond_f
    :goto_d
    and-int/2addr v1, v14

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    int-to-long v13, v1

    .line 408
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 412
    .line 413
    .line 414
    goto :goto_c

    .line 415
    :pswitch_6
    and-int/2addr v1, v14

    .line 416
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzj()I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    int-to-long v13, v1

    .line 425
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 429
    .line 430
    .line 431
    goto :goto_c

    .line 432
    :pswitch_7
    and-int/2addr v1, v14

    .line 433
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    int-to-long v13, v1

    .line 438
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_c

    .line 445
    .line 446
    :pswitch_8
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzw(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    .line 451
    .line 452
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-interface {v0, v1, v3, v6}, Lcom/google/android/libraries/places/internal/zzavs;->zzu(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    .line 457
    .line 458
    .line 459
    invoke-direct {v7, v11, v2, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzF(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_c

    .line 463
    .line 464
    :pswitch_9
    invoke-direct {v7, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzB(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavs;)V

    .line 465
    .line 466
    .line 467
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_c

    .line 471
    .line 472
    :pswitch_a
    and-int/2addr v1, v14

    .line 473
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzN()Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    int-to-long v13, v1

    .line 482
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_c

    .line 489
    .line 490
    :pswitch_b
    and-int/2addr v1, v14

    .line 491
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzf()I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    int-to-long v13, v1

    .line 500
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_c

    .line 507
    .line 508
    :pswitch_c
    and-int/2addr v1, v14

    .line 509
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzk()J

    .line 510
    .line 511
    .line 512
    move-result-wide v13

    .line 513
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    int-to-long v13, v1

    .line 518
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_c

    .line 525
    .line 526
    :pswitch_d
    and-int/2addr v1, v14

    .line 527
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzg()I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    int-to-long v13, v1

    .line 536
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_c

    .line 543
    .line 544
    :pswitch_e
    and-int/2addr v1, v14

    .line 545
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzo()J

    .line 546
    .line 547
    .line 548
    move-result-wide v13

    .line 549
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    int-to-long v13, v1

    .line 554
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_c

    .line 561
    .line 562
    :pswitch_f
    and-int/2addr v1, v14

    .line 563
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzl()J

    .line 564
    .line 565
    .line 566
    move-result-wide v13

    .line 567
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    int-to-long v13, v1

    .line 572
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_c

    .line 579
    .line 580
    :pswitch_10
    and-int/2addr v1, v14

    .line 581
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzb()F

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    int-to-long v13, v1

    .line 590
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_c

    .line 597
    .line 598
    :pswitch_11
    and-int/2addr v1, v14

    .line 599
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zza()D

    .line 600
    .line 601
    .line 602
    move-result-wide v13

    .line 603
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    int-to-long v13, v1

    .line 608
    invoke-static {v11, v13, v14, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    invoke-direct {v7, v11, v2, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzD(Ljava/lang/Object;II)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_c

    .line 615
    .line 616
    :pswitch_12
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    and-int/2addr v2, v14

    .line 625
    int-to-long v2, v2

    .line 626
    invoke-static {v11, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    if-eqz v9, :cond_10

    .line 631
    .line 632
    move-object v10, v9

    .line 633
    check-cast v10, Lcom/google/android/libraries/places/internal/zzauz;

    .line 634
    .line 635
    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzauz;->zze()Z

    .line 636
    .line 637
    .line 638
    move-result v10

    .line 639
    if-nez v10, :cond_11

    .line 640
    .line 641
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauz;->zza()Lcom/google/android/libraries/places/internal/zzauz;

    .line 642
    .line 643
    .line 644
    move-result-object v10

    .line 645
    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzauz;->zzb()Lcom/google/android/libraries/places/internal/zzauz;

    .line 646
    .line 647
    .line 648
    move-result-object v10

    .line 649
    invoke-static {v10, v9}, Lcom/google/android/libraries/places/internal/zzava;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    invoke-static {v11, v2, v3, v10}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 653
    .line 654
    .line 655
    move-object v9, v10

    .line 656
    goto :goto_e

    .line 657
    :cond_10
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzauz;->zza()Lcom/google/android/libraries/places/internal/zzauz;

    .line 658
    .line 659
    .line 660
    move-result-object v9

    .line 661
    invoke-virtual {v9}, Lcom/google/android/libraries/places/internal/zzauz;->zzb()Lcom/google/android/libraries/places/internal/zzauz;

    .line 662
    .line 663
    .line 664
    move-result-object v9

    .line 665
    invoke-static {v11, v2, v3, v9}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    :cond_11
    :goto_e
    check-cast v9, Lcom/google/android/libraries/places/internal/zzauz;

    .line 669
    .line 670
    check-cast v1, Lcom/google/android/libraries/places/internal/zzauy;

    .line 671
    .line 672
    throw v16

    .line 673
    :pswitch_13
    and-int/2addr v1, v14

    .line 674
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 679
    .line 680
    int-to-long v9, v1

    .line 681
    invoke-virtual {v3, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    invoke-interface {v0, v1, v2, v6}, Lcom/google/android/libraries/places/internal/zzavs;->zzC(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_c

    .line 689
    .line 690
    :pswitch_14
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 691
    .line 692
    and-int/2addr v1, v14

    .line 693
    int-to-long v9, v1

    .line 694
    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzJ(Ljava/util/List;)V

    .line 699
    .line 700
    .line 701
    goto/16 :goto_c

    .line 702
    .line 703
    :pswitch_15
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 704
    .line 705
    and-int/2addr v1, v14

    .line 706
    int-to-long v9, v1

    .line 707
    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzI(Ljava/util/List;)V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_c

    .line 715
    .line 716
    :pswitch_16
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 717
    .line 718
    and-int/2addr v1, v14

    .line 719
    int-to-long v9, v1

    .line 720
    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzH(Ljava/util/List;)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_c

    .line 728
    .line 729
    :pswitch_17
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 730
    .line 731
    and-int/2addr v1, v14

    .line 732
    int-to-long v9, v1

    .line 733
    invoke-virtual {v2, v11, v9, v10}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzG(Ljava/util/List;)V

    .line 738
    .line 739
    .line 740
    goto/16 :goto_c

    .line 741
    .line 742
    :pswitch_18
    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 743
    .line 744
    and-int/2addr v1, v14

    .line 745
    int-to-long v13, v1

    .line 746
    invoke-virtual {v3, v11, v13, v14}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    invoke-interface {v0, v3}, Lcom/google/android/libraries/places/internal/zzavs;->zzy(Ljava/util/List;)V

    .line 751
    .line 752
    .line 753
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    .line 754
    .line 755
    .line 756
    move-result-object v9
    :try_end_8
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 757
    move-object/from16 v1, p1

    .line 758
    .line 759
    move-object v13, v4

    .line 760
    move-object v4, v9

    .line 761
    move-object v15, v5

    .line 762
    move-object v5, v13

    .line 763
    move-object v10, v6

    .line 764
    move-object v6, v12

    .line 765
    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavv;->zzo(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/libraries/places/internal/zzaty;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    :goto_f
    move-object v6, v10

    .line 770
    move-object v14, v12

    .line 771
    :goto_10
    move-object v5, v15

    .line 772
    :goto_11
    move-object v15, v11

    .line 773
    goto/16 :goto_0

    .line 774
    .line 775
    :catch_1
    move-object v4, v10

    .line 776
    goto/16 :goto_15

    .line 777
    .line 778
    :pswitch_19
    move-object v13, v4

    .line 779
    move-object v15, v5

    .line 780
    move-object v10, v6

    .line 781
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 782
    .line 783
    and-int/2addr v1, v14

    .line 784
    int-to-long v3, v1

    .line 785
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzL(Ljava/util/List;)V

    .line 790
    .line 791
    .line 792
    :goto_12
    move-object v4, v10

    .line 793
    goto/16 :goto_14

    .line 794
    .line 795
    :pswitch_1a
    move-object v13, v4

    .line 796
    move-object v15, v5

    .line 797
    move-object v10, v6

    .line 798
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 799
    .line 800
    and-int/2addr v1, v14

    .line 801
    int-to-long v3, v1

    .line 802
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzv(Ljava/util/List;)V

    .line 807
    .line 808
    .line 809
    goto :goto_12

    .line 810
    :pswitch_1b
    move-object v13, v4

    .line 811
    move-object v15, v5

    .line 812
    move-object v10, v6

    .line 813
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 814
    .line 815
    and-int/2addr v1, v14

    .line 816
    int-to-long v3, v1

    .line 817
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzz(Ljava/util/List;)V

    .line 822
    .line 823
    .line 824
    goto :goto_12

    .line 825
    :pswitch_1c
    move-object v13, v4

    .line 826
    move-object v15, v5

    .line 827
    move-object v10, v6

    .line 828
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 829
    .line 830
    and-int/2addr v1, v14

    .line 831
    int-to-long v3, v1

    .line 832
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzA(Ljava/util/List;)V

    .line 837
    .line 838
    .line 839
    goto :goto_12

    .line 840
    :pswitch_1d
    move-object v13, v4

    .line 841
    move-object v15, v5

    .line 842
    move-object v10, v6

    .line 843
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 844
    .line 845
    and-int/2addr v1, v14

    .line 846
    int-to-long v3, v1

    .line 847
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzD(Ljava/util/List;)V

    .line 852
    .line 853
    .line 854
    goto :goto_12

    .line 855
    :pswitch_1e
    move-object v13, v4

    .line 856
    move-object v15, v5

    .line 857
    move-object v10, v6

    .line 858
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 859
    .line 860
    and-int/2addr v1, v14

    .line 861
    int-to-long v3, v1

    .line 862
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzM(Ljava/util/List;)V

    .line 867
    .line 868
    .line 869
    goto :goto_12

    .line 870
    :pswitch_1f
    move-object v13, v4

    .line 871
    move-object v15, v5

    .line 872
    move-object v10, v6

    .line 873
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 874
    .line 875
    and-int/2addr v1, v14

    .line 876
    int-to-long v3, v1

    .line 877
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzE(Ljava/util/List;)V

    .line 882
    .line 883
    .line 884
    goto :goto_12

    .line 885
    :pswitch_20
    move-object v13, v4

    .line 886
    move-object v15, v5

    .line 887
    move-object v10, v6

    .line 888
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 889
    .line 890
    and-int/2addr v1, v14

    .line 891
    int-to-long v3, v1

    .line 892
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzB(Ljava/util/List;)V

    .line 897
    .line 898
    .line 899
    goto :goto_12

    .line 900
    :pswitch_21
    move-object v13, v4

    .line 901
    move-object v15, v5

    .line 902
    move-object v10, v6

    .line 903
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 904
    .line 905
    and-int/2addr v1, v14

    .line 906
    int-to-long v3, v1

    .line 907
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzx(Ljava/util/List;)V

    .line 912
    .line 913
    .line 914
    goto :goto_12

    .line 915
    :pswitch_22
    move-object v13, v4

    .line 916
    move-object v15, v5

    .line 917
    move-object v10, v6

    .line 918
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 919
    .line 920
    and-int/2addr v1, v14

    .line 921
    int-to-long v3, v1

    .line 922
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzJ(Ljava/util/List;)V

    .line 927
    .line 928
    .line 929
    goto/16 :goto_12

    .line 930
    .line 931
    :pswitch_23
    move-object v13, v4

    .line 932
    move-object v15, v5

    .line 933
    move-object v10, v6

    .line 934
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 935
    .line 936
    and-int/2addr v1, v14

    .line 937
    int-to-long v3, v1

    .line 938
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzI(Ljava/util/List;)V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_12

    .line 946
    .line 947
    :pswitch_24
    move-object v13, v4

    .line 948
    move-object v15, v5

    .line 949
    move-object v10, v6

    .line 950
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 951
    .line 952
    and-int/2addr v1, v14

    .line 953
    int-to-long v3, v1

    .line 954
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzH(Ljava/util/List;)V

    .line 959
    .line 960
    .line 961
    goto/16 :goto_12

    .line 962
    .line 963
    :pswitch_25
    move-object v13, v4

    .line 964
    move-object v15, v5

    .line 965
    move-object v10, v6

    .line 966
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 967
    .line 968
    and-int/2addr v1, v14

    .line 969
    int-to-long v3, v1

    .line 970
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzG(Ljava/util/List;)V

    .line 975
    .line 976
    .line 977
    goto/16 :goto_12

    .line 978
    .line 979
    :pswitch_26
    move-object v13, v4

    .line 980
    move-object v15, v5

    .line 981
    move-object v10, v6

    .line 982
    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 983
    .line 984
    and-int/2addr v1, v14

    .line 985
    int-to-long v4, v1

    .line 986
    invoke-virtual {v3, v11, v4, v5}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    invoke-interface {v0, v3}, Lcom/google/android/libraries/places/internal/zzavs;->zzy(Ljava/util/List;)V

    .line 991
    .line 992
    .line 993
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    .line 994
    .line 995
    .line 996
    move-result-object v4

    .line 997
    move-object/from16 v1, p1

    .line 998
    .line 999
    move-object v5, v13

    .line 1000
    move-object v6, v12

    .line 1001
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavv;->zzo(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/libraries/places/internal/zzaty;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v4

    .line 1005
    goto/16 :goto_f

    .line 1006
    .line 1007
    :pswitch_27
    move-object v13, v4

    .line 1008
    move-object v15, v5

    .line 1009
    move-object v10, v6

    .line 1010
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1011
    .line 1012
    and-int/2addr v1, v14

    .line 1013
    int-to-long v3, v1

    .line 1014
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzL(Ljava/util/List;)V

    .line 1019
    .line 1020
    .line 1021
    goto/16 :goto_12

    .line 1022
    .line 1023
    :pswitch_28
    move-object v13, v4

    .line 1024
    move-object v15, v5

    .line 1025
    move-object v10, v6

    .line 1026
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1027
    .line 1028
    and-int/2addr v1, v14

    .line 1029
    int-to-long v3, v1

    .line 1030
    invoke-virtual {v2, v11, v3, v4}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzw(Ljava/util/List;)V

    .line 1035
    .line 1036
    .line 1037
    goto/16 :goto_12

    .line 1038
    .line 1039
    :pswitch_29
    move-object v13, v4

    .line 1040
    move-object v15, v5

    .line 1041
    move-object v10, v6

    .line 1042
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    and-int/2addr v1, v14

    .line 1047
    iget-object v3, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1048
    .line 1049
    int-to-long v4, v1

    .line 1050
    invoke-virtual {v3, v11, v4, v5}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    invoke-interface {v0, v1, v2, v10}, Lcom/google/android/libraries/places/internal/zzavs;->zzF(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V
    :try_end_9
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_12

    .line 1058
    .line 1059
    :pswitch_2a
    move-object v13, v4

    .line 1060
    move-object v15, v5

    .line 1061
    move-object v4, v6

    .line 1062
    :try_start_a
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzH(I)Z

    .line 1063
    .line 1064
    .line 1065
    move-result v2

    .line 1066
    if-eqz v2, :cond_12

    .line 1067
    .line 1068
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1069
    .line 1070
    and-int/2addr v1, v14

    .line 1071
    int-to-long v5, v1

    .line 1072
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    move-object v2, v0

    .line 1077
    check-cast v2, Lcom/google/android/libraries/places/internal/zzasr;

    .line 1078
    .line 1079
    invoke-virtual {v2, v1, v10}, Lcom/google/android/libraries/places/internal/zzasr;->zzK(Ljava/util/List;Z)V

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_14

    .line 1083
    .line 1084
    :cond_12
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1085
    .line 1086
    and-int/2addr v1, v14

    .line 1087
    int-to-long v5, v1

    .line 1088
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    move-object v2, v0

    .line 1093
    check-cast v2, Lcom/google/android/libraries/places/internal/zzasr;

    .line 1094
    .line 1095
    invoke-virtual {v2, v1, v3}, Lcom/google/android/libraries/places/internal/zzasr;->zzK(Ljava/util/List;Z)V

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_14

    .line 1099
    .line 1100
    :pswitch_2b
    move-object v13, v4

    .line 1101
    move-object v15, v5

    .line 1102
    move-object v4, v6

    .line 1103
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1104
    .line 1105
    and-int/2addr v1, v14

    .line 1106
    int-to-long v5, v1

    .line 1107
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v1

    .line 1111
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzv(Ljava/util/List;)V

    .line 1112
    .line 1113
    .line 1114
    goto/16 :goto_14

    .line 1115
    .line 1116
    :pswitch_2c
    move-object v13, v4

    .line 1117
    move-object v15, v5

    .line 1118
    move-object v4, v6

    .line 1119
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1120
    .line 1121
    and-int/2addr v1, v14

    .line 1122
    int-to-long v5, v1

    .line 1123
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzz(Ljava/util/List;)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_14

    .line 1131
    .line 1132
    :pswitch_2d
    move-object v13, v4

    .line 1133
    move-object v15, v5

    .line 1134
    move-object v4, v6

    .line 1135
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1136
    .line 1137
    and-int/2addr v1, v14

    .line 1138
    int-to-long v5, v1

    .line 1139
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v1

    .line 1143
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzA(Ljava/util/List;)V

    .line 1144
    .line 1145
    .line 1146
    goto/16 :goto_14

    .line 1147
    .line 1148
    :pswitch_2e
    move-object v13, v4

    .line 1149
    move-object v15, v5

    .line 1150
    move-object v4, v6

    .line 1151
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1152
    .line 1153
    and-int/2addr v1, v14

    .line 1154
    int-to-long v5, v1

    .line 1155
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzD(Ljava/util/List;)V

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_14

    .line 1163
    .line 1164
    :pswitch_2f
    move-object v13, v4

    .line 1165
    move-object v15, v5

    .line 1166
    move-object v4, v6

    .line 1167
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1168
    .line 1169
    and-int/2addr v1, v14

    .line 1170
    int-to-long v5, v1

    .line 1171
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzM(Ljava/util/List;)V

    .line 1176
    .line 1177
    .line 1178
    goto/16 :goto_14

    .line 1179
    .line 1180
    :pswitch_30
    move-object v13, v4

    .line 1181
    move-object v15, v5

    .line 1182
    move-object v4, v6

    .line 1183
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1184
    .line 1185
    and-int/2addr v1, v14

    .line 1186
    int-to-long v5, v1

    .line 1187
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzE(Ljava/util/List;)V

    .line 1192
    .line 1193
    .line 1194
    goto/16 :goto_14

    .line 1195
    .line 1196
    :pswitch_31
    move-object v13, v4

    .line 1197
    move-object v15, v5

    .line 1198
    move-object v4, v6

    .line 1199
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1200
    .line 1201
    and-int/2addr v1, v14

    .line 1202
    int-to-long v5, v1

    .line 1203
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v1

    .line 1207
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzB(Ljava/util/List;)V

    .line 1208
    .line 1209
    .line 1210
    goto/16 :goto_14

    .line 1211
    .line 1212
    :pswitch_32
    move-object v13, v4

    .line 1213
    move-object v15, v5

    .line 1214
    move-object v4, v6

    .line 1215
    iget-object v2, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzm:Lcom/google/android/libraries/places/internal/zzaut;

    .line 1216
    .line 1217
    and-int/2addr v1, v14

    .line 1218
    int-to-long v5, v1

    .line 1219
    invoke-virtual {v2, v11, v5, v6}, Lcom/google/android/libraries/places/internal/zzaut;->zza(Ljava/lang/Object;J)Ljava/util/List;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzavs;->zzx(Ljava/util/List;)V

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_14

    .line 1227
    .line 1228
    :pswitch_33
    move-object v13, v4

    .line 1229
    move-object v15, v5

    .line 1230
    move-object v4, v6

    .line 1231
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzv(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    .line 1236
    .line 1237
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v2

    .line 1241
    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/libraries/places/internal/zzavs;->zzt(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-direct {v7, v11, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzE(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1245
    .line 1246
    .line 1247
    goto/16 :goto_14

    .line 1248
    .line 1249
    :pswitch_34
    move-object v13, v4

    .line 1250
    move-object v15, v5

    .line 1251
    move-object v4, v6

    .line 1252
    and-int/2addr v1, v14

    .line 1253
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzn()J

    .line 1254
    .line 1255
    .line 1256
    move-result-wide v2

    .line 1257
    int-to-long v5, v1

    .line 1258
    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 1259
    .line 1260
    .line 1261
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_14

    .line 1265
    .line 1266
    :pswitch_35
    move-object v13, v4

    .line 1267
    move-object v15, v5

    .line 1268
    move-object v4, v6

    .line 1269
    and-int/2addr v1, v14

    .line 1270
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzi()I

    .line 1271
    .line 1272
    .line 1273
    move-result v2

    .line 1274
    int-to-long v5, v1

    .line 1275
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 1276
    .line 1277
    .line 1278
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1279
    .line 1280
    .line 1281
    goto/16 :goto_14

    .line 1282
    .line 1283
    :pswitch_36
    move-object v13, v4

    .line 1284
    move-object v15, v5

    .line 1285
    move-object v4, v6

    .line 1286
    and-int/2addr v1, v14

    .line 1287
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzm()J

    .line 1288
    .line 1289
    .line 1290
    move-result-wide v2

    .line 1291
    int-to-long v5, v1

    .line 1292
    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 1293
    .line 1294
    .line 1295
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1296
    .line 1297
    .line 1298
    goto/16 :goto_14

    .line 1299
    .line 1300
    :pswitch_37
    move-object v13, v4

    .line 1301
    move-object v15, v5

    .line 1302
    move-object v4, v6

    .line 1303
    and-int/2addr v1, v14

    .line 1304
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzh()I

    .line 1305
    .line 1306
    .line 1307
    move-result v2

    .line 1308
    int-to-long v5, v1

    .line 1309
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 1310
    .line 1311
    .line 1312
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1313
    .line 1314
    .line 1315
    goto/16 :goto_14

    .line 1316
    .line 1317
    :pswitch_38
    move-object v13, v4

    .line 1318
    move-object v15, v5

    .line 1319
    move-object v4, v6

    .line 1320
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zze()I

    .line 1321
    .line 1322
    .line 1323
    move-result v3

    .line 1324
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzr(I)Lcom/google/android/libraries/places/internal/zzaty;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v5

    .line 1328
    if-eqz v5, :cond_14

    .line 1329
    .line 1330
    invoke-interface {v5, v3}, Lcom/google/android/libraries/places/internal/zzaty;->zza(I)Z

    .line 1331
    .line 1332
    .line 1333
    move-result v5

    .line 1334
    if-eqz v5, :cond_13

    .line 1335
    .line 1336
    goto :goto_13

    .line 1337
    :cond_13
    invoke-static {v11, v2, v3, v13, v12}, Lcom/google/android/libraries/places/internal/zzavv;->zzp(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v1

    .line 1341
    move-object v6, v4

    .line 1342
    move-object v14, v12

    .line 1343
    move-object v5, v15

    .line 1344
    move-object v4, v1

    .line 1345
    goto/16 :goto_11

    .line 1346
    .line 1347
    :cond_14
    :goto_13
    and-int/2addr v1, v14

    .line 1348
    int-to-long v1, v1

    .line 1349
    invoke-static {v11, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 1350
    .line 1351
    .line 1352
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1353
    .line 1354
    .line 1355
    goto/16 :goto_14

    .line 1356
    .line 1357
    :pswitch_39
    move-object v13, v4

    .line 1358
    move-object v15, v5

    .line 1359
    move-object v4, v6

    .line 1360
    and-int/2addr v1, v14

    .line 1361
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzj()I

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    int-to-long v5, v1

    .line 1366
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 1367
    .line 1368
    .line 1369
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1370
    .line 1371
    .line 1372
    goto/16 :goto_14

    .line 1373
    .line 1374
    :pswitch_3a
    move-object v13, v4

    .line 1375
    move-object v15, v5

    .line 1376
    move-object v4, v6

    .line 1377
    and-int/2addr v1, v14

    .line 1378
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzp()Lcom/google/android/libraries/places/internal/zzask;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v2

    .line 1382
    int-to-long v5, v1

    .line 1383
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1387
    .line 1388
    .line 1389
    goto/16 :goto_14

    .line 1390
    .line 1391
    :pswitch_3b
    move-object v13, v4

    .line 1392
    move-object v15, v5

    .line 1393
    move-object v4, v6

    .line 1394
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzv(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v1

    .line 1398
    check-cast v1, Lcom/google/android/libraries/places/internal/zzavf;

    .line 1399
    .line 1400
    invoke-direct {v7, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v2

    .line 1404
    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/libraries/places/internal/zzavs;->zzu(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;Lcom/google/android/libraries/places/internal/zzatf;)V

    .line 1405
    .line 1406
    .line 1407
    invoke-direct {v7, v11, v9, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzE(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1408
    .line 1409
    .line 1410
    goto/16 :goto_14

    .line 1411
    .line 1412
    :pswitch_3c
    move-object v13, v4

    .line 1413
    move-object v15, v5

    .line 1414
    move-object v4, v6

    .line 1415
    invoke-direct {v7, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzB(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavs;)V

    .line 1416
    .line 1417
    .line 1418
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1419
    .line 1420
    .line 1421
    goto/16 :goto_14

    .line 1422
    .line 1423
    :pswitch_3d
    move-object v13, v4

    .line 1424
    move-object v15, v5

    .line 1425
    move-object v4, v6

    .line 1426
    and-int/2addr v1, v14

    .line 1427
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzN()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v2

    .line 1431
    int-to-long v5, v1

    .line 1432
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzm(Ljava/lang/Object;JZ)V

    .line 1433
    .line 1434
    .line 1435
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1436
    .line 1437
    .line 1438
    goto/16 :goto_14

    .line 1439
    .line 1440
    :pswitch_3e
    move-object v13, v4

    .line 1441
    move-object v15, v5

    .line 1442
    move-object v4, v6

    .line 1443
    and-int/2addr v1, v14

    .line 1444
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzf()I

    .line 1445
    .line 1446
    .line 1447
    move-result v2

    .line 1448
    int-to-long v5, v1

    .line 1449
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 1450
    .line 1451
    .line 1452
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1453
    .line 1454
    .line 1455
    goto/16 :goto_14

    .line 1456
    .line 1457
    :pswitch_3f
    move-object v13, v4

    .line 1458
    move-object v15, v5

    .line 1459
    move-object v4, v6

    .line 1460
    and-int/2addr v1, v14

    .line 1461
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzk()J

    .line 1462
    .line 1463
    .line 1464
    move-result-wide v2

    .line 1465
    int-to-long v5, v1

    .line 1466
    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 1467
    .line 1468
    .line 1469
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_14

    .line 1473
    :pswitch_40
    move-object v13, v4

    .line 1474
    move-object v15, v5

    .line 1475
    move-object v4, v6

    .line 1476
    and-int/2addr v1, v14

    .line 1477
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzg()I

    .line 1478
    .line 1479
    .line 1480
    move-result v2

    .line 1481
    int-to-long v5, v1

    .line 1482
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzq(Ljava/lang/Object;JI)V

    .line 1483
    .line 1484
    .line 1485
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1486
    .line 1487
    .line 1488
    goto :goto_14

    .line 1489
    :pswitch_41
    move-object v13, v4

    .line 1490
    move-object v15, v5

    .line 1491
    move-object v4, v6

    .line 1492
    and-int/2addr v1, v14

    .line 1493
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzo()J

    .line 1494
    .line 1495
    .line 1496
    move-result-wide v2

    .line 1497
    int-to-long v5, v1

    .line 1498
    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 1499
    .line 1500
    .line 1501
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1502
    .line 1503
    .line 1504
    goto :goto_14

    .line 1505
    :pswitch_42
    move-object v13, v4

    .line 1506
    move-object v15, v5

    .line 1507
    move-object v4, v6

    .line 1508
    and-int/2addr v1, v14

    .line 1509
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzl()J

    .line 1510
    .line 1511
    .line 1512
    move-result-wide v2

    .line 1513
    int-to-long v5, v1

    .line 1514
    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzr(Ljava/lang/Object;JJ)V

    .line 1515
    .line 1516
    .line 1517
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1518
    .line 1519
    .line 1520
    goto :goto_14

    .line 1521
    :pswitch_43
    move-object v13, v4

    .line 1522
    move-object v15, v5

    .line 1523
    move-object v4, v6

    .line 1524
    and-int/2addr v1, v14

    .line 1525
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zzb()F

    .line 1526
    .line 1527
    .line 1528
    move-result v2

    .line 1529
    int-to-long v5, v1

    .line 1530
    invoke-static {v11, v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzawx;->zzp(Ljava/lang/Object;JF)V

    .line 1531
    .line 1532
    .line 1533
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V

    .line 1534
    .line 1535
    .line 1536
    goto :goto_14

    .line 1537
    :pswitch_44
    move-object v13, v4

    .line 1538
    move-object v15, v5

    .line 1539
    move-object v4, v6

    .line 1540
    and-int/2addr v1, v14

    .line 1541
    invoke-interface/range {p2 .. p2}, Lcom/google/android/libraries/places/internal/zzavs;->zza()D

    .line 1542
    .line 1543
    .line 1544
    move-result-wide v2

    .line 1545
    int-to-long v5, v1

    .line 1546
    invoke-static {v11, v5, v6, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzo(Ljava/lang/Object;JD)V

    .line 1547
    .line 1548
    .line 1549
    invoke-direct {v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzavi;->zzC(Ljava/lang/Object;I)V
    :try_end_a
    .catch Lcom/google/android/libraries/places/internal/zzaue; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1550
    .line 1551
    .line 1552
    :cond_15
    :goto_14
    move-object v6, v4

    .line 1553
    move-object v14, v12

    .line 1554
    move-object v4, v13

    .line 1555
    goto/16 :goto_10

    .line 1556
    .line 1557
    :catch_2
    :goto_15
    :try_start_b
    invoke-virtual {v12, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzq(Lcom/google/android/libraries/places/internal/zzavs;)Z

    .line 1558
    .line 1559
    .line 1560
    if-nez v13, :cond_16

    .line 1561
    .line 1562
    invoke-virtual {v12, v11}, Lcom/google/android/libraries/places/internal/zzawn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    move-object v13, v1

    .line 1567
    :cond_16
    invoke-virtual {v12, v13, v0}, Lcom/google/android/libraries/places/internal/zzawn;->zzp(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;)Z

    .line 1568
    .line 1569
    .line 1570
    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1571
    if-nez v1, :cond_15

    .line 1572
    .line 1573
    iget v0, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    .line 1574
    .line 1575
    move-object v4, v13

    .line 1576
    :goto_16
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    .line 1577
    .line 1578
    if-ge v0, v1, :cond_17

    .line 1579
    .line 1580
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    .line 1581
    .line 1582
    aget v3, v1, v0

    .line 1583
    .line 1584
    move-object/from16 v1, p0

    .line 1585
    .line 1586
    move-object/from16 v2, p1

    .line 1587
    .line 1588
    move-object v5, v12

    .line 1589
    move-object/from16 v6, p1

    .line 1590
    .line 1591
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v4

    .line 1595
    add-int/lit8 v0, v0, 0x1

    .line 1596
    .line 1597
    goto :goto_16

    .line 1598
    :cond_17
    :goto_17
    if-eqz v4, :cond_18

    .line 1599
    .line 1600
    invoke-virtual {v12, v11, v4}, Lcom/google/android/libraries/places/internal/zzawn;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1601
    .line 1602
    .line 1603
    :cond_18
    return-void

    .line 1604
    :catchall_6
    move-exception v0

    .line 1605
    :goto_18
    move-object v4, v13

    .line 1606
    :goto_19
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    .line 1607
    .line 1608
    move v8, v1

    .line 1609
    :goto_1a
    iget v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzl:I

    .line 1610
    .line 1611
    if-ge v8, v1, :cond_19

    .line 1612
    .line 1613
    iget-object v1, v7, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    .line 1614
    .line 1615
    aget v3, v1, v8

    .line 1616
    .line 1617
    move-object/from16 v1, p0

    .line 1618
    .line 1619
    move-object/from16 v2, p1

    .line 1620
    .line 1621
    move-object v5, v12

    .line 1622
    move-object/from16 v6, p1

    .line 1623
    .line 1624
    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzavi;->zzt(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzawn;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v4

    .line 1628
    add-int/lit8 v8, v8, 0x1

    .line 1629
    .line 1630
    goto :goto_1a

    .line 1631
    :cond_19
    if-eqz v4, :cond_1a

    .line 1632
    .line 1633
    invoke-virtual {v12, v11, v4}, Lcom/google/android/libraries/places/internal/zzawn;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1634
    .line 1635
    .line 1636
    :cond_1a
    throw v0

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

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

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
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

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
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzn(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/2addr v2, v3

    .line 32
    int-to-long v2, v2

    .line 33
    invoke-static {p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v6, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_1

    .line 191
    .line 192
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_1

    .line 209
    .line 210
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_1

    .line 249
    .line 250
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    .line 272
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzavv;->zzt(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_1

    .line 293
    .line 294
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_1

    .line 311
    .line 312
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_1

    .line 329
    .line 330
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_1

    .line 348
    .line 349
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzc(Ljava/lang/Object;J)I

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_1

    .line 365
    .line 366
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 367
    .line 368
    .line 369
    move-result-wide v2

    .line 370
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_1

    .line 384
    .line 385
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

    .line 386
    .line 387
    .line 388
    move-result-wide v2

    .line 389
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzd(Ljava/lang/Object;J)J

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eqz v2, :cond_1

    .line 403
    .line 404
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

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
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

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
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzavi;->zzG(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_1

    .line 428
    .line 429
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

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
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

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
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 455
    .line 456
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 461
    .line 462
    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    .line 474
    .line 475
    if-eqz v0, :cond_4

    .line 476
    .line 477
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 478
    .line 479
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 484
    .line 485
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    .line 486
    .line 487
    .line 488
    move-result-object p2

    .line 489
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzatk;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    return p1

    .line 494
    :cond_4
    const/4 p1, 0x1

    .line 495
    return p1

    .line 496
    nop

    .line 497
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

.method public final zzh(Ljava/lang/Object;)Z
    .locals 17

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
    iget v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzk:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ge v10, v2, :cond_b

    .line 16
    .line 17
    iget-object v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzj:[I

    .line 18
    .line 19
    iget-object v4, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 20
    .line 21
    aget v11, v2, v10

    .line 22
    .line 23
    aget v12, v4, v11

    .line 24
    .line 25
    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    iget-object v2, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 30
    .line 31
    add-int/lit8 v4, v11, 0x2

    .line 32
    .line 33
    aget v2, v2, v4

    .line 34
    .line 35
    and-int v4, v2, v9

    .line 36
    .line 37
    ushr-int/lit8 v2, v2, 0x14

    .line 38
    .line 39
    shl-int v14, v3, v2

    .line 40
    .line 41
    if-eq v4, v0, :cond_1

    .line 42
    .line 43
    if-eq v4, v9, :cond_0

    .line 44
    .line 45
    int-to-long v0, v4

    .line 46
    sget-object v2, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    .line 47
    .line 48
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_0
    move/from16 v16, v1

    .line 53
    .line 54
    move v15, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v15, v0

    .line 57
    move/from16 v16, v1

    .line 58
    .line 59
    :goto_1
    const/high16 v0, 0x10000000

    .line 60
    .line 61
    and-int/2addr v0, v13

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move v2, v11

    .line 69
    move v3, v15

    .line 70
    move/from16 v4, v16

    .line 71
    .line 72
    move v5, v14

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    return v8

    .line 81
    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    if-eq v0, v1, :cond_9

    .line 88
    .line 89
    const/16 v1, 0x11

    .line 90
    .line 91
    if-eq v0, v1, :cond_9

    .line 92
    .line 93
    const/16 v1, 0x1b

    .line 94
    .line 95
    if-eq v0, v1, :cond_7

    .line 96
    .line 97
    const/16 v1, 0x3c

    .line 98
    .line 99
    if-eq v0, v1, :cond_6

    .line 100
    .line 101
    const/16 v1, 0x44

    .line 102
    .line 103
    if-eq v0, v1, :cond_6

    .line 104
    .line 105
    const/16 v1, 0x31

    .line 106
    .line 107
    if-eq v0, v1, :cond_7

    .line 108
    .line 109
    const/16 v1, 0x32

    .line 110
    .line 111
    if-eq v0, v1, :cond_4

    .line 112
    .line 113
    goto/16 :goto_4

    .line 114
    .line 115
    :cond_4
    and-int v0, v13, v9

    .line 116
    .line 117
    int-to-long v0, v0

    .line 118
    invoke-static {v7, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/google/android/libraries/places/internal/zzauz;

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/google/android/libraries/places/internal/zzauy;

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    throw v0

    .line 139
    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_a

    .line 144
    .line 145
    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v7, v13, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzK(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavt;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_a

    .line 154
    .line 155
    return v8

    .line 156
    :cond_7
    and-int v0, v13, v9

    .line 157
    .line 158
    int-to-long v0, v0

    .line 159
    invoke-static {v7, v0, v1}, Lcom/google/android/libraries/places/internal/zzawx;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_a

    .line 170
    .line 171
    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move v2, v8

    .line 176
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-ge v2, v3, :cond_a

    .line 181
    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-interface {v1, v3}, Lcom/google/android/libraries/places/internal/zzavt;->zzh(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_8

    .line 191
    .line 192
    return v8

    .line 193
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    move-object/from16 v0, p0

    .line 197
    .line 198
    move-object/from16 v1, p1

    .line 199
    .line 200
    move v2, v11

    .line 201
    move v3, v15

    .line 202
    move/from16 v4, v16

    .line 203
    .line 204
    move v5, v14

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    invoke-direct {v6, v11}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v7, v13, v0}, Lcom/google/android/libraries/places/internal/zzavi;->zzK(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/zzavt;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_a

    .line 220
    .line 221
    return v8

    .line 222
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 223
    .line 224
    move v0, v15

    .line 225
    move/from16 v1, v16

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_b
    iget-boolean v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    .line 230
    .line 231
    if-eqz v0, :cond_c

    .line 232
    .line 233
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 234
    .line 235
    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatk;->zzj()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_c

    .line 244
    .line 245
    return v8

    .line 246
    :cond_c
    return v3
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    iget-boolean v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzh:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzatg;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzatk;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzatk;->zza:Lcom/google/android/libraries/places/internal/zzawg;

    .line 2
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatk;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v11, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    sget-object v13, Lcom/google/android/libraries/places/internal/zzavi;->zzb:Lsun/misc/Unsafe;

    const v14, 0xfffff

    move v0, v14

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v3, v12

    if-ge v5, v3, :cond_c

    .line 5
    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzp(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzavi;->zzo(I)I

    move-result v15

    .line 6
    aget v10, v4, v5

    const/16 v9, 0x11

    if-gt v15, v9, :cond_3

    add-int/lit8 v9, v5, 0x2

    .line 7
    aget v4, v4, v9

    and-int v9, v4, v14

    if-eq v9, v0, :cond_2

    if-ne v9, v14, :cond_1

    move/from16 v20, v15

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move/from16 v20, v15

    int-to-long v14, v9

    .line 8
    invoke-virtual {v13, v7, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v2, v0

    :goto_2
    move v0, v9

    goto :goto_3

    :cond_2
    move/from16 v20, v15

    :goto_3
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    move v9, v0

    move-object v14, v1

    move v15, v2

    move/from16 v21, v4

    goto :goto_4

    :cond_3
    move/from16 v20, v15

    move v9, v0

    move-object v14, v1

    move v15, v2

    const/16 v21, 0x0

    :goto_4
    if-eqz v14, :cond_5

    .line 9
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 10
    invoke-virtual {v0, v14}, Lcom/google/android/libraries/places/internal/zzatg;->zza(Ljava/util/Map$Entry;)I

    move-result v0

    if-gt v0, v10, :cond_5

    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 11
    invoke-virtual {v0, v8, v14}, Lcom/google/android/libraries/places/internal/zzatg;->zzj(Lcom/google/android/libraries/places/internal/zzasy;Ljava/util/Map$Entry;)V

    .line 12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    const v19, 0xfffff

    and-int v0, v3, v19

    int-to-long v3, v0

    packed-switch v20, :pswitch_data_0

    :cond_6
    :goto_5
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_6
    const/16 v18, 0x1

    :goto_7
    move v14, v5

    goto/16 :goto_f

    .line 13
    :pswitch_0
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    .line 15
    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzq(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto :goto_5

    .line 16
    :pswitch_1
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzD(IJ)V

    goto :goto_5

    .line 18
    :pswitch_2
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzB(II)V

    goto :goto_5

    .line 20
    :pswitch_3
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzz(IJ)V

    goto :goto_5

    .line 22
    :pswitch_4
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzx(II)V

    goto :goto_5

    .line 24
    :pswitch_5
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzi(II)V

    goto :goto_5

    .line 26
    :pswitch_6
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzI(II)V

    goto :goto_5

    .line 28
    :pswitch_7
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzd(ILcom/google/android/libraries/places/internal/zzask;)V

    goto/16 :goto_5

    .line 30
    :pswitch_8
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 32
    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzv(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto/16 :goto_5

    .line 33
    :pswitch_9
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0, v8}, Lcom/google/android/libraries/places/internal/zzavi;->zzO(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    goto/16 :goto_5

    .line 35
    :pswitch_a
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzN(Ljava/lang/Object;J)Z

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzb(IZ)V

    goto/16 :goto_5

    .line 37
    :pswitch_b
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzk(II)V

    goto/16 :goto_5

    .line 39
    :pswitch_c
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzm(IJ)V

    goto/16 :goto_5

    .line 41
    :pswitch_d
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzm(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzr(II)V

    goto/16 :goto_5

    .line 43
    :pswitch_e
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzK(IJ)V

    goto/16 :goto_5

    .line 45
    :pswitch_f
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzq(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzt(IJ)V

    goto/16 :goto_5

    .line 47
    :pswitch_10
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzl(Ljava/lang/Object;J)F

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzo(IF)V

    goto/16 :goto_5

    .line 49
    :pswitch_11
    invoke-direct {v6, v7, v10, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    invoke-static {v7, v3, v4}, Lcom/google/android/libraries/places/internal/zzavi;->zzk(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzf(ID)V

    goto/16 :goto_5

    .line 51
    :pswitch_12
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    .line 52
    :cond_7
    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzu(I)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Lcom/google/android/libraries/places/internal/zzauy;

    const/16 v17, 0x0

    .line 54
    throw v17

    :pswitch_13
    const/16 v17, 0x0

    .line 55
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 56
    aget v0, v0, v5

    .line 57
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 58
    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    .line 59
    sget v3, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_8

    .line 60
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    .line 61
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v0, v4, v2}, Lcom/google/android/libraries/places/internal/zzasy;->zzq(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    const/4 v10, 0x1

    add-int/2addr v3, v10

    goto :goto_8

    :cond_8
    :goto_9
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    goto/16 :goto_6

    :pswitch_14
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 63
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 64
    aget v0, v0, v5

    .line 65
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzF(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    :goto_a
    move/from16 v18, v10

    :cond_9
    :goto_b
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    goto/16 :goto_7

    :pswitch_15
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 67
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 68
    aget v0, v0, v5

    .line 69
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 70
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzE(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_16
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 71
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 72
    aget v0, v0, v5

    .line 73
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 74
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzD(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_17
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 75
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 76
    aget v0, v0, v5

    .line 77
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzC(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_18
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 79
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 80
    aget v0, v0, v5

    .line 81
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 82
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzw(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_19
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 83
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 84
    aget v0, v0, v5

    .line 85
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 86
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzG(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_1a
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 87
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 88
    aget v0, v0, v5

    .line 89
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzu(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_a

    :pswitch_1b
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 91
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 92
    aget v0, v0, v5

    .line 93
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 94
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzx(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1c
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 95
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 96
    aget v0, v0, v5

    .line 97
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 98
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzy(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1d
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 99
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 100
    aget v0, v0, v5

    .line 101
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 102
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzA(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1e
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 103
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 104
    aget v0, v0, v5

    .line 105
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 106
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzH(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_1f
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 107
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 108
    aget v0, v0, v5

    .line 109
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 110
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzB(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_20
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 111
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 112
    aget v0, v0, v5

    .line 113
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 114
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzz(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_21
    const/4 v10, 0x1

    const/16 v17, 0x0

    .line 115
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 116
    aget v0, v0, v5

    .line 117
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 118
    invoke-static {v0, v1, v8, v10}, Lcom/google/android/libraries/places/internal/zzavv;->zzv(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_a

    :pswitch_22
    const/16 v17, 0x0

    .line 119
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 120
    aget v0, v0, v5

    .line 121
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 122
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzF(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    :goto_c
    move/from16 v16, v2

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    goto/16 :goto_6

    :pswitch_23
    const/4 v2, 0x0

    const/16 v17, 0x0

    .line 123
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 124
    aget v0, v0, v5

    .line 125
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzE(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_24
    const/4 v2, 0x0

    const/16 v17, 0x0

    .line 127
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 128
    aget v0, v0, v5

    .line 129
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 130
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzD(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_25
    const/4 v2, 0x0

    const/16 v17, 0x0

    .line 131
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 132
    aget v0, v0, v5

    .line 133
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 134
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzC(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_26
    const/4 v2, 0x0

    const/16 v17, 0x0

    .line 135
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 136
    aget v0, v0, v5

    .line 137
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 138
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzw(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_27
    const/4 v2, 0x0

    const/16 v17, 0x0

    .line 139
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 140
    aget v0, v0, v5

    .line 141
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 142
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzG(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_c

    :pswitch_28
    const/16 v17, 0x0

    .line 143
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 144
    aget v0, v0, v5

    .line 145
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 146
    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_8

    .line 147
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 148
    invoke-virtual {v8, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zze(ILjava/util/List;)V

    goto/16 :goto_9

    :pswitch_29
    const/16 v17, 0x0

    .line 149
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 150
    aget v0, v0, v5

    .line 151
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    invoke-direct {v6, v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v2

    .line 153
    sget v3, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_a

    .line 154
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    .line 155
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 156
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v0, v4, v2}, Lcom/google/android/libraries/places/internal/zzasy;->zzv(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_b

    :pswitch_2a
    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 157
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 158
    aget v0, v0, v5

    .line 159
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 160
    sget v2, Lcom/google/android/libraries/places/internal/zzavv;->zza:I

    if-eqz v1, :cond_9

    .line 161
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 162
    invoke-virtual {v8, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzH(ILjava/util/List;)V

    goto/16 :goto_b

    :pswitch_2b
    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 163
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 164
    aget v0, v0, v5

    .line 165
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 166
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzu(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    :goto_e
    move/from16 v16, v2

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    goto/16 :goto_7

    :pswitch_2c
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 167
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 168
    aget v0, v0, v5

    .line 169
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 170
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzx(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_2d
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 171
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 172
    aget v0, v0, v5

    .line 173
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 174
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzy(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_2e
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 175
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 176
    aget v0, v0, v5

    .line 177
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 178
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzA(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_2f
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 179
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 180
    aget v0, v0, v5

    .line 181
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 182
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzH(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_30
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 183
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 184
    aget v0, v0, v5

    .line 185
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 186
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzB(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_31
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 187
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 188
    aget v0, v0, v5

    .line 189
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 190
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzz(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto :goto_e

    :pswitch_32
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 191
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzc:[I

    .line 192
    aget v0, v0, v5

    .line 193
    invoke-virtual {v13, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 194
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/libraries/places/internal/zzavv;->zzv(ILjava/util/List;Lcom/google/android/libraries/places/internal/zzasy;Z)V

    goto/16 :goto_e

    :pswitch_33
    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v2

    move v2, v5

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-wide v11, v3

    move v3, v9

    move v4, v15

    move-object/from16 v23, v14

    move v14, v5

    move/from16 v5, v21

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 196
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v14}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    .line 197
    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzq(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto/16 :goto_f

    :pswitch_34
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 199
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzD(IJ)V

    goto/16 :goto_f

    :pswitch_35
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 201
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzB(II)V

    goto/16 :goto_f

    :pswitch_36
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzz(IJ)V

    goto/16 :goto_f

    :pswitch_37
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzx(II)V

    goto/16 :goto_f

    :pswitch_38
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzi(II)V

    goto/16 :goto_f

    :pswitch_39
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 208
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzI(II)V

    goto/16 :goto_f

    :pswitch_3a
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 210
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzask;

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzd(ILcom/google/android/libraries/places/internal/zzask;)V

    goto/16 :goto_f

    :pswitch_3b
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 212
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-direct {v6, v14}, Lcom/google/android/libraries/places/internal/zzavi;->zzs(I)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzv(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzavt;)V

    goto/16 :goto_f

    :pswitch_3c
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 215
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 216
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0, v8}, Lcom/google/android/libraries/places/internal/zzavi;->zzO(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    goto/16 :goto_f

    :pswitch_3d
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 217
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    invoke-static {v7, v11, v12}, Lcom/google/android/libraries/places/internal/zzawx;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    .line 219
    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzb(IZ)V

    goto/16 :goto_f

    :pswitch_3e
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzk(II)V

    goto/16 :goto_f

    :pswitch_3f
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 222
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 223
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzm(IJ)V

    goto/16 :goto_f

    :pswitch_40
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzr(II)V

    goto/16 :goto_f

    :pswitch_41
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 227
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzK(IJ)V

    goto/16 :goto_f

    :pswitch_42
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 229
    invoke-virtual {v13, v7, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzt(IJ)V

    goto :goto_f

    :pswitch_43
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 230
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    invoke-static {v7, v11, v12}, Lcom/google/android/libraries/places/internal/zzawx;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 232
    invoke-virtual {v8, v10, v0}, Lcom/google/android/libraries/places/internal/zzasy;->zzo(IF)V

    goto :goto_f

    :pswitch_44
    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-wide v11, v3

    move v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v9

    move v4, v15

    move/from16 v5, v21

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzavi;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 234
    invoke-static {v7, v11, v12}, Lcom/google/android/libraries/places/internal/zzawx;->zza(Ljava/lang/Object;J)D

    move-result-wide v0

    .line 235
    invoke-virtual {v8, v10, v0, v1}, Lcom/google/android/libraries/places/internal/zzasy;->zzf(ID)V

    :cond_b
    :goto_f
    add-int/lit8 v5, v14, 0x3

    move v0, v9

    move v2, v15

    move/from16 v14, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v22

    move-object/from16 v1, v23

    goto/16 :goto_1

    :cond_c
    move-object/from16 v20, v11

    const/16 v17, 0x0

    :goto_10
    if-eqz v1, :cond_e

    .line 236
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzo:Lcom/google/android/libraries/places/internal/zzatg;

    .line 237
    invoke-virtual {v0, v8, v1}, Lcom/google/android/libraries/places/internal/zzatg;->zzj(Lcom/google/android/libraries/places/internal/zzasy;Ljava/util/Map$Entry;)V

    .line 238
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_10

    :cond_d
    move-object/from16 v1, v17

    goto :goto_10

    :cond_e
    iget-object v0, v6, Lcom/google/android/libraries/places/internal/zzavi;->zzn:Lcom/google/android/libraries/places/internal/zzawn;

    .line 239
    invoke-virtual {v0, v7}, Lcom/google/android/libraries/places/internal/zzawn;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/android/libraries/places/internal/zzawn;->zzs(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzasy;)V

    return-void

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

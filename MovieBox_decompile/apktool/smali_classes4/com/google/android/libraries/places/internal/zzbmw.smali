.class public final Lcom/google/android/libraries/places/internal/zzbmw;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbis;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbmv;

.field private zzb:I

.field private zzc:Lcom/google/android/libraries/places/internal/zzbra;

.field private zzd:Lcom/google/android/libraries/places/internal/zzazc;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbmu;

.field private final zzf:Ljava/nio/ByteBuffer;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzbrb;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzbqo;

.field private zzi:Z

.field private zzj:I

.field private zzk:I

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbmv;Lcom/google/android/libraries/places/internal/zzbrb;Lcom/google/android/libraries/places/internal/zzbqo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzd:Lcom/google/android/libraries/places/internal/zzazc;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbmu;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/places/internal/zzbmu;-><init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmt;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zze:Lcom/google/android/libraries/places/internal/zzbmu;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 33
    .line 34
    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbmw;)Lcom/google/android/libraries/places/internal/zzbrb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbmw;[BII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbmw;->zzk([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzi(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    .line 9
    .line 10
    invoke-interface {v2, v0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzbmv;->zzi(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    .line 15
    .line 16
    return-void
.end method

.method private final zzj(Lcom/google/android/libraries/places/internal/zzbms;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbms;->zza(Lcom/google/android/libraries/places/internal/zzbms;)I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 8
    .line 9
    if-ltz v3, :cond_1

    .line 10
    .line 11
    if-gt v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 15
    .line 16
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x2

    .line 29
    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v2, v4, v0

    .line 32
    .line 33
    aput-object v3, v4, v1

    .line 34
    .line 35
    const-string v0, "message too large %d > %d"

    .line 36
    .line 37
    invoke-static {p2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-direct {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    const/4 v4, 0x5

    .line 71
    invoke-interface {p2, v4}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-interface {p2, v4, v0, v3}, Lcom/google/android/libraries/places/internal/zzbra;->zzd([BII)V

    .line 84
    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    .line 92
    .line 93
    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    .line 94
    .line 95
    add-int/lit8 v4, v4, -0x1

    .line 96
    .line 97
    invoke-interface {v3, p2, v0, v0, v4}, Lcom/google/android/libraries/places/internal/zzbmv;->zzi(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V

    .line 98
    .line 99
    .line 100
    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    .line 101
    .line 102
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbms;->zzb(Lcom/google/android/libraries/places/internal/zzbms;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    move p2, v0

    .line 107
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    add-int/lit8 v3, v3, -0x1

    .line 112
    .line 113
    if-ge p2, v3, :cond_3

    .line 114
    .line 115
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zza:Lcom/google/android/libraries/places/internal/zzbmv;

    .line 116
    .line 117
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Lcom/google/android/libraries/places/internal/zzbra;

    .line 122
    .line 123
    invoke-interface {v3, v4, v0, v0, v0}, Lcom/google/android/libraries/places/internal/zzbmv;->zzi(Lcom/google/android/libraries/places/internal/zzbra;ZZI)V

    .line 124
    .line 125
    .line 126
    add-int/2addr p2, v1

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    add-int/lit8 p2, p2, -0x1

    .line 133
    .line 134
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbra;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 141
    .line 142
    int-to-long p1, v2

    .line 143
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    .line 144
    .line 145
    return-void
.end method

.method private final zzk([BII)V
    .locals 2

    .line 1
    :goto_0
    if-lez p3, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzb()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v0}, Lcom/google/android/libraries/places/internal/zzbmw;->zzi(ZZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    .line 22
    .line 23
    invoke-interface {v0, p3}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzb()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 40
    .line 41
    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzbra;->zzd([BII)V

    .line 42
    .line 43
    .line 44
    add-int/2addr p2, v0

    .line 45
    sub-int/2addr p3, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzazc;)Lcom/google/android/libraries/places/internal/zzbis;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzd:Lcom/google/android/libraries/places/internal/zzazc;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbra;->zza()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/libraries/places/internal/zzbmw;->zzi(ZZ)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbra;->zza()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbmw;->zzi(ZZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final zzd(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "max size already set"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 15
    .line 16
    return-void
.end method

.method public final zze(Ljava/io/InputStream;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "Failed to frame message"

    .line 5
    .line 6
    iget-boolean v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    .line 7
    .line 8
    if-nez v4, :cond_9

    .line 9
    .line 10
    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    .line 11
    .line 12
    add-int/2addr v4, v2

    .line 13
    iput v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzj:I

    .line 14
    .line 15
    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    .line 16
    .line 17
    add-int/2addr v4, v2

    .line 18
    iput v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    iput-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    .line 23
    .line 24
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzbqo;->zzi(I)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzd:Lcom/google/android/libraries/places/internal/zzazc;

    .line 30
    .line 31
    sget-object v5, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 35
    .line 36
    .line 37
    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/libraries/places/internal/zzbdq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v8, -0x1

    .line 39
    const-string v9, "message too large %d > %d"

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    if-eq v4, v5, :cond_2

    .line 44
    .line 45
    :try_start_1
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbms;

    .line 46
    .line 47
    invoke-direct {v4, p0, v6}, Lcom/google/android/libraries/places/internal/zzbms;-><init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmr;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/libraries/places/internal/zzbdq; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    .line 50
    :try_start_2
    invoke-interface {p1, v4}, Lcom/google/android/libraries/places/internal/zzazr;->zza(Ljava/io/OutputStream;)I

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 55
    .line 56
    .line 57
    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 58
    .line 59
    if-ltz v5, :cond_1

    .line 60
    .line 61
    if-gt p1, v5, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 65
    .line 66
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget v7, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 73
    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p1, v0, v1

    .line 81
    .line 82
    aput-object v7, v0, v2

    .line 83
    .line 84
    invoke-static {v5, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v4, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 93
    .line 94
    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :catch_1
    move-exception p1

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :catch_2
    move-exception p1

    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_1
    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/google/android/libraries/places/internal/zzbmw;->zzj(Lcom/google/android/libraries/places/internal/zzbms;Z)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :catchall_0
    move-exception p1

    .line 113
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_2
    if-eq v7, v8, :cond_6

    .line 118
    .line 119
    int-to-long v4, v7

    .line 120
    iput-wide v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    .line 121
    .line 122
    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 123
    .line 124
    if-ltz v4, :cond_4

    .line 125
    .line 126
    if-gt v7, v4, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 130
    .line 131
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 132
    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iget v7, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzb:I

    .line 138
    .line 139
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v5, v0, v1

    .line 146
    .line 147
    aput-object v7, v0, v2

    .line 148
    .line 149
    invoke-static {v4, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 158
    .line 159
    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 166
    .line 167
    .line 168
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 175
    .line 176
    .line 177
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 178
    .line 179
    if-nez v4, :cond_5

    .line 180
    .line 181
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzg:Lcom/google/android/libraries/places/internal/zzbrb;

    .line 182
    .line 183
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    add-int/2addr v5, v7

    .line 190
    invoke-interface {v4, v5}, Lcom/google/android/libraries/places/internal/zzbrb;->zza(I)Lcom/google/android/libraries/places/internal/zzbra;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    iput-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzc:Lcom/google/android/libraries/places/internal/zzbra;

    .line 195
    .line 196
    :cond_5
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzf:Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-direct {p0, v4, v1, v5}, Lcom/google/android/libraries/places/internal/zzbmw;->zzk([BII)V

    .line 209
    .line 210
    .line 211
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zze:Lcom/google/android/libraries/places/internal/zzbmu;

    .line 212
    .line 213
    invoke-interface {p1, v4}, Lcom/google/android/libraries/places/internal/zzazr;->zza(Ljava/io/OutputStream;)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    goto :goto_2

    .line 218
    :cond_6
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbms;

    .line 219
    .line 220
    invoke-direct {v4, p0, v6}, Lcom/google/android/libraries/places/internal/zzbms;-><init>(Lcom/google/android/libraries/places/internal/zzbmw;Lcom/google/android/libraries/places/internal/zzbmr;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, v4}, Lcom/google/android/libraries/places/internal/zzazr;->zza(Ljava/io/OutputStream;)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-direct {p0, v4, v1}, Lcom/google/android/libraries/places/internal/zzbmw;->zzj(Lcom/google/android/libraries/places/internal/zzbms;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/libraries/places/internal/zzbdq; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 228
    .line 229
    .line 230
    :goto_2
    if-eq v7, v8, :cond_8

    .line 231
    .line 232
    if-ne p1, v7, :cond_7

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    new-array v0, v0, [Ljava/lang/Object;

    .line 244
    .line 245
    aput-object p1, v0, v1

    .line 246
    .line 247
    aput-object v3, v0, v2

    .line 248
    .line 249
    const-string p1, "Message length inaccurate %s != %s"

    .line 250
    .line 251
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 256
    .line 257
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 262
    .line 263
    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 268
    .line 269
    int-to-long v5, p1

    .line 270
    invoke-virtual {v0, v5, v6}, Lcom/google/android/libraries/places/internal/zzbqo;->zzk(J)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 274
    .line 275
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    .line 276
    .line 277
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbqo;->zzl(J)V

    .line 278
    .line 279
    .line 280
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzh:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 281
    .line 282
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzk:I

    .line 283
    .line 284
    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzl:J

    .line 285
    .line 286
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbqo;->zzj(IJJ)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :goto_4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 291
    .line 292
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 301
    .line 302
    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :goto_5
    throw p1

    .line 307
    :goto_6
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 308
    .line 309
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 318
    .line 319
    invoke-direct {v0, p1, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    const-string v0, "Framer already closed"

    .line 326
    .line 327
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p1
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbmw;->zzi:Z

    .line 2
    .line 3
    return v0
.end method

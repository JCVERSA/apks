.class final Lcom/google/android/libraries/places/internal/zzbtx;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbws;


# instance fields
.field zza:I

.field zzb:B

.field zzc:I

.field zzd:I

.field zze:S

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbwd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbwd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x0

    .line 3
    :goto_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 10
    .line 11
    iget-short v3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zze:S

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    invoke-interface {v0, v3, v4}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    .line 15
    .line 16
    .line 17
    iput-short p3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zze:S

    .line 18
    .line 19
    iget-byte v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0x4

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbub;->zzb(Lcom/google/android/libraries/places/internal/zzbwd;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    .line 36
    .line 37
    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zza:I

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 40
    .line 41
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    and-int/lit16 v1, v1, 0xff

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 48
    .line 49
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    and-int/lit16 v2, v2, 0xff

    .line 54
    .line 55
    int-to-byte v2, v2

    .line 56
    iput-byte v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    int-to-byte v1, v1

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    .line 76
    .line 77
    iget v5, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zza:I

    .line 78
    .line 79
    iget-byte v6, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    .line 80
    .line 81
    invoke-static {p2, v4, v5, v1, v6}, Lcom/google/android/libraries/places/internal/zzbty;->zza(ZIIBB)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v5, "io.grpc.okhttp.internal.framed.Http2$ContinuationSource"

    .line 86
    .line 87
    const-string v6, "readContinuationHeader"

    .line 88
    .line 89
    invoke-virtual {v2, v3, v5, v6, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 93
    .line 94
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const v3, 0x7fffffff

    .line 99
    .line 100
    .line 101
    and-int/2addr v2, v3

    .line 102
    iput v2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    .line 103
    .line 104
    const/16 v3, 0x9

    .line 105
    .line 106
    if-ne v1, v3, :cond_3

    .line 107
    .line 108
    if-ne v2, v0, :cond_2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-array p1, p3, [Ljava/lang/Object;

    .line 112
    .line 113
    const-string p2, "TYPE_CONTINUATION streamId changed"

    .line 114
    .line 115
    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    throw p1

    .line 120
    :cond_3
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-array p2, p2, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object p1, p2, p3

    .line 127
    .line 128
    const-string p1, "%s != TYPE_CONTINUATION"

    .line 129
    .line 130
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    throw p1

    .line 135
    :cond_4
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzf:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 136
    .line 137
    const-wide/16 v3, 0x2000

    .line 138
    .line 139
    int-to-long v5, v0

    .line 140
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    invoke-interface {p2, p1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 145
    .line 146
    .line 147
    move-result-wide p1

    .line 148
    cmp-long p3, p1, v1

    .line 149
    .line 150
    if-eqz p3, :cond_5

    .line 151
    .line 152
    iget p3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    .line 153
    .line 154
    long-to-int v0, p1

    .line 155
    sub-int/2addr p3, v0

    .line 156
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    .line 157
    .line 158
    return-wide p1

    .line 159
    :cond_5
    :goto_1
    return-wide v1
.end method

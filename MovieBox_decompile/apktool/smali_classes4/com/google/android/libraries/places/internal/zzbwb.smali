.class public final Lcom/google/android/libraries/places/internal/zzbwb;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;
.implements Lcom/google/android/libraries/places/internal/zzbwd;
.implements Lcom/google/android/libraries/places/internal/zzbwc;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public zza:Lcom/google/android/libraries/places/internal/zzbwn;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private zzb:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwn;->zzc()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 25
    .line 26
    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 27
    .line 28
    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 31
    .line 32
    :goto_0
    if-eq v3, v1, :cond_1

    .line 33
    .line 34
    iget-object v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 35
    .line 36
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbwn;->zzc()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 53
    .line 54
    iput-wide v1, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 55
    .line 56
    :goto_1
    return-object v0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    instance-of v3, v1, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    :goto_0
    move v2, v4

    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    iget-wide v5, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 21
    .line 22
    iget-wide v7, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 23
    .line 24
    cmp-long v3, v5, v7

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-wide/16 v7, 0x0

    .line 30
    .line 31
    cmp-long v3, v5, v7

    .line 32
    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 47
    .line 48
    iget v6, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 49
    .line 50
    move-wide v9, v7

    .line 51
    :goto_1
    iget-wide v11, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 52
    .line 53
    cmp-long v11, v9, v11

    .line 54
    .line 55
    if-gez v11, :cond_8

    .line 56
    .line 57
    iget v11, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 58
    .line 59
    sub-int/2addr v11, v5

    .line 60
    iget v12, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 61
    .line 62
    sub-int/2addr v12, v6

    .line 63
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    int-to-long v11, v11

    .line 68
    move-wide v13, v7

    .line 69
    :goto_2
    cmp-long v15, v13, v11

    .line 70
    .line 71
    if-gez v15, :cond_5

    .line 72
    .line 73
    iget-object v15, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 74
    .line 75
    add-int/lit8 v16, v5, 0x1

    .line 76
    .line 77
    aget-byte v5, v15, v5

    .line 78
    .line 79
    iget-object v15, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 80
    .line 81
    add-int/lit8 v17, v6, 0x1

    .line 82
    .line 83
    aget-byte v6, v15, v6

    .line 84
    .line 85
    if-eq v5, v6, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const-wide/16 v5, 0x1

    .line 89
    .line 90
    add-long/2addr v13, v5

    .line 91
    move/from16 v5, v16

    .line 92
    .line 93
    move/from16 v6, v17

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget v13, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 97
    .line 98
    if-ne v5, v13, :cond_6

    .line 99
    .line 100
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 101
    .line 102
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 106
    .line 107
    :cond_6
    iget v13, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 108
    .line 109
    if-ne v6, v13, :cond_7

    .line 110
    .line 111
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 112
    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget v6, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 117
    .line 118
    :cond_7
    add-long/2addr v9, v11

    .line 119
    goto :goto_1

    .line 120
    :cond_8
    :goto_3
    return v2
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 9
    .line 10
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 11
    .line 12
    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 17
    .line 18
    aget-byte v4, v4, v2

    .line 19
    .line 20
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    move v0, v1

    .line 34
    :goto_1
    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 17
    .line 18
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 26
    .line 27
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 28
    .line 29
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    iget p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 33
    .line 34
    add-int/2addr p1, v1

    .line 35
    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 36
    .line 37
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 38
    .line 39
    int-to-long v4, v1

    .line 40
    sub-long/2addr v2, v4

    .line 41
    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 42
    .line 43
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 44
    .line 45
    if-ne p1, v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzz()Lcom/google/android/libraries/places/internal/zzbwf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    if-lez v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 19
    .line 20
    rsub-int v3, v3, 0x2000

    .line 21
    .line 22
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 27
    .line 28
    iget v5, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 29
    .line 30
    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    sub-int/2addr v1, v3

    .line 34
    iget v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 35
    .line 36
    add-int/2addr v4, v3

    .line 37
    iput v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 41
    .line 42
    int-to-long v3, v0

    .line 43
    add-long/2addr v1, v3

    .line 44
    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 45
    .line 46
    return v0
.end method

.method public final zzA(I)Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    int-to-long v4, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v2, p1, :cond_2

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 25
    .line 26
    iget v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 27
    .line 28
    if-eq v4, v5, :cond_1

    .line 29
    .line 30
    sub-int/2addr v4, v5

    .line 31
    add-int/2addr v2, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 38
    .line 39
    const-string v0, "s.limit == s.pos"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    new-array v0, v3, [[B

    .line 46
    .line 47
    add-int v2, v3, v3

    .line 48
    .line 49
    new-array v2, v2, [I

    .line 50
    .line 51
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    move v4, v1

    .line 55
    :goto_1
    if-ge v1, p1, :cond_3

    .line 56
    .line 57
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v6, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 61
    .line 62
    aput-object v6, v0, v4

    .line 63
    .line 64
    iget v6, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 65
    .line 66
    iget v7, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 67
    .line 68
    sub-int/2addr v6, v7

    .line 69
    add-int/2addr v1, v6

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    aput v6, v2, v4

    .line 75
    .line 76
    add-int v6, v4, v3

    .line 77
    .line 78
    iget v7, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 79
    .line 80
    aput v7, v2, v6

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    iput-boolean v6, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    .line 84
    .line 85
    add-int/2addr v4, v6

    .line 86
    iget-object v5, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbwp;

    .line 90
    .line 91
    invoke-direct {p1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbwp;-><init>([[B[I)V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-object p1
.end method

.method public final zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 2

    .line 1
    if-lez p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 12
    .line 13
    iput-object p1, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 14
    .line 15
    iput-object p1, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 27
    .line 28
    add-int/2addr v1, p1

    .line 29
    const/16 p1, 0x2000

    .line 30
    .line 31
    if-gt v1, p1, :cond_2

    .line 32
    .line 33
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p1, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 45
    .line 46
    .line 47
    :goto_1
    return-object p1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "unexpected capacity"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final zzC()S
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 15
    .line 16
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 17
    .line 18
    sub-int v3, v2, v1

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-ge v3, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit16 v1, v1, 0xff

    .line 36
    .line 37
    or-int/2addr v0, v1

    .line 38
    :goto_0
    int-to-short v0, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 41
    .line 42
    add-int/lit8 v5, v1, 0x1

    .line 43
    .line 44
    aget-byte v6, v3, v1

    .line 45
    .line 46
    and-int/lit16 v6, v6, 0xff

    .line 47
    .line 48
    shl-int/lit8 v6, v6, 0x8

    .line 49
    .line 50
    aget-byte v3, v3, v5

    .line 51
    .line 52
    and-int/lit16 v3, v3, 0xff

    .line 53
    .line 54
    iget-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 55
    .line 56
    const-wide/16 v9, -0x2

    .line 57
    .line 58
    add-long/2addr v7, v9

    .line 59
    iput-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 60
    .line 61
    add-int/2addr v1, v4

    .line 62
    if-ne v1, v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 75
    .line 76
    :goto_1
    or-int v0, v6, v3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_2
    return v0

    .line 80
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final zzD(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzE(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    return-void
.end method

.method public final zzF(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 12
    .line 13
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 23
    .line 24
    int-to-long v4, v1

    .line 25
    sub-long/2addr v2, v4

    .line 26
    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 27
    .line 28
    sub-long/2addr p1, v4

    .line 29
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iput v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 33
    .line 34
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 35
    .line 36
    if-ne v2, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    return-void
.end method

.method public final zzG()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final zzH(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_3

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 15
    .line 16
    cmp-long v0, v0, p1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-ltz v0, :cond_2

    .line 20
    .line 21
    long-to-int p1, p1

    .line 22
    new-array p2, p1, [B

    .line 23
    .line 24
    const-string v0, "sink"

    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-ge v0, p1, :cond_1

    .line 31
    .line 32
    sub-int v2, p1, v0

    .line 33
    .line 34
    invoke-virtual {p0, p2, v0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzd([BII)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, -0x1

    .line 39
    if-eq v2, v3, :cond_0

    .line 40
    .line 41
    add-int/2addr v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    return-object p2

    .line 50
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 51
    .line 52
    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "byteCount: "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p2
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 4

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_2

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    cmp-long v0, p2, v2

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    move-wide p2, v2

    .line 23
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    .line 24
    .line 25
    .line 26
    return-wide p2

    .line 27
    :cond_1
    const-wide/16 p1, -0x1

    .line 28
    .line 29
    return-wide p1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "byteCount < 0: "

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2
.end method

.method public final zzb(J)B
    .locals 6
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    const-wide/16 v4, 0x1

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 14
    .line 15
    sub-long v3, v1, p1

    .line 16
    .line 17
    cmp-long v3, v3, p1

    .line 18
    .line 19
    if-gez v3, :cond_1

    .line 20
    .line 21
    :goto_0
    cmp-long v3, v1, p1

    .line 22
    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 31
    .line 32
    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    int-to-long v3, v3

    .line 36
    sub-long/2addr v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 42
    .line 43
    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 44
    .line 45
    int-to-long v4, v0

    .line 46
    add-long/2addr v4, p1

    .line 47
    sub-long/2addr v4, v1

    .line 48
    long-to-int p1, v4

    .line 49
    aget-byte p1, v3, p1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const-wide/16 v1, 0x0

    .line 53
    .line 54
    :goto_1
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 55
    .line 56
    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 57
    .line 58
    sub-int/2addr v3, v4

    .line 59
    int-to-long v3, v3

    .line 60
    add-long/2addr v3, v1

    .line 61
    cmp-long v5, v3, p1

    .line 62
    .line 63
    if-gtz v5, :cond_2

    .line 64
    .line 65
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-wide v1, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 76
    .line 77
    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 78
    .line 79
    int-to-long v4, v0

    .line 80
    add-long/2addr v4, p1

    .line 81
    sub-long/2addr v4, v1

    .line 82
    long-to-int p1, v4

    .line 83
    aget-byte p1, v3, p1

    .line 84
    .line 85
    :goto_2
    return p1

    .line 86
    :cond_3
    const/4 p1, 0x0

    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public final zzc()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 15
    .line 16
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 17
    .line 18
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 19
    .line 20
    add-int/lit8 v4, v1, 0x1

    .line 21
    .line 22
    aget-byte v1, v3, v1

    .line 23
    .line 24
    iget-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 25
    .line 26
    const-wide/16 v7, -0x1

    .line 27
    .line 28
    add-long/2addr v5, v7

    .line 29
    iput-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 30
    .line 31
    if-ne v4, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 44
    .line 45
    :goto_0
    return v1

    .line 46
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public final zzd([BII)I
    .locals 7

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    int-to-long v1, v0

    .line 8
    int-to-long v3, p2

    .line 9
    int-to-long v5, p3

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 20
    .line 21
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 22
    .line 23
    sub-int/2addr v1, v2

    .line 24
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 29
    .line 30
    add-int v2, v1, p3

    .line 31
    .line 32
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 33
    .line 34
    invoke-static {v3, p1, p2, v1, v2}, Lkotlin/collections/ArraysKt;->h([B[BIII)[B

    .line 35
    .line 36
    .line 37
    iget p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 38
    .line 39
    add-int/2addr p1, p3

    .line 40
    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 41
    .line 42
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 43
    .line 44
    int-to-long v3, p3

    .line 45
    sub-long/2addr v1, v3

    .line 46
    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 47
    .line 48
    iget p2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 49
    .line 50
    if-eq p1, p2, :cond_1

    .line 51
    .line 52
    move p1, p3

    .line 53
    :goto_0
    return p1

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 61
    .line 62
    .line 63
    return p3
.end method

.method public final zze()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 15
    .line 16
    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    cmp-long v2, v5, v2

    .line 22
    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x18

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    shl-int/lit8 v1, v1, 0x10

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    and-int/lit16 v2, v2, 0xff

    .line 46
    .line 47
    shl-int/lit8 v2, v2, 0x8

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    and-int/lit16 v3, v3, 0xff

    .line 54
    .line 55
    or-int/2addr v0, v1

    .line 56
    or-int/2addr v0, v2

    .line 57
    or-int/2addr v0, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 60
    .line 61
    add-int/lit8 v3, v1, 0x1

    .line 62
    .line 63
    aget-byte v5, v2, v1

    .line 64
    .line 65
    and-int/lit16 v5, v5, 0xff

    .line 66
    .line 67
    shl-int/lit8 v5, v5, 0x18

    .line 68
    .line 69
    aget-byte v3, v2, v3

    .line 70
    .line 71
    and-int/lit16 v3, v3, 0xff

    .line 72
    .line 73
    shl-int/lit8 v3, v3, 0x10

    .line 74
    .line 75
    add-int/lit8 v6, v1, 0x2

    .line 76
    .line 77
    aget-byte v6, v2, v6

    .line 78
    .line 79
    and-int/lit16 v6, v6, 0xff

    .line 80
    .line 81
    shl-int/lit8 v6, v6, 0x8

    .line 82
    .line 83
    add-int/lit8 v7, v1, 0x3

    .line 84
    .line 85
    aget-byte v2, v2, v7

    .line 86
    .line 87
    and-int/lit16 v2, v2, 0xff

    .line 88
    .line 89
    iget-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 90
    .line 91
    const-wide/16 v9, -0x4

    .line 92
    .line 93
    add-long/2addr v7, v9

    .line 94
    iput-wide v7, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 95
    .line 96
    or-int/2addr v3, v5

    .line 97
    or-int/2addr v3, v6

    .line 98
    or-int/2addr v2, v3

    .line 99
    add-int/lit8 v1, v1, 0x4

    .line 100
    .line 101
    if-ne v1, v4, :cond_1

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 114
    .line 115
    :goto_0
    move v0, v2

    .line 116
    :goto_1
    return v0

    .line 117
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method public final zzf()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 21
    .line 22
    const/16 v4, 0x2000

    .line 23
    .line 24
    if-ge v3, v4, :cond_1

    .line 25
    .line 26
    iget-boolean v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    iget v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 31
    .line 32
    sub-int/2addr v3, v2

    .line 33
    int-to-long v2, v3

    .line 34
    sub-long/2addr v0, v2

    .line 35
    :cond_1
    move-wide v2, v0

    .line 36
    :goto_0
    return-wide v2
.end method

.method public final zzg()J
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_4

    .line 11
    .line 12
    const-wide/32 v1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    cmp-long v1, p1, v1

    .line 16
    .line 17
    if-gtz v1, :cond_4

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 20
    .line 21
    cmp-long v1, v1, p1

    .line 22
    .line 23
    if-ltz v1, :cond_3

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string p1, ""

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 36
    .line 37
    int-to-long v2, v1

    .line 38
    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 39
    .line 40
    int-to-long v5, v4

    .line 41
    add-long/2addr v2, p1

    .line 42
    cmp-long v2, v2, v5

    .line 43
    .line 44
    if-lez v2, :cond_1

    .line 45
    .line 46
    new-instance v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzH(J)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 59
    .line 60
    long-to-int v5, p1

    .line 61
    invoke-direct {v2, v3, v1, v5, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    add-int/2addr v1, v5

    .line 65
    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 66
    .line 67
    iget-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 68
    .line 69
    sub-long/2addr v5, p1

    .line 70
    iput-wide v5, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 71
    .line 72
    if-ne v1, v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-object v2

    .line 84
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v0, "byteCount: "

    .line 96
    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p2
.end method

.method public final zzi()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    sget-object v2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzj(J)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 4
    .line 5
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-gez v5, :cond_0

    .line 13
    .line 14
    move-wide v5, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-wide v5, v3

    .line 17
    :goto_0
    const-wide/16 v7, 0x0

    .line 18
    .line 19
    cmp-long v9, v5, v7

    .line 20
    .line 21
    if-nez v9, :cond_2

    .line 22
    .line 23
    :cond_1
    :goto_1
    const-wide/16 v1, -0x1

    .line 24
    .line 25
    const-wide/16 v3, -0x1

    .line 26
    .line 27
    goto/16 :goto_9

    .line 28
    .line 29
    :cond_2
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 30
    .line 31
    if-nez v9, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    cmp-long v12, v1, v7

    .line 35
    .line 36
    const/16 v13, 0xa

    .line 37
    .line 38
    if-gez v12, :cond_7

    .line 39
    .line 40
    :goto_2
    cmp-long v12, v1, v7

    .line 41
    .line 42
    if-lez v12, :cond_4

    .line 43
    .line 44
    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 45
    .line 46
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget v12, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 50
    .line 51
    iget v14, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 52
    .line 53
    sub-int/2addr v12, v14

    .line 54
    int-to-long v14, v12

    .line 55
    sub-long/2addr v1, v14

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move-wide v14, v7

    .line 58
    :goto_3
    cmp-long v12, v1, v5

    .line 59
    .line 60
    if-gez v12, :cond_1

    .line 61
    .line 62
    iget-object v12, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 63
    .line 64
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 65
    .line 66
    int-to-long v3, v3

    .line 67
    iget v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 68
    .line 69
    int-to-long v10, v10

    .line 70
    add-long/2addr v10, v5

    .line 71
    sub-long/2addr v10, v1

    .line 72
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    long-to-int v3, v3

    .line 77
    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 78
    .line 79
    int-to-long v10, v4

    .line 80
    add-long/2addr v10, v14

    .line 81
    sub-long/2addr v10, v1

    .line 82
    long-to-int v4, v10

    .line 83
    :goto_4
    if-ge v4, v3, :cond_6

    .line 84
    .line 85
    aget-byte v10, v12, v4

    .line 86
    .line 87
    if-ne v10, v13, :cond_5

    .line 88
    .line 89
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 90
    .line 91
    sub-int/2addr v4, v3

    .line 92
    int-to-long v3, v4

    .line 93
    :goto_5
    add-long/2addr v3, v1

    .line 94
    const-wide/16 v1, -0x1

    .line 95
    .line 96
    goto :goto_9

    .line 97
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_6
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 101
    .line 102
    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 103
    .line 104
    sub-int/2addr v3, v4

    .line 105
    int-to-long v3, v3

    .line 106
    add-long v14, v1, v3

    .line 107
    .line 108
    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 109
    .line 110
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-wide v1, v14

    .line 114
    const-wide v3, 0x7fffffffffffffffL

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    move-wide v1, v7

    .line 121
    :goto_6
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 122
    .line 123
    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 124
    .line 125
    sub-int/2addr v3, v4

    .line 126
    int-to-long v3, v3

    .line 127
    add-long/2addr v3, v1

    .line 128
    cmp-long v10, v3, v7

    .line 129
    .line 130
    if-gtz v10, :cond_8

    .line 131
    .line 132
    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 133
    .line 134
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    move-wide v1, v3

    .line 138
    goto :goto_6

    .line 139
    :cond_8
    move-wide v3, v7

    .line 140
    :goto_7
    cmp-long v10, v1, v5

    .line 141
    .line 142
    if-gez v10, :cond_1

    .line 143
    .line 144
    iget-object v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 145
    .line 146
    iget v11, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 147
    .line 148
    int-to-long v11, v11

    .line 149
    iget v14, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 150
    .line 151
    int-to-long v14, v14

    .line 152
    add-long/2addr v14, v5

    .line 153
    sub-long/2addr v14, v1

    .line 154
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v11

    .line 158
    long-to-int v11, v11

    .line 159
    iget v12, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 160
    .line 161
    int-to-long v14, v12

    .line 162
    add-long/2addr v14, v3

    .line 163
    sub-long/2addr v14, v1

    .line 164
    long-to-int v3, v14

    .line 165
    :goto_8
    if-ge v3, v11, :cond_a

    .line 166
    .line 167
    aget-byte v4, v10, v3

    .line 168
    .line 169
    if-ne v4, v13, :cond_9

    .line 170
    .line 171
    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 172
    .line 173
    sub-int/2addr v3, v4

    .line 174
    int-to-long v3, v3

    .line 175
    goto :goto_5

    .line 176
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_a
    iget v3, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 180
    .line 181
    iget v4, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 182
    .line 183
    sub-int/2addr v3, v4

    .line 184
    int-to-long v3, v3

    .line 185
    add-long/2addr v3, v1

    .line 186
    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 187
    .line 188
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    move-wide v1, v3

    .line 192
    goto :goto_7

    .line 193
    :goto_9
    cmp-long v5, v3, v1

    .line 194
    .line 195
    if-eqz v5, :cond_c

    .line 196
    .line 197
    sget v5, Lcom/google/android/libraries/places/internal/zzbwx;->zza:I

    .line 198
    .line 199
    const-string v5, "<this>"

    .line 200
    .line 201
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    cmp-long v5, v3, v7

    .line 205
    .line 206
    if-lez v5, :cond_b

    .line 207
    .line 208
    add-long v10, v3, v1

    .line 209
    .line 210
    invoke-virtual {v0, v10, v11}, Lcom/google/android/libraries/places/internal/zzbwb;->zzb(J)B

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    const/16 v2, 0xd

    .line 215
    .line 216
    if-ne v1, v2, :cond_b

    .line 217
    .line 218
    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 219
    .line 220
    invoke-virtual {v0, v10, v11, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-wide/16 v2, 0x2

    .line 225
    .line 226
    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    .line 227
    .line 228
    .line 229
    goto :goto_a

    .line 230
    :cond_b
    sget-object v1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 231
    .line 232
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzh(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const-wide/16 v2, 0x1

    .line 237
    .line 238
    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    .line 239
    .line 240
    .line 241
    :goto_a
    return-object v1

    .line 242
    :cond_c
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 243
    .line 244
    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 245
    .line 246
    .line 247
    const-wide/16 v2, 0x20

    .line 248
    .line 249
    iget-wide v4, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 250
    .line 251
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 252
    .line 253
    .line 254
    move-result-wide v2

    .line 255
    const-string v4, "out"

    .line 256
    .line 257
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-wide v9, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 261
    .line 262
    const-wide/16 v11, 0x0

    .line 263
    .line 264
    move-wide v13, v2

    .line 265
    invoke-static/range {v9 .. v14}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 266
    .line 267
    .line 268
    cmp-long v4, v2, v7

    .line 269
    .line 270
    if-eqz v4, :cond_f

    .line 271
    .line 272
    iget-wide v4, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 273
    .line 274
    add-long/2addr v4, v2

    .line 275
    iput-wide v4, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 276
    .line 277
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 278
    .line 279
    move-wide v5, v7

    .line 280
    :goto_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    iget v9, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 284
    .line 285
    iget v10, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 286
    .line 287
    sub-int/2addr v9, v10

    .line 288
    int-to-long v9, v9

    .line 289
    cmp-long v11, v5, v9

    .line 290
    .line 291
    if-ltz v11, :cond_d

    .line 292
    .line 293
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 294
    .line 295
    sub-long/2addr v5, v9

    .line 296
    goto :goto_b

    .line 297
    :cond_d
    :goto_c
    cmp-long v9, v2, v7

    .line 298
    .line 299
    if-lez v9, :cond_f

    .line 300
    .line 301
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbwn;->zzc()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    iget v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 309
    .line 310
    long-to-int v5, v5

    .line 311
    add-int/2addr v10, v5

    .line 312
    iput v10, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 313
    .line 314
    iget v5, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 315
    .line 316
    long-to-int v6, v2

    .line 317
    add-int/2addr v10, v6

    .line 318
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    iput v5, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 323
    .line 324
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 325
    .line 326
    if-nez v5, :cond_e

    .line 327
    .line 328
    iput-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 329
    .line 330
    iput-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 331
    .line 332
    iput-object v9, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iget-object v5, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 339
    .line 340
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5, v9}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 344
    .line 345
    .line 346
    :goto_d
    iget v5, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 347
    .line 348
    iget v6, v9, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 349
    .line 350
    sub-int/2addr v5, v6

    .line 351
    int-to-long v5, v5

    .line 352
    sub-long/2addr v2, v5

    .line 353
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 354
    .line 355
    move-wide v5, v7

    .line 356
    goto :goto_c

    .line 357
    :cond_f
    new-instance v2, Ljava/io/EOFException;

    .line 358
    .line 359
    iget-wide v3, v0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 360
    .line 361
    const-wide v5, 0x7fffffffffffffffL

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 367
    .line 368
    .line 369
    move-result-wide v3

    .line 370
    iget-wide v5, v1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 371
    .line 372
    invoke-virtual {v1, v5, v6}, Lcom/google/android/libraries/places/internal/zzbwb;->zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v6, "\\n not found: limit="

    .line 386
    .line 387
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v3, " content="

    .line 394
    .line 395
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v1, "\u2026"

    .line 402
    .line 403
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v2
.end method

.method public final zzk(Lcom/google/android/libraries/places/internal/zzbwf;)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 2

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzj(Lcom/google/android/libraries/places/internal/zzbwb;II)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final zzl([BII)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 9

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    int-to-long v1, v0

    .line 8
    int-to-long v3, p2

    .line 9
    int-to-long v7, p3

    .line 10
    move-wide v5, v7

    .line 11
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 12
    .line 13
    .line 14
    move v0, p2

    .line 15
    :goto_0
    add-int v1, p2, p3

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 25
    .line 26
    rsub-int v3, v3, 0x2000

    .line 27
    .line 28
    sub-int/2addr v1, v0

    .line 29
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 34
    .line 35
    iget v4, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 36
    .line 37
    add-int v5, v0, v1

    .line 38
    .line 39
    invoke-static {p1, v3, v4, v0, v5}, Lkotlin/collections/ArraysKt;->h([B[BIII)[B

    .line 40
    .line 41
    .line 42
    iget v0, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    iput v0, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 46
    .line 47
    move v0, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 50
    .line 51
    add-long/2addr p1, v7

    .line 52
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 53
    .line 54
    return-object p0
.end method

.method public final zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 7
    .line 8
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 23
    .line 24
    return-object p0
.end method

.method public final zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    .locals 7

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eq p1, p0, :cond_a

    .line 7
    .line 8
    iget-wide v1, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-wide v5, p2

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 14
    .line 15
    .line 16
    :goto_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p2, v0

    .line 19
    .line 20
    if-lez v0, :cond_9

    .line 21
    .line 22
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 28
    .line 29
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    int-to-long v0, v0

    .line 38
    cmp-long v0, p2, v0

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    if-gez v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_1
    long-to-int v2, p2

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-boolean v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 62
    .line 63
    int-to-long v3, v3

    .line 64
    add-long/2addr v3, p2

    .line 65
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    move v5, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    iget v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 72
    .line 73
    :goto_2
    int-to-long v5, v5

    .line 74
    sub-long/2addr v3, v5

    .line 75
    const-wide/16 v5, 0x2000

    .line 76
    .line 77
    cmp-long v3, v3, v5

    .line 78
    .line 79
    if-lez v3, :cond_2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 83
    .line 84
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzbwn;->zze(Lcom/google/android/libraries/places/internal/zzbwn;I)V

    .line 88
    .line 89
    .line 90
    iget-wide v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 91
    .line 92
    sub-long/2addr v0, p2

    .line 93
    iput-wide v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 94
    .line 95
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 96
    .line 97
    add-long/2addr v0, p2

    .line 98
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbwn;->zzd(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 111
    .line 112
    :cond_4
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 118
    .line 119
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 120
    .line 121
    sub-int/2addr v2, v3

    .line 122
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iput-object v3, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 129
    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 133
    .line 134
    iput-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 135
    .line 136
    iput-object v0, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 143
    .line 144
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 148
    .line 149
    .line 150
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 151
    .line 152
    if-eq v3, v0, :cond_8

    .line 153
    .line 154
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-boolean v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    .line 158
    .line 159
    if-eqz v3, :cond_7

    .line 160
    .line 161
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 162
    .line 163
    iget v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 164
    .line 165
    sub-int/2addr v3, v4

    .line 166
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 167
    .line 168
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget v4, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 172
    .line 173
    rsub-int v4, v4, 0x2000

    .line 174
    .line 175
    iget-object v5, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 176
    .line 177
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iget-boolean v5, v5, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    .line 181
    .line 182
    if-eqz v5, :cond_6

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 186
    .line 187
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget v1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 191
    .line 192
    :goto_4
    add-int/2addr v4, v1

    .line 193
    if-gt v3, v4, :cond_7

    .line 194
    .line 195
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 196
    .line 197
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzbwn;->zze(Lcom/google/android/libraries/places/internal/zzbwn;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_5
    int-to-long v0, v2

    .line 210
    iget-wide v2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 211
    .line 212
    sub-long/2addr v2, v0

    .line 213
    iput-wide v2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 214
    .line 215
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 216
    .line 217
    add-long/2addr v2, v0

    .line 218
    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 219
    .line 220
    sub-long/2addr p2, v0

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string p2, "cannot compact"

    .line 226
    .line 227
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :cond_9
    return-void

    .line 232
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 233
    .line 234
    const-string p2, "source == this"

    .line 235
    .line 236
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1
.end method

.method public final zzo(J)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    ushr-long v1, p1, v0

    .line 15
    .line 16
    or-long/2addr v1, p1

    .line 17
    const/4 v3, 0x2

    .line 18
    ushr-long v4, v1, v3

    .line 19
    .line 20
    or-long/2addr v1, v4

    .line 21
    const/4 v4, 0x4

    .line 22
    ushr-long v5, v1, v4

    .line 23
    .line 24
    or-long/2addr v1, v5

    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    ushr-long v6, v1, v5

    .line 28
    .line 29
    or-long/2addr v1, v6

    .line 30
    ushr-long v6, v1, v0

    .line 31
    .line 32
    const-wide v8, 0x5555555555555555L    # 1.1945305291614955E103

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v6, v8

    .line 38
    sub-long/2addr v1, v6

    .line 39
    ushr-long v6, v1, v3

    .line 40
    .line 41
    const-wide v8, 0x3333333333333333L    # 4.667261458395856E-62

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v6, v8

    .line 47
    and-long v0, v1, v8

    .line 48
    .line 49
    add-long/2addr v6, v0

    .line 50
    ushr-long v0, v6, v4

    .line 51
    .line 52
    add-long/2addr v0, v6

    .line 53
    const-wide v6, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    and-long/2addr v0, v6

    .line 59
    ushr-long v5, v0, v5

    .line 60
    .line 61
    add-long/2addr v0, v5

    .line 62
    const/16 v2, 0x10

    .line 63
    .line 64
    ushr-long v5, v0, v2

    .line 65
    .line 66
    add-long/2addr v0, v5

    .line 67
    const/16 v2, 0x20

    .line 68
    .line 69
    ushr-long v5, v0, v2

    .line 70
    .line 71
    const-wide/16 v7, 0x3f

    .line 72
    .line 73
    and-long/2addr v0, v7

    .line 74
    and-long/2addr v5, v7

    .line 75
    add-long/2addr v0, v5

    .line 76
    const-wide/16 v5, 0x3

    .line 77
    .line 78
    add-long/2addr v0, v5

    .line 79
    shr-long/2addr v0, v3

    .line 80
    long-to-int v0, v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 86
    .line 87
    iget v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 88
    .line 89
    add-int v5, v3, v0

    .line 90
    .line 91
    :goto_0
    add-int/lit8 v5, v5, -0x1

    .line 92
    .line 93
    if-lt v5, v3, :cond_1

    .line 94
    .line 95
    const-wide/16 v6, 0xf

    .line 96
    .line 97
    and-long/2addr v6, p1

    .line 98
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwx;->zza()[B

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    long-to-int v6, v6

    .line 103
    aget-byte v6, v8, v6

    .line 104
    .line 105
    aput-byte v6, v2, v5

    .line 106
    .line 107
    ushr-long/2addr p1, v4

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iget p1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 110
    .line 111
    add-int/2addr p1, v0

    .line 112
    iput p1, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 113
    .line 114
    iget-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 115
    .line 116
    int-to-long v0, v0

    .line 117
    add-long/2addr p1, v0

    .line 118
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 119
    .line 120
    :goto_1
    return-object p0
.end method

.method public final zzp(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 7
    .line 8
    iget v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    shr-int/lit8 v5, p1, 0x18

    .line 13
    .line 14
    int-to-byte v5, v5

    .line 15
    aput-byte v5, v2, v3

    .line 16
    .line 17
    ushr-int/lit8 v5, p1, 0x10

    .line 18
    .line 19
    and-int/lit16 v5, v5, 0xff

    .line 20
    .line 21
    int-to-byte v5, v5

    .line 22
    aput-byte v5, v2, v4

    .line 23
    .line 24
    ushr-int/lit8 v4, p1, 0x8

    .line 25
    .line 26
    and-int/lit16 v4, v4, 0xff

    .line 27
    .line 28
    add-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    int-to-byte v4, v4

    .line 31
    aput-byte v4, v2, v5

    .line 32
    .line 33
    and-int/lit16 p1, p1, 0xff

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x3

    .line 36
    .line 37
    int-to-byte p1, p1

    .line 38
    aput-byte p1, v2, v4

    .line 39
    .line 40
    add-int/2addr v3, v0

    .line 41
    iput v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 42
    .line 43
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 44
    .line 45
    const-wide/16 v2, 0x4

    .line 46
    .line 47
    add-long/2addr v0, v2

    .line 48
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 49
    .line 50
    return-object p0
.end method

.method public final zzq(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 7
    .line 8
    iget v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    and-int/lit16 p1, p1, 0xff

    .line 20
    .line 21
    int-to-byte p1, p1

    .line 22
    aput-byte p1, v2, v4

    .line 23
    .line 24
    add-int/2addr v3, v0

    .line 25
    iput v3, v1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 28
    .line 29
    const-wide/16 v2, 0x2

    .line 30
    .line 31
    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 33
    .line 34
    return-object p0
.end method

.method public final zzr(Ljava/io/OutputStream;J)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-wide v5, p2

    .line 11
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 15
    .line 16
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long v1, p2, v1

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 26
    .line 27
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    int-to-long v1, v1

    .line 31
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    long-to-int v1, v1

    .line 36
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 37
    .line 38
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 39
    .line 40
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    .line 42
    .line 43
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 44
    .line 45
    add-int/2addr v2, v1

    .line 46
    iput v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 47
    .line 48
    iget-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 49
    .line 50
    int-to-long v5, v1

    .line 51
    sub-long/2addr v3, v5

    .line 52
    iput-wide v3, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 53
    .line 54
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 55
    .line 56
    sub-long/2addr p2, v5

    .line 57
    if-ne v2, v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 66
    .line 67
    .line 68
    move-object v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-object p0
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 2

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzt(Ljava/lang/String;II)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final zzt(Ljava/lang/String;II)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 10

    .line 1
    const-string p2, "string"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p3, :cond_9

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-gt p3, p2, :cond_8

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    move v0, p2

    .line 16
    :goto_0
    if-ge v0, p3, :cond_7

    .line 17
    .line 18
    add-int/lit8 v1, v0, 0x1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x80

    .line 25
    .line 26
    if-ge v2, v3, :cond_1

    .line 27
    .line 28
    int-to-byte v2, v2

    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v5, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 35
    .line 36
    iget v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 37
    .line 38
    sub-int/2addr v6, v0

    .line 39
    rsub-int v7, v6, 0x2000

    .line 40
    .line 41
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    add-int/2addr v0, v6

    .line 46
    aput-byte v2, v5, v0

    .line 47
    .line 48
    move v0, v1

    .line 49
    :goto_1
    if-ge v0, v7, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ge v1, v3, :cond_0

    .line 56
    .line 57
    add-int/lit8 v2, v0, 0x1

    .line 58
    .line 59
    add-int/2addr v0, v6

    .line 60
    int-to-byte v1, v1

    .line 61
    aput-byte v1, v5, v0

    .line 62
    .line 63
    move v0, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    add-int/2addr v6, v0

    .line 66
    iget v1, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 67
    .line 68
    sub-int/2addr v6, v1

    .line 69
    add-int/2addr v1, v6

    .line 70
    iput v1, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 71
    .line 72
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 73
    .line 74
    int-to-long v3, v6

    .line 75
    add-long/2addr v1, v3

    .line 76
    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/16 v4, 0x800

    .line 80
    .line 81
    if-ge v2, v4, :cond_2

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v5, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 89
    .line 90
    iget v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 91
    .line 92
    shr-int/lit8 v7, v2, 0x6

    .line 93
    .line 94
    or-int/lit16 v7, v7, 0xc0

    .line 95
    .line 96
    int-to-byte v7, v7

    .line 97
    aput-byte v7, v5, v6

    .line 98
    .line 99
    add-int/lit8 v7, v6, 0x1

    .line 100
    .line 101
    and-int/lit8 v2, v2, 0x3f

    .line 102
    .line 103
    or-int/2addr v2, v3

    .line 104
    int-to-byte v2, v2

    .line 105
    aput-byte v2, v5, v7

    .line 106
    .line 107
    add-int/2addr v6, v0

    .line 108
    iput v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 109
    .line 110
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 111
    .line 112
    const-wide/16 v4, 0x2

    .line 113
    .line 114
    add-long/2addr v2, v4

    .line 115
    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 116
    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :cond_2
    const v4, 0xd800

    .line 120
    .line 121
    .line 122
    const/16 v5, 0x3f

    .line 123
    .line 124
    if-lt v2, v4, :cond_6

    .line 125
    .line 126
    const v4, 0xdfff

    .line 127
    .line 128
    .line 129
    if-le v2, v4, :cond_3

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    if-ge v1, p3, :cond_4

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    move v4, p2

    .line 140
    :goto_2
    const v6, 0xdbff

    .line 141
    .line 142
    .line 143
    if-gt v2, v6, :cond_5

    .line 144
    .line 145
    const v6, 0xdc00

    .line 146
    .line 147
    .line 148
    if-lt v4, v6, :cond_5

    .line 149
    .line 150
    const v6, 0xe000

    .line 151
    .line 152
    .line 153
    if-ge v4, v6, :cond_5

    .line 154
    .line 155
    and-int/lit16 v1, v2, 0x3ff

    .line 156
    .line 157
    shl-int/lit8 v1, v1, 0xa

    .line 158
    .line 159
    and-int/lit16 v2, v4, 0x3ff

    .line 160
    .line 161
    const/4 v4, 0x4

    .line 162
    invoke-virtual {p0, v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-object v7, v6, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 167
    .line 168
    iget v8, v6, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 169
    .line 170
    or-int/2addr v1, v2

    .line 171
    const/high16 v2, 0x10000

    .line 172
    .line 173
    add-int/2addr v1, v2

    .line 174
    shr-int/lit8 v2, v1, 0x12

    .line 175
    .line 176
    or-int/lit16 v2, v2, 0xf0

    .line 177
    .line 178
    int-to-byte v2, v2

    .line 179
    aput-byte v2, v7, v8

    .line 180
    .line 181
    add-int/lit8 v2, v8, 0x1

    .line 182
    .line 183
    shr-int/lit8 v9, v1, 0xc

    .line 184
    .line 185
    and-int/2addr v9, v5

    .line 186
    or-int/2addr v9, v3

    .line 187
    int-to-byte v9, v9

    .line 188
    aput-byte v9, v7, v2

    .line 189
    .line 190
    add-int/lit8 v2, v8, 0x2

    .line 191
    .line 192
    shr-int/lit8 v9, v1, 0x6

    .line 193
    .line 194
    and-int/2addr v9, v5

    .line 195
    or-int/2addr v9, v3

    .line 196
    int-to-byte v9, v9

    .line 197
    aput-byte v9, v7, v2

    .line 198
    .line 199
    add-int/lit8 v2, v8, 0x3

    .line 200
    .line 201
    and-int/2addr v1, v5

    .line 202
    or-int/2addr v1, v3

    .line 203
    int-to-byte v1, v1

    .line 204
    aput-byte v1, v7, v2

    .line 205
    .line 206
    add-int/2addr v8, v4

    .line 207
    iput v8, v6, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 208
    .line 209
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 210
    .line 211
    const-wide/16 v3, 0x4

    .line 212
    .line 213
    add-long/2addr v1, v3

    .line 214
    iput-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 215
    .line 216
    add-int/lit8 v0, v0, 0x2

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_5
    invoke-virtual {p0, v5}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_6
    :goto_3
    const/4 v0, 0x3

    .line 225
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    iget-object v6, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 230
    .line 231
    iget v7, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 232
    .line 233
    shr-int/lit8 v8, v2, 0xc

    .line 234
    .line 235
    or-int/lit16 v8, v8, 0xe0

    .line 236
    .line 237
    int-to-byte v8, v8

    .line 238
    aput-byte v8, v6, v7

    .line 239
    .line 240
    add-int/lit8 v8, v7, 0x1

    .line 241
    .line 242
    shr-int/lit8 v9, v2, 0x6

    .line 243
    .line 244
    and-int/2addr v5, v9

    .line 245
    or-int/2addr v5, v3

    .line 246
    int-to-byte v5, v5

    .line 247
    aput-byte v5, v6, v8

    .line 248
    .line 249
    add-int/lit8 v5, v7, 0x2

    .line 250
    .line 251
    and-int/lit8 v2, v2, 0x3f

    .line 252
    .line 253
    or-int/2addr v2, v3

    .line 254
    int-to-byte v2, v2

    .line 255
    aput-byte v2, v6, v5

    .line 256
    .line 257
    add-int/2addr v7, v0

    .line 258
    iput v7, v4, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 259
    .line 260
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 261
    .line 262
    const-wide/16 v4, 0x3

    .line 263
    .line 264
    add-long/2addr v2, v4

    .line 265
    iput-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 266
    .line 267
    :goto_4
    move v0, v1

    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_7
    return-object p0

    .line 271
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v0, "endIndex > string.length: "

    .line 281
    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string p3, " > "

    .line 289
    .line 290
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 301
    .line 302
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw p2

    .line 306
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string p2, "endIndex < beginIndex: "

    .line 312
    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string p2, " < 0"

    .line 320
    .line 321
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 329
    .line 330
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p2
.end method

.method public final zzu(I)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 v1, 0x800

    .line 11
    .line 12
    const/16 v2, 0x3f

    .line 13
    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 22
    .line 23
    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 24
    .line 25
    shr-int/lit8 v6, p1, 0x6

    .line 26
    .line 27
    or-int/lit16 v6, v6, 0xc0

    .line 28
    .line 29
    int-to-byte v6, v6

    .line 30
    aput-byte v6, v4, v5

    .line 31
    .line 32
    add-int/lit8 v6, v5, 0x1

    .line 33
    .line 34
    and-int/2addr p1, v2

    .line 35
    or-int/2addr p1, v0

    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v4, v6

    .line 38
    .line 39
    add-int/2addr v5, v1

    .line 40
    iput v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 41
    .line 42
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 43
    .line 44
    const-wide/16 v2, 0x2

    .line 45
    .line 46
    add-long/2addr v0, v2

    .line 47
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    const v1, 0xd800

    .line 52
    .line 53
    .line 54
    if-lt p1, v1, :cond_2

    .line 55
    .line 56
    const v1, 0xe000

    .line 57
    .line 58
    .line 59
    if-ge p1, v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/high16 v1, 0x10000

    .line 66
    .line 67
    if-ge p1, v1, :cond_3

    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 75
    .line 76
    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 77
    .line 78
    shr-int/lit8 v6, p1, 0xc

    .line 79
    .line 80
    or-int/lit16 v6, v6, 0xe0

    .line 81
    .line 82
    int-to-byte v6, v6

    .line 83
    aput-byte v6, v4, v5

    .line 84
    .line 85
    add-int/lit8 v6, v5, 0x1

    .line 86
    .line 87
    shr-int/lit8 v7, p1, 0x6

    .line 88
    .line 89
    and-int/2addr v7, v2

    .line 90
    or-int/2addr v7, v0

    .line 91
    int-to-byte v7, v7

    .line 92
    aput-byte v7, v4, v6

    .line 93
    .line 94
    add-int/lit8 v6, v5, 0x2

    .line 95
    .line 96
    and-int/2addr p1, v2

    .line 97
    or-int/2addr p1, v0

    .line 98
    int-to-byte p1, p1

    .line 99
    aput-byte p1, v4, v6

    .line 100
    .line 101
    add-int/2addr v5, v1

    .line 102
    iput v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 103
    .line 104
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 105
    .line 106
    const-wide/16 v2, 0x3

    .line 107
    .line 108
    add-long/2addr v0, v2

    .line 109
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const v1, 0x10ffff

    .line 113
    .line 114
    .line 115
    if-gt p1, v1, :cond_4

    .line 116
    .line 117
    const/4 v1, 0x4

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 123
    .line 124
    iget v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 125
    .line 126
    shr-int/lit8 v6, p1, 0x12

    .line 127
    .line 128
    or-int/lit16 v6, v6, 0xf0

    .line 129
    .line 130
    int-to-byte v6, v6

    .line 131
    aput-byte v6, v4, v5

    .line 132
    .line 133
    add-int/lit8 v6, v5, 0x1

    .line 134
    .line 135
    shr-int/lit8 v7, p1, 0xc

    .line 136
    .line 137
    and-int/2addr v7, v2

    .line 138
    or-int/2addr v7, v0

    .line 139
    int-to-byte v7, v7

    .line 140
    aput-byte v7, v4, v6

    .line 141
    .line 142
    add-int/lit8 v6, v5, 0x2

    .line 143
    .line 144
    shr-int/lit8 v7, p1, 0x6

    .line 145
    .line 146
    and-int/2addr v7, v2

    .line 147
    or-int/2addr v7, v0

    .line 148
    int-to-byte v7, v7

    .line 149
    aput-byte v7, v4, v6

    .line 150
    .line 151
    add-int/lit8 v6, v5, 0x3

    .line 152
    .line 153
    and-int/2addr p1, v2

    .line 154
    or-int/2addr p1, v0

    .line 155
    int-to-byte p1, p1

    .line 156
    aput-byte p1, v4, v6

    .line 157
    .line 158
    add-int/2addr v5, v1

    .line 159
    iput v5, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 160
    .line 161
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 162
    .line 163
    const-wide/16 v2, 0x4

    .line 164
    .line 165
    add-long/2addr v0, v2

    .line 166
    iput-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 167
    .line 168
    :goto_0
    return-object p0

    .line 169
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbvv;->zza(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v1, "Unexpected code point: 0x"

    .line 180
    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0
.end method

.method public final bridge synthetic zzv(I)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final bridge synthetic zzw(I)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final bridge synthetic zzx(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_2

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 15
    .line 16
    cmp-long v0, v0, p1

    .line 17
    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    const-wide/16 v0, 0x1000

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    long-to-int v0, p1

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzA(I)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzH(J)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object v0

    .line 45
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "byteCount: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p2
.end method

.method public final zzz()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbwb;->zzb:J

    .line 2
    .line 3
    const-wide/32 v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    long-to-int v0, v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzA(I)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "size > Int.MAX_VALUE: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

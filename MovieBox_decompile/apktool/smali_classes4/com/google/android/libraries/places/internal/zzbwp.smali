.class public final Lcom/google/android/libraries/places/internal/zzbwp;
.super Lcom/google/android/libraries/places/internal/zzbwf;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final transient zzc:[[B

.field private final transient zzd:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    .line 1
    const-string v0, "segments"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "directory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzn()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 23
    .line 24
    return-void
.end method

.method private final zzs()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzp()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbwf;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    :cond_1
    move v0, v2

    .line 33
    nop

    .line 34
    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzb()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    move v3, v1

    .line 13
    :goto_0
    array-length v4, v0

    .line 14
    if-ge v1, v4, :cond_2

    .line 15
    .line 16
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 17
    .line 18
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 19
    .line 20
    add-int/2addr v4, v1

    .line 21
    aget v4, v5, v4

    .line 22
    .line 23
    aget v5, v5, v1

    .line 24
    .line 25
    sub-int v3, v5, v3

    .line 26
    .line 27
    add-int/2addr v3, v4

    .line 28
    aget-object v6, v6, v1

    .line 29
    .line 30
    :goto_1
    if-ge v4, v3, :cond_1

    .line 31
    .line 32
    mul-int/lit8 v2, v2, 0x1f

    .line 33
    .line 34
    aget-byte v7, v6, v4

    .line 35
    .line 36
    add-int/2addr v2, v7

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    move v3, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbwf;->zzh(I)V

    .line 45
    .line 46
    .line 47
    move v0, v2

    .line 48
    :goto_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzs()Lcom/google/android/libraries/places/internal/zzbwf;

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

.method public final zza(I)B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    aget v0, v1, v0

    .line 9
    .line 10
    int-to-long v1, v0

    .line 11
    int-to-long v3, p1

    .line 12
    const-wide/16 v5, 0x1

    .line 13
    .line 14
    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbvv;->zzb(JJJ)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 26
    .line 27
    add-int/lit8 v2, v0, -0x1

    .line 28
    .line 29
    aget v1, v1, v2

    .line 30
    .line 31
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 34
    .line 35
    sub-int/2addr p1, v1

    .line 36
    array-length v1, v3

    .line 37
    add-int/2addr v1, v0

    .line 38
    aget v1, v2, v1

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    aget-object v0, v3, v0

    .line 42
    .line 43
    aget-byte p1, v0, p1

    .line 44
    .line 45
    return p1
.end method

.method public final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    aget v0, v1, v0

    .line 9
    .line 10
    return v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzs()Lcom/google/android/libraries/places/internal/zzbwf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zze()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzg()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzs()Lcom/google/android/libraries/places/internal/zzbwf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzg()Lcom/google/android/libraries/places/internal/zzbwf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbwb;II)V
    .locals 11

    .line 1
    const-string p2, "buffer"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-static {p0, p2}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    move v1, p2

    .line 12
    :goto_0
    if-ge v1, p3, :cond_2

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move v0, p2

    .line 17
    move v2, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 20
    .line 21
    add-int/lit8 v3, v0, -0x1

    .line 22
    .line 23
    aget v2, v2, v3

    .line 24
    .line 25
    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 26
    .line 27
    aget v4, v3, v0

    .line 28
    .line 29
    sub-int/2addr v4, v2

    .line 30
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 31
    .line 32
    add-int/2addr v4, v2

    .line 33
    array-length v5, v5

    .line 34
    add-int/2addr v5, v0

    .line 35
    aget v3, v3, v5

    .line 36
    .line 37
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sub-int/2addr v4, v1

    .line 42
    sub-int v2, v1, v2

    .line 43
    .line 44
    add-int v7, v3, v2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 47
    .line 48
    add-int v8, v7, v4

    .line 49
    .line 50
    aget-object v6, v2, v0

    .line 51
    .line 52
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbwn;

    .line 53
    .line 54
    const/4 v9, 0x1

    .line 55
    const/4 v10, 0x0

    .line 56
    move-object v5, v2

    .line 57
    invoke-direct/range {v5 .. v10}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>([BIIZZ)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 61
    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 65
    .line 66
    iput-object v2, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 67
    .line 68
    iput-object v2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v3, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 75
    .line 76
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 80
    .line 81
    .line 82
    :goto_2
    add-int/2addr v1, v4

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    int-to-long p2, p3

    .line 91
    add-long/2addr v0, p2

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzE(J)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final zzk(ILcom/google/android/libraries/places/internal/zzbwf;II)Z
    .locals 6

    .line 1
    const-string p1, "other"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sub-int/2addr p1, p4

    .line 11
    const/4 p3, 0x0

    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-static {p0, p3}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    move v0, p3

    .line 20
    move v1, v0

    .line 21
    :goto_0
    if-ge v0, p4, :cond_3

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    move p1, p3

    .line 26
    move v2, p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 29
    .line 30
    add-int/lit8 v3, p1, -0x1

    .line 31
    .line 32
    aget v2, v2, v3

    .line 33
    .line 34
    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 35
    .line 36
    aget v4, v3, p1

    .line 37
    .line 38
    sub-int/2addr v4, v2

    .line 39
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 40
    .line 41
    add-int/2addr v4, v2

    .line 42
    array-length v5, v5

    .line 43
    add-int/2addr v5, p1

    .line 44
    aget v3, v3, v5

    .line 45
    .line 46
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    sub-int/2addr v4, v0

    .line 51
    sub-int v2, v0, v2

    .line 52
    .line 53
    add-int/2addr v3, v2

    .line 54
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 55
    .line 56
    aget-object v2, v2, p1

    .line 57
    .line 58
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzl(I[BII)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    add-int/2addr v1, v4

    .line 66
    add-int/2addr v0, v4

    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 p3, 0x1

    .line 71
    :goto_2
    return p3
.end method

.method public final zzl(I[BII)Z
    .locals 6

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-gt p1, v1, :cond_4

    .line 15
    .line 16
    if-ltz p3, :cond_4

    .line 17
    .line 18
    array-length v1, p2

    .line 19
    sub-int/2addr v1, p4

    .line 20
    if-le p3, v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    add-int/2addr p4, p1

    .line 24
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzbwz;->zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    if-ge p1, p4, :cond_3

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    move v1, v0

    .line 33
    move v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 36
    .line 37
    add-int/lit8 v3, v1, -0x1

    .line 38
    .line 39
    aget v2, v2, v3

    .line 40
    .line 41
    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 42
    .line 43
    aget v4, v3, v1

    .line 44
    .line 45
    sub-int/2addr v4, v2

    .line 46
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 47
    .line 48
    add-int/2addr v4, v2

    .line 49
    array-length v5, v5

    .line 50
    add-int/2addr v5, v1

    .line 51
    aget v3, v3, v5

    .line 52
    .line 53
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sub-int/2addr v4, p1

    .line 58
    sub-int v2, p1, v2

    .line 59
    .line 60
    add-int/2addr v3, v2

    .line 61
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 62
    .line 63
    aget-object v2, v2, v1

    .line 64
    .line 65
    invoke-static {v2, v3, p2, p3, v4}, Lcom/google/android/libraries/places/internal/zzbvv;->zzc([BI[BII)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    add-int/2addr p3, v4

    .line 73
    add-int/2addr p1, v4

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x1

    .line 78
    :cond_4
    :goto_2
    return v0
.end method

.method public final zzo()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzp()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzp()[B
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 11
    .line 12
    array-length v5, v4

    .line 13
    if-ge v1, v5, :cond_0

    .line 14
    .line 15
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 16
    .line 17
    add-int/2addr v5, v1

    .line 18
    aget v5, v6, v5

    .line 19
    .line 20
    aget v6, v6, v1

    .line 21
    .line 22
    aget-object v4, v4, v1

    .line 23
    .line 24
    sub-int v2, v6, v2

    .line 25
    .line 26
    add-int v7, v5, v2

    .line 27
    .line 28
    invoke-static {v4, v0, v3, v5, v7}, Lkotlin/collections/ArraysKt;->h([B[BIII)[B

    .line 29
    .line 30
    .line 31
    add-int/2addr v3, v2

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    move v2, v6

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method public final zzq()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzd:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzr()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwp;->zzc:[[B

    .line 2
    .line 3
    return-object v0
.end method

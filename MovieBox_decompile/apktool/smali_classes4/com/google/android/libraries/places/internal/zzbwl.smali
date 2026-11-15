.class public final Lcom/google/android/libraries/places/internal/zzbwl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbwd;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final zza:Lcom/google/android/libraries/places/internal/zzbws;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final zzb:Lcom/google/android/libraries/places/internal/zzbwb;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public zzc:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbws;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zza:Lcom/google/android/libraries/places/internal/zzbws;

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzc:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzc:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zza:Lcom/google/android/libraries/places/internal/zzbws;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbws;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzc:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zza:Lcom/google/android/libraries/places/internal/zzbws;

    .line 19
    .line 20
    const-wide/16 v2, 0x2000

    .line 21
    .line 22
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, -0x1

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    return p1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbwb;->read(Ljava/nio/ByteBuffer;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "buffer("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zza:Lcom/google/android/libraries/places/internal/zzbws;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final zzD(J)V
    .locals 4

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
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzc:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    cmp-long v1, v1, p1

    .line 18
    .line 19
    if-gez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zza:Lcom/google/android/libraries/places/internal/zzbws;

    .line 22
    .line 23
    const-wide/16 v2, 0x2000

    .line 24
    .line 25
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/16 v2, -0x1

    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "closed"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "byteCount < 0: "

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

.method public final zzF(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzc:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    :goto_0
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-lez v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    cmp-long v0, v3, v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zza:Lcom/google/android/libraries/places/internal/zzbws;

    .line 22
    .line 23
    const-wide/16 v3, 0x2000

    .line 24
    .line 25
    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/16 v2, -0x1

    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 54
    .line 55
    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    .line 56
    .line 57
    .line 58
    sub-long/2addr p1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p2, "closed"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 5

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
    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzc:Z

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    cmp-long v0, v3, v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zza:Lcom/google/android/libraries/places/internal/zzbws;

    .line 27
    .line 28
    const-wide/16 v3, 0x2000

    .line 29
    .line 30
    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbws;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide/16 v2, -0x1

    .line 35
    .line 36
    cmp-long v0, v0, v2

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    return-wide v2

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    return-wide p1

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "closed"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v0, "byteCount < 0: "

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p2
.end method

.method public final zzc()B
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwl;->zzD(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final zze()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwl;->zzD(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zze()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwl;->zzD(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.class final Lcom/google/android/libraries/places/internal/zzbsl;
.super Lcom/google/android/libraries/places/internal/zzbeg;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbwb;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbwb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbeg;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zze()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzc()B

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    return v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v1
.end method

.method public final zzf()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    return v0
.end method

.method public final zzg(I)Lcom/google/android/libraries/places/internal/zzbnv;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbsl;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/zzbsl;-><init>(Lcom/google/android/libraries/places/internal/zzbwb;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final zzi(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final zzj(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    int-to-long v0, p2

    .line 2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 3
    .line 4
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzr(Ljava/io/OutputStream;J)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzk([BII)V
    .locals 2

    .line 1
    :goto_0
    if-lez p3, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzd([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    sub-int/2addr p3, v0

    .line 13
    add-int/2addr p2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "EOF trying to read "

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p3, " bytes"

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    return-void
.end method

.method public final zzl(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsl;->zza:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzF(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

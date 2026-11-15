.class final Lcom/google/android/libraries/places/internal/zzbwg;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbws;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final zza:Ljava/io/InputStream;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwv;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/libraries/places/internal/zzbwv;)V
    .locals 1

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "timeout"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zzb:Lcom/google/android/libraries/places/internal/zzbwv;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
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
    const-string v1, "source("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

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

.method public final zza(Lcom/google/android/libraries/places/internal/zzbwb;J)J
    .locals 3

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwv;->zzb()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzB(I)Lcom/google/android/libraries/places/internal/zzbwn;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 15
    .line 16
    rsub-int v1, v1, 0x2000

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    long-to-int p2, p2

    .line 24
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbwg;->zza:Ljava/io/InputStream;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    .line 27
    .line 28
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 29
    .line 30
    invoke-virtual {p3, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/4 p3, -0x1

    .line 35
    if-ne p2, p3, :cond_1

    .line 36
    .line 37
    iget p2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    .line 38
    .line 39
    iget p3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 40
    .line 41
    if-ne p2, p3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzbwb;->zza:Lcom/google/android/libraries/places/internal/zzbwn;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwo;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    const-wide/16 p1, -0x1

    .line 56
    .line 57
    return-wide p1

    .line 58
    :cond_1
    iget p3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 59
    .line 60
    add-int/2addr p3, p2

    .line 61
    iput p3, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    int-to-long p2, p2

    .line 68
    add-long/2addr v0, p2

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzE(J)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-wide p2

    .line 73
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbwi;->zza(Ljava/lang/AssertionError;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    new-instance p2, Ljava/io/IOException;

    .line 80
    .line 81
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p2

    .line 85
    :cond_2
    throw p1
.end method

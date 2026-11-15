.class final Lcom/google/android/libraries/places/api/model/zzm;
.super Lcom/google/android/libraries/places/api/model/zzca;
.source "source.java"


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/zzca;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method final zza(I)Lcom/google/android/libraries/places/api/model/zzca;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzc:I

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 9
    .line 10
    return-object p0
.end method

.method final zzb(I)Lcom/google/android/libraries/places/api/model/zzca;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzb:I

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 9
    .line 10
    return-object p0
.end method

.method final zzc(I)Lcom/google/android/libraries/places/api/model/zzca;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zza:I

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 9
    .line 10
    return-object p0
.end method

.method final zzd()Lcom/google/android/libraries/places/api/model/LocalDate;
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 12
    .line 13
    and-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, " year"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, " month"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-byte v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzd:B

    .line 34
    .line 35
    and-int/lit8 v1, v1, 0x4

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    const-string v1, " day"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "Missing required properties:"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_3
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzba;

    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzm;->zza:I

    .line 63
    .line 64
    iget v2, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzb:I

    .line 65
    .line 66
    iget v3, p0, Lcom/google/android/libraries/places/api/model/zzm;->zzc:I

    .line 67
    .line 68
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/api/model/zzba;-><init>(III)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

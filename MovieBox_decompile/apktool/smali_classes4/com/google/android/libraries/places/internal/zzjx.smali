.class final Lcom/google/android/libraries/places/internal/zzjx;
.super Lcom/google/android/libraries/places/internal/zzka;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:I

.field private zzc:B

.field private zzd:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzka;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzka;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zza:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null packageName"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method final zzb(I)Lcom/google/android/libraries/places/internal/zzka;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzb:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzc:B

    .line 5
    .line 6
    return-object p0
.end method

.method final zzc()Lcom/google/android/libraries/places/internal/zzkb;
    .locals 5

    .line 1
    iget-byte v0, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzc:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjx;->zza:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzd:I

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lcom/google/android/libraries/places/internal/zzjz;

    .line 16
    .line 17
    iget v3, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzb:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/google/android/libraries/places/internal/zzjz;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzjy;)V

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zza:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    const-string v1, " packageName"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-byte v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzc:B

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, " versionCode"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzd:I

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    const-string v1, " requestSource"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v2, "Missing required properties:"

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1
.end method

.method public final zzd(I)Lcom/google/android/libraries/places/internal/zzka;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzjx;->zzd:I

    .line 2
    .line 3
    return-object p0
.end method

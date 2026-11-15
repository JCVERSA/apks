.class final Lcom/google/android/libraries/places/internal/zzse;
.super Lcom/google/android/libraries/places/internal/zzsh;
.source "source.java"


# instance fields
.field final zza:[C


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzsd;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzsh;-><init>(Lcom/google/android/libraries/places/internal/zzsd;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzse;->zza:[C

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzsd;->zze(Lcom/google/android/libraries/places/internal/zzsd;)[C

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmt;->zze(Z)V

    :goto_1
    const/16 v0, 0x100

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzse;->zza:[C

    ushr-int/lit8 v1, v2, 0x4

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzsd;->zza(I)C

    move-result v1

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzse;->zza:[C

    or-int/lit16 v1, v2, 0x100

    and-int/lit8 v3, v2, 0xf

    .line 4
    invoke-virtual {p1, v3}, Lcom/google/android/libraries/places/internal/zzsd;->zza(I)C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsd;

    const-string p2, "base16()"

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzsd;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzse;-><init>(Lcom/google/android/libraries/places/internal/zzsd;)V

    return-void
.end method


# virtual methods
.method final zza([BLjava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/zzsg;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzsh;->zzb:Lcom/google/android/libraries/places/internal/zzsd;

    .line 19
    .line 20
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzsd;->zzb(C)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    shl-int/lit8 v2, v2, 0x4

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzsh;->zzb:Lcom/google/android/libraries/places/internal/zzsd;

    .line 31
    .line 32
    add-int/lit8 v4, v0, 0x1

    .line 33
    .line 34
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzsd;->zzb(C)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    or-int/2addr v2, v3

    .line 43
    add-int/lit8 v3, v1, 0x1

    .line 44
    .line 45
    int-to-byte v2, v2

    .line 46
    aput-byte v2, p1, v1

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    move v1, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return v1

    .line 53
    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsg;

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "Invalid input length "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzsg;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method final zzb(Lcom/google/android/libraries/places/internal/zzsd;Ljava/lang/Character;)Lcom/google/android/libraries/places/internal/zzsi;
    .locals 0

    .line 1
    new-instance p2, Lcom/google/android/libraries/places/internal/zzse;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzse;-><init>(Lcom/google/android/libraries/places/internal/zzsd;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method final zzc(Ljava/lang/Appendable;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length p3, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p4, p3}, Lcom/google/android/libraries/places/internal/zzmt;->zzn(III)V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-ge v0, p4, :cond_0

    .line 7
    .line 8
    aget-byte p3, p2, v0

    .line 9
    .line 10
    and-int/lit16 p3, p3, 0xff

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzse;->zza:[C

    .line 13
    .line 14
    aget-char v1, v1, p3

    .line 15
    .line 16
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzse;->zza:[C

    .line 20
    .line 21
    or-int/lit16 p3, p3, 0x100

    .line 22
    .line 23
    aget-char p3, v1, p3

    .line 24
    .line 25
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

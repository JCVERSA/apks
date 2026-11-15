.class public final Lcom/google/android/libraries/places/internal/zzbvv;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/JvmName;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzbwa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwa;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwa;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvv;->zza:Lcom/google/android/libraries/places/internal/zzbwa;

    .line 7
    .line 8
    return-void
.end method

.method public static final zza(I)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    shr-int/lit8 v1, p0, 0x1c

    .line 6
    .line 7
    aget-char v0, v0, v1

    .line 8
    .line 9
    shr-int/lit8 v1, p0, 0x18

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    and-int/lit8 v1, v1, 0xf

    .line 16
    .line 17
    aget-char v1, v2, v1

    .line 18
    .line 19
    shr-int/lit8 v2, p0, 0x14

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    and-int/lit8 v2, v2, 0xf

    .line 26
    .line 27
    aget-char v2, v3, v2

    .line 28
    .line 29
    shr-int/lit8 v3, p0, 0x10

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    and-int/lit8 v3, v3, 0xf

    .line 36
    .line 37
    aget-char v3, v4, v3

    .line 38
    .line 39
    shr-int/lit8 v4, p0, 0xc

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    and-int/lit8 v4, v4, 0xf

    .line 46
    .line 47
    aget-char v4, v5, v4

    .line 48
    .line 49
    const/16 v5, 0x8

    .line 50
    .line 51
    shr-int/lit8 v6, p0, 0x8

    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    and-int/lit8 v6, v6, 0xf

    .line 58
    .line 59
    aget-char v6, v7, v6

    .line 60
    .line 61
    const/4 v7, 0x4

    .line 62
    shr-int/lit8 v8, p0, 0x4

    .line 63
    .line 64
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    and-int/lit8 v8, v8, 0xf

    .line 69
    .line 70
    aget-char v8, v9, v8

    .line 71
    .line 72
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwy;->zza()[C

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    and-int/lit8 p0, p0, 0xf

    .line 77
    .line 78
    aget-char p0, v9, p0

    .line 79
    .line 80
    new-array v9, v5, [C

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    aput-char v0, v9, v10

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    aput-char v1, v9, v0

    .line 87
    .line 88
    const/4 v1, 0x2

    .line 89
    aput-char v2, v9, v1

    .line 90
    .line 91
    const/4 v1, 0x3

    .line 92
    aput-char v3, v9, v1

    .line 93
    .line 94
    aput-char v4, v9, v7

    .line 95
    .line 96
    const/4 v1, 0x5

    .line 97
    aput-char v6, v9, v1

    .line 98
    .line 99
    const/4 v1, 0x6

    .line 100
    aput-char v8, v9, v1

    .line 101
    .line 102
    const/4 v1, 0x7

    .line 103
    aput-char p0, v9, v1

    .line 104
    .line 105
    :goto_0
    if-ge v10, v5, :cond_0

    .line 106
    .line 107
    aget-char p0, v9, v10

    .line 108
    .line 109
    const/16 v1, 0x30

    .line 110
    .line 111
    if-ne p0, v1, :cond_0

    .line 112
    .line 113
    add-int/2addr v10, v0

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v9, v10, v5}, Lkotlin/text/StringsKt;->C([CII)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public static final zzb(JJJ)V
    .locals 4

    .line 1
    or-long v0, p2, p4

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    cmp-long v0, p2, p0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    sub-long v0, p0, p2

    .line 14
    .line 15
    cmp-long v0, v0, p4

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "size="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " offset="

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " byteCount="

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public static final zzc([BI[BII)Z
    .locals 4

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_1

    .line 14
    .line 15
    add-int v2, v1, p1

    .line 16
    .line 17
    aget-byte v2, p0, v2

    .line 18
    .line 19
    add-int v3, v1, p3

    .line 20
    .line 21
    aget-byte v3, p2, v3

    .line 22
    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

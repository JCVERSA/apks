.class public final Lcom/google/android/libraries/places/internal/zzbwz;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/JvmName;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static final zza(Lcom/google/android/libraries/places/internal/zzbwp;I)I
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzq()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwp;->zzr()[[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    array-length p0, p0

    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-gt v0, p0, :cond_1

    .line 22
    .line 23
    add-int/lit8 v2, p1, 0x1

    .line 24
    .line 25
    add-int v3, v0, p0

    .line 26
    .line 27
    ushr-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    aget v4, v1, v3

    .line 30
    .line 31
    if-ge v4, v2, :cond_0

    .line 32
    .line 33
    add-int/lit8 v0, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-le v4, v2, :cond_2

    .line 37
    .line 38
    add-int/lit8 p0, v3, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    neg-int p0, v0

    .line 42
    add-int/lit8 v3, p0, -0x1

    .line 43
    .line 44
    :cond_2
    if-ltz v3, :cond_3

    .line 45
    .line 46
    return v3

    .line 47
    :cond_3
    not-int p0, v3

    .line 48
    return p0
.end method

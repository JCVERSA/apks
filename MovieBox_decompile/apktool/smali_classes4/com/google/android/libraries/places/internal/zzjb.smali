.class public final Lcom/google/android/libraries/places/internal/zzjb;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static zza(Ljava/lang/String;)I
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x5

    .line 15
    const/4 v7, 0x2

    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v1, "OVER_QUERY_LIMIT"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    move p0, v7

    .line 29
    goto :goto_1

    .line 30
    :sswitch_1
    const-string v1, "NOT_FOUND"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    move p0, v6

    .line 39
    goto :goto_1

    .line 40
    :sswitch_2
    const-string v1, "OK"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    move p0, v5

    .line 49
    goto :goto_1

    .line 50
    :sswitch_3
    const-string v1, "ZERO_RESULTS"

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    move p0, v4

    .line 59
    goto :goto_1

    .line 60
    :sswitch_4
    const-string v1, "INVALID_REQUEST"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    move p0, v3

    .line 69
    goto :goto_1

    .line 70
    :sswitch_5
    const-string v1, "REQUEST_DENIED"

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_1

    .line 77
    .line 78
    move p0, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 81
    :goto_1
    if-eqz p0, :cond_6

    .line 82
    .line 83
    if-eq p0, v4, :cond_6

    .line 84
    .line 85
    if-eq p0, v7, :cond_5

    .line 86
    .line 87
    if-eq p0, v2, :cond_4

    .line 88
    .line 89
    if-eq p0, v3, :cond_3

    .line 90
    .line 91
    if-eq p0, v6, :cond_2

    .line 92
    .line 93
    return v0

    .line 94
    :cond_2
    const/16 p0, 0x2335

    .line 95
    .line 96
    return p0

    .line 97
    :cond_3
    const/16 p0, 0x2334

    .line 98
    .line 99
    return p0

    .line 100
    :cond_4
    const/16 p0, 0x2333

    .line 101
    .line 102
    return p0

    .line 103
    :cond_5
    const/16 p0, 0x2332

    .line 104
    .line 105
    return p0

    .line 106
    :cond_6
    return v5

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x65375c95 -> :sswitch_5
        -0x430e23f9 -> :sswitch_4
        -0x307cc2c1 -> :sswitch_3
        0x9dc -> :sswitch_2
        0x3cfe1ed6 -> :sswitch_1
        0x6d2eae59 -> :sswitch_0
    .end sparse-switch
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object p1
.end method

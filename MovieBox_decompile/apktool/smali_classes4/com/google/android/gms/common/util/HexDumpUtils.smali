.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .locals 11
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p0, :cond_e

    .line 6
    .line 7
    array-length v3, p0

    .line 8
    if-eqz v3, :cond_e

    .line 9
    .line 10
    if-ltz p1, :cond_e

    .line 11
    .line 12
    if-lez p2, :cond_e

    .line 13
    .line 14
    add-int v4, p1, p2

    .line 15
    .line 16
    if-le v4, v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_0
    if-eqz p3, :cond_1

    .line 21
    .line 22
    const/16 v3, 0x4b

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v3, 0x39

    .line 26
    .line 27
    :goto_0
    add-int/lit8 v4, p2, 0xf

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    div-int/2addr v4, v0

    .line 32
    mul-int/2addr v3, v4

    .line 33
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .line 35
    .line 36
    move v3, p2

    .line 37
    move v4, v1

    .line 38
    move v6, v4

    .line 39
    :goto_1
    if-lez v3, :cond_d

    .line 40
    .line 41
    const/16 v7, 0x8

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    const/high16 v6, 0x10000

    .line 46
    .line 47
    if-ge p2, v6, :cond_2

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-array v8, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v6, v8, v1

    .line 56
    .line 57
    const-string v6, "%04X:"

    .line 58
    .line 59
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-array v8, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v6, v8, v1

    .line 74
    .line 75
    const-string v6, "%08X:"

    .line 76
    .line 77
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :goto_2
    move v6, p1

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    if-ne v4, v7, :cond_4

    .line 87
    .line 88
    const-string v8, " -"

    .line 89
    .line 90
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_3
    aget-byte v8, p0, p1

    .line 94
    .line 95
    and-int/lit16 v8, v8, 0xff

    .line 96
    .line 97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    new-array v9, v2, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v8, v9, v1

    .line 104
    .line 105
    const-string v8, " %02X"

    .line 106
    .line 107
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v3, v3, -0x1

    .line 115
    .line 116
    add-int/2addr v4, v2

    .line 117
    if-eqz p3, :cond_a

    .line 118
    .line 119
    if-eq v4, v0, :cond_5

    .line 120
    .line 121
    if-nez v3, :cond_a

    .line 122
    .line 123
    :cond_5
    rsub-int/lit8 v8, v4, 0x10

    .line 124
    .line 125
    if-lez v8, :cond_6

    .line 126
    .line 127
    move v9, v1

    .line 128
    :goto_4
    if-ge v9, v8, :cond_6

    .line 129
    .line 130
    const-string v10, "   "

    .line 131
    .line 132
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    add-int/2addr v9, v2

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    const-string v9, "  "

    .line 138
    .line 139
    if-lt v8, v7, :cond_7

    .line 140
    .line 141
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_7
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move v7, v1

    .line 148
    :goto_5
    if-ge v7, v4, :cond_a

    .line 149
    .line 150
    add-int v8, v6, v7

    .line 151
    .line 152
    aget-byte v8, p0, v8

    .line 153
    .line 154
    int-to-char v8, v8

    .line 155
    const/16 v9, 0x20

    .line 156
    .line 157
    const/16 v10, 0x2e

    .line 158
    .line 159
    if-lt v8, v9, :cond_8

    .line 160
    .line 161
    const/16 v9, 0x7e

    .line 162
    .line 163
    if-le v8, v9, :cond_9

    .line 164
    .line 165
    :cond_8
    move v8, v10

    .line 166
    :cond_9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    add-int/2addr v7, v2

    .line 170
    goto :goto_5

    .line 171
    :cond_a
    if-eq v4, v0, :cond_b

    .line 172
    .line 173
    if-nez v3, :cond_c

    .line 174
    .line 175
    :cond_b
    const/16 v4, 0xa

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move v4, v1

    .line 181
    :cond_c
    add-int/2addr p1, v2

    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :cond_e
    :goto_6
    const/4 p0, 0x0

    .line 190
    return-object p0
.end method

.class public final Lgd/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/zxing/i;


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


# virtual methods
.method public a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;
    .locals 10

    .line 1
    new-instance v0, Lhd/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/b;->a()Lkd/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lhd/a;-><init>(Lkd/b;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v0, v1}, Lhd/a;->a(Z)Lgd/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lkd/f;->b()[Lcom/google/zxing/k;

    .line 17
    .line 18
    .line 19
    move-result-object v3
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 20
    :try_start_1
    invoke-virtual {v2}, Lgd/a;->c()I

    .line 21
    .line 22
    .line 23
    move-result v4
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 24
    :try_start_2
    new-instance v5, Lcom/google/zxing/aztec/decoder/Decoder;

    .line 25
    .line 26
    invoke-direct {v5}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->c(Lgd/a;)Lkd/d;

    .line 30
    .line 31
    .line 32
    move-result-object v2
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    move v5, v4

    .line 34
    move-object v4, v3

    .line 35
    move-object v3, p1

    .line 36
    move-object p1, v2

    .line 37
    move-object v2, v3

    .line 38
    goto :goto_4

    .line 39
    :catch_0
    move-exception v2

    .line 40
    goto :goto_2

    .line 41
    :catch_1
    move-exception v2

    .line 42
    goto :goto_3

    .line 43
    :catch_2
    move-exception v2

    .line 44
    :goto_0
    move v4, v1

    .line 45
    goto :goto_2

    .line 46
    :catch_3
    move-exception v2

    .line 47
    :goto_1
    move v4, v1

    .line 48
    goto :goto_3

    .line 49
    :catch_4
    move-exception v2

    .line 50
    move-object v3, p1

    .line 51
    goto :goto_0

    .line 52
    :catch_5
    move-exception v2

    .line 53
    move-object v3, p1

    .line 54
    goto :goto_1

    .line 55
    :goto_2
    move v5, v4

    .line 56
    move-object v4, v3

    .line 57
    move-object v3, v2

    .line 58
    move-object v2, p1

    .line 59
    goto :goto_4

    .line 60
    :goto_3
    move v5, v4

    .line 61
    move-object v4, v3

    .line 62
    move-object v3, p1

    .line 63
    :goto_4
    if-nez p1, :cond_0

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    :try_start_3
    invoke-virtual {v0, p1}, Lhd/a;->a(Z)Lgd/a;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lkd/f;->b()[Lcom/google/zxing/k;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lgd/a;->c()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->c(Lgd/a;)Lkd/d;

    .line 84
    .line 85
    .line 86
    move-result-object p1
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/zxing/FormatException; {:try_start_3 .. :try_end_3} :catch_6

    .line 87
    :cond_0
    move-object v6, v4

    .line 88
    move v0, v5

    .line 89
    goto :goto_6

    .line 90
    :catch_6
    move-exception p1

    .line 91
    goto :goto_5

    .line 92
    :catch_7
    move-exception p1

    .line 93
    :goto_5
    if-nez v2, :cond_2

    .line 94
    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    throw v3

    .line 98
    :cond_1
    throw p1

    .line 99
    :cond_2
    throw v2

    .line 100
    :goto_6
    if-eqz p2, :cond_3

    .line 101
    .line 102
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 103
    .line 104
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lcom/google/zxing/l;

    .line 109
    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    array-length v2, v6

    .line 113
    :goto_7
    if-ge v1, v2, :cond_3

    .line 114
    .line 115
    aget-object v3, v6, v1

    .line 116
    .line 117
    invoke-interface {p2, v3}, Lcom/google/zxing/l;->a(Lcom/google/zxing/k;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_3
    new-instance p2, Lcom/google/zxing/j;

    .line 124
    .line 125
    invoke-virtual {p1}, Lkd/d;->k()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {p1}, Lkd/d;->g()[B

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {p1}, Lkd/d;->e()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 138
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    move-object v2, p2

    .line 144
    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/j;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/k;Lcom/google/zxing/BarcodeFormat;J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lkd/d;->a()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 154
    .line 155
    invoke-virtual {p2, v2, v1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {p1}, Lkd/d;->b()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 165
    .line 166
    invoke-virtual {p2, v2, v1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {p1}, Lkd/d;->d()Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    add-int/2addr v0, v1

    .line 178
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    .line 179
    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p2, v1, v0}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v2, "]z"

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lkd/d;->j()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p2, v0, p1}, Lcom/google/zxing/j;->h(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    return-object p2
.end method

.method public b(Lcom/google/zxing/b;)Lcom/google/zxing/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lgd/b;->a(Lcom/google/zxing/b;Ljava/util/Map;)Lcom/google/zxing/j;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method

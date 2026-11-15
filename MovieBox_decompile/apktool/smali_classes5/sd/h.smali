.class public final Lsd/h;
.super Lsd/x;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsd/x;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)[Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/16 v2, 0xd

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lsd/w;->i(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Contents do not pass checksum"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "Illegal contents"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "Requested contents should be 12 or 13 digits long, but got "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    :try_start_1
    invoke-static {p1}, Lsd/w;->r(Ljava/lang/CharSequence;)I

    .line 60
    .line 61
    .line 62
    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_0
    invoke-static {p1}, Lsd/q;->c(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/16 v3, 0xa

    .line 87
    .line 88
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    sget-object v4, Lsd/g;->j:[I

    .line 93
    .line 94
    aget v2, v4, v2

    .line 95
    .line 96
    const/16 v4, 0x5f

    .line 97
    .line 98
    new-array v4, v4, [Z

    .line 99
    .line 100
    sget-object v5, Lsd/w;->d:[I

    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    invoke-static {v4, v0, v5, v6}, Lsd/q;->b([ZI[IZ)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    move v7, v6

    .line 108
    :goto_1
    const/4 v8, 0x6

    .line 109
    if-gt v7, v8, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    rsub-int/lit8 v9, v7, 0x6

    .line 120
    .line 121
    shr-int v9, v2, v9

    .line 122
    .line 123
    and-int/2addr v9, v6

    .line 124
    if-ne v9, v6, :cond_3

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0xa

    .line 127
    .line 128
    :cond_3
    sget-object v9, Lsd/w;->h:[[I

    .line 129
    .line 130
    aget-object v8, v9, v8

    .line 131
    .line 132
    invoke-static {v4, v5, v8, v0}, Lsd/q;->b([ZI[IZ)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    add-int/2addr v5, v8

    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    sget-object v2, Lsd/w;->e:[I

    .line 141
    .line 142
    invoke-static {v4, v5, v2, v0}, Lsd/q;->b([ZI[IZ)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    add-int/2addr v5, v0

    .line 147
    const/4 v0, 0x7

    .line 148
    :goto_2
    if-gt v0, v1, :cond_5

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    sget-object v7, Lsd/w;->g:[[I

    .line 159
    .line 160
    aget-object v2, v7, v2

    .line 161
    .line 162
    invoke-static {v4, v5, v2, v6}, Lsd/q;->b([ZI[IZ)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    add-int/2addr v5, v2

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    sget-object p1, Lsd/w;->d:[I

    .line 171
    .line 172
    invoke-static {v4, v5, p1, v6}, Lsd/q;->b([ZI[IZ)I

    .line 173
    .line 174
    .line 175
    return-object v4

    .line 176
    :catch_1
    move-exception p1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method

.method protected g()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

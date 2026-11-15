.class public final Lsd/z;
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
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lsd/y;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lsd/w;->i(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "Contents do not pass checksum"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Illegal contents"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "Requested contents should be 7 or 8 digits long, but got "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    :try_start_1
    invoke-static {p1}, Lsd/y;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lsd/w;->r(Ljava/lang/CharSequence;)I

    .line 67
    .line 68
    .line 69
    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :goto_0
    invoke-static {p1}, Lsd/q;->c(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/16 v3, 0xa

    .line 94
    .line 95
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const/4 v4, 0x1

    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    if-ne v2, v4, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string v0, "Number system must be 0 or 1"

    .line 108
    .line 109
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    sget-object v5, Lsd/y;->k:[[I

    .line 122
    .line 123
    aget-object v2, v5, v2

    .line 124
    .line 125
    aget v1, v2, v1

    .line 126
    .line 127
    const/16 v2, 0x33

    .line 128
    .line 129
    new-array v2, v2, [Z

    .line 130
    .line 131
    sget-object v5, Lsd/w;->d:[I

    .line 132
    .line 133
    invoke-static {v2, v0, v5, v4}, Lsd/q;->b([ZI[IZ)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    move v6, v4

    .line 138
    :goto_2
    const/4 v7, 0x6

    .line 139
    if-gt v6, v7, :cond_6

    .line 140
    .line 141
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-static {v7, v3}, Ljava/lang/Character;->digit(CI)I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    rsub-int/lit8 v8, v6, 0x6

    .line 150
    .line 151
    shr-int v8, v1, v8

    .line 152
    .line 153
    and-int/2addr v8, v4

    .line 154
    if-ne v8, v4, :cond_5

    .line 155
    .line 156
    add-int/lit8 v7, v7, 0xa

    .line 157
    .line 158
    :cond_5
    sget-object v8, Lsd/w;->h:[[I

    .line 159
    .line 160
    aget-object v7, v8, v7

    .line 161
    .line 162
    invoke-static {v2, v5, v7, v0}, Lsd/q;->b([ZI[IZ)I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    add-int/2addr v5, v7

    .line 167
    add-int/lit8 v6, v6, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    sget-object p1, Lsd/w;->f:[I

    .line 171
    .line 172
    invoke-static {v2, v5, p1, v0}, Lsd/q;->b([ZI[IZ)I

    .line 173
    .line 174
    .line 175
    return-object v2

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
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

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

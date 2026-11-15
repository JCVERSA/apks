.class public final Lsd/j;
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
    .locals 8

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
    invoke-static {p1}, Lsd/w;->i(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Contents do not pass checksum"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Illegal contents"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "Requested contents should be 7 or 8 digits long, but got "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    :try_start_1
    invoke-static {p1}, Lsd/w;->r(Ljava/lang/CharSequence;)I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_0
    invoke-static {p1}, Lsd/q;->c(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/16 v0, 0x43

    .line 81
    .line 82
    new-array v0, v0, [Z

    .line 83
    .line 84
    sget-object v2, Lsd/w;->d:[I

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x1

    .line 88
    invoke-static {v0, v3, v2, v4}, Lsd/q;->b([ZI[IZ)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    move v5, v3

    .line 93
    :goto_1
    const/4 v6, 0x3

    .line 94
    const/16 v7, 0xa

    .line 95
    .line 96
    if-gt v5, v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    sget-object v7, Lsd/w;->g:[[I

    .line 107
    .line 108
    aget-object v6, v7, v6

    .line 109
    .line 110
    invoke-static {v0, v2, v6, v3}, Lsd/q;->b([ZI[IZ)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    add-int/2addr v2, v6

    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    sget-object v5, Lsd/w;->e:[I

    .line 119
    .line 120
    invoke-static {v0, v2, v5, v3}, Lsd/q;->b([ZI[IZ)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    add-int/2addr v2, v3

    .line 125
    const/4 v3, 0x4

    .line 126
    :goto_2
    if-gt v3, v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    sget-object v6, Lsd/w;->g:[[I

    .line 137
    .line 138
    aget-object v5, v6, v5

    .line 139
    .line 140
    invoke-static {v0, v2, v5, v4}, Lsd/q;->b([ZI[IZ)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    add-int/2addr v2, v5

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    sget-object p1, Lsd/w;->d:[I

    .line 149
    .line 150
    invoke-static {v0, v2, p1, v4}, Lsd/q;->b([ZI[IZ)I

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :catch_1
    move-exception p1

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw v0
.end method

.method protected g()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

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

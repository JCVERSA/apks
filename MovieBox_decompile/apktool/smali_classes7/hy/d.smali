.class Lhy/d;
.super Lhy/h;
.source "source.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    return-object v0
.end method

.method c(Lhy/a;)Lhy/b;
    .locals 13

    .line 1
    iget-object v0, p1, Lhy/a;->e:[B

    .line 2
    .line 3
    iget v1, p1, Lhy/a;->f:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x3

    .line 9
    if-lt v1, v5, :cond_0

    .line 10
    .line 11
    aget-byte v1, v0, v4

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    const/16 v6, 0xef

    .line 16
    .line 17
    if-ne v1, v6, :cond_0

    .line 18
    .line 19
    aget-byte v1, v0, v3

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    const/16 v6, 0xbb

    .line 24
    .line 25
    if-ne v1, v6, :cond_0

    .line 26
    .line 27
    aget-byte v1, v0, v2

    .line 28
    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 30
    .line 31
    const/16 v6, 0xbf

    .line 32
    .line 33
    if-ne v1, v6, :cond_0

    .line 34
    .line 35
    move v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v1, v4

    .line 38
    :goto_0
    move v6, v4

    .line 39
    move v7, v6

    .line 40
    move v8, v7

    .line 41
    :goto_1
    iget v9, p1, Lhy/a;->f:I

    .line 42
    .line 43
    if-ge v6, v9, :cond_8

    .line 44
    .line 45
    aget-byte v9, v0, v6

    .line 46
    .line 47
    and-int/lit16 v10, v9, 0x80

    .line 48
    .line 49
    if-nez v10, :cond_1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    and-int/lit16 v10, v9, 0xe0

    .line 53
    .line 54
    const/16 v11, 0xc0

    .line 55
    .line 56
    if-ne v10, v11, :cond_2

    .line 57
    .line 58
    move v9, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    and-int/lit16 v10, v9, 0xf0

    .line 61
    .line 62
    const/16 v12, 0xe0

    .line 63
    .line 64
    if-ne v10, v12, :cond_3

    .line 65
    .line 66
    move v9, v2

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    and-int/lit16 v9, v9, 0xf8

    .line 69
    .line 70
    const/16 v10, 0xf0

    .line 71
    .line 72
    if-ne v9, v10, :cond_6

    .line 73
    .line 74
    move v9, v5

    .line 75
    :cond_4
    :goto_2
    add-int/2addr v6, v3

    .line 76
    iget v10, p1, Lhy/a;->f:I

    .line 77
    .line 78
    if-lt v6, v10, :cond_5

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    aget-byte v10, v0, v6

    .line 82
    .line 83
    and-int/2addr v10, v11

    .line 84
    const/16 v12, 0x80

    .line 85
    .line 86
    if-eq v10, v12, :cond_7

    .line 87
    .line 88
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    add-int/lit8 v9, v9, -0x1

    .line 92
    .line 93
    if-nez v9, :cond_4

    .line 94
    .line 95
    add-int/lit8 v8, v8, 0x1

    .line 96
    .line 97
    :goto_3
    add-int/2addr v6, v3

    .line 98
    goto :goto_1

    .line 99
    :cond_8
    const/16 v0, 0x64

    .line 100
    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    if-nez v7, :cond_9

    .line 104
    .line 105
    :goto_4
    move v4, v0

    .line 106
    goto :goto_6

    .line 107
    :cond_9
    const/16 v2, 0x50

    .line 108
    .line 109
    if-eqz v1, :cond_a

    .line 110
    .line 111
    mul-int/lit8 v1, v7, 0xa

    .line 112
    .line 113
    if-le v8, v1, :cond_a

    .line 114
    .line 115
    :goto_5
    move v4, v2

    .line 116
    goto :goto_6

    .line 117
    :cond_a
    if-le v8, v5, :cond_b

    .line 118
    .line 119
    if-nez v7, :cond_b

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_b
    if-lez v8, :cond_c

    .line 123
    .line 124
    if-nez v7, :cond_c

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_c
    if-nez v8, :cond_d

    .line 128
    .line 129
    if-nez v7, :cond_d

    .line 130
    .line 131
    const/16 v4, 0xf

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_d
    mul-int/lit8 v7, v7, 0xa

    .line 135
    .line 136
    if-le v8, v7, :cond_e

    .line 137
    .line 138
    const/16 v4, 0x19

    .line 139
    .line 140
    :cond_e
    :goto_6
    if-nez v4, :cond_f

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    goto :goto_7

    .line 144
    :cond_f
    new-instance v0, Lhy/b;

    .line 145
    .line 146
    invoke-direct {v0, p1, p0, v4}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 147
    .line 148
    .line 149
    move-object p1, v0

    .line 150
    :goto_7
    return-object p1
.end method

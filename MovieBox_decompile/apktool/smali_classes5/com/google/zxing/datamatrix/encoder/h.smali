.class final Lcom/google/zxing/datamatrix/encoder/h;
.super Lcom/google/zxing/datamatrix/encoder/c;
.source "source.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method c(CLjava/lang/StringBuilder;)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/16 v2, 0x30

    .line 12
    .line 13
    if-lt p1, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x39

    .line 16
    .line 17
    if-gt p1, v2, :cond_1

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x2c

    .line 20
    .line 21
    int-to-char p1, p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const/16 v2, 0x61

    .line 27
    .line 28
    if-lt p1, v2, :cond_2

    .line 29
    .line 30
    const/16 v2, 0x7a

    .line 31
    .line 32
    if-gt p1, v2, :cond_2

    .line 33
    .line 34
    add-int/lit8 p1, p1, -0x53

    .line 35
    .line 36
    int-to-char p1, p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :cond_2
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x2

    .line 43
    if-ge p1, v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :cond_3
    const/16 v1, 0x2f

    .line 53
    .line 54
    if-gt p1, v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x21

    .line 60
    .line 61
    int-to-char p1, p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    return v3

    .line 66
    :cond_4
    const/16 v1, 0x40

    .line 67
    .line 68
    if-gt p1, v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    add-int/lit8 p1, p1, -0x2b

    .line 74
    .line 75
    int-to-char p1, p1

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :cond_5
    const/16 v4, 0x5b

    .line 81
    .line 82
    if-lt p1, v4, :cond_6

    .line 83
    .line 84
    const/16 v4, 0x5f

    .line 85
    .line 86
    if-gt p1, v4, :cond_6

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    add-int/lit8 p1, p1, -0x45

    .line 92
    .line 93
    int-to-char p1, p1

    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    return v3

    .line 98
    :cond_6
    const/16 v0, 0x60

    .line 99
    .line 100
    if-ne p1, v0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    return v3

    .line 109
    :cond_7
    const/16 v2, 0x5a

    .line 110
    .line 111
    if-gt p1, v2, :cond_8

    .line 112
    .line 113
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    sub-int/2addr p1, v1

    .line 117
    int-to-char p1, p1

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    return v3

    .line 122
    :cond_8
    const/16 v1, 0x7f

    .line 123
    .line 124
    if-gt p1, v1, :cond_9

    .line 125
    .line 126
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    sub-int/2addr p1, v0

    .line 130
    int-to-char p1, p1

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    return v3

    .line 135
    :cond_9
    const-string v0, "\u0001\u001e"

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    add-int/lit8 p1, p1, -0x80

    .line 141
    .line 142
    int-to-char p1, p1

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/h;->c(CLjava/lang/StringBuilder;)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    add-int/2addr p1, v3

    .line 148
    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lkd/g;

.field private final d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b:Z

    .line 7
    .line 8
    new-instance p3, Lkd/g;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    invoke-direct {p3, p1, p2, v0}, Lkd/g;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lkd/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static i(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/g;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->h(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static k(Lcom/google/zxing/qrcode/decoder/Mode;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq v1, v0, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    if-ne v1, v0, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "Illegal mode "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    return v0

    .line 50
    :cond_3
    return v2

    .line 51
    :cond_4
    return v0
.end method

.method static l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x28

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/g;->i(I)Lcom/google/zxing/qrcode/decoder/g;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/16 p0, 0x1a

    .line 23
    .line 24
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/g;->i(I)Lcom/google/zxing/qrcode/decoder/g;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    const/16 p0, 0x9

    .line 30
    .line 31
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/g;->i(I)Lcom/google/zxing/qrcode/decoder/g;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method static m(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/g;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/g;->j()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/16 v0, 0x1a

    .line 17
    .line 18
    if-gt p0, v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 24
    .line 25
    :goto_0
    return-object p0
.end method

.method static n(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/b;->p(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method static o(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/b;->s(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static p(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method


# virtual methods
.method e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V
    .locals 2

    .line 1
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->a(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr p2, v0

    .line 6
    aget-object p1, p1, p2

    .line 7
    .line 8
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->b(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    aget-object p1, p1, p2

    .line 13
    .line 14
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->c(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->k(Lcom/google/zxing/qrcode/decoder/Mode;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    aget-object v0, p1, p2

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-le v0, v1, :cond_1

    .line 35
    .line 36
    :cond_0
    aput-object p3, p1, p2

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method f(Lcom/google/zxing/qrcode/decoder/g;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V
    .locals 16

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lkd/g;->g()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 14
    .line 15
    invoke-virtual {v1}, Lkd/g;->f()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 22
    .line 23
    iget-object v3, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3, v1}, Lkd/g;->a(CI)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    add-int/lit8 v0, v1, 0x1

    .line 36
    .line 37
    :goto_0
    move v12, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    move v13, v1

    .line 42
    :goto_2
    if-ge v13, v12, :cond_2

    .line 43
    .line 44
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 45
    .line 46
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1, v13}, Lkd/g;->a(CI)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    new-instance v14, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    .line 59
    .line 60
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object v0, v14

    .line 65
    move-object/from16 v1, p0

    .line 66
    .line 67
    move/from16 v3, p3

    .line 68
    .line 69
    move v4, v13

    .line 70
    move-object/from16 v6, p4

    .line 71
    .line 72
    move-object/from16 v7, p1

    .line 73
    .line 74
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v10, v11, v14}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 84
    .line 85
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    new-instance v12, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    move-object v0, v12

    .line 103
    move-object/from16 v1, p0

    .line 104
    .line 105
    move/from16 v3, p3

    .line 106
    .line 107
    move-object/from16 v6, p4

    .line 108
    .line 109
    move-object/from16 v7, p1

    .line 110
    .line 111
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 124
    .line 125
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v13, 0x2

    .line 136
    const/4 v14, 0x1

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    .line 140
    .line 141
    add-int/lit8 v0, v11, 0x1

    .line 142
    .line 143
    if-ge v0, v12, :cond_5

    .line 144
    .line 145
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_4
    move v5, v13

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    :goto_3
    move v5, v14

    .line 161
    :goto_4
    const/4 v8, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    move-object v0, v15

    .line 164
    move-object/from16 v1, p0

    .line 165
    .line 166
    move/from16 v3, p3

    .line 167
    .line 168
    move-object/from16 v6, p4

    .line 169
    .line 170
    move-object/from16 v7, p1

    .line 171
    .line 172
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 179
    .line 180
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    .line 193
    .line 194
    add-int/lit8 v0, v11, 0x1

    .line 195
    .line 196
    if-ge v0, v12, :cond_a

    .line 197
    .line 198
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_7

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_7
    add-int/lit8 v0, v11, 0x2

    .line 212
    .line 213
    if-ge v0, v12, :cond_9

    .line 214
    .line 215
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_8
    const/4 v0, 0x3

    .line 229
    move v5, v0

    .line 230
    goto :goto_7

    .line 231
    :cond_9
    :goto_5
    move v5, v13

    .line 232
    goto :goto_7

    .line 233
    :cond_a
    :goto_6
    move v5, v14

    .line 234
    :goto_7
    const/4 v8, 0x0

    .line 235
    const/4 v4, 0x0

    .line 236
    move-object v0, v15

    .line 237
    move-object/from16 v1, p0

    .line 238
    .line 239
    move/from16 v3, p3

    .line 240
    .line 241
    move-object/from16 v6, p4

    .line 242
    .line 243
    move-object/from16 v7, p1

    .line 244
    .line 245
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;Lcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->e([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    .line 249
    .line 250
    .line 251
    :cond_b
    return-void
.end method

.method g(Lcom/google/zxing/qrcode/decoder/Mode;C)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$a;->b:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    return v0

    .line 24
    :cond_1
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->p(C)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->n(C)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_3
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->o(C)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method h(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    if-nez p1, :cond_3

    .line 6
    .line 7
    sget-object p1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 14
    .line 15
    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/g;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 20
    .line 21
    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/g;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-array v6, v2, [Lcom/google/zxing/qrcode/decoder/g;

    .line 26
    .line 27
    aput-object p1, v6, v1

    .line 28
    .line 29
    aput-object v4, v6, v3

    .line 30
    .line 31
    aput-object v5, v6, v0

    .line 32
    .line 33
    aget-object p1, v6, v1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    aget-object v4, v6, v3

    .line 40
    .line 41
    invoke-virtual {p0, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aget-object v5, v6, v0

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-array v7, v2, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 52
    .line 53
    aput-object p1, v7, v1

    .line 54
    .line 55
    aput-object v4, v7, v3

    .line 56
    .line 57
    aput-object v5, v7, v0

    .line 58
    .line 59
    const p1, 0x7fffffff

    .line 60
    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    :goto_0
    if-ge v1, v2, :cond_1

    .line 64
    .line 65
    aget-object v4, v7, v1

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    aget-object v5, v6, v1

    .line 72
    .line 73
    iget-object v8, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 74
    .line 75
    invoke-static {v4, v5, v8}, Lcom/google/zxing/qrcode/encoder/b;->v(ILcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    if-ge v4, p1, :cond_0

    .line 82
    .line 83
    move v0, v1

    .line 84
    move p1, v4

    .line 85
    :cond_0
    add-int/2addr v1, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    if-ltz v0, :cond_2

    .line 88
    .line 89
    aget-object p1, v7, v0

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_2
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 93
    .line 94
    const-string v0, "Data too big for any version"

    .line 95
    .line 96
    invoke-direct {p1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->j(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->c()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;->e()Lcom/google/zxing/qrcode/decoder/g;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->m(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->l(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/g;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->d:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 121
    .line 122
    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/b;->v(ILcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_4
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v2, "Data too big for version"

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {v0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method j(Lcom/google/zxing/qrcode/decoder/g;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 10
    .line 11
    invoke-virtual {v2}, Lkd/g;->g()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    new-array v3, v3, [I

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x4

    .line 20
    aput v5, v3, v4

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    aput v2, v3, v4

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput v1, v3, v2

    .line 27
    .line 28
    const-class v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    .line 29
    .line 30
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->f(Lcom/google/zxing/qrcode/decoder/g;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-gt v4, v0, :cond_3

    .line 41
    .line 42
    move v3, v2

    .line 43
    :goto_1
    iget-object v6, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 44
    .line 45
    invoke-virtual {v6}, Lkd/g;->g()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ge v3, v6, :cond_2

    .line 50
    .line 51
    move v6, v2

    .line 52
    :goto_2
    if-ge v6, v5, :cond_1

    .line 53
    .line 54
    aget-object v7, v1, v4

    .line 55
    .line 56
    aget-object v7, v7, v3

    .line 57
    .line 58
    aget-object v7, v7, v6

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    if-ge v4, v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {p0, p1, v1, v4, v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->f(Lcom/google/zxing/qrcode/decoder/g;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v3, -0x1

    .line 77
    const v4, 0x7fffffff

    .line 78
    .line 79
    .line 80
    move v7, v2

    .line 81
    move v6, v4

    .line 82
    move v4, v3

    .line 83
    :goto_3
    iget-object v8, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->c:Lkd/g;

    .line 84
    .line 85
    invoke-virtual {v8}, Lkd/g;->g()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-ge v7, v8, :cond_6

    .line 90
    .line 91
    move v8, v2

    .line 92
    :goto_4
    if-ge v8, v5, :cond_5

    .line 93
    .line 94
    aget-object v9, v1, v0

    .line 95
    .line 96
    aget-object v9, v9, v7

    .line 97
    .line 98
    aget-object v9, v9, v8

    .line 99
    .line 100
    if-eqz v9, :cond_4

    .line 101
    .line 102
    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-ge v10, v6, :cond_4

    .line 107
    .line 108
    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;->d(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    move v3, v7

    .line 113
    move v4, v8

    .line 114
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    if-ltz v3, :cond_7

    .line 121
    .line 122
    new-instance v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;

    .line 123
    .line 124
    aget-object v0, v1, v0

    .line 125
    .line 126
    aget-object v0, v0, v3

    .line 127
    .line 128
    aget-object v0, v0, v4

    .line 129
    .line 130
    invoke-direct {v2, p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$c;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$b;)V

    .line 131
    .line 132
    .line 133
    return-object v2

    .line 134
    :cond_7
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v1, "Internal error: failed to encode \""

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->a:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, "\""

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-direct {p1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
.end method

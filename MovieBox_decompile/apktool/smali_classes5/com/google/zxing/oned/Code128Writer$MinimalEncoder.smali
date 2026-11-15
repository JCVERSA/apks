.class final Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MinimalEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;,
        Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;
    }
.end annotation


# instance fields
.field private a:[[I

.field private b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/oned/Code128Writer$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;Ljava/lang/String;)[Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->e(Ljava/lang/String;)[Z

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b(Ljava/util/Collection;I[I[II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/a;->a:[[I

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    aget p4, p3, p0

    .line 12
    .line 13
    add-int/lit8 p4, p4, 0x1

    .line 14
    .line 15
    aput p4, p3, p0

    .line 16
    .line 17
    :cond_0
    aget p4, p2, p0

    .line 18
    .line 19
    aget p3, p3, p0

    .line 20
    .line 21
    mul-int/2addr p1, p3

    .line 22
    add-int/2addr p4, p1

    .line 23
    aput p4, p2, p0

    .line 24
    .line 25
    return-void
.end method

.method private c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z
    .locals 8

    .line 1
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$a;->b:[I

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    aget p2, v1, p2

    .line 12
    .line 13
    const/16 v1, 0xf4

    .line 14
    .line 15
    const/16 v2, 0xf3

    .line 16
    .line 17
    const/16 v3, 0xf2

    .line 18
    .line 19
    const/16 v4, 0xf1

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x1

    .line 23
    if-eq p2, v6, :cond_6

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    if-eq p2, v7, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq p2, v1, :cond_0

    .line 30
    .line 31
    return v5

    .line 32
    :cond_0
    if-eq v0, v4, :cond_1

    .line 33
    .line 34
    add-int/2addr p3, v6

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-ge p3, p2, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->f(C)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->f(C)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    :cond_1
    move v5, v6

    .line 58
    :cond_2
    return v5

    .line 59
    :cond_3
    if-eq v0, v4, :cond_4

    .line 60
    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    if-eq v0, v2, :cond_4

    .line 64
    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    .line 67
    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-ltz p1, :cond_5

    .line 74
    .line 75
    :cond_4
    move v5, v6

    .line 76
    :cond_5
    return v5

    .line 77
    :cond_6
    if-eq v0, v4, :cond_7

    .line 78
    .line 79
    if-eq v0, v3, :cond_7

    .line 80
    .line 81
    if-eq v0, v2, :cond_7

    .line 82
    .line 83
    if-eq v0, v1, :cond_7

    .line 84
    .line 85
    const-string p1, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ltz p1, :cond_8

    .line 92
    .line 93
    :cond_7
    move v5, v6

    .line 94
    :cond_8
    return v5
.end method

.method private d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    aget-object v3, v3, v4

    .line 11
    .line 12
    aget v3, v3, p3

    .line 13
    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 18
    .line 19
    add-int/lit8 v4, p3, 0x1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-lt v4, v5, :cond_1

    .line 26
    .line 27
    move v5, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v5, v1

    .line 30
    :goto_0
    new-array v6, v0, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 31
    .line 32
    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 33
    .line 34
    aput-object v7, v6, v1

    .line 35
    .line 36
    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 37
    .line 38
    aput-object v7, v6, v2

    .line 39
    .line 40
    const v7, 0x7fffffff

    .line 41
    .line 42
    .line 43
    move v8, v7

    .line 44
    :goto_1
    if-gt v1, v2, :cond_7

    .line 45
    .line 46
    aget-object v9, v6, v1

    .line 47
    .line 48
    invoke-direct {p0, p1, v9, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_6

    .line 53
    .line 54
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 55
    .line 56
    aget-object v10, v6, v1

    .line 57
    .line 58
    if-eq p2, v10, :cond_2

    .line 59
    .line 60
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-static {v9}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    move v10, v0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move v10, v2

    .line 71
    :goto_2
    if-nez v5, :cond_3

    .line 72
    .line 73
    aget-object v11, v6, v1

    .line 74
    .line 75
    invoke-direct {p0, p1, v11, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    add-int/2addr v10, v11

    .line 80
    :cond_3
    if-ge v10, v8, :cond_4

    .line 81
    .line 82
    move-object v3, v9

    .line 83
    move v8, v10

    .line 84
    :cond_4
    add-int/lit8 v9, v1, 0x1

    .line 85
    .line 86
    rem-int/2addr v9, v0

    .line 87
    aget-object v9, v6, v9

    .line 88
    .line 89
    if-ne p2, v9, :cond_6

    .line 90
    .line 91
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 92
    .line 93
    if-nez v5, :cond_5

    .line 94
    .line 95
    invoke-direct {p0, p1, p2, v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    add-int/2addr v10, v0

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    move v10, v0

    .line 102
    :goto_3
    if-ge v10, v8, :cond_6

    .line 103
    .line 104
    move-object v3, v9

    .line 105
    move v8, v10

    .line 106
    :cond_6
    add-int/2addr v1, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_7
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 109
    .line 110
    invoke-direct {p0, p1, v1, p3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->c(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_b

    .line 115
    .line 116
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 117
    .line 118
    if-eq p2, v1, :cond_8

    .line 119
    .line 120
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 121
    .line 122
    move v5, v0

    .line 123
    goto :goto_4

    .line 124
    :cond_8
    move v5, v2

    .line 125
    :goto_4
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    const/16 v9, 0xf1

    .line 130
    .line 131
    if-ne v6, v9, :cond_9

    .line 132
    .line 133
    move v0, v2

    .line 134
    :cond_9
    add-int/2addr v0, p3

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-ge v0, v2, :cond_a

    .line 140
    .line 141
    invoke-direct {p0, p1, v1, v0}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/2addr v5, v0

    .line 146
    :cond_a
    if-ge v5, v8, :cond_b

    .line 147
    .line 148
    move-object v3, v4

    .line 149
    move v8, v5

    .line 150
    :cond_b
    if-eq v8, v7, :cond_c

    .line 151
    .line 152
    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    aget-object p1, p1, v0

    .line 159
    .line 160
    aput v8, p1, p3

    .line 161
    .line 162
    iget-object p1, p0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    aget-object p1, p1, p2

    .line 169
    .line 170
    aput-object v3, p1, p3

    .line 171
    .line 172
    return v8

    .line 173
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v1, "Bad character in input: ASCII value="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p2
.end method

.method private e(Ljava/lang/String;)[Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    new-array v4, v3, [I

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    aput v2, v4, v5

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v6, 0x4

    .line 17
    aput v6, v4, v2

    .line 18
    .line 19
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, [[I

    .line 26
    .line 27
    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    new-array v7, v3, [I

    .line 34
    .line 35
    aput v4, v7, v5

    .line 36
    .line 37
    aput v6, v7, v2

    .line 38
    .line 39
    const-class v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 40
    .line 41
    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 46
    .line 47
    iput-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 48
    .line 49
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 50
    .line 51
    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->d(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    .line 52
    .line 53
    .line 54
    new-instance v7, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    filled-new-array {v2}, [I

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    filled-new-array {v5}, [I

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    move v11, v2

    .line 72
    :goto_0
    if-ge v11, v10, :cond_10

    .line 73
    .line 74
    iget-object v12, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    aget-object v12, v12, v13

    .line 81
    .line 82
    aget-object v12, v12, v11

    .line 83
    .line 84
    sget-object v13, Lcom/google/zxing/oned/Code128Writer$a;->a:[I

    .line 85
    .line 86
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    aget v13, v13, v14

    .line 91
    .line 92
    const/16 v14, 0x65

    .line 93
    .line 94
    const/16 v15, 0x64

    .line 95
    .line 96
    if-eq v13, v5, :cond_5

    .line 97
    .line 98
    if-eq v13, v3, :cond_3

    .line 99
    .line 100
    const/4 v3, 0x3

    .line 101
    if-eq v13, v3, :cond_1

    .line 102
    .line 103
    if-eq v13, v6, :cond_0

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_0
    const/16 v3, 0x62

    .line 107
    .line 108
    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_1
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 113
    .line 114
    if-nez v11, :cond_2

    .line 115
    .line 116
    const/16 v4, 0x69

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const/16 v4, 0x63

    .line 120
    .line 121
    :goto_1
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    .line 122
    .line 123
    .line 124
    :goto_2
    move-object v4, v3

    .line 125
    goto :goto_5

    .line 126
    :cond_3
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 127
    .line 128
    if-nez v11, :cond_4

    .line 129
    .line 130
    const/16 v4, 0x68

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    move v4, v15

    .line 134
    :goto_3
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 139
    .line 140
    if-nez v11, :cond_6

    .line 141
    .line 142
    const/16 v4, 0x67

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    move v4, v14

    .line 146
    :goto_4
    invoke-static {v7, v4, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :goto_5
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 151
    .line 152
    const/16 v13, 0x66

    .line 153
    .line 154
    if-ne v4, v3, :cond_8

    .line 155
    .line 156
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    const/16 v12, 0xf1

    .line 161
    .line 162
    if-ne v3, v12, :cond_7

    .line 163
    .line 164
    invoke-static {v7, v13, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    .line 165
    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_7
    add-int/lit8 v3, v11, 0x2

    .line 169
    .line 170
    invoke-virtual {v1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v7, v3, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v3, v11, 0x1

    .line 182
    .line 183
    if-ge v3, v10, :cond_f

    .line 184
    .line 185
    move v11, v3

    .line 186
    goto :goto_7

    .line 187
    :cond_8
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    packed-switch v3, :pswitch_data_0

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    add-int/lit8 v14, v3, -0x20

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :pswitch_0
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 202
    .line 203
    if-ne v4, v3, :cond_9

    .line 204
    .line 205
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 206
    .line 207
    if-ne v12, v3, :cond_b

    .line 208
    .line 209
    :cond_9
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 210
    .line 211
    if-ne v4, v3, :cond_a

    .line 212
    .line 213
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 214
    .line 215
    if-ne v12, v3, :cond_a

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_a
    move v14, v15

    .line 219
    goto :goto_6

    .line 220
    :pswitch_1
    const/16 v14, 0x60

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :pswitch_2
    const/16 v14, 0x61

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :pswitch_3
    move v14, v13

    .line 227
    :cond_b
    :goto_6
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 228
    .line 229
    if-ne v4, v3, :cond_c

    .line 230
    .line 231
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 232
    .line 233
    if-ne v12, v3, :cond_d

    .line 234
    .line 235
    :cond_c
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    .line 236
    .line 237
    if-ne v4, v3, :cond_e

    .line 238
    .line 239
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 240
    .line 241
    if-ne v12, v3, :cond_e

    .line 242
    .line 243
    :cond_d
    if-gez v14, :cond_e

    .line 244
    .line 245
    add-int/lit8 v14, v14, 0x60

    .line 246
    .line 247
    :cond_e
    invoke-static {v7, v14, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b(Ljava/util/Collection;I[I[II)V

    .line 248
    .line 249
    .line 250
    :cond_f
    :goto_7
    add-int/2addr v11, v5

    .line 251
    const/4 v3, 0x2

    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_10
    const/4 v1, 0x0

    .line 255
    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->a:[[I

    .line 256
    .line 257
    iput-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->b:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    .line 258
    .line 259
    aget v1, v8, v2

    .line 260
    .line 261
    invoke-static {v7, v1}, Lcom/google/zxing/oned/Code128Writer;->m(Ljava/util/Collection;I)[Z

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    return-object v1

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static f(C)Z
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

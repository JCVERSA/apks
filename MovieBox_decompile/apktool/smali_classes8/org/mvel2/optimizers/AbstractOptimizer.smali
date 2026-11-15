.class public Lorg/mvel2/optimizers/AbstractOptimizer;
.super Lorg/mvel2/compiler/AbstractParser;
.source "source.java"


# static fields
.field protected static final BEAN:I = 0x0

.field protected static final COL:I = 0x2

.field protected static final METH:I = 0x1

.field protected static final WITH:I = 0x3


# instance fields
.field protected collection:Z

.field protected currType:Ljava/lang/Class;

.field protected nullSafe:Z

.field protected staticAccess:Z

.field protected tkStart:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mvel2/compiler/AbstractParser;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z

    .line 3
    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->staticAccess:Z

    return-void
.end method

.method protected constructor <init>(Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lorg/mvel2/compiler/AbstractParser;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z

    .line 8
    iput-boolean p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 10
    iput-boolean p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->staticAccess:Z

    return-void
.end method


# virtual methods
.method protected capture()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 4
    .line 5
    iget v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lorg/mvel2/compiler/AbstractParser;->trimRight(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iput v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 12
    .line 13
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Lorg/mvel2/compiler/AbstractParser;->trimLeft(I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v4, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 20
    .line 21
    sub-int/2addr v3, v4

    .line 22
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method protected findLastUnion()I
    .locals 7

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v2

    .line 11
    :goto_0
    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 12
    .line 13
    if-eq v0, v5, :cond_5

    .line 14
    .line 15
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 16
    .line 17
    aget-char v5, v5, v0

    .line 18
    .line 19
    const/16 v6, 0x2e

    .line 20
    .line 21
    if-eq v5, v6, :cond_2

    .line 22
    .line 23
    const/16 v6, 0x5b

    .line 24
    .line 25
    if-eq v5, v6, :cond_1

    .line 26
    .line 27
    const/16 v6, 0x5d

    .line 28
    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    .line 31
    const/16 v6, 0x7b

    .line 32
    .line 33
    if-eq v5, v6, :cond_1

    .line 34
    .line 35
    const/16 v6, 0x7d

    .line 36
    .line 37
    if-eq v5, v6, :cond_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    iput-boolean v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z

    .line 48
    .line 49
    :goto_1
    move v4, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    if-nez v3, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_2
    if-eq v4, v2, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    :goto_3
    return v4
.end method

.method protected nextSubToken()I
    .locals 12

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 8
    .line 9
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 10
    .line 11
    iput v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 12
    .line 13
    aget-char v3, v1, v2

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x3

    .line 17
    const/16 v6, 0x7b

    .line 18
    .line 19
    const/16 v7, 0x5b

    .line 20
    .line 21
    const/16 v8, 0x3f

    .line 22
    .line 23
    const/16 v9, 0x2e

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    if-eq v3, v9, :cond_3

    .line 27
    .line 28
    if-eq v3, v8, :cond_2

    .line 29
    .line 30
    if-eq v3, v7, :cond_1

    .line 31
    .line 32
    if-eq v3, v6, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sub-int/2addr v2, v10

    .line 36
    aget-char v1, v1, v2

    .line 37
    .line 38
    if-ne v1, v9, :cond_6

    .line 39
    .line 40
    return v5

    .line 41
    :cond_1
    return v4

    .line 42
    :cond_2
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 43
    .line 44
    if-ne v1, v2, :cond_6

    .line 45
    .line 46
    add-int/lit8 v1, v2, 0x1

    .line 47
    .line 48
    iput v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 49
    .line 50
    add-int/2addr v2, v10

    .line 51
    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 52
    .line 53
    iput-boolean v10, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 57
    .line 58
    add-int/2addr v3, v10

    .line 59
    iget v9, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 60
    .line 61
    const-string v11, "unexpected end of statement"

    .line 62
    .line 63
    if-eq v3, v9, :cond_c

    .line 64
    .line 65
    add-int/2addr v2, v10

    .line 66
    iput v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 67
    .line 68
    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 69
    .line 70
    aget-char v1, v1, v2

    .line 71
    .line 72
    if-eq v1, v8, :cond_5

    .line 73
    .line 74
    if-eq v1, v6, :cond_4

    .line 75
    .line 76
    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 86
    .line 87
    iput v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    return v5

    .line 91
    :cond_5
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 95
    .line 96
    add-int/2addr v1, v10

    .line 97
    iput v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    .line 98
    .line 99
    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 100
    .line 101
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 102
    .line 103
    if-eq v1, v2, :cond_b

    .line 104
    .line 105
    iput-boolean v10, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    .line 106
    .line 107
    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->fields:I

    .line 109
    .line 110
    :cond_6
    :goto_0
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 111
    .line 112
    add-int/2addr v1, v10

    .line 113
    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 114
    .line 115
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 116
    .line 117
    if-ge v1, v2, :cond_7

    .line 118
    .line 119
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 120
    .line 121
    aget-char v1, v2, v1

    .line 122
    .line 123
    invoke-static {v1}, Lorg/mvel2/util/m;->c0(I)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 131
    .line 132
    .line 133
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 134
    .line 135
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 136
    .line 137
    if-ge v1, v2, :cond_a

    .line 138
    .line 139
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 140
    .line 141
    aget-char v1, v2, v1

    .line 142
    .line 143
    const/16 v2, 0x28

    .line 144
    .line 145
    if-eq v1, v2, :cond_9

    .line 146
    .line 147
    if-eq v1, v7, :cond_8

    .line 148
    .line 149
    return v0

    .line 150
    :cond_8
    return v4

    .line 151
    :cond_9
    return v10

    .line 152
    :cond_a
    return v0

    .line 153
    :cond_b
    new-instance v0, Lorg/mvel2/CompileException;

    .line 154
    .line 155
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 156
    .line 157
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 158
    .line 159
    invoke-direct {v0, v11, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_c
    new-instance v0, Lorg/mvel2/CompileException;

    .line 164
    .line 165
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 166
    .line 167
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 168
    .line 169
    invoke-direct {v0, v11, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 170
    .line 171
    .line 172
    throw v0
.end method

.method protected scanTo(C)Z
    .locals 5

    .line 1
    :goto_0
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 8
    .line 9
    aget-char v3, v2, v0

    .line 10
    .line 11
    const/16 v4, 0x22

    .line 12
    .line 13
    if-eq v3, v4, :cond_0

    .line 14
    .line 15
    const/16 v4, 0x27

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {v3, v2, v0, v1}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 25
    .line 26
    :goto_1
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 27
    .line 28
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 29
    .line 30
    aget-char v0, v0, v1

    .line 31
    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method protected tryStaticAccess()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, -0x1

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    move v5, v4

    .line 10
    :goto_0
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 11
    .line 12
    if-le v3, v6, :cond_15

    .line 13
    .line 14
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 15
    .line 16
    aget-char v6, v6, v3

    .line 17
    .line 18
    const/16 v7, 0x5c

    .line 19
    .line 20
    const/16 v8, 0x22

    .line 21
    .line 22
    if-eq v6, v8, :cond_12

    .line 23
    .line 24
    const/16 v9, 0x27

    .line 25
    .line 26
    if-eq v6, v9, :cond_f

    .line 27
    .line 28
    const/16 v10, 0x29

    .line 29
    .line 30
    const/4 v11, 0x1

    .line 31
    if-eq v6, v10, :cond_b

    .line 32
    .line 33
    const/16 v10, 0x2e

    .line 34
    .line 35
    if-eq v6, v10, :cond_5

    .line 36
    .line 37
    const/16 v10, 0x7d

    .line 38
    .line 39
    if-eq v6, v10, :cond_0

    .line 40
    .line 41
    goto/16 :goto_e

    .line 42
    .line 43
    :cond_0
    goto :goto_3

    .line 44
    :goto_1
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 45
    .line 46
    if-le v3, v6, :cond_14

    .line 47
    .line 48
    if-eqz v11, :cond_14

    .line 49
    .line 50
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 51
    .line 52
    aget-char v6, v6, v3

    .line 53
    .line 54
    if-eq v6, v8, :cond_3

    .line 55
    .line 56
    if-eq v6, v9, :cond_3

    .line 57
    .line 58
    const/16 v12, 0x7b

    .line 59
    .line 60
    if-eq v6, v12, :cond_2

    .line 61
    .line 62
    if-eq v6, v10, :cond_1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    add-int/lit8 v11, v11, -0x1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    :goto_2
    iget v12, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 72
    .line 73
    if-le v3, v12, :cond_4

    .line 74
    .line 75
    iget-object v12, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 76
    .line 77
    aget-char v13, v12, v3

    .line 78
    .line 79
    if-eq v13, v6, :cond_4

    .line 80
    .line 81
    add-int/lit8 v13, v3, -0x1

    .line 82
    .line 83
    aget-char v12, v12, v13

    .line 84
    .line 85
    if-eq v12, v7, :cond_4

    .line 86
    .line 87
    add-int/lit8 v3, v3, -0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    if-nez v5, :cond_a

    .line 94
    .line 95
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 96
    .line 97
    if-eqz v5, :cond_6

    .line 98
    .line 99
    invoke-virtual {v5}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :goto_4
    new-instance v6, Ljava/lang/String;

    .line 113
    .line 114
    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 115
    .line 116
    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 117
    .line 118
    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 119
    .line 120
    sub-int/2addr v2, v8

    .line 121
    invoke-direct {v6, v7, v8, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 122
    .line 123
    .line 124
    :try_start_1
    sget-boolean v2, Lorg/mvel2/d;->j:Z

    .line 125
    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    const-string v2, ".class"

    .line 129
    .line 130
    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    add-int/lit8 v2, v2, -0x6

    .line 141
    .line 142
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    goto :goto_5

    .line 147
    :catch_0
    move-exception v2

    .line 148
    goto :goto_6

    .line 149
    :cond_7
    :goto_5
    invoke-static {v6, v11, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 153
    return-object v0

    .line 154
    :goto_6
    :try_start_2
    invoke-static {v6, v5, v2}, Lorg/mvel2/util/m;->F(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassNotFoundException;)Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 158
    return-object v0

    .line 159
    :catch_1
    :try_start_3
    new-instance v2, Ljava/lang/String;

    .line 160
    .line 161
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 162
    .line 163
    iget v7, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 164
    .line 165
    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 166
    .line 167
    sub-int v8, v3, v8

    .line 168
    .line 169
    invoke-direct {v2, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v5}, Lorg/mvel2/util/m;->H(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    new-instance v5, Ljava/lang/String;

    .line 177
    .line 178
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 179
    .line 180
    add-int/lit8 v7, v3, 0x1

    .line 181
    .line 182
    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 183
    .line 184
    sub-int/2addr v8, v3

    .line 185
    sub-int/2addr v8, v11

    .line 186
    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    .line 188
    .line 189
    :try_start_4
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 190
    .line 191
    .line 192
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 193
    return-object v0

    .line 194
    :catch_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    array-length v3, v2

    .line 199
    :goto_7
    if-ge v4, v3, :cond_9

    .line 200
    .line 201
    aget-object v6, v2, v4

    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_8

    .line 212
    .line 213
    return-object v6

    .line 214
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_9
    return-object v1

    .line 218
    :cond_a
    move v2, v3

    .line 219
    move v5, v4

    .line 220
    goto/16 :goto_e

    .line 221
    .line 222
    :cond_b
    add-int/lit8 v3, v3, -0x1

    .line 223
    .line 224
    move v2, v11

    .line 225
    :goto_8
    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 226
    .line 227
    if-le v3, v5, :cond_e

    .line 228
    .line 229
    if-eqz v2, :cond_e

    .line 230
    .line 231
    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 232
    .line 233
    aget-char v5, v5, v3

    .line 234
    .line 235
    if-eq v5, v8, :cond_c

    .line 236
    .line 237
    packed-switch v5, :pswitch_data_0

    .line 238
    .line 239
    .line 240
    goto :goto_a

    .line 241
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 242
    .line 243
    goto :goto_a

    .line 244
    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_c
    :goto_9
    :pswitch_2
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 248
    .line 249
    if-le v3, v6, :cond_d

    .line 250
    .line 251
    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 252
    .line 253
    aget-char v9, v6, v3

    .line 254
    .line 255
    if-eq v9, v5, :cond_d

    .line 256
    .line 257
    add-int/lit8 v9, v3, -0x1

    .line 258
    .line 259
    aget-char v6, v6, v9

    .line 260
    .line 261
    if-eq v6, v7, :cond_d

    .line 262
    .line 263
    add-int/lit8 v3, v3, -0x1

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_d
    :goto_a
    add-int/lit8 v3, v3, -0x1

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_e
    add-int/lit8 v2, v3, 0x1

    .line 270
    .line 271
    move v5, v11

    .line 272
    move v14, v3

    .line 273
    move v3, v2

    .line 274
    move v2, v14

    .line 275
    goto :goto_e

    .line 276
    :cond_f
    :goto_b
    add-int/lit8 v6, v3, -0x1

    .line 277
    .line 278
    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 279
    .line 280
    if-le v6, v8, :cond_11

    .line 281
    .line 282
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 283
    .line 284
    aget-char v10, v8, v6

    .line 285
    .line 286
    if-ne v10, v9, :cond_10

    .line 287
    .line 288
    add-int/lit8 v3, v3, -0x2

    .line 289
    .line 290
    aget-char v3, v8, v3

    .line 291
    .line 292
    if-eq v3, v7, :cond_10

    .line 293
    .line 294
    goto :goto_c

    .line 295
    :cond_10
    move v3, v6

    .line 296
    goto :goto_b

    .line 297
    :cond_11
    :goto_c
    move v3, v6

    .line 298
    goto :goto_e

    .line 299
    :cond_12
    :goto_d
    add-int/lit8 v6, v3, -0x1

    .line 300
    .line 301
    iget v9, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    .line 302
    .line 303
    if-le v6, v9, :cond_11

    .line 304
    .line 305
    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 306
    .line 307
    aget-char v10, v9, v6

    .line 308
    .line 309
    if-ne v10, v8, :cond_13

    .line 310
    .line 311
    add-int/lit8 v3, v3, -0x2

    .line 312
    .line 313
    aget-char v3, v9, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 314
    .line 315
    if-eq v3, v7, :cond_13

    .line 316
    .line 317
    goto :goto_c

    .line 318
    :cond_13
    move v3, v6

    .line 319
    goto :goto_d

    .line 320
    :cond_14
    :goto_e
    add-int/lit8 v3, v3, -0x1

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :catch_3
    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 325
    .line 326
    :cond_15
    return-object v1

    .line 327
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whiteSpaceSkip()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 8
    .line 9
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 10
    .line 11
    aget-char v0, v0, v1

    .line 12
    .line 13
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 24
    .line 25
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

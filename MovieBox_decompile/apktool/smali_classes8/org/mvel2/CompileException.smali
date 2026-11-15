.class public Lorg/mvel2/CompileException;
.super Ljava/lang/RuntimeException;
.source "source.java"


# instance fields
.field private column:I

.field private cursor:I

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation
.end field

.field private evaluationContext:Ljava/lang/Object;

.field private expr:[C

.field private lastLineStart:I

.field private lineNumber:I

.field private msgOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[CILorg/mvel2/ParserContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;[CI",
            "Lorg/mvel2/ParserContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    const/4 p5, 0x1

    .line 3
    iput p5, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 4
    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    .line 5
    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    .line 6
    iput-object p3, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 7
    iput p4, p0, Lorg/mvel2/CompileException;->cursor:I

    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/c;

    .line 10
    invoke-virtual {p1}, Lorg/mvel2/c;->c()I

    move-result p3

    iput p3, p0, Lorg/mvel2/CompileException;->cursor:I

    .line 11
    invoke-virtual {p1}, Lorg/mvel2/c;->e()I

    move-result p3

    iput p3, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 12
    invoke-virtual {p1}, Lorg/mvel2/c;->b()I

    move-result p1

    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/mvel2/CompileException;->errors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CI)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 24
    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    .line 25
    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    .line 26
    iput-object p2, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 27
    iput p3, p0, Lorg/mvel2/CompileException;->cursor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CILjava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    const/4 p4, 0x1

    .line 16
    iput p4, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 17
    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    .line 18
    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    .line 19
    iput-object p2, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 20
    iput p3, p0, Lorg/mvel2/CompileException;->cursor:I

    return-void
.end method

.method private calcRowAndColumn()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_6

    .line 5
    .line 6
    iget v2, p0, Lorg/mvel2/CompileException;->column:I

    .line 7
    .line 8
    if-le v2, v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez v2, :cond_6

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    move v2, v1

    .line 25
    move v3, v2

    .line 26
    :goto_0
    iget v4, p0, Lorg/mvel2/CompileException;->cursor:I

    .line 27
    .line 28
    if-ge v0, v4, :cond_5

    .line 29
    .line 30
    iget-object v4, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 31
    .line 32
    array-length v5, v4

    .line 33
    if-ge v0, v5, :cond_5

    .line 34
    .line 35
    aget-char v4, v4, v0

    .line 36
    .line 37
    const/16 v5, 0xa

    .line 38
    .line 39
    if-eq v4, v5, :cond_3

    .line 40
    .line 41
    const/16 v5, 0xd

    .line 42
    .line 43
    if-eq v4, v5, :cond_4

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    move v3, v1

    .line 51
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    iput v2, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 55
    .line 56
    iput v3, p0, Lorg/mvel2/CompileException;->column:I

    .line 57
    .line 58
    :cond_6
    :goto_2
    return-void
.end method

.method private generateErrorMessage()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/mvel2/util/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/mvel2/util/s;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "[Error: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "]\n"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/mvel2/util/s;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const-string v2, "[Near : {... "

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/mvel2/util/s;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-int/2addr v2, v1

    .line 50
    iget-object v1, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 51
    .line 52
    iget v3, p0, Lorg/mvel2/CompileException;->cursor:I

    .line 53
    .line 54
    invoke-direct {p0, v1, v3}, Lorg/mvel2/CompileException;->showCodeNearError([CI)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lorg/mvel2/util/s;->b(Ljava/lang/CharSequence;)Lorg/mvel2/util/s;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v3, " ....}]\n"

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/16 v3, 0x20

    .line 69
    .line 70
    invoke-static {v3, v2}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 78
    .line 79
    if-gez v1, :cond_0

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 83
    .line 84
    :cond_0
    iget v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 85
    .line 86
    invoke-static {v3, v1}, Lorg/mvel2/util/m;->A0(CI)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const/16 v2, 0x5e

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->a(C)Lorg/mvel2/util/s;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lorg/mvel2/CompileException;->calcRowAndColumn()V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lorg/mvel2/CompileException;->evaluationContext:Ljava/lang/Object;

    .line 103
    .line 104
    const-string v2, "\n"

    .line 105
    .line 106
    if-eqz v1, :cond_1

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "In "

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v2, p0, Lorg/mvel2/CompileException;->evaluationContext:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->c(Ljava/lang/Object;)Lorg/mvel2/util/s;

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget v1, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 125
    .line 126
    const/4 v3, -0x1

    .line 127
    if-eq v1, v3, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "[Line: "

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget v3, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v3, ", Column: "

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v3, p0, Lorg/mvel2/CompileException;->column:I

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, "]"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0
.end method

.method private showCodeNearError([CI)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Unknown"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    add-int/lit8 v0, p2, -0x14

    .line 7
    .line 8
    add-int/lit8 v1, p2, 0x1e

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    if-le v1, v2, :cond_1

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    add-int/lit8 v0, p2, -0x32

    .line 15
    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    if-gez v0, :cond_2

    .line 18
    .line 19
    move v0, v2

    .line 20
    :cond_2
    sub-int v3, v1, v0

    .line 21
    .line 22
    invoke-static {p1, v0, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v3, 0xa

    .line 31
    .line 32
    if-ge p2, v1, :cond_6

    .line 33
    .line 34
    move v1, p2

    .line 35
    if-lez p2, :cond_3

    .line 36
    .line 37
    :goto_0
    if-lez v1, :cond_3

    .line 38
    .line 39
    add-int/lit8 v4, v1, -0x1

    .line 40
    .line 41
    aget-char v4, p1, v4

    .line 42
    .line 43
    invoke-static {v4}, Lorg/mvel2/util/m;->q0(C)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sub-int v4, p2, v1

    .line 53
    .line 54
    new-instance v5, Ljava/lang/String;

    .line 55
    .line 56
    array-length v6, p1

    .line 57
    sub-int/2addr v6, v1

    .line 58
    invoke-direct {v5, p1, v1, v6}, Ljava/lang/String;-><init>([CII)V

    .line 59
    .line 60
    .line 61
    move p1, v2

    .line 62
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ge p1, v1, :cond_5

    .line 67
    .line 68
    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eq v1, v3, :cond_4

    .line 73
    .line 74
    const/16 v6, 0x29

    .line 75
    .line 76
    if-eq v1, v6, :cond_4

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/16 v1, 0x1e

    .line 90
    .line 91
    if-lt p1, v1, :cond_7

    .line 92
    .line 93
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    const/4 v5, 0x0

    .line 99
    move v4, v2

    .line 100
    :cond_7
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/4 v6, -0x1

    .line 109
    if-ne p1, v6, :cond_a

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz v5, :cond_8

    .line 116
    .line 117
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v0, v4

    .line 122
    iput v0, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    sub-int/2addr v0, v2

    .line 138
    sub-int/2addr v1, v0

    .line 139
    iput v1, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 140
    .line 141
    :goto_3
    iget v0, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 142
    .line 143
    if-nez v0, :cond_9

    .line 144
    .line 145
    if-nez v4, :cond_9

    .line 146
    .line 147
    iput p2, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 148
    .line 149
    :cond_9
    return-object p1

    .line 150
    :cond_a
    if-nez v5, :cond_b

    .line 151
    .line 152
    move v7, v2

    .line 153
    goto :goto_4

    .line 154
    :cond_b
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    :goto_4
    if-eq p1, v6, :cond_d

    .line 159
    .line 160
    if-ne p1, v1, :cond_d

    .line 161
    .line 162
    if-le p1, v7, :cond_c

    .line 163
    .line 164
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    :goto_5
    move-object v0, p1

    .line 169
    goto :goto_2

    .line 170
    :cond_c
    if-ge p1, v7, :cond_7

    .line 171
    .line 172
    add-int/lit8 p1, p1, 0x1

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    goto :goto_5

    .line 183
    :cond_d
    if-ge p1, v7, :cond_e

    .line 184
    .line 185
    add-int/lit8 p1, p1, 0x1

    .line 186
    .line 187
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_5

    .line 192
    :cond_e
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    goto :goto_5
.end method


# virtual methods
.method public getCodeNearError()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 2
    .line 3
    iget v1, p0, Lorg/mvel2/CompileException;->cursor:I

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/mvel2/CompileException;->showCodeNearError([CI)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/CompileException;->column:I

    .line 2
    .line 3
    return v0
.end method

.method public getCursor()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/CompileException;->cursor:I

    .line 2
    .line 3
    return v0
.end method

.method public getCursorOffet()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/CompileException;->msgOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mvel2/CompileException;->errors:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    return-object v0
.end method

.method public getExpr()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastLineStart()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mvel2/CompileException;->generateErrorMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public setColumn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/CompileException;->column:I

    .line 2
    .line 3
    return-void
.end method

.method public setCursor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/CompileException;->cursor:I

    .line 2
    .line 3
    return-void
.end method

.method public setErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mvel2/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/mvel2/CompileException;->errors:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setEvaluationContext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/CompileException;->evaluationContext:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setExpr([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/CompileException;->expr:[C

    .line 2
    .line 3
    return-void
.end method

.method public setLastLineStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/CompileException;->lastLineStart:I

    .line 2
    .line 3
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/CompileException;->lineNumber:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mvel2/CompileException;->generateErrorMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

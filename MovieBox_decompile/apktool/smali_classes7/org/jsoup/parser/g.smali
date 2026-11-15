.class public Lorg/jsoup/parser/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 6
    .line 7
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private r()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lorg/jsoup/helper/c;->o()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-char v4, p0, v2

    .line 15
    .line 16
    const/16 v5, 0x5c

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-ne v3, v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    move v3, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public a(CC)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v5, v0

    .line 4
    move v6, v5

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    move v4, v3

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    if-eqz v7, :cond_1

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->c()C

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/16 v9, 0x5c

    .line 26
    .line 27
    if-eq v1, v9, :cond_7

    .line 28
    .line 29
    :cond_2
    const/16 v9, 0x27

    .line 30
    .line 31
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eqz v9, :cond_3

    .line 40
    .line 41
    if-eq v7, p1, :cond_3

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    xor-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/16 v9, 0x22

    .line 49
    .line 50
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_4

    .line 59
    .line 60
    if-eq v7, p1, :cond_4

    .line 61
    .line 62
    if-nez v3, :cond_4

    .line 63
    .line 64
    xor-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    :cond_4
    :goto_0
    if-nez v3, :cond_9

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_6

    .line 80
    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    if-ne v5, v0, :cond_7

    .line 84
    .line 85
    iget v5, p0, Lorg/jsoup/parser/g;->b:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_7

    .line 97
    .line 98
    add-int/lit8 v4, v4, -0x1

    .line 99
    .line 100
    :cond_7
    :goto_1
    if-lez v4, :cond_8

    .line 101
    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    iget v6, p0, Lorg/jsoup/parser/g;->b:I

    .line 105
    .line 106
    :cond_8
    move v1, v7

    .line 107
    :cond_9
    :goto_2
    if-gtz v4, :cond_0

    .line 108
    .line 109
    :goto_3
    if-ltz v6, :cond_a

    .line 110
    .line 111
    iget-object p1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    goto :goto_4

    .line 118
    :cond_a
    const-string p1, ""

    .line 119
    .line 120
    :goto_4
    if-lez v4, :cond_b

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v0, "Did not find balanced marker at \'"

    .line 128
    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, "\'"

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_b
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->k(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public c()C
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/jsoup/parser/g;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->l(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-direct {p0}, Lorg/jsoup/parser/g;->r()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gt p1, v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 18
    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "Queue not long enough to consume sequence"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "Queue did not match expected sequence"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [C

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/g;->m([C)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 35
    .line 36
    iget v2, p0, Lorg/jsoup/parser/g;->b:I

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public f()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "_"

    .line 16
    .line 17
    const-string v2, "-"

    .line 18
    .line 19
    const-string v3, "*|"

    .line 20
    .line 21
    const-string v4, "|"

    .line 22
    .line 23
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/g;->n([Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 41
    .line 42
    iget v2, p0, Lorg/jsoup/parser/g;->b:I

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->q()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public varargs h([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->n([Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public i()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->o()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/g;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->l(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v2, p0, Lorg/jsoup/parser/g;->b:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v3, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public varargs m([C)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    .line 13
    aget-char v3, p1, v2

    .line 14
    .line 15
    iget-object v4, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget v5, p0, Lorg/jsoup/parser/g;->b:I

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, v3, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return v1
.end method

.method public varargs n([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    invoke-virtual {p0, v3}, Lorg/jsoup/parser/g;->l(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lorg/jsoup/helper/c;->h(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 20
    .line 21
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

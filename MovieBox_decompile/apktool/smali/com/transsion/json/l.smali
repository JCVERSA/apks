.class public Lcom/transsion/json/l;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field private final b:Ljava/io/Reader;

.field private c:C

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/json/l;->b:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/transsion/json/l;->d:Z

    .line 4
    iput p1, p0, Lcom/transsion/json/l;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/transsion/json/l;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/transsion/json/k;

    .line 14
    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "Duplicate key \""

    .line 21
    .line 22
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, "\""

    .line 29
    .line 30
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const/16 v3, 0x2d

    .line 20
    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    const/16 v3, 0x2e

    .line 24
    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    const/16 v3, 0x2b

    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    const/16 v3, 0x65

    .line 32
    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    const/16 v3, 0x45

    .line 36
    .line 37
    if-eq v2, v3, :cond_0

    .line 38
    .line 39
    return v0

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method private i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string v0, "true"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    const-string v0, "false"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    const-string v0, "null"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1

    .line 42
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/json/l;->g(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    new-instance v0, Lcom/transsion/json/n;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lcom/transsion/json/n;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    return-object p1
.end method

.method private l()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x7b

    .line 11
    .line 12
    if-ne v1, v2, :cond_8

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_7

    .line 19
    .line 20
    const/16 v2, 0x7d

    .line 21
    .line 22
    if-eq v1, v2, :cond_6

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/json/l;->j()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0x3d

    .line 40
    .line 41
    if-ne v3, v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/json/l;->f()C

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/16 v4, 0x3e

    .line 48
    .line 49
    if-eq v3, v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/16 v4, 0x3a

    .line 56
    .line 57
    if-ne v3, v4, :cond_5

    .line 58
    .line 59
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/json/l;->j()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {p0, v0, v1, v3}, Lcom/transsion/json/l;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/16 v3, 0x2c

    .line 71
    .line 72
    if-eq v1, v3, :cond_3

    .line 73
    .line 74
    const/16 v3, 0x3b

    .line 75
    .line 76
    if-eq v1, v3, :cond_3

    .line 77
    .line 78
    if-ne v1, v2, :cond_2

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_2
    const-string v0, "Expected a \',\' or \'}\'"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    throw v0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-ne v1, v2, :cond_4

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const-string v0, "Expected a \':\' after a key"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    throw v0

    .line 106
    :cond_6
    return-object v0

    .line 107
    :cond_7
    const-string v0, "A JSONObject text must end with \'}\'"

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    throw v0

    .line 114
    :cond_8
    const-string v0, "A JSONObject text must begin with \'{\'"

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/transsion/json/k;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/json/k;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/json/l;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public b(C)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/json/l;->f()C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_9

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    if-eq v1, v2, :cond_9

    .line 15
    .line 16
    const/16 v3, 0xd

    .line 17
    .line 18
    if-eq v1, v3, :cond_9

    .line 19
    .line 20
    const/16 v4, 0x5c

    .line 21
    .line 22
    if-eq v1, v4, :cond_1

    .line 23
    .line 24
    if-ne v1, p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/json/l;->f()C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v4, 0x62

    .line 40
    .line 41
    if-eq v1, v4, :cond_8

    .line 42
    .line 43
    const/16 v4, 0x66

    .line 44
    .line 45
    if-eq v1, v4, :cond_7

    .line 46
    .line 47
    const/16 v4, 0x6e

    .line 48
    .line 49
    if-eq v1, v4, :cond_6

    .line 50
    .line 51
    const/16 v2, 0x72

    .line 52
    .line 53
    if-eq v1, v2, :cond_5

    .line 54
    .line 55
    const/16 v2, 0x78

    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    if-eq v1, v2, :cond_4

    .line 60
    .line 61
    const/16 v2, 0x74

    .line 62
    .line 63
    if-eq v1, v2, :cond_3

    .line 64
    .line 65
    const/16 v2, 0x75

    .line 66
    .line 67
    if-eq v1, v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v1, 0x4

    .line 74
    invoke-virtual {p0, v1}, Lcom/transsion/json/l;->c(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-char v1, v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/16 v1, 0x9

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/4 v1, 0x2

    .line 94
    invoke-virtual {p0, v1}, Lcom/transsion/json/l;->c(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    int-to-char v1, v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const/16 v1, 0xc

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    const/16 v1, 0x8

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_9
    const-string p1, "Unterminated string"

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    throw p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-array v0, p1, [C

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/transsion/json/l;->d:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean v3, p0, Lcom/transsion/json/l;->d:Z

    .line 15
    .line 16
    iget-char v1, p0, Lcom/transsion/json/l;->c:C

    .line 17
    .line 18
    aput-char v1, v0, v3

    .line 19
    .line 20
    move v3, v2

    .line 21
    :cond_1
    :goto_0
    if-ge v3, p1, :cond_2

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/transsion/json/l;->b:Ljava/io/Reader;

    .line 24
    .line 25
    sub-int v4, p1, v3

    .line 26
    .line 27
    invoke-virtual {v1, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v4, -0x1

    .line 32
    if-eq v1, v4, :cond_2

    .line 33
    .line 34
    add-int/2addr v3, v1

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Lcom/transsion/json/k;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lcom/transsion/json/k;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_2
    iget v1, p0, Lcom/transsion/json/l;->a:I

    .line 44
    .line 45
    add-int/2addr v1, v3

    .line 46
    iput v1, p0, Lcom/transsion/json/l;->a:I

    .line 47
    .line 48
    if-lt v3, p1, :cond_3

    .line 49
    .line 50
    sub-int/2addr p1, v2

    .line 51
    aget-char p1, v0, p1

    .line 52
    .line 53
    iput-char p1, p0, Lcom/transsion/json/l;->c:C

    .line 54
    .line 55
    new-instance p1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_3
    const-string p1, "Substring bounds error"

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    throw p1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/json/l;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/transsion/json/l;->a:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/transsion/json/l;->a:I

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/transsion/json/l;->d:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/transsion/json/k;

    .line 17
    .line 18
    const-string v1, "Stepping back two steps is not supported"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/transsion/json/k;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public f()C
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/json/l;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/transsion/json/l;->d:Z

    .line 7
    .line 8
    iget-char v0, p0, Lcom/transsion/json/l;->c:C

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/transsion/json/l;->a:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/transsion/json/l;->a:I

    .line 17
    .line 18
    :cond_0
    return v0

    .line 19
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/json/l;->b:Ljava/io/Reader;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-gtz v0, :cond_2

    .line 26
    .line 27
    iput-char v1, p0, Lcom/transsion/json/l;->c:C

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget v1, p0, Lcom/transsion/json/l;->a:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    iput v1, p0, Lcom/transsion/json/l;->a:I

    .line 35
    .line 36
    int-to-char v0, v0

    .line 37
    iput-char v0, p0, Lcom/transsion/json/l;->c:C

    .line 38
    .line 39
    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lcom/transsion/json/k;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lcom/transsion/json/k;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method

.method public h()C
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/json/l;->f()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    :cond_1
    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/16 v1, 0x5b

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x7b

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/16 v1, 0x27

    .line 18
    .line 19
    if-eq v0, v1, :cond_4

    .line 20
    .line 21
    const/16 v1, 0x28

    .line 22
    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/16 v2, 0x20

    .line 31
    .line 32
    if-lt v0, v2, :cond_0

    .line 33
    .line 34
    const-string v2, ",:]}/\\\"[{;=#"

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-gez v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/json/l;->f()C

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, ""

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/transsion/json/l;->i(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_1
    const-string v0, "Missing value"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    throw v0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/transsion/json/l;->l()Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/transsion/json/l;->k()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->b(C)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x5b

    .line 11
    .line 12
    const/16 v3, 0x29

    .line 13
    .line 14
    const/16 v4, 0x5d

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    move v1, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, 0x28

    .line 21
    .line 22
    if-ne v1, v2, :cond_8

    .line 23
    .line 24
    move v1, v3

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, v4, :cond_1

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v5, 0x2c

    .line 40
    .line 41
    if-ne v2, v5, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/transsion/json/l;->j()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eq v2, v3, :cond_6

    .line 66
    .line 67
    if-eq v2, v5, :cond_4

    .line 68
    .line 69
    const/16 v5, 0x3b

    .line 70
    .line 71
    if-eq v2, v5, :cond_4

    .line 72
    .line 73
    if-ne v2, v4, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const-string v0, "Expected a \',\' or \']\'"

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    throw v0

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/json/l;->h()C

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-ne v2, v4, :cond_5

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/json/l;->d()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    :goto_3
    if-ne v1, v2, :cond_7

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "Expected a \'"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "\'"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    throw v0

    .line 124
    :cond_8
    const-string v0, "A JSONArray text must start with \'[\'"

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/transsion/json/l;->a(Ljava/lang/String;)Lcom/transsion/json/k;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " at character "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/transsion/json/l;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

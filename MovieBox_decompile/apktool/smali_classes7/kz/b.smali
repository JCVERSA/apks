.class public abstract Lkz/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:[Z

.field private static b:[C

.field private static c:[C

.field private static d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xf

    .line 5
    .line 6
    const/16 v3, 0x80

    .line 7
    .line 8
    new-array v4, v3, [Z

    .line 9
    .line 10
    sput-object v4, Lkz/b;->a:[Z

    .line 11
    .line 12
    new-array v4, v3, [C

    .line 13
    .line 14
    sput-object v4, Lkz/b;->b:[C

    .line 15
    .line 16
    new-array v3, v3, [C

    .line 17
    .line 18
    sput-object v3, Lkz/b;->c:[C

    .line 19
    .line 20
    const/16 v3, 0x46

    .line 21
    .line 22
    const/16 v4, 0x37

    .line 23
    .line 24
    const/16 v5, 0x10

    .line 25
    .line 26
    new-array v5, v5, [C

    .line 27
    .line 28
    fill-array-data v5, :array_0

    .line 29
    .line 30
    .line 31
    sput-object v5, Lkz/b;->d:[C

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    move v6, v5

    .line 35
    :goto_0
    if-ge v6, v0, :cond_0

    .line 36
    .line 37
    sget-object v7, Lkz/b;->a:[Z

    .line 38
    .line 39
    aput-boolean v1, v7, v6

    .line 40
    .line 41
    sget-object v7, Lkz/b;->b:[C

    .line 42
    .line 43
    sget-object v8, Lkz/b;->d:[C

    .line 44
    .line 45
    shr-int/lit8 v9, v6, 0x4

    .line 46
    .line 47
    aget-char v9, v8, v9

    .line 48
    .line 49
    aput-char v9, v7, v6

    .line 50
    .line 51
    sget-object v7, Lkz/b;->c:[C

    .line 52
    .line 53
    and-int/lit8 v9, v6, 0xf

    .line 54
    .line 55
    aget-char v8, v8, v9

    .line 56
    .line 57
    aput-char v8, v7, v6

    .line 58
    .line 59
    add-int/2addr v6, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lkz/b;->a:[Z

    .line 62
    .line 63
    const/16 v6, 0x7f

    .line 64
    .line 65
    aput-boolean v1, v0, v6

    .line 66
    .line 67
    sget-object v0, Lkz/b;->b:[C

    .line 68
    .line 69
    aput-char v4, v0, v6

    .line 70
    .line 71
    sget-object v0, Lkz/b;->c:[C

    .line 72
    .line 73
    aput-char v3, v0, v6

    .line 74
    .line 75
    new-array v0, v2, [C

    .line 76
    .line 77
    fill-array-data v0, :array_1

    .line 78
    .line 79
    .line 80
    :goto_1
    if-ge v5, v2, :cond_1

    .line 81
    .line 82
    aget-char v3, v0, v5

    .line 83
    .line 84
    sget-object v4, Lkz/b;->a:[Z

    .line 85
    .line 86
    aput-boolean v1, v4, v3

    .line 87
    .line 88
    sget-object v4, Lkz/b;->b:[C

    .line 89
    .line 90
    sget-object v6, Lkz/b;->d:[C

    .line 91
    .line 92
    shr-int/lit8 v7, v3, 0x4

    .line 93
    .line 94
    aget-char v7, v6, v7

    .line 95
    .line 96
    aput-char v7, v4, v3

    .line 97
    .line 98
    sget-object v4, Lkz/b;->c:[C

    .line 99
    .line 100
    and-int/lit8 v7, v3, 0xf

    .line 101
    .line 102
    aget-char v6, v6, v7

    .line 103
    .line 104
    aput-char v6, v4, v3

    .line 105
    .line 106
    add-int/2addr v5, v1

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    return-void

    .line 109
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/text/StringCharacterIterator;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    :goto_0
    const v3, 0xffff

    .line 30
    .line 31
    .line 32
    if-eq p0, v3, :cond_3

    .line 33
    .line 34
    if-ne p0, v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eq p0, v3, :cond_2

    .line 41
    .line 42
    const/16 v4, 0x10

    .line 43
    .line 44
    invoke-static {p0, v4}, Ljava/lang/Character;->digit(CI)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eq v5, v3, :cond_2

    .line 53
    .line 54
    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    shl-int/lit8 p0, p0, 0x4

    .line 59
    .line 60
    add-int/2addr p0, v3

    .line 61
    int-to-char p0, p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string p0, "UTF-8"

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v1

    .line 8
    :goto_0
    const/16 v4, 0x25

    .line 9
    .line 10
    if-ge v3, v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/16 v6, 0x80

    .line 17
    .line 18
    if-lt v5, v6, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    sget-object v6, Lkz/b;->a:[Z

    .line 22
    .line 23
    aget-boolean v6, v6, v5

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuffer;

    .line 30
    .line 31
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    sget-object v4, Lkz/b;->b:[C

    .line 42
    .line 43
    aget-char v4, v4, v5

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    sget-object v4, Lkz/b;->c:[C

    .line 49
    .line 50
    aget-char v4, v4, v5

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-eqz v2, :cond_3

    .line 57
    .line 58
    int-to-char v4, v5

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :goto_2
    if-ge v3, v0, :cond_8

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuffer;

    .line 70
    .line 71
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v3, "UTF-8"

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    array-length v3, v0

    .line 89
    :goto_3
    if-ge v1, v3, :cond_8

    .line 90
    .line 91
    aget-byte v5, v0, v1

    .line 92
    .line 93
    if-gez v5, :cond_6

    .line 94
    .line 95
    add-int/lit16 v5, v5, 0x100

    .line 96
    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    sget-object v6, Lkz/b;->d:[C

    .line 101
    .line 102
    shr-int/lit8 v7, v5, 0x4

    .line 103
    .line 104
    aget-char v6, v6, v7

    .line 105
    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    sget-object v6, Lkz/b;->d:[C

    .line 110
    .line 111
    and-int/lit8 v5, v5, 0xf

    .line 112
    .line 113
    aget-char v5, v6, v5

    .line 114
    .line 115
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    sget-object v6, Lkz/b;->a:[Z

    .line 120
    .line 121
    aget-boolean v6, v6, v5

    .line 122
    .line 123
    if-eqz v6, :cond_7

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    sget-object v6, Lkz/b;->b:[C

    .line 129
    .line 130
    aget-char v6, v6, v5

    .line 131
    .line 132
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    sget-object v6, Lkz/b;->c:[C

    .line 136
    .line 137
    aget-char v5, v6, v5

    .line 138
    .line 139
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    int-to-char v5, v5

    .line 144
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    .line 146
    .line 147
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_8
    if-nez v2, :cond_9

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :goto_5
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lkz/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const-string v1, "file"

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 39
    .line 40
    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/16 v1, 0x3f

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-gez v1, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/16 v0, 0x2f

    .line 72
    .line 73
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    .line 80
    .line 81
    const/16 v1, 0x3b

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    if-ne v0, v1, :cond_2

    .line 85
    .line 86
    const-string v0, "\\"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v1, 0x2

    .line 99
    if-le v0, v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    const/16 v0, 0x3a

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/4 v1, -0x1

    .line 118
    if-le v0, v1, :cond_2

    .line 119
    .line 120
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    :cond_2
    :try_start_1
    invoke-static {p0}, Lkz/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "user.dir"

    .line 129
    .line 130
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v4, ":"

    .line 135
    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-lez v4, :cond_3

    .line 141
    .line 142
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_3

    .line 149
    .line 150
    new-instance v5, Ljava/lang/StringBuffer;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .line 154
    .line 155
    add-int/2addr v4, v3

    .line 156
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    goto :goto_2

    .line 171
    :catch_1
    move-exception v0

    .line 172
    goto :goto_3

    .line 173
    :cond_3
    :goto_2
    return-object v0

    .line 174
    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuffer;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v3, "Could not convert URI "

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    .line 188
    .line 189
    const-string p0, " to path: "

    .line 190
    .line 191
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v1

    .line 209
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    new-instance v1, Ljava/lang/StringBuffer;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v2, "Can only handle valid file: URIs, not "

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0
.end method

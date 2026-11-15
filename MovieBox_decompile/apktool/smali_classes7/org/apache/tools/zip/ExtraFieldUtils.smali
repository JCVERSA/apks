.class public Lorg/apache/tools/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final WORD:I = 0x4

.field static synthetic class$org$apache$tools$zip$AsiExtraField:Ljava/lang/Class;

.field static synthetic class$org$apache$tools$zip$JarMarker:Ljava/lang/Class;

.field private static implementations:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Hashtable;

    .line 7
    .line 8
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->class$org$apache$tools$zip$AsiExtraField:Ljava/lang/Class;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "org.apache.tools.zip.AsiExtraField"

    .line 13
    .line 14
    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->class$org$apache$tools$zip$AsiExtraField:Ljava/lang/Class;

    .line 19
    .line 20
    :cond_0
    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->class$org$apache$tools$zip$JarMarker:Ljava/lang/Class;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "org.apache.tools.zip.JarMarker"

    .line 28
    .line 29
    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->class$org$apache$tools$zip$JarMarker:Ljava/lang/Class;

    .line 34
    .line 35
    :cond_1
    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static createExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/apache/tools/zip/ZipExtraField;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/UnrecognizedExtraField;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/tools/zip/ZipShort;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static mergeCentralDirectoryData([Lorg/apache/tools/zip/ZipExtraField;)[B
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    array-length v3, p0

    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    aget-object v3, p0, v2

    .line 10
    .line 11
    invoke-interface {v3}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v0, v3

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-array v0, v0, [B

    .line 24
    .line 25
    move v2, v1

    .line 26
    move v3, v2

    .line 27
    :goto_1
    array-length v4, p0

    .line 28
    if-ge v2, v4, :cond_1

    .line 29
    .line 30
    aget-object v4, p0, v2

    .line 31
    .line 32
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x2

    .line 41
    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    aget-object v4, p0, v2

    .line 45
    .line 46
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    add-int/lit8 v6, v3, 0x2

    .line 55
    .line 56
    invoke-static {v4, v1, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    aget-object v4, p0, v2

    .line 60
    .line 61
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryData()[B

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    add-int/lit8 v5, v3, 0x4

    .line 66
    .line 67
    array-length v6, v4

    .line 68
    invoke-static {v4, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    array-length v4, v4

    .line 72
    add-int/lit8 v4, v4, 0x4

    .line 73
    .line 74
    add-int/2addr v3, v4

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    return-object v0
.end method

.method public static mergeLocalFileDataData([Lorg/apache/tools/zip/ZipExtraField;)[B
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    array-length v3, p0

    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    aget-object v3, p0, v2

    .line 10
    .line 11
    invoke-interface {v3}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v0, v3

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-array v0, v0, [B

    .line 24
    .line 25
    move v2, v1

    .line 26
    move v3, v2

    .line 27
    :goto_1
    array-length v4, p0

    .line 28
    if-ge v2, v4, :cond_1

    .line 29
    .line 30
    aget-object v4, p0, v2

    .line 31
    .line 32
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x2

    .line 41
    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    aget-object v4, p0, v2

    .line 45
    .line 46
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    add-int/lit8 v6, v3, 0x2

    .line 55
    .line 56
    invoke-static {v4, v1, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    aget-object v4, p0, v2

    .line 60
    .line 61
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataData()[B

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    add-int/lit8 v5, v3, 0x4

    .line 66
    .line 67
    array-length v6, v4

    .line 68
    invoke-static {v4, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    array-length v4, v4

    .line 72
    add-int/lit8 v4, v4, 0x4

    .line 73
    .line 74
    add-int/2addr v3, v4

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    return-object v0
.end method

.method public static parse([B)[Lorg/apache/tools/zip/ZipExtraField;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    add-int/lit8 v2, v2, -0x4

    .line 9
    .line 10
    const-string v3, " is in unknown format"

    .line 11
    .line 12
    const-string v4, "data starting at "

    .line 13
    .line 14
    if-gt v1, v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Lorg/apache/tools/zip/ZipShort;

    .line 17
    .line 18
    invoke-direct {v2, p0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Lorg/apache/tools/zip/ZipShort;

    .line 22
    .line 23
    add-int/lit8 v6, v1, 0x2

    .line 24
    .line 25
    invoke-direct {v5, p0, v6}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    add-int/lit8 v6, v1, 0x4

    .line 33
    .line 34
    add-int v7, v6, v5

    .line 35
    .line 36
    array-length v8, p0

    .line 37
    if-gt v7, v8, :cond_0

    .line 38
    .line 39
    :try_start_0
    invoke-static {v2}, Lorg/apache/tools/zip/ExtraFieldUtils;->createExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2, p0, v6, v5}, Lorg/apache/tools/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x4

    .line 50
    .line 51
    add-int/2addr v1, v5

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    new-instance v0, Ljava/util/zip/ZipException;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :goto_2
    new-instance v0, Ljava/util/zip/ZipException;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_1
    array-length p0, p0

    .line 102
    if-ne v1, p0, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    new-array p0, p0, [Lorg/apache/tools/zip/ZipExtraField;

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_2
    new-instance p0, Ljava/util/zip/ZipException;

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/tools/zip/ZipExtraField;

    .line 6
    .line 7
    sget-object v1, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Hashtable;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string p0, "\'s no-arg constructor is not public"

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    const-string p0, " is not a concrete class"

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    const-string p0, " doesn\'t implement ZipExtraField"

    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

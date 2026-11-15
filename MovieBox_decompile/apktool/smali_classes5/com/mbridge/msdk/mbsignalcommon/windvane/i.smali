.class public Lcom/mbridge/msdk/mbsignalcommon/windvane/i;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "ssp:"

    .line 2
    .line 3
    const-string v1, "mvb_hybrid:"

    .line 4
    .line 5
    const-string v2, "wv_hybrid:"

    .line 6
    .line 7
    const-string v3, "mraid:"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->a:[Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->b:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    const-string v0, "mraid://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->c:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    const-string v0, "ssp://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->d:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    const-string v0, "mv://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->e:Ljava/util/regex/Pattern;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->f:Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/d;->values()[Lcom/mbridge/msdk/mbsignalcommon/windvane/d;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    array-length v1, v0

    .line 59
    const/4 v2, 0x0

    .line 60
    :goto_0
    if-ge v2, v1, :cond_0

    .line 61
    .line 62
    aget-object v3, v0, v2

    .line 63
    .line 64
    sget-object v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->f:Ljava/util/Map;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/d;->c()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/d;->b()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [C

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    new-instance v4, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    const/16 v5, 0x3e8

    .line 13
    .line 14
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 19
    .line 20
    .line 21
    move v6, v5

    .line 22
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-ge v6, v7, :cond_5

    .line 27
    .line 28
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-le v7, v0, :cond_2

    .line 33
    .line 34
    const-string v8, "\\u"

    .line 35
    .line 36
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    ushr-int/lit8 v8, v7, 0x8

    .line 40
    .line 41
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const-string v10, "0"

    .line 54
    .line 55
    if-ne v9, v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    and-int/2addr v7, v0

    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-ne v8, v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move v8, v5

    .line 86
    :goto_1
    if-ge v8, v2, :cond_4

    .line 87
    .line 88
    aget-char v9, v3, v8

    .line 89
    .line 90
    if-ne v9, v7, :cond_3

    .line 91
    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v9, "\\"

    .line 98
    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    add-int/2addr v8, v1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    :goto_2
    add-int/2addr v6, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    new-instance p0, Ljava/lang/String;

    .line 121
    .line 122
    invoke-direct {p0, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    nop

    .line 127
    :array_0
    .array-data 2
        0x27s
        0x5cs
    .end array-data
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->f:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    const-string v0, "wv_hybrid:"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->e:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "mraid:"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->c:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "ssp:"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->d:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string v0, "mvb_hybrid:"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->e:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const-string v0, "."

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq v0, v2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    return-object v1
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "image"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/i;->a:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v2
.end method

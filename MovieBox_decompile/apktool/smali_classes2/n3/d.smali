.class public final Ln3/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lh3/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/d$a;,
        Ln3/d$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field static final e:Ljava/util/regex/Pattern;

.field static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ln3/d$a;


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ln3/d;->b:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ln3/d;->c:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Ln3/d;->d:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Ln3/d;->e:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Ln3/d;->f:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Ln3/d;->g:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, "^(\\d+) (\\d+)$"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Ln3/d;->h:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    new-instance v0, Ln3/d$a;

    .line 58
    .line 59
    const/high16 v1, 0x41f00000    # 30.0f

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v0, v1, v2, v2}, Ln3/d$a;-><init>(FII)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Ln3/d;->i:Ln3/d$a;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ln3/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method private static d(Ln3/g;)Ln3/g;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ln3/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ln3/g;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "tt"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "head"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "body"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "div"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "p"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "span"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "br"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "style"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v0, "styling"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "layout"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "region"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const-string v0, "metadata"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    const-string v0, "image"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    const-string v0, "data"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    const-string v0, "information"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const/4 p0, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 125
    :goto_1
    return p0
.end method

.method private static f(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v1, "start"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v1, "right"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x3

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string v1, "left"

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v1, "end"

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :sswitch_4
    const-string v1, "center"

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0

    .line 76
    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 83
    .line 84
    return-object p0

    .line 85
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;I)I
    .locals 7

    .line 1
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    .line 2
    .line 3
    const-string v1, "cellResolution"

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    sget-object v0, Ln3/d;->h:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "Ignoring malformed cell resolution: "

    .line 23
    .line 24
    const-string v3, "TtmlParser"

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v3, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return p1

    .line 47
    :cond_1
    const/4 v1, 0x1

    .line 48
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x2

    .line 63
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x0

    .line 83
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v6, "Invalid cell resolution "

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, " "

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v1, v4}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    return v0

    .line 112
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v3, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return p1
.end method

.method private static h(Ljava/lang/String;Ln3/g;)V
    .locals 7

    .line 1
    const-string v0, "\\s+"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    sget-object v0, Ln3/d;->d:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v1, v0

    .line 20
    if-ne v1, v2, :cond_5

    .line 21
    .line 22
    sget-object v1, Ln3/d;->d:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    aget-object v0, v0, v3

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "TtmlParser"

    .line 31
    .line 32
    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 33
    .line 34
    invoke-static {v1, v4}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const-string v4, "\'."

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    const/4 v5, -0x1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    sparse-switch v6, :sswitch_data_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :sswitch_0
    const-string v6, "px"

    .line 69
    .line 70
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v5, v2

    .line 78
    goto :goto_1

    .line 79
    :sswitch_1
    const-string v6, "em"

    .line 80
    .line 81
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move v5, v3

    .line 89
    goto :goto_1

    .line 90
    :sswitch_2
    const-string v6, "%"

    .line 91
    .line 92
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const/4 v5, 0x0

    .line 100
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 104
    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v0, "Invalid unit for fontSize: \'"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :pswitch_0
    invoke-virtual {p1, v3}, Ln3/g;->C(I)Ln3/g;

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :pswitch_1
    invoke-virtual {p1, v2}, Ln3/g;->C(I)Ln3/g;

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :pswitch_2
    invoke-virtual {p1, p0}, Ln3/g;->C(I)Ln3/g;

    .line 138
    .line 139
    .line 140
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-virtual {p1, p0}, Ln3/g;->B(F)Ln3/g;

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_4
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 159
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v1, "Invalid expression for fontSize: \'"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_5
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 185
    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v1, "Invalid number of entries for fontSize: "

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    array-length v0, v0

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v0, "."

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static i(Lorg/xmlpull/v1/XmlPullParser;)Ln3/d$a;
    .locals 7

    .line 1
    const-string v0, "frameRate"

    .line 2
    .line 3
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    .line 4
    .line 5
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x1e

    .line 17
    .line 18
    :goto_0
    const-string v2, "frameRateMultiplier"

    .line 19
    .line 20
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v3, " "

    .line 27
    .line 28
    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    array-length v3, v2

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    move v3, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v3, v5

    .line 41
    :goto_1
    const-string v4, "frameRateMultiplier doesn\'t have 2 parts"

    .line 42
    .line 43
    invoke-static {v3, v4}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    aget-object v3, v2, v5

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    int-to-float v3, v3

    .line 53
    aget-object v2, v2, v6

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    div-float/2addr v3, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    :goto_2
    sget-object v2, Ln3/d;->i:Ln3/d$a;

    .line 65
    .line 66
    iget v4, v2, Ln3/d$a;->b:I

    .line 67
    .line 68
    const-string v5, "subFrameRate"

    .line 69
    .line 70
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    :cond_3
    iget v2, v2, Ln3/d$a;->c:I

    .line 81
    .line 82
    const-string v5, "tickRate"

    .line 83
    .line 84
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    :cond_4
    new-instance p0, Ln3/d$a;

    .line 95
    .line 96
    int-to-float v0, v0

    .line 97
    mul-float/2addr v0, v3

    .line 98
    invoke-direct {p0, v0, v4, v2}, Ln3/d$a;-><init>(FII)V

    .line 99
    .line 100
    .line 101
    return-object p0
.end method

.method private static j(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;ILn3/d$b;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    const-string v0, "style"

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ln3/g;

    .line 17
    .line 18
    invoke-direct {v1}, Ln3/g;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Ln3/d;->o(Lorg/xmlpull/v1/XmlPullParser;Ln3/g;)Ln3/g;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {v0}, Ln3/d;->p(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    array-length v2, v0

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-ge v3, v2, :cond_1

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ln3/g;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Ln3/g;->a(Ln3/g;)Ln3/g;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1}, Ln3/g;->h()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string v0, "region"

    .line 60
    .line 61
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-static {p0, p2, p3, p1}, Ln3/d;->m(Lorg/xmlpull/v1/XmlPullParser;ILn3/d$b;Ljava/util/Map;)Ln3/e;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v1, v0, Ln3/e;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-string v0, "metadata"

    .line 80
    .line 81
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-static {p0, p5}, Ln3/d;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    const-string v0, "head"

    .line 91
    .line 92
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    return-object p1
.end method

.method private static k(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2

    .line 1
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    const-string v0, "image"

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "id"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string v0, "metadata"

    .line 28
    .line 29
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return-void
.end method

.method private static l(Lorg/xmlpull/v1/XmlPullParser;Ln3/c;Ljava/util/Map;Ln3/d$a;)Ln3/c;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v0, v4}, Ln3/d;->o(Lorg/xmlpull/v1/XmlPullParser;Ln3/g;)Ln3/g;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string v8, ""

    .line 18
    .line 19
    move-object v12, v4

    .line 20
    move-object v11, v8

    .line 21
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    move-object v8, v12

    .line 37
    const/4 v4, 0x0

    .line 38
    :goto_0
    if-ge v4, v3, :cond_8

    .line 39
    .line 40
    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v19

    .line 55
    sparse-switch v19, :sswitch_data_0

    .line 56
    .line 57
    .line 58
    :goto_1
    const/4 v7, -0x1

    .line 59
    goto :goto_2

    .line 60
    :sswitch_0
    const-string v7, "backgroundImage"

    .line 61
    .line 62
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v7, 0x5

    .line 70
    goto :goto_2

    .line 71
    :sswitch_1
    const-string v7, "style"

    .line 72
    .line 73
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 v7, 0x4

    .line 81
    goto :goto_2

    .line 82
    :sswitch_2
    const-string v7, "begin"

    .line 83
    .line 84
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-nez v7, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v7, 0x3

    .line 92
    goto :goto_2

    .line 93
    :sswitch_3
    const-string v7, "end"

    .line 94
    .line 95
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-nez v7, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v7, 0x2

    .line 103
    goto :goto_2

    .line 104
    :sswitch_4
    const-string v7, "dur"

    .line 105
    .line 106
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-nez v7, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    move v7, v2

    .line 114
    goto :goto_2

    .line 115
    :sswitch_5
    const-string v7, "region"

    .line 116
    .line 117
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_5

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const/4 v7, 0x0

    .line 125
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_0
    const-string v7, "#"

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_6

    .line 136
    .line 137
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    :cond_6
    :goto_3
    move-object/from16 v7, p2

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :pswitch_1
    invoke-static {v6}, Ln3/d;->p(Ljava/lang/String;)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    array-length v7, v6

    .line 149
    if-lez v7, :cond_6

    .line 150
    .line 151
    move-object/from16 v7, p2

    .line 152
    .line 153
    move-object v8, v6

    .line 154
    goto :goto_4

    .line 155
    :pswitch_2
    invoke-static {v6, v1}, Ln3/d;->q(Ljava/lang/String;Ln3/d$a;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v13

    .line 159
    goto :goto_3

    .line 160
    :pswitch_3
    invoke-static {v6, v1}, Ln3/d;->q(Ljava/lang/String;Ln3/d$a;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v15

    .line 164
    goto :goto_3

    .line 165
    :pswitch_4
    invoke-static {v6, v1}, Ln3/d;->q(Ljava/lang/String;Ln3/d$a;)J

    .line 166
    .line 167
    .line 168
    move-result-wide v17

    .line 169
    goto :goto_3

    .line 170
    :pswitch_5
    move-object/from16 v7, p2

    .line 171
    .line 172
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    if-eqz v10, :cond_7

    .line 177
    .line 178
    move-object v11, v6

    .line 179
    :cond_7
    :goto_4
    add-int/2addr v4, v2

    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_8
    if-eqz v9, :cond_b

    .line 183
    .line 184
    iget-wide v1, v9, Ln3/c;->d:J

    .line 185
    .line 186
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    cmp-long v6, v1, v3

    .line 192
    .line 193
    if-eqz v6, :cond_a

    .line 194
    .line 195
    cmp-long v6, v13, v3

    .line 196
    .line 197
    if-eqz v6, :cond_9

    .line 198
    .line 199
    add-long/2addr v13, v1

    .line 200
    :cond_9
    cmp-long v6, v15, v3

    .line 201
    .line 202
    if-eqz v6, :cond_a

    .line 203
    .line 204
    add-long/2addr v15, v1

    .line 205
    :cond_a
    :goto_5
    move-wide v1, v13

    .line 206
    goto :goto_6

    .line 207
    :cond_b
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :goto_6
    cmp-long v6, v15, v3

    .line 214
    .line 215
    if-nez v6, :cond_d

    .line 216
    .line 217
    cmp-long v6, v17, v3

    .line 218
    .line 219
    if-eqz v6, :cond_c

    .line 220
    .line 221
    add-long v17, v1, v17

    .line 222
    .line 223
    move-wide/from16 v3, v17

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_c
    if-eqz v9, :cond_d

    .line 227
    .line 228
    iget-wide v6, v9, Ln3/c;->e:J

    .line 229
    .line 230
    cmp-long v3, v6, v3

    .line 231
    .line 232
    if-eqz v3, :cond_d

    .line 233
    .line 234
    move-wide v3, v6

    .line 235
    goto :goto_7

    .line 236
    :cond_d
    move-wide v3, v15

    .line 237
    :goto_7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object v6, v8

    .line 242
    move-object v7, v11

    .line 243
    move-object v8, v12

    .line 244
    move-object/from16 v9, p1

    .line 245
    .line 246
    invoke-static/range {v0 .. v9}, Ln3/c;->c(Ljava/lang/String;JJLn3/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln3/c;)Ln3/c;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    return-object v0

    .line 251
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static m(Lorg/xmlpull/v1/XmlPullParser;ILn3/d$b;Ljava/util/Map;)Ln3/e;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x2

    .line 9
    const-string v6, "id"

    .line 10
    .line 11
    invoke-static {v0, v6}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const/4 v6, 0x0

    .line 16
    if-nez v8, :cond_0

    .line 17
    .line 18
    return-object v6

    .line 19
    :cond_0
    const-string v7, "origin"

    .line 20
    .line 21
    invoke-static {v0, v7}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const-string v9, "style"

    .line 26
    .line 27
    if-nez v7, :cond_1

    .line 28
    .line 29
    invoke-static {v0, v9}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    if-eqz v10, :cond_1

    .line 34
    .line 35
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    check-cast v10, Ln3/g;

    .line 40
    .line 41
    if-eqz v10, :cond_1

    .line 42
    .line 43
    invoke-virtual {v10}, Ln3/g;->j()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    :cond_1
    const-string v10, "Ignoring region with missing tts:extent: "

    .line 48
    .line 49
    const/high16 v11, 0x42c80000    # 100.0f

    .line 50
    .line 51
    const-string v12, "TtmlParser"

    .line 52
    .line 53
    if-eqz v7, :cond_5

    .line 54
    .line 55
    sget-object v13, Ln3/d;->f:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    sget-object v14, Ln3/d;->g:Ljava/util/regex/Pattern;

    .line 62
    .line 63
    invoke-virtual {v14, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    .line 68
    .line 69
    .line 70
    move-result v15

    .line 71
    const-string v3, "Ignoring region with malformed origin: "

    .line 72
    .line 73
    if-eqz v15, :cond_2

    .line 74
    .line 75
    :try_start_0
    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    invoke-static {v14}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    check-cast v14, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    div-float/2addr v14, v11

    .line 90
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    invoke-static {v13}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    check-cast v13, Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 101
    .line 102
    .line 103
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    div-float/2addr v3, v11

    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v6

    .line 126
    :cond_2
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-eqz v13, :cond_4

    .line 131
    .line 132
    if-nez v1, :cond_3

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v6

    .line 153
    :cond_3
    :try_start_1
    invoke-virtual {v14, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    invoke-static {v13}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    check-cast v13, Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    invoke-virtual {v14, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    invoke-static {v14}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v14

    .line 175
    check-cast v14, Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    int-to-float v13, v13

    .line 182
    iget v15, v1, Ln3/d$b;->a:I

    .line 183
    .line 184
    int-to-float v15, v15

    .line 185
    div-float/2addr v13, v15

    .line 186
    int-to-float v14, v14

    .line 187
    iget v3, v1, Ln3/d$b;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .line 189
    int-to-float v3, v3

    .line 190
    div-float v3, v14, v3

    .line 191
    .line 192
    move v14, v13

    .line 193
    goto :goto_0

    .line 194
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-object v6

    .line 213
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v1, "Ignoring region with unsupported origin: "

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return-object v6

    .line 234
    :cond_5
    const/4 v3, 0x0

    .line 235
    move v14, v3

    .line 236
    :goto_0
    const-string v13, "extent"

    .line 237
    .line 238
    invoke-static {v0, v13}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    if-nez v13, :cond_6

    .line 243
    .line 244
    invoke-static {v0, v9}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    if-eqz v9, :cond_6

    .line 249
    .line 250
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Ln3/g;

    .line 255
    .line 256
    if-eqz v2, :cond_6

    .line 257
    .line 258
    invoke-virtual {v2}, Ln3/g;->c()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    :cond_6
    if-eqz v13, :cond_a

    .line 263
    .line 264
    sget-object v9, Ln3/d;->f:Ljava/util/regex/Pattern;

    .line 265
    .line 266
    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    sget-object v15, Ln3/d;->g:Ljava/util/regex/Pattern;

    .line 271
    .line 272
    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 277
    .line 278
    .line 279
    move-result v15

    .line 280
    const-string v2, "Ignoring region with malformed extent: "

    .line 281
    .line 282
    if-eqz v15, :cond_7

    .line 283
    .line 284
    :try_start_2
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    check-cast v1, Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    div-float/2addr v1, v11

    .line 299
    invoke-virtual {v9, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-static {v9}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    check-cast v9, Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 310
    .line 311
    .line 312
    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    div-float/2addr v2, v11

    .line 314
    goto :goto_1

    .line 315
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-object v6

    .line 334
    :cond_7
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    if-eqz v9, :cond_9

    .line 339
    .line 340
    if-nez v1, :cond_8

    .line 341
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-object v6

    .line 361
    :cond_8
    :try_start_3
    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    invoke-static {v9}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    check-cast v9, Ljava/lang/String;

    .line 370
    .line 371
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    invoke-static {v10}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    check-cast v10, Ljava/lang/String;

    .line 384
    .line 385
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    int-to-float v9, v9

    .line 390
    iget v11, v1, Ln3/d$b;->a:I

    .line 391
    .line 392
    int-to-float v11, v11

    .line 393
    div-float/2addr v9, v11

    .line 394
    int-to-float v10, v10

    .line 395
    iget v1, v1, Ln3/d$b;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 396
    .line 397
    int-to-float v1, v1

    .line 398
    div-float v2, v10, v1

    .line 399
    .line 400
    move v1, v9

    .line 401
    :goto_1
    move v13, v1

    .line 402
    goto :goto_2

    .line 403
    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-object v6

    .line 422
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v1, "Ignoring region with unsupported extent: "

    .line 428
    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v12, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    return-object v6

    .line 443
    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    .line 444
    .line 445
    const/high16 v13, 0x3f800000    # 1.0f

    .line 446
    .line 447
    :goto_2
    const-string v1, "displayAlign"

    .line 448
    .line 449
    invoke-static {v0, v1}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    if-eqz v1, :cond_d

    .line 454
    .line 455
    invoke-static {v1}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 460
    .line 461
    .line 462
    const-string v6, "center"

    .line 463
    .line 464
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    if-nez v6, :cond_c

    .line 469
    .line 470
    const-string v6, "after"

    .line 471
    .line 472
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    if-nez v1, :cond_b

    .line 477
    .line 478
    goto :goto_3

    .line 479
    :cond_b
    add-float/2addr v3, v2

    .line 480
    move/from16 v1, p1

    .line 481
    .line 482
    move v10, v3

    .line 483
    move v12, v5

    .line 484
    goto :goto_4

    .line 485
    :cond_c
    const/high16 v1, 0x40000000    # 2.0f

    .line 486
    .line 487
    div-float v1, v2, v1

    .line 488
    .line 489
    add-float/2addr v3, v1

    .line 490
    move/from16 v1, p1

    .line 491
    .line 492
    move v10, v3

    .line 493
    move v12, v4

    .line 494
    goto :goto_4

    .line 495
    :cond_d
    :goto_3
    move/from16 v1, p1

    .line 496
    .line 497
    move v10, v3

    .line 498
    const/4 v12, 0x0

    .line 499
    :goto_4
    int-to-float v1, v1

    .line 500
    const/high16 v3, 0x3f800000    # 1.0f

    .line 501
    .line 502
    div-float v1, v3, v1

    .line 503
    .line 504
    const-string v3, "writingMode"

    .line 505
    .line 506
    invoke-static {v0, v3}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    if-eqz v0, :cond_11

    .line 511
    .line 512
    invoke-static {v0}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 517
    .line 518
    .line 519
    const/4 v3, -0x1

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    sparse-switch v6, :sswitch_data_0

    .line 525
    .line 526
    .line 527
    goto :goto_5

    .line 528
    :sswitch_0
    const-string v6, "tbrl"

    .line 529
    .line 530
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    if-nez v0, :cond_e

    .line 535
    .line 536
    goto :goto_5

    .line 537
    :cond_e
    move v3, v5

    .line 538
    goto :goto_5

    .line 539
    :sswitch_1
    const-string v6, "tblr"

    .line 540
    .line 541
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-nez v0, :cond_f

    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_f
    move v3, v4

    .line 549
    goto :goto_5

    .line 550
    :sswitch_2
    const-string v6, "tb"

    .line 551
    .line 552
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-nez v0, :cond_10

    .line 557
    .line 558
    goto :goto_5

    .line 559
    :cond_10
    const/4 v3, 0x0

    .line 560
    :goto_5
    packed-switch v3, :pswitch_data_0

    .line 561
    .line 562
    .line 563
    goto :goto_7

    .line 564
    :goto_6
    :pswitch_0
    move/from16 v17, v4

    .line 565
    .line 566
    goto :goto_8

    .line 567
    :pswitch_1
    move/from16 v17, v5

    .line 568
    .line 569
    goto :goto_8

    .line 570
    :cond_11
    :goto_7
    const/high16 v4, -0x80000000

    .line 571
    .line 572
    goto :goto_6

    .line 573
    :goto_8
    new-instance v0, Ln3/e;

    .line 574
    .line 575
    const/4 v11, 0x0

    .line 576
    const/4 v15, 0x1

    .line 577
    move-object v7, v0

    .line 578
    move v9, v14

    .line 579
    move v14, v2

    .line 580
    move/from16 v16, v1

    .line 581
    .line 582
    invoke-direct/range {v7 .. v17}, Ln3/e;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 583
    .line 584
    .line 585
    return-object v0

    .line 586
    nop

    .line 587
    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static n(Ljava/lang/String;)F
    .locals 5

    .line 1
    sget-object v0, Ln3/d;->e:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    .line 13
    .line 14
    const-string v3, "TtmlParser"

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "Invalid value for shear: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v3, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 40
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/high16 v1, -0x3d380000    # -100.0f

    .line 55
    .line 56
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/high16 v1, 0x42c80000    # 100.0f

    .line 61
    .line 62
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return p0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "Failed to parse shear: "

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v3, p0, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return v2
.end method

.method private static o(Lorg/xmlpull/v1/XmlPullParser;Ln3/g;)Ln3/g;
    .locals 13

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    const/4 v7, 0x0

    .line 12
    move v8, v7

    .line 13
    :goto_0
    if-ge v8, v6, :cond_20

    .line 14
    .line 15
    invoke-interface {p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    invoke-interface {p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    const-string v11, "TtmlParser"

    .line 27
    .line 28
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    sparse-switch v12, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    :goto_1
    move v10, v2

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :sswitch_0
    const-string v12, "multiRowAlign"

    .line 39
    .line 40
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-nez v10, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/16 v10, 0x10

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :sswitch_1
    const-string v12, "backgroundColor"

    .line 52
    .line 53
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-nez v10, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/16 v10, 0xf

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :sswitch_2
    const-string v12, "rubyPosition"

    .line 65
    .line 66
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/16 v10, 0xe

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :sswitch_3
    const-string v12, "textEmphasis"

    .line 78
    .line 79
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-nez v10, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/16 v10, 0xd

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :sswitch_4
    const-string v12, "fontSize"

    .line 91
    .line 92
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-nez v10, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/16 v10, 0xc

    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :sswitch_5
    const-string v12, "textCombine"

    .line 104
    .line 105
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-nez v10, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    const/16 v10, 0xb

    .line 113
    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :sswitch_6
    const-string v12, "shear"

    .line 117
    .line 118
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-nez v10, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    const/16 v10, 0xa

    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :sswitch_7
    const-string v12, "color"

    .line 130
    .line 131
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-nez v10, :cond_7

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    const/16 v10, 0x9

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :sswitch_8
    const-string v12, "ruby"

    .line 143
    .line 144
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-nez v10, :cond_8

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    const/16 v10, 0x8

    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :sswitch_9
    const-string v12, "id"

    .line 156
    .line 157
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-nez v10, :cond_9

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_9
    const/4 v10, 0x7

    .line 166
    goto :goto_2

    .line 167
    :sswitch_a
    const-string v12, "fontWeight"

    .line 168
    .line 169
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-nez v10, :cond_a

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_a
    const/4 v10, 0x6

    .line 178
    goto :goto_2

    .line 179
    :sswitch_b
    const-string v12, "textDecoration"

    .line 180
    .line 181
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-nez v10, :cond_b

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_b
    move v10, v0

    .line 190
    goto :goto_2

    .line 191
    :sswitch_c
    const-string v12, "origin"

    .line 192
    .line 193
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-nez v10, :cond_c

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_c
    move v10, v1

    .line 202
    goto :goto_2

    .line 203
    :sswitch_d
    const-string v12, "textAlign"

    .line 204
    .line 205
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-nez v10, :cond_d

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_d
    move v10, v3

    .line 214
    goto :goto_2

    .line 215
    :sswitch_e
    const-string v12, "fontFamily"

    .line 216
    .line 217
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-nez v10, :cond_e

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :cond_e
    move v10, v4

    .line 226
    goto :goto_2

    .line 227
    :sswitch_f
    const-string v12, "extent"

    .line 228
    .line 229
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-nez v10, :cond_f

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_f
    move v10, v5

    .line 238
    goto :goto_2

    .line 239
    :sswitch_10
    const-string v12, "fontStyle"

    .line 240
    .line 241
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-nez v10, :cond_10

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_10
    move v10, v7

    .line 250
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 251
    .line 252
    .line 253
    goto/16 :goto_7

    .line 254
    .line 255
    :pswitch_0
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v9}, Ln3/d;->f(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-virtual {p1, v9}, Ln3/g;->G(Landroid/text/Layout$Alignment;)Ln3/g;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    goto/16 :goto_7

    .line 268
    .line 269
    :pswitch_1
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    :try_start_0
    invoke-static {v9}, Landroidx/media3/common/util/k;->c(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    invoke-virtual {p1, v10}, Ln3/g;->w(I)Ln3/g;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    .line 280
    goto/16 :goto_7

    .line 281
    .line 282
    :catch_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v12, "Failed parsing background value: "

    .line 288
    .line 289
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-static {v11, v9}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :pswitch_2
    invoke-static {v9}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 309
    .line 310
    .line 311
    const-string v10, "before"

    .line 312
    .line 313
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-nez v10, :cond_12

    .line 318
    .line 319
    const-string v10, "after"

    .line 320
    .line 321
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-nez v9, :cond_11

    .line 326
    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :cond_11
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p1, v4}, Ln3/g;->I(I)Ln3/g;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    goto/16 :goto_7

    .line 338
    .line 339
    :cond_12
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, v5}, Ln3/g;->I(I)Ln3/g;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    goto/16 :goto_7

    .line 348
    .line 349
    :pswitch_3
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {v9}, Ln3/b;->a(Ljava/lang/String;)Ln3/b;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-virtual {p1, v9}, Ln3/g;->N(Ln3/b;)Ln3/g;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    goto/16 :goto_7

    .line 362
    .line 363
    :pswitch_4
    :try_start_1
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-static {v9, p1}, Ln3/d;->h(Ljava/lang/String;Ln3/g;)V
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    .line 369
    .line 370
    goto/16 :goto_7

    .line 371
    .line 372
    :catch_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v12, "Failed parsing fontSize value: "

    .line 378
    .line 379
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    invoke-static {v11, v9}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_7

    .line 393
    .line 394
    :pswitch_5
    invoke-static {v9}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 399
    .line 400
    .line 401
    const-string v10, "all"

    .line 402
    .line 403
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    if-nez v10, :cond_14

    .line 408
    .line 409
    const-string v10, "none"

    .line 410
    .line 411
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-nez v9, :cond_13

    .line 416
    .line 417
    goto/16 :goto_7

    .line 418
    .line 419
    :cond_13
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-virtual {p1, v7}, Ln3/g;->M(Z)Ln3/g;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    goto/16 :goto_7

    .line 428
    .line 429
    :cond_14
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p1, v5}, Ln3/g;->M(Z)Ln3/g;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    goto/16 :goto_7

    .line 438
    .line 439
    :pswitch_6
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    invoke-static {v9}, Ln3/d;->n(Ljava/lang/String;)F

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    invoke-virtual {p1, v9}, Ln3/g;->K(F)Ln3/g;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    goto/16 :goto_7

    .line 452
    .line 453
    :pswitch_7
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    :try_start_2
    invoke-static {v9}, Landroidx/media3/common/util/k;->c(Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    invoke-virtual {p1, v10}, Ln3/g;->z(I)Ln3/g;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 462
    .line 463
    .line 464
    goto/16 :goto_7

    .line 465
    .line 466
    :catch_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v12, "Failed parsing color value: "

    .line 472
    .line 473
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-static {v11, v9}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    goto/16 :goto_7

    .line 487
    .line 488
    :pswitch_8
    invoke-static {v9}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 493
    .line 494
    .line 495
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    sparse-switch v10, :sswitch_data_1

    .line 500
    .line 501
    .line 502
    :goto_3
    move v9, v2

    .line 503
    goto :goto_4

    .line 504
    :sswitch_11
    const-string v10, "text"

    .line 505
    .line 506
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    if-nez v9, :cond_15

    .line 511
    .line 512
    goto :goto_3

    .line 513
    :cond_15
    move v9, v0

    .line 514
    goto :goto_4

    .line 515
    :sswitch_12
    const-string v10, "base"

    .line 516
    .line 517
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v9

    .line 521
    if-nez v9, :cond_16

    .line 522
    .line 523
    goto :goto_3

    .line 524
    :cond_16
    move v9, v1

    .line 525
    goto :goto_4

    .line 526
    :sswitch_13
    const-string v10, "textContainer"

    .line 527
    .line 528
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-nez v9, :cond_17

    .line 533
    .line 534
    goto :goto_3

    .line 535
    :cond_17
    move v9, v3

    .line 536
    goto :goto_4

    .line 537
    :sswitch_14
    const-string v10, "delimiter"

    .line 538
    .line 539
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v9

    .line 543
    if-nez v9, :cond_18

    .line 544
    .line 545
    goto :goto_3

    .line 546
    :cond_18
    move v9, v4

    .line 547
    goto :goto_4

    .line 548
    :sswitch_15
    const-string v10, "container"

    .line 549
    .line 550
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v9

    .line 554
    if-nez v9, :cond_19

    .line 555
    .line 556
    goto :goto_3

    .line 557
    :cond_19
    move v9, v5

    .line 558
    goto :goto_4

    .line 559
    :sswitch_16
    const-string v10, "baseContainer"

    .line 560
    .line 561
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    if-nez v9, :cond_1a

    .line 566
    .line 567
    goto :goto_3

    .line 568
    :cond_1a
    move v9, v7

    .line 569
    :goto_4
    packed-switch v9, :pswitch_data_1

    .line 570
    .line 571
    .line 572
    goto/16 :goto_7

    .line 573
    .line 574
    :pswitch_9
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    invoke-virtual {p1, v3}, Ln3/g;->J(I)Ln3/g;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    goto/16 :goto_7

    .line 583
    .line 584
    :pswitch_a
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {p1, v1}, Ln3/g;->J(I)Ln3/g;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    goto/16 :goto_7

    .line 593
    .line 594
    :pswitch_b
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p1, v5}, Ln3/g;->J(I)Ln3/g;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    goto/16 :goto_7

    .line 603
    .line 604
    :pswitch_c
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    invoke-virtual {p1, v4}, Ln3/g;->J(I)Ln3/g;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    goto/16 :goto_7

    .line 613
    .line 614
    :pswitch_d
    const-string v10, "style"

    .line 615
    .line 616
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v11

    .line 620
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v10

    .line 624
    if-eqz v10, :cond_1f

    .line 625
    .line 626
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    invoke-virtual {p1, v9}, Ln3/g;->D(Ljava/lang/String;)Ln3/g;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    goto/16 :goto_7

    .line 635
    .line 636
    :pswitch_e
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    const-string v10, "bold"

    .line 641
    .line 642
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 643
    .line 644
    .line 645
    move-result v9

    .line 646
    invoke-virtual {p1, v9}, Ln3/g;->x(Z)Ln3/g;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    goto/16 :goto_7

    .line 651
    .line 652
    :pswitch_f
    invoke-static {v9}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 657
    .line 658
    .line 659
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 660
    .line 661
    .line 662
    move-result v10

    .line 663
    sparse-switch v10, :sswitch_data_2

    .line 664
    .line 665
    .line 666
    :goto_5
    move v9, v2

    .line 667
    goto :goto_6

    .line 668
    :sswitch_17
    const-string v10, "linethrough"

    .line 669
    .line 670
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v9

    .line 674
    if-nez v9, :cond_1b

    .line 675
    .line 676
    goto :goto_5

    .line 677
    :cond_1b
    move v9, v3

    .line 678
    goto :goto_6

    .line 679
    :sswitch_18
    const-string v10, "nolinethrough"

    .line 680
    .line 681
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v9

    .line 685
    if-nez v9, :cond_1c

    .line 686
    .line 687
    goto :goto_5

    .line 688
    :cond_1c
    move v9, v4

    .line 689
    goto :goto_6

    .line 690
    :sswitch_19
    const-string v10, "underline"

    .line 691
    .line 692
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v9

    .line 696
    if-nez v9, :cond_1d

    .line 697
    .line 698
    goto :goto_5

    .line 699
    :cond_1d
    move v9, v5

    .line 700
    goto :goto_6

    .line 701
    :sswitch_1a
    const-string v10, "nounderline"

    .line 702
    .line 703
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v9

    .line 707
    if-nez v9, :cond_1e

    .line 708
    .line 709
    goto :goto_5

    .line 710
    :cond_1e
    move v9, v7

    .line 711
    :goto_6
    packed-switch v9, :pswitch_data_2

    .line 712
    .line 713
    .line 714
    goto :goto_7

    .line 715
    :pswitch_10
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    invoke-virtual {p1, v5}, Ln3/g;->F(Z)Ln3/g;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    goto :goto_7

    .line 724
    :pswitch_11
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 725
    .line 726
    .line 727
    move-result-object p1

    .line 728
    invoke-virtual {p1, v7}, Ln3/g;->F(Z)Ln3/g;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    goto :goto_7

    .line 733
    :pswitch_12
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 734
    .line 735
    .line 736
    move-result-object p1

    .line 737
    invoke-virtual {p1, v5}, Ln3/g;->O(Z)Ln3/g;

    .line 738
    .line 739
    .line 740
    move-result-object p1

    .line 741
    goto :goto_7

    .line 742
    :pswitch_13
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 743
    .line 744
    .line 745
    move-result-object p1

    .line 746
    invoke-virtual {p1, v7}, Ln3/g;->O(Z)Ln3/g;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    goto :goto_7

    .line 751
    :pswitch_14
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    invoke-virtual {p1, v9}, Ln3/g;->H(Ljava/lang/String;)Ln3/g;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    goto :goto_7

    .line 760
    :pswitch_15
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 761
    .line 762
    .line 763
    move-result-object p1

    .line 764
    invoke-static {v9}, Ln3/d;->f(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 765
    .line 766
    .line 767
    move-result-object v9

    .line 768
    invoke-virtual {p1, v9}, Ln3/g;->L(Landroid/text/Layout$Alignment;)Ln3/g;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    goto :goto_7

    .line 773
    :pswitch_16
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    invoke-virtual {p1, v9}, Ln3/g;->A(Ljava/lang/String;)Ln3/g;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    goto :goto_7

    .line 782
    :pswitch_17
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 783
    .line 784
    .line 785
    move-result-object p1

    .line 786
    invoke-virtual {p1, v9}, Ln3/g;->y(Ljava/lang/String;)Ln3/g;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    goto :goto_7

    .line 791
    :pswitch_18
    invoke-static {p1}, Ln3/d;->d(Ln3/g;)Ln3/g;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    const-string v10, "italic"

    .line 796
    .line 797
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 798
    .line 799
    .line 800
    move-result v9

    .line 801
    invoke-virtual {p1, v9}, Ln3/g;->E(Z)Ln3/g;

    .line 802
    .line 803
    .line 804
    move-result-object p1

    .line 805
    :cond_1f
    :goto_7
    add-int/2addr v8, v5

    .line 806
    goto/16 :goto_0

    .line 807
    .line 808
    :cond_20
    return-object p1

    .line 809
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_10
        -0x4cd540d6 -> :sswitch_f
        -0x48ff636d -> :sswitch_e
        -0x3f826a28 -> :sswitch_d
        -0x3c1e50da -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x24de7f50 -> :sswitch_16
        -0x187eb37f -> :sswitch_15
        -0xeee99f9 -> :sswitch_14
        -0x81c562c -> :sswitch_13
        0x2e06d1 -> :sswitch_12
        0x36452d -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_9
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_1a
        -0x3d363934 -> :sswitch_19
        0x36723ff0 -> :sswitch_18
        0x641ec051 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static p(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    new-array p0, p0, [Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "\\s+"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    return-object p0
.end method

.method private static q(Ljava/lang/String;Ln3/d$a;)J
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    sget-object v2, Ln3/d;->b:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    const-wide/16 v9, 0xe10

    .line 37
    .line 38
    mul-long/2addr v7, v9

    .line 39
    long-to-double v7, v7

    .line 40
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    const-wide/16 v11, 0x3c

    .line 55
    .line 56
    mul-long/2addr v9, v11

    .line 57
    long-to-double v9, v9

    .line 58
    add-double/2addr v7, v9

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    long-to-double v9, v9

    .line 74
    add-double/2addr v7, v9

    .line 75
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-wide/16 v0, 0x0

    .line 80
    .line 81
    if-eqz p0, :cond_0

    .line 82
    .line 83
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 84
    .line 85
    .line 86
    move-result-wide v9

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-wide v9, v0

    .line 89
    :goto_0
    add-double/2addr v7, v9

    .line 90
    const/4 p0, 0x5

    .line 91
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_1

    .line 96
    .line 97
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    long-to-float p0, v9

    .line 102
    iget v3, p1, Ln3/d$a;->a:F

    .line 103
    .line 104
    div-float/2addr p0, v3

    .line 105
    float-to-double v9, p0

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move-wide v9, v0

    .line 108
    :goto_1
    add-double/2addr v7, v9

    .line 109
    const/4 p0, 0x6

    .line 110
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p0, :cond_2

    .line 115
    .line 116
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    long-to-double v0, v0

    .line 121
    iget p0, p1, Ln3/d$a;->b:I

    .line 122
    .line 123
    int-to-double v2, p0

    .line 124
    div-double/2addr v0, v2

    .line 125
    iget p0, p1, Ln3/d$a;->a:F

    .line 126
    .line 127
    float-to-double p0, p0

    .line 128
    div-double/2addr v0, p0

    .line 129
    :cond_2
    add-double/2addr v7, v0

    .line 130
    mul-double/2addr v7, v4

    .line 131
    double-to-long p0, v7

    .line 132
    return-wide p0

    .line 133
    :cond_3
    sget-object v2, Ln3/d;->c:Ljava/util/regex/Pattern;

    .line 134
    .line 135
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_9

    .line 144
    .line 145
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v8

    .line 159
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 170
    .line 171
    .line 172
    const/4 v2, -0x1

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    sparse-switch v3, :sswitch_data_0

    .line 178
    .line 179
    .line 180
    :goto_2
    move v0, v2

    .line 181
    goto :goto_3

    .line 182
    :sswitch_0
    const-string v1, "ms"

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_8

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :sswitch_1
    const-string v0, "t"

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_4

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move v0, v1

    .line 201
    goto :goto_3

    .line 202
    :sswitch_2
    const-string v0, "m"

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_5

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    move v0, v6

    .line 212
    goto :goto_3

    .line 213
    :sswitch_3
    const-string v0, "h"

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-nez p0, :cond_6

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    move v0, v7

    .line 223
    goto :goto_3

    .line 224
    :sswitch_4
    const-string v0, "f"

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-nez p0, :cond_7

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_7
    const/4 v0, 0x0

    .line 234
    :cond_8
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :goto_4
    div-double/2addr v8, p0

    .line 244
    goto :goto_6

    .line 245
    :pswitch_1
    iget p0, p1, Ln3/d$a;->c:I

    .line 246
    .line 247
    int-to-double p0, p0

    .line 248
    goto :goto_4

    .line 249
    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 250
    .line 251
    :goto_5
    mul-double/2addr v8, p0

    .line 252
    goto :goto_6

    .line 253
    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :pswitch_4
    iget p0, p1, Ln3/d$a;->a:F

    .line 260
    .line 261
    float-to-double p0, p0

    .line 262
    goto :goto_4

    .line 263
    :goto_6
    mul-double/2addr v8, v4

    .line 264
    double-to-long p0, v8

    .line 265
    return-wide p0

    .line 266
    :cond_9
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v1, "Malformed time expression: "

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static r(Lorg/xmlpull/v1/XmlPullParser;)Ln3/d$b;
    .locals 5

    .line 1
    const-string v0, "extent"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/common/util/b1;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Ln3/d;->g:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "TtmlParser"

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Ignoring non-pixel tts extent: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v3, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    const/4 v2, 0x1

    .line 47
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v4, 0x2

    .line 62
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    new-instance v4, Ln3/d$b;

    .line 77
    .line 78
    invoke-direct {v4, v2, v1}, Ln3/d$b;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-object v4

    .line 82
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "Ignoring malformed tts extent: "

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v3, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method


# virtual methods
.method public a([BII)Lh3/k;
    .locals 18

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v1, Ln3/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v9, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v10, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v11, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ln3/e;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ln3/e;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 35
    .line 36
    move-object/from16 v3, p1

    .line 37
    .line 38
    move/from16 v4, p2

    .line 39
    .line 40
    move/from16 v5, p3

    .line 41
    .line 42
    invoke-direct {v0, v3, v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v12, Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget-object v4, Ln3/d;->i:Ln3/d$a;

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    move-object v14, v3

    .line 62
    move v15, v5

    .line 63
    const/16 v5, 0xf

    .line 64
    .line 65
    :goto_0
    const/4 v6, 0x1

    .line 66
    if-eq v0, v6, :cond_a

    .line 67
    .line 68
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ln3/c;

    .line 73
    .line 74
    const/4 v8, 0x2

    .line 75
    if-nez v15, :cond_7

    .line 76
    .line 77
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const-string v13, "tt"

    .line 82
    .line 83
    if-ne v0, v8, :cond_4

    .line 84
    .line 85
    :try_start_1
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    invoke-static {v2}, Ln3/d;->i(Lorg/xmlpull/v1/XmlPullParser;)Ln3/d$a;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const/16 v13, 0xf

    .line 96
    .line 97
    invoke-static {v2, v13}, Ln3/d;->g(Lorg/xmlpull/v1/XmlPullParser;I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-static {v2}, Ln3/d;->r(Lorg/xmlpull/v1/XmlPullParser;)Ln3/d$b;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :goto_1
    move-object/from16 v16, v3

    .line 106
    .line 107
    move-object v8, v4

    .line 108
    move/from16 v17, v5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :catch_1
    move-exception v0

    .line 115
    goto/16 :goto_7

    .line 116
    .line 117
    :cond_0
    const/16 v13, 0xf

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :goto_2
    invoke-static {v7}, Ln3/d;->e(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    const-string v3, "TtmlParser"

    .line 125
    .line 126
    if-nez v0, :cond_1

    .line 127
    .line 128
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v4, "Ignoring unsupported tag: "

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v3, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v15, v15, 0x1

    .line 153
    .line 154
    move-object v4, v8

    .line 155
    move v7, v13

    .line 156
    move-object/from16 v3, v16

    .line 157
    .line 158
    move/from16 v5, v17

    .line 159
    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :cond_1
    const-string v0, "head"

    .line 163
    .line 164
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    .line 170
    move-object v3, v2

    .line 171
    move-object v4, v9

    .line 172
    move/from16 v5, v17

    .line 173
    .line 174
    move-object/from16 v6, v16

    .line 175
    .line 176
    move-object v7, v10

    .line 177
    move-object v13, v8

    .line 178
    move-object v8, v11

    .line 179
    invoke-static/range {v3 .. v8}, Ln3/d;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;ILn3/d$b;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_2
    move-object v13, v8

    .line 184
    :try_start_3
    invoke-static {v2, v6, v10, v13}, Ln3/d;->l(Lorg/xmlpull/v1/XmlPullParser;Ln3/c;Ljava/util/Map;Ln3/d$a;)Ln3/c;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    if-eqz v6, :cond_3

    .line 192
    .line 193
    invoke-virtual {v6, v0}, Ln3/c;->a(Ln3/c;)V
    :try_end_3
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catch_2
    move-exception v0

    .line 198
    goto :goto_4

    .line 199
    :cond_3
    :goto_3
    move-object v4, v13

    .line 200
    move-object/from16 v3, v16

    .line 201
    .line 202
    move/from16 v5, v17

    .line 203
    .line 204
    const/16 v7, 0xf

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :goto_4
    :try_start_4
    const-string v4, "Suppressing parser error"

    .line 208
    .line 209
    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v15, v15, 0x1

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_4
    const/16 v7, 0xf

    .line 216
    .line 217
    const/4 v8, 0x4

    .line 218
    if-ne v0, v8, :cond_5

    .line 219
    .line 220
    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ln3/c;

    .line 225
    .line 226
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {v6}, Ln3/c;->d(Ljava/lang/String;)Ln3/c;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v0, v6}, Ln3/c;->a(Ln3/c;)V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_5
    const/4 v6, 0x3

    .line 239
    if-ne v0, v6, :cond_9

    .line 240
    .line 241
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    new-instance v14, Ln3/h;

    .line 252
    .line 253
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Ln3/c;

    .line 258
    .line 259
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Ln3/c;

    .line 264
    .line 265
    invoke-direct {v14, v0, v9, v10, v11}, Ln3/h;-><init>(Ln3/c;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 266
    .line 267
    .line 268
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_7
    const/16 v7, 0xf

    .line 273
    .line 274
    if-ne v0, v8, :cond_8

    .line 275
    .line 276
    add-int/lit8 v15, v15, 0x1

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_8
    const/4 v6, 0x3

    .line 280
    if-ne v0, v6, :cond_9

    .line 281
    .line 282
    add-int/lit8 v15, v15, -0x1

    .line 283
    .line 284
    :cond_9
    :goto_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 285
    .line 286
    .line 287
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_a
    invoke-static {v14}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Lh3/k;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 298
    .line 299
    return-object v0

    .line 300
    :goto_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 301
    .line 302
    const-string v3, "Unexpected error when reading input."

    .line 303
    .line 304
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    throw v2

    .line 308
    :goto_7
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 309
    .line 310
    const-string v3, "Unable to decode source"

    .line 311
    .line 312
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    throw v2
.end method

.method public b([BIILh3/s$b;Landroidx/media3/common/util/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ln3/d;->a([BII)Lh3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p4, p5}, Lh3/i;->c(Lh3/k;Lh3/s$b;Landroidx/media3/common/util/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, Lh3/r;->b(Lh3/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

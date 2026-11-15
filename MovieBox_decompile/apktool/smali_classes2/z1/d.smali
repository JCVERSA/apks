.class public Lz1/d;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/d$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:[I

.field private static final f:[I


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lz1/d;->b:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "CC([1-4])=.*"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lz1/d;->c:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lz1/d;->d:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const/16 v0, 0x13

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    sput-object v0, Lz1/d;->e:[I

    .line 33
    .line 34
    const/16 v0, 0x15

    .line 35
    .line 36
    new-array v0, v0, [I

    .line 37
    .line 38
    fill-array-data v0, :array_1

    .line 39
    .line 40
    .line 41
    sput-object v0, Lz1/d;->f:[I

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :array_1
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

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
    iput-object v0, p0, Lz1/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method protected static C(Ljava/util/List;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lz1/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz1/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, v1, Lz1/e;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget-object v3, Lz1/d;->c:Ljava/util/regex/Pattern;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "Unable to parse CEA-608 channel number from: "

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, v1, Lz1/e;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "MpdParser"

    .line 70
    .line 71
    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p0, -0x1

    .line 78
    return p0
.end method

.method protected static D(Ljava/util/List;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lz1/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz1/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "urn:scte:dash:cc:cea-708:2015"

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, v1, Lz1/e;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget-object v3, Lz1/d;->d:Ljava/util/regex/Pattern;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "Unable to parse CEA-708 service block number from: "

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, v1, Lz1/e;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "MpdParser"

    .line 70
    .line 71
    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p0, -0x1

    .line 78
    return p0
.end method

.method protected static G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-wide p2

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/a1;->Z0(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method protected static H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;
    .locals 4

    .line 1
    const-string v0, "schemeIdUri"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "value"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v1, v2}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v3, "id"

    .line 17
    .line 18
    invoke-static {p0, v3, v2}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    new-instance p0, Lz1/e;

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v2}, Lz1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method protected static I(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "value"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x6

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0x10

    .line 19
    .line 20
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/high16 v0, 0x800000

    .line 25
    .line 26
    and-int/2addr v0, p0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lz1/d;->K(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_1
    invoke-static {p0}, Lz1/d;->J(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 40
    return p0
.end method

.method private static J(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Lz1/d;->e:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_0

    .line 7
    .line 8
    shr-int v3, p0, v0

    .line 9
    .line 10
    and-int/lit8 v3, v3, 0x1

    .line 11
    .line 12
    aget v2, v2, v0

    .line 13
    .line 14
    mul-int/2addr v3, v2

    .line 15
    add-int/2addr v1, v3

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    :cond_1
    return v1
.end method

.method private static K(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/media3/common/util/a1;->q1(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/16 v0, 0x2e

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/common/base/o;->f(C)Lcom/google/common/base/o;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    aget-object p0, p0, v2

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lcom/google/common/base/o;->i(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v3, 0x4

    .line 36
    if-ne v0, v3, :cond_4

    .line 37
    .line 38
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "ac-4"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x3

    .line 54
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    const-string v0, "03"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    const-string v0, "04"

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_2

    .line 78
    .line 79
    return v1

    .line 80
    :cond_2
    const/16 p0, 0x15

    .line 81
    .line 82
    return p0

    .line 83
    :cond_3
    const/16 p0, 0x12

    .line 84
    .line 85
    return p0

    .line 86
    :cond_4
    :goto_0
    return v1
.end method

.method protected static L(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "value"

    .line 5
    .line 6
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sparse-switch v3, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_0
    move p0, v2

    .line 29
    goto :goto_1

    .line 30
    :sswitch_0
    const-string v3, "fa01"

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x4

    .line 40
    goto :goto_1

    .line 41
    :sswitch_1
    const-string v3, "f801"

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p0, 0x3

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string v3, "f800"

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move p0, v0

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string v3, "a000"

    .line 64
    .line 65
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move p0, v1

    .line 73
    goto :goto_1

    .line 74
    :sswitch_4
    const-string v3, "4000"

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 p0, 0x0

    .line 84
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :pswitch_0
    const/16 p0, 0x8

    .line 89
    .line 90
    return p0

    .line 91
    :pswitch_1
    const/4 p0, 0x6

    .line 92
    return p0

    .line 93
    :pswitch_2
    const/4 p0, 0x5

    .line 94
    return p0

    .line 95
    :pswitch_3
    return v0

    .line 96
    :pswitch_4
    return v1

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_4
        0x2cd22f -> :sswitch_3
        0x2f3612 -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch

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
    .line 108
    .line 109
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static M(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v0, v1}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-lez p0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x21

    .line 11
    .line 12
    if-ge p0, v0, :cond_0

    .line 13
    .line 14
    move v1, p0

    .line 15
    :cond_0
    return v1
.end method

.method protected static N(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "value"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, -0x1

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/16 v1, 0x10

    .line 13
    .line 14
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, p0

    .line 26
    :goto_0
    return v0
.end method

.method protected static O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-wide p2

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/a1;->a1(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method protected static P(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_3

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lz1/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz1/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string v3, "JOC"

    .line 25
    .line 26
    iget-object v4, v1, Lz1/e;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    :cond_0
    const-string v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string v2, "ec+3"

    .line 43
    .line 44
    iget-object v1, v1, Lz1/e;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    :cond_1
    const-string p0, "audio/eac3-joc"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string p0, "audio/eac3"

    .line 59
    .line 60
    return-object p0
.end method

.method protected static T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :goto_0
    return p2
.end method

.method protected static U(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "frameRate"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lz1/d;->b:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    div-float/2addr p1, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    int-to-float p1, p1

    .line 51
    :cond_1
    :goto_0
    return p1
.end method

.method protected static W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :goto_0
    return p2
.end method

.method protected static Y(Ljava/util/List;)J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lz1/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz1/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "http://dashif.org/guidelines/last-segment-number"

    .line 17
    .line 18
    invoke-static {v3, v2}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object p0, v1, Lz1/e;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    return-wide v0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    return-wide v0
.end method

.method protected static Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    :goto_0
    return-wide p2
.end method

.method private a(Ljava/util/List;JJIJ)J
    .locals 0

    .line 1
    if-ltz p6, :cond_0

    .line 2
    .line 3
    add-int/lit8 p6, p6, 0x1

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sub-long/2addr p7, p2

    .line 7
    invoke-static {p7, p8, p4, p5}, Landroidx/media3/common/util/a1;->l(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p6

    .line 11
    long-to-int p6, p6

    .line 12
    :goto_0
    const/4 p7, 0x0

    .line 13
    :goto_1
    if-ge p7, p6, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p2, p3, p4, p5}, Lz1/d;->l(JJ)Lz1/k$d;

    .line 16
    .line 17
    .line 18
    move-result-object p8

    .line 19
    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-long/2addr p2, p4

    .line 23
    add-int/lit8 p7, p7, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    return-wide p2
.end method

.method protected static b0(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v0, v1}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-ltz p0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lz1/d;->f:[I

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    if-ge p0, v2, :cond_0

    .line 14
    .line 15
    aget v1, v0, p0

    .line 16
    .line 17
    :cond_0
    return v1
.end method

.method private static o(II)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    return p0

    .line 8
    :cond_1
    if-ne p0, p1, :cond_2

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_2
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 14
    .line 15
    .line 16
    return p0
.end method

.method private static p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private static q(Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 14
    .line 15
    sget-object v3, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 16
    .line 17
    iget-object v4, v2, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :goto_1
    if-nez v2, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ge v0, v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 51
    .line 52
    sget-object v3, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    .line 53
    .line 54
    iget-object v4, v1, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iget-object v3, v1, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 67
    .line 68
    sget-object v4, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 69
    .line 70
    iget-object v5, v1, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, v1, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 73
    .line 74
    invoke-direct {v3, v4, v2, v5, v1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    return-void
.end method

.method private static r(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/media3/common/DrmInitData$SchemeData;->hasData()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v2, v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/media3/common/DrmInitData$SchemeData;->canReplace(Landroidx/media3/common/DrmInitData$SchemeData;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method private static s(JJ)J
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide p0, p2

    .line 12
    :goto_0
    const-wide p2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long p2, p0, p2

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-wide v0, p0

    .line 23
    :goto_1
    return-wide v0
.end method

.method private static t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Landroidx/media3/common/y;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/media3/common/y;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p0}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    invoke-static {p0}, Landroidx/media3/common/y;->q(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-string v0, "application/mp4"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_5

    .line 44
    .line 45
    invoke-static {p1}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "text/vtt"

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    const-string p0, "application/x-mp4-vtt"

    .line 58
    .line 59
    :cond_4
    return-object p0

    .line 60
    :cond_5
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method protected static t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p2, p0

    .line 10
    :goto_0
    return-object p2
.end method

.method private u([Ljava/lang/String;)Z
    .locals 5

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
    const-string v4, "urn:dvb:dash:profile:dvb-dash:"

    .line 9
    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v1
.end method

.method protected static u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p0}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p0, p1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return-object v0
.end method

.method public static v(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/media3/common/util/b1;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/media3/common/util/b1;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p0}, Landroidx/media3/common/util/b1;->c(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    return-void
.end method


# virtual methods
.method protected A(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "availabilityTimeOffset"

    .line 3
    .line 4
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-wide p2

    .line 11
    :cond_0
    const-string p2, "INF"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const-wide p1, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    return-wide p1

    .line 25
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const p2, 0x49742400    # 1000000.0f

    .line 30
    .line 31
    .line 32
    mul-float/2addr p1, p2

    .line 33
    float-to-long p1, p1

    .line 34
    return-wide p1
.end method

.method protected B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "dvb:priority"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p3, :cond_1

    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    :goto_0
    const-string v4, "dvb:weight"

    .line 24
    .line 25
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v4, v3

    .line 37
    :goto_1
    const-string v5, "serviceLocation"

    .line 38
    .line 39
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v5, "BaseURL"

    .line 44
    .line 45
    invoke-static {p1, v5}, Lz1/d;->u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroidx/media3/common/util/r0;->c(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    move-object v2, p1

    .line 58
    :cond_3
    new-instance p2, Lz1/b;

    .line 59
    .line 60
    invoke-direct {p2, p1, v2, v1, v4}, Lz1/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    new-array p1, v3, [Lz1/b;

    .line 64
    .line 65
    aput-object p2, p1, v0

    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/common/collect/Lists;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ge v0, v6, :cond_7

    .line 82
    .line 83
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Lz1/b;

    .line 88
    .line 89
    iget-object v7, v6, Lz1/b;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v7, p1}, Landroidx/media3/common/util/r0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    move-object v8, v7

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    move-object v8, v2

    .line 100
    :goto_3
    if-eqz p3, :cond_6

    .line 101
    .line 102
    iget v1, v6, Lz1/b;->c:I

    .line 103
    .line 104
    iget v4, v6, Lz1/b;->d:I

    .line 105
    .line 106
    iget-object v8, v6, Lz1/b;->b:Ljava/lang/String;

    .line 107
    .line 108
    :cond_6
    new-instance v6, Lz1/b;

    .line 109
    .line 110
    invoke-direct {v6, v7, v8, v1, v4}, Lz1/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    add-int/2addr v0, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_7
    return-object v5
.end method

.method protected E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "schemeIdUri"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v3, "MpdParser"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    const/4 v5, -0x1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    sparse-switch v6, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    .line 31
    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v5, 0x3

    .line 40
    goto :goto_0

    .line 41
    :sswitch_1
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 42
    .line 43
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v5, 0x2

    .line 51
    goto :goto_0

    .line 52
    :sswitch_2
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 53
    .line 54
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v5, v0

    .line 62
    goto :goto_0

    .line 63
    :sswitch_3
    const-string v6, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    move v5, v4

    .line 73
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    goto :goto_5

    .line 77
    :pswitch_0
    const-string v1, "value"

    .line 78
    .line 79
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v5, "default_KID"

    .line 84
    .line 85
    invoke-static {p1, v5}, Landroidx/media3/common/util/b1;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_5

    .line 94
    .line 95
    const-string v6, "00000000-0000-0000-0000-000000000000"

    .line 96
    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_5

    .line 102
    .line 103
    const-string v6, "\\s+"

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    array-length v6, v5

    .line 110
    new-array v6, v6, [Ljava/util/UUID;

    .line 111
    .line 112
    move v7, v4

    .line 113
    :goto_1
    array-length v8, v5

    .line 114
    if-ge v7, v8, :cond_4

    .line 115
    .line 116
    aget-object v8, v5, v7

    .line 117
    .line 118
    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    aput-object v8, v6, v7

    .line 123
    .line 124
    add-int/2addr v7, v0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    sget-object v0, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    .line 127
    .line 128
    invoke-static {v0, v6, v2}, Le3/p;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    move-object v6, v2

    .line 133
    goto :goto_6

    .line 134
    :cond_5
    const-string v0, "Ignoring <ContentProtection> with schemeIdUri=\"urn:mpeg:dash:mp4protection:2011\" (ClearKey) due to missing required default_KID attribute."

    .line 135
    .line 136
    invoke-static {v3, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move-object v0, v2

    .line 140
    move-object v5, v0

    .line 141
    :goto_2
    move-object v6, v5

    .line 142
    goto :goto_6

    .line 143
    :pswitch_1
    sget-object v0, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    .line 144
    .line 145
    :goto_3
    move-object v1, v2

    .line 146
    :goto_4
    move-object v5, v1

    .line 147
    goto :goto_2

    .line 148
    :pswitch_2
    sget-object v0, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :pswitch_3
    sget-object v0, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :goto_5
    move-object v0, v2

    .line 155
    move-object v1, v0

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 158
    .line 159
    .line 160
    const-string v7, "clearkey:Laurl"

    .line 161
    .line 162
    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    const/4 v8, 0x4

    .line 167
    if-nez v7, :cond_8

    .line 168
    .line 169
    const-string v7, "dashif:Laurl"

    .line 170
    .line 171
    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_9

    .line 176
    .line 177
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-ne v7, v8, :cond_9

    .line 182
    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    goto :goto_7

    .line 188
    :cond_9
    const-string v7, "ms:laurl"

    .line 189
    .line 190
    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_a

    .line 195
    .line 196
    const-string v6, "licenseUrl"

    .line 197
    .line 198
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    goto :goto_7

    .line 203
    :cond_a
    if-nez v5, :cond_c

    .line 204
    .line 205
    const-string v7, "pssh"

    .line 206
    .line 207
    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_c

    .line 212
    .line 213
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-ne v7, v8, :cond_c

    .line 218
    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v0}, Le3/p;->f([B)Ljava/util/UUID;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    if-nez v5, :cond_b

    .line 232
    .line 233
    const-string v0, "Skipping malformed cenc:pssh data"

    .line 234
    .line 235
    invoke-static {v3, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    move-object v0, v5

    .line 239
    move-object v5, v2

    .line 240
    goto :goto_7

    .line 241
    :cond_b
    move-object v10, v5

    .line 242
    move-object v5, v0

    .line 243
    move-object v0, v10

    .line 244
    goto :goto_7

    .line 245
    :cond_c
    if-nez v5, :cond_d

    .line 246
    .line 247
    sget-object v7, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    .line 248
    .line 249
    invoke-virtual {v7, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    if-eqz v9, :cond_d

    .line 254
    .line 255
    const-string v9, "mspr:pro"

    .line 256
    .line 257
    invoke-static {p1, v9}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_d

    .line 262
    .line 263
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-ne v9, v8, :cond_d

    .line 268
    .line 269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-static {v7, v5}, Le3/p;->a(Ljava/util/UUID;[B)[B

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    goto :goto_7

    .line 282
    :cond_d
    invoke-static {p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 283
    .line 284
    .line 285
    :goto_7
    const-string v7, "ContentProtection"

    .line 286
    .line 287
    invoke-static {p1, v7}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-eqz v7, :cond_7

    .line 292
    .line 293
    if-eqz v0, :cond_e

    .line 294
    .line 295
    new-instance v2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 296
    .line 297
    const-string p1, "video/mp4"

    .line 298
    .line 299
    invoke-direct {v2, v0, v6, p1, v5}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 300
    .line 301
    .line 302
    :cond_e
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    return-object p1

    .line 307
    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected F(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "contentType"

    .line 3
    .line 4
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "audio"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "video"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "text"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-string v0, "image"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    :cond_4
    :goto_0
    return v1
.end method

.method protected Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "id"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v7

    .line 11
    const-string v1, "duration"

    .line 12
    .line 13
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v4, v5}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v9

    .line 22
    const-string v1, "presentationTime"

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const-wide/16 v11, 0x3e8

    .line 29
    .line 30
    move-wide/from16 v13, p4

    .line 31
    .line 32
    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    sub-long v11, v1, p6

    .line 37
    .line 38
    const-wide/32 v13, 0xf4240

    .line 39
    .line 40
    .line 41
    move-wide/from16 v15, p4

    .line 42
    .line 43
    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    const-string v3, "messageData"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static {v0, v3, v4}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    move-object/from16 v12, p0

    .line 55
    .line 56
    move-object/from16 v4, p8

    .line 57
    .line 58
    invoke-virtual {v12, v0, v4}, Lz1/d;->R(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    :goto_0
    move-object v11, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-static {v3}, Landroidx/media3/common/util/a1;->u0(Ljava/lang/String;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    move-object/from16 v4, p0

    .line 76
    .line 77
    move-object/from16 v5, p2

    .line 78
    .line 79
    move-object/from16 v6, p3

    .line 80
    .line 81
    invoke-virtual/range {v4 .. v11}, Lz1/d;->c(Ljava/lang/String;Ljava/lang/String;JJ[B)Lv2/a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method protected R(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string v1, "Event"

    .line 21
    .line 22
    invoke-static {p1, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    packed-switch v1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-ge v1, v2, :cond_0

    .line 123
    .line 124
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :pswitch_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :pswitch_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    return-object p1

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
.end method

.method protected S(Lorg/xmlpull/v1/XmlPullParser;)Lz1/f;
    .locals 19

    .line 1
    move-object/from16 v9, p1

    .line 2
    .line 3
    const-string v0, "schemeIdUri"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {v9, v0, v1}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    const-string v0, "value"

    .line 12
    .line 13
    invoke-static {v9, v0, v1}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v11

    .line 17
    const-string v0, "timescale"

    .line 18
    .line 19
    const-wide/16 v1, 0x1

    .line 20
    .line 21
    invoke-static {v9, v0, v1, v2}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v12

    .line 25
    const-string v0, "presentationTimeOffset"

    .line 26
    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    invoke-static {v9, v0, v1, v2}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v14

    .line 33
    new-instance v8, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 39
    .line 40
    const/16 v0, 0x200

    .line 41
    .line 42
    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 46
    .line 47
    .line 48
    const-string v0, "Event"

    .line 49
    .line 50
    invoke-static {v9, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    move-object/from16 v0, p0

    .line 57
    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    move-object v2, v10

    .line 61
    move-object v3, v11

    .line 62
    move-wide v4, v12

    .line 63
    move-object/from16 v16, v6

    .line 64
    .line 65
    move-wide v6, v14

    .line 66
    move-wide/from16 v17, v14

    .line 67
    .line 68
    move-object v14, v8

    .line 69
    move-object/from16 v8, v16

    .line 70
    .line 71
    invoke-virtual/range {v0 .. v8}, Lz1/d;->Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JJLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    move-object/from16 v16, v6

    .line 80
    .line 81
    move-wide/from16 v17, v14

    .line 82
    .line 83
    move-object v14, v8

    .line 84
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    const-string v0, "EventStream"

    .line 88
    .line 89
    invoke-static {v9, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    new-array v7, v0, [J

    .line 100
    .line 101
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    new-array v8, v0, [Lv2/a;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ge v0, v1, :cond_1

    .line 113
    .line 114
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/util/Pair;

    .line 119
    .line 120
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, Ljava/lang/Long;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    aput-wide v2, v7, v0

    .line 129
    .line 130
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Lv2/a;

    .line 133
    .line 134
    aput-object v1, v8, v0

    .line 135
    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_1
    move-object/from16 v2, p0

    .line 140
    .line 141
    move-object v3, v10

    .line 142
    move-object v4, v11

    .line 143
    move-wide v5, v12

    .line 144
    invoke-virtual/range {v2 .. v8}, Lz1/d;->d(Ljava/lang/String;Ljava/lang/String;J[J[Lv2/a;)Lz1/f;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0

    .line 149
    :cond_2
    move-object v8, v14

    .line 150
    move-object/from16 v6, v16

    .line 151
    .line 152
    move-wide/from16 v14, v17

    .line 153
    .line 154
    goto :goto_0
.end method

.method protected V(Lorg/xmlpull/v1/XmlPullParser;)Lz1/i;
    .locals 2

    .line 1
    const-string v0, "sourceURL"

    .line 2
    .line 3
    const-string v1, "range"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lz1/d;->f0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lz1/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected X(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/common/s;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "lang"

    .line 3
    .line 4
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "Label"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lz1/d;->u0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Landroidx/media3/common/s;

    .line 15
    .line 16
    invoke-direct {v1, v0, p1}, Landroidx/media3/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method protected a0(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lz1/c;
    .locals 46

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    const/4 v13, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "profiles"

    .line 10
    .line 11
    invoke-virtual {v14, v12, v2, v1}, Lz1/d;->d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v14, v1}, Lz1/d;->u([Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v15

    .line 19
    const-string v1, "availabilityStartTime"

    .line 20
    .line 21
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static {v12, v1, v9, v10}, Lz1/d;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v16

    .line 30
    const-string v1, "mediaPresentationDuration"

    .line 31
    .line 32
    invoke-static {v12, v1, v9, v10}, Lz1/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v18

    .line 36
    const-string v1, "minBufferTime"

    .line 37
    .line 38
    invoke-static {v12, v1, v9, v10}, Lz1/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v20

    .line 42
    const-string v1, "type"

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    invoke-interface {v12, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "dynamic"

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v22

    .line 55
    if-eqz v22, :cond_0

    .line 56
    .line 57
    const-string v1, "minimumUpdatePeriod"

    .line 58
    .line 59
    invoke-static {v12, v1, v9, v10}, Lz1/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    move-wide/from16 v23, v1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-wide/from16 v23, v9

    .line 67
    .line 68
    :goto_0
    if-eqz v22, :cond_1

    .line 69
    .line 70
    const-string v1, "timeShiftBufferDepth"

    .line 71
    .line 72
    invoke-static {v12, v1, v9, v10}, Lz1/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    move-wide/from16 v25, v1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-wide/from16 v25, v9

    .line 80
    .line 81
    :goto_1
    if-eqz v22, :cond_2

    .line 82
    .line 83
    const-string v1, "suggestedPresentationDelay"

    .line 84
    .line 85
    invoke-static {v12, v1, v9, v10}, Lz1/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    move-wide/from16 v27, v1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move-wide/from16 v27, v9

    .line 93
    .line 94
    :goto_2
    const-string v1, "publishTime"

    .line 95
    .line 96
    invoke-static {v12, v1, v9, v10}, Lz1/d;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v29

    .line 100
    const-wide/16 v1, 0x0

    .line 101
    .line 102
    if-eqz v22, :cond_3

    .line 103
    .line 104
    move-wide v3, v1

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    move-wide v3, v9

    .line 107
    :goto_3
    new-instance v5, Lz1/b;

    .line 108
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    if-eqz v15, :cond_4

    .line 118
    .line 119
    move v8, v13

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    const/high16 v8, -0x80000000

    .line 122
    .line 123
    :goto_4
    invoke-direct {v5, v6, v7, v8, v13}, Lz1/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    new-array v6, v13, [Lz1/b;

    .line 127
    .line 128
    aput-object v5, v6, v0

    .line 129
    .line 130
    invoke-static {v6}, Lcom/google/common/collect/Lists;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v5, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    if-eqz v22, :cond_5

    .line 145
    .line 146
    move-wide v1, v9

    .line 147
    :cond_5
    move/from16 v31, v0

    .line 148
    .line 149
    move/from16 v32, v31

    .line 150
    .line 151
    move-wide/from16 v33, v1

    .line 152
    .line 153
    move-object/from16 v35, v11

    .line 154
    .line 155
    move-object/from16 v36, v35

    .line 156
    .line 157
    move-object/from16 v37, v36

    .line 158
    .line 159
    move-object/from16 v38, v37

    .line 160
    .line 161
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 162
    .line 163
    .line 164
    const-string v0, "BaseURL"

    .line 165
    .line 166
    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    if-nez v31, :cond_6

    .line 173
    .line 174
    invoke-virtual {v14, v12, v3, v4}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    move/from16 v31, v13

    .line 179
    .line 180
    :cond_6
    invoke-virtual {v14, v12, v7, v15}, Lz1/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    .line 186
    .line 187
    :goto_6
    move-object/from16 v41, v5

    .line 188
    .line 189
    move-object/from16 v42, v7

    .line 190
    .line 191
    move-wide/from16 v44, v9

    .line 192
    .line 193
    move-object v13, v11

    .line 194
    move-object v11, v8

    .line 195
    goto/16 :goto_a

    .line 196
    .line 197
    :cond_7
    const-string v0, "ProgramInformation"

    .line 198
    .line 199
    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_8

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p1}, Lz1/d;->e0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/h;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object/from16 v35, v0

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_8
    const-string v0, "UTCTiming"

    .line 213
    .line 214
    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p1}, Lz1/d;->y0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/o;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    move-object/from16 v36, v0

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_9
    const-string v0, "Location"

    .line 228
    .line 229
    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_a

    .line 234
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    move-object/from16 v37, v0

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_a
    const-string v0, "ServiceDescription"

    .line 251
    .line 252
    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_b

    .line 257
    .line 258
    invoke-virtual/range {p0 .. p1}, Lz1/d;->s0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/l;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object/from16 v38, v0

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_b
    const-string v0, "Period"

    .line 266
    .line 267
    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_10

    .line 272
    .line 273
    if-nez v32, :cond_10

    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_c

    .line 280
    .line 281
    move-object v2, v5

    .line 282
    goto :goto_7

    .line 283
    :cond_c
    move-object v2, v7

    .line 284
    :goto_7
    move-object/from16 v0, p0

    .line 285
    .line 286
    move-object/from16 v1, p1

    .line 287
    .line 288
    move-wide/from16 v39, v3

    .line 289
    .line 290
    move-wide/from16 v3, v33

    .line 291
    .line 292
    move-object/from16 v41, v5

    .line 293
    .line 294
    move-wide/from16 v5, v39

    .line 295
    .line 296
    move-object/from16 v42, v7

    .line 297
    .line 298
    move-object/from16 v43, v8

    .line 299
    .line 300
    move-wide/from16 v7, v16

    .line 301
    .line 302
    move-wide/from16 v44, v9

    .line 303
    .line 304
    move-wide/from16 v9, v25

    .line 305
    .line 306
    move-object v13, v11

    .line 307
    move v11, v15

    .line 308
    invoke-virtual/range {v0 .. v11}, Lz1/d;->c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v1, Lz1/g;

    .line 315
    .line 316
    iget-wide v2, v1, Lz1/g;->b:J

    .line 317
    .line 318
    cmp-long v2, v2, v44

    .line 319
    .line 320
    if-nez v2, :cond_e

    .line 321
    .line 322
    if-eqz v22, :cond_d

    .line 323
    .line 324
    move-object/from16 v11, v43

    .line 325
    .line 326
    const/16 v32, 0x1

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v1, "Unable to determine start of period "

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    throw v0

    .line 355
    :cond_e
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Ljava/lang/Long;

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v2

    .line 363
    cmp-long v0, v2, v44

    .line 364
    .line 365
    if-nez v0, :cond_f

    .line 366
    .line 367
    move-object/from16 v11, v43

    .line 368
    .line 369
    move-wide/from16 v9, v44

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_f
    iget-wide v4, v1, Lz1/g;->b:J

    .line 373
    .line 374
    add-long v9, v4, v2

    .line 375
    .line 376
    move-object/from16 v11, v43

    .line 377
    .line 378
    :goto_8
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-wide/from16 v33, v9

    .line 382
    .line 383
    :goto_9
    move-wide/from16 v3, v39

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_10
    move-wide/from16 v39, v3

    .line 387
    .line 388
    move-object/from16 v41, v5

    .line 389
    .line 390
    move-object/from16 v42, v7

    .line 391
    .line 392
    move-wide/from16 v44, v9

    .line 393
    .line 394
    move-object v13, v11

    .line 395
    move-object v11, v8

    .line 396
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 397
    .line 398
    .line 399
    goto :goto_9

    .line 400
    :goto_a
    const-string v0, "MPD"

    .line 401
    .line 402
    invoke-static {v12, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_15

    .line 407
    .line 408
    cmp-long v0, v18, v44

    .line 409
    .line 410
    if-nez v0, :cond_13

    .line 411
    .line 412
    cmp-long v0, v33, v44

    .line 413
    .line 414
    if-eqz v0, :cond_11

    .line 415
    .line 416
    move-wide/from16 v3, v33

    .line 417
    .line 418
    goto :goto_c

    .line 419
    :cond_11
    if-eqz v22, :cond_12

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_12
    const-string v0, "Unable to determine duration of static manifest."

    .line 423
    .line 424
    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    throw v0

    .line 429
    :cond_13
    :goto_b
    move-wide/from16 v3, v18

    .line 430
    .line 431
    :goto_c
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_14

    .line 436
    .line 437
    move-object/from16 v0, p0

    .line 438
    .line 439
    move-wide/from16 v1, v16

    .line 440
    .line 441
    move-wide/from16 v5, v20

    .line 442
    .line 443
    move/from16 v7, v22

    .line 444
    .line 445
    move-wide/from16 v8, v23

    .line 446
    .line 447
    move-object/from16 v39, v11

    .line 448
    .line 449
    move-wide/from16 v10, v25

    .line 450
    .line 451
    move-wide/from16 v12, v27

    .line 452
    .line 453
    move-wide/from16 v14, v29

    .line 454
    .line 455
    move-object/from16 v16, v35

    .line 456
    .line 457
    move-object/from16 v17, v36

    .line 458
    .line 459
    move-object/from16 v18, v38

    .line 460
    .line 461
    move-object/from16 v19, v37

    .line 462
    .line 463
    move-object/from16 v20, v39

    .line 464
    .line 465
    invoke-virtual/range {v0 .. v20}, Lz1/d;->f(JJJZJJJJLz1/h;Lz1/o;Lz1/l;Landroid/net/Uri;Ljava/util/List;)Lz1/c;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    return-object v0

    .line 470
    :cond_14
    const-string v0, "No periods found."

    .line 471
    .line 472
    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    throw v0

    .line 477
    :cond_15
    move-object/from16 v14, p0

    .line 478
    .line 479
    move-object v8, v11

    .line 480
    move-object v11, v13

    .line 481
    move-object/from16 v5, v41

    .line 482
    .line 483
    move-object/from16 v7, v42

    .line 484
    .line 485
    move-wide/from16 v9, v44

    .line 486
    .line 487
    const/4 v13, 0x1

    .line 488
    goto/16 :goto_5
.end method

.method protected b(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lz1/a;
    .locals 9

    .line 1
    new-instance v8, Lz1/a;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-wide v1, p1

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    move-object/from16 v7, p7

    .line 10
    .line 11
    invoke-direct/range {v0 .. v7}, Lz1/a;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;JJ[B)Lv2/a;
    .locals 9

    .line 1
    new-instance v8, Lv2/a;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p5

    .line 7
    move-wide v5, p3

    .line 8
    move-object/from16 v7, p7

    .line 9
    .line 10
    invoke-direct/range {v0 .. v7}, Lv2/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 11
    .line 12
    .line 13
    return-object v8
.end method

.method protected c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;
    .locals 35

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    const-string v0, "id"

    .line 6
    .line 7
    const/4 v12, 0x0

    .line 8
    invoke-interface {v14, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v16

    .line 12
    const-string v0, "start"

    .line 13
    .line 14
    move-wide/from16 v1, p3

    .line 15
    .line 16
    invoke-static {v14, v0, v1, v2}, Lz1/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v17

    .line 20
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v0, p7, v10

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    add-long v0, p7, v17

    .line 30
    .line 31
    move-wide/from16 v19, v0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-wide/from16 v19, v10

    .line 35
    .line 36
    :goto_0
    const-string v0, "duration"

    .line 37
    .line 38
    invoke-static {v14, v0, v10, v11}, Lz1/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v21

    .line 42
    new-instance v13, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v8, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v9, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    move-wide/from16 v6, p5

    .line 59
    .line 60
    move/from16 v23, v0

    .line 61
    .line 62
    move-wide/from16 v25, v10

    .line 63
    .line 64
    move-object/from16 v24, v12

    .line 65
    .line 66
    move-object/from16 v27, v24

    .line 67
    .line 68
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 69
    .line 70
    .line 71
    const-string v0, "BaseURL"

    .line 72
    .line 73
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    if-nez v23, :cond_1

    .line 80
    .line 81
    invoke-virtual {v15, v14, v6, v7}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    const/16 v23, 0x1

    .line 86
    .line 87
    :cond_1
    move-object/from16 v4, p2

    .line 88
    .line 89
    move/from16 v5, p11

    .line 90
    .line 91
    invoke-virtual {v15, v14, v4, v5}, Lz1/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    move-object/from16 v32, v8

    .line 99
    .line 100
    move-object/from16 v30, v9

    .line 101
    .line 102
    move-wide/from16 v33, v10

    .line 103
    .line 104
    move-object/from16 v31, v12

    .line 105
    .line 106
    move-object v15, v13

    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :cond_2
    move-object/from16 v4, p2

    .line 110
    .line 111
    move/from16 v5, p11

    .line 112
    .line 113
    const-string v0, "AdaptationSet"

    .line 114
    .line 115
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    move-object v2, v9

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    move-object v2, v4

    .line 130
    :goto_2
    move-object/from16 v0, p0

    .line 131
    .line 132
    move-object/from16 v1, p1

    .line 133
    .line 134
    move-object/from16 v3, v24

    .line 135
    .line 136
    move-wide/from16 v4, v21

    .line 137
    .line 138
    move-wide/from16 v28, v6

    .line 139
    .line 140
    move-object v15, v8

    .line 141
    move-object/from16 v30, v9

    .line 142
    .line 143
    move-wide/from16 v8, v25

    .line 144
    .line 145
    move-wide/from16 v10, v19

    .line 146
    .line 147
    move-object/from16 p3, v15

    .line 148
    .line 149
    move-object v15, v13

    .line 150
    move-wide/from16 v12, p9

    .line 151
    .line 152
    move/from16 v14, p11

    .line 153
    .line 154
    invoke-virtual/range {v0 .. v14}, Lz1/d;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lz1/k;JJJJJZ)Lz1/a;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-object/from16 v14, p1

    .line 162
    .line 163
    move-object/from16 v32, p3

    .line 164
    .line 165
    :goto_3
    const/16 v31, 0x0

    .line 166
    .line 167
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :cond_4
    move-wide/from16 v28, v6

    .line 175
    .line 176
    move-object/from16 p3, v8

    .line 177
    .line 178
    move-object/from16 v30, v9

    .line 179
    .line 180
    move-object v15, v13

    .line 181
    const-string v0, "EventStream"

    .line 182
    .line 183
    move-object/from16 v14, p1

    .line 184
    .line 185
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p1}, Lz1/d;->S(Lorg/xmlpull/v1/XmlPullParser;)Lz1/f;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    move-object/from16 v1, p3

    .line 196
    .line 197
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-object/from16 v32, v1

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_5
    move-object/from16 v1, p3

    .line 204
    .line 205
    const-string v0, "SegmentBase"

    .line 206
    .line 207
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_6

    .line 212
    .line 213
    move-object/from16 v13, p0

    .line 214
    .line 215
    move-object/from16 v32, v1

    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    invoke-virtual {v13, v14, v11}, Lz1/d;->l0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$e;)Lz1/k$e;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    move-object/from16 v24, v0

    .line 223
    .line 224
    move-object/from16 v31, v11

    .line 225
    .line 226
    move-wide/from16 v6, v28

    .line 227
    .line 228
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    :cond_6
    move-object/from16 v13, p0

    .line 236
    .line 237
    move-object/from16 v32, v1

    .line 238
    .line 239
    const/4 v11, 0x0

    .line 240
    const-string v0, "SegmentList"

    .line 241
    .line 242
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_7

    .line 247
    .line 248
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    invoke-virtual {v13, v14, v9, v10}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 254
    .line 255
    .line 256
    move-result-wide v24

    .line 257
    const/4 v2, 0x0

    .line 258
    move-object/from16 v0, p0

    .line 259
    .line 260
    move-object/from16 v1, p1

    .line 261
    .line 262
    move-wide/from16 v3, v19

    .line 263
    .line 264
    move-wide/from16 v5, v21

    .line 265
    .line 266
    move-wide/from16 v7, v28

    .line 267
    .line 268
    move-wide/from16 v9, v24

    .line 269
    .line 270
    move-object/from16 v31, v11

    .line 271
    .line 272
    move-wide/from16 v11, p9

    .line 273
    .line 274
    invoke-virtual/range {v0 .. v12}, Lz1/d;->m0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$b;JJJJJ)Lz1/k$b;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    move-wide/from16 v25, v24

    .line 279
    .line 280
    move-wide/from16 v6, v28

    .line 281
    .line 282
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :goto_4
    move-object/from16 v24, v0

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_7
    move-object/from16 v31, v11

    .line 291
    .line 292
    const-string v0, "SegmentTemplate"

    .line 293
    .line 294
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_8

    .line 299
    .line 300
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    invoke-virtual {v13, v14, v10, v11}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 306
    .line 307
    .line 308
    move-result-wide v24

    .line 309
    const/4 v2, 0x0

    .line 310
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    move-object/from16 v0, p0

    .line 315
    .line 316
    move-object/from16 v1, p1

    .line 317
    .line 318
    move-wide/from16 v4, v19

    .line 319
    .line 320
    move-wide/from16 v6, v21

    .line 321
    .line 322
    move-wide/from16 v8, v28

    .line 323
    .line 324
    move-wide/from16 v33, v10

    .line 325
    .line 326
    move-wide/from16 v10, v24

    .line 327
    .line 328
    move-wide/from16 v12, p9

    .line 329
    .line 330
    invoke-virtual/range {v0 .. v13}, Lz1/d;->n0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$c;Ljava/util/List;JJJJJ)Lz1/k$c;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    move-wide/from16 v25, v24

    .line 335
    .line 336
    move-wide/from16 v6, v28

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_8
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    const-string v0, "AssetIdentifier"

    .line 345
    .line 346
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_9

    .line 351
    .line 352
    invoke-static {v14, v0}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    move-object/from16 v27, v0

    .line 357
    .line 358
    :goto_5
    move-wide/from16 v6, v28

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_9
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :goto_6
    const-string v0, "Period"

    .line 366
    .line 367
    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_a

    .line 372
    .line 373
    move-object/from16 p1, p0

    .line 374
    .line 375
    move-object/from16 p2, v16

    .line 376
    .line 377
    move-wide/from16 p3, v17

    .line 378
    .line 379
    move-object/from16 p5, v15

    .line 380
    .line 381
    move-object/from16 p6, v32

    .line 382
    .line 383
    move-object/from16 p7, v27

    .line 384
    .line 385
    invoke-virtual/range {p1 .. p7}, Lz1/d;->g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lz1/e;)Lz1/g;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    return-object v0

    .line 398
    :cond_a
    move-object v13, v15

    .line 399
    move-object/from16 v9, v30

    .line 400
    .line 401
    move-object/from16 v12, v31

    .line 402
    .line 403
    move-object/from16 v8, v32

    .line 404
    .line 405
    move-wide/from16 v10, v33

    .line 406
    .line 407
    move-object/from16 v15, p0

    .line 408
    .line 409
    goto/16 :goto_1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;J[J[Lv2/a;)Lz1/f;
    .locals 8

    .line 1
    new-instance v7, Lz1/f;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lz1/f;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lv2/a;)V

    .line 10
    .line 11
    .line 12
    return-object v7
.end method

.method protected d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p3

    .line 9
    :cond_0
    const-string p2, ","

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/r;
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    move-object/from16 v6, p15

    move-object/from16 v7, p12

    .line 1
    invoke-static {p2, v7}, Lz1/d;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2
    const-string v9, "audio/eac3"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3
    invoke-static/range {p16 .. p16}, Lz1/d;->P(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 4
    const-string v9, "audio/eac3-joc"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5
    const-string v7, "ec+3"

    .line 6
    :cond_0
    invoke-static {v7, v5}, Landroidx/media3/common/y;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v7

    .line 7
    :goto_0
    const-string v8, "video/dolby-vision"

    move-object v7, v5

    .line 8
    :cond_2
    invoke-virtual {p0, v4}, Lz1/d;->r0(Ljava/util/List;)I

    move-result v5

    .line 9
    invoke-virtual {p0, v4}, Lz1/d;->k0(Ljava/util/List;)I

    move-result v4

    move-object/from16 v9, p11

    .line 10
    invoke-virtual {p0, v9}, Lz1/d;->h0(Ljava/util/List;)I

    move-result v10

    or-int/2addr v4, v10

    .line 11
    invoke-virtual {p0, v6}, Lz1/d;->j0(Ljava/util/List;)I

    move-result v10

    or-int/2addr v4, v10

    move-object/from16 v10, p16

    .line 12
    invoke-virtual {p0, v10}, Lz1/d;->j0(Ljava/util/List;)I

    move-result v10

    or-int/2addr v4, v10

    .line 13
    invoke-virtual {p0, v6}, Lz1/d;->v0(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v6

    .line 14
    new-instance v10, Landroidx/media3/common/r$b;

    invoke-direct {v10}, Landroidx/media3/common/r$b;-><init>()V

    move-object v11, p1

    .line 15
    invoke-virtual {v10, p1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v10

    .line 16
    invoke-virtual {v10, p2}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v8}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v7}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    move/from16 v7, p8

    .line 19
    invoke-virtual {v1, v7}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    move-object/from16 v4, p9

    .line 22
    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    const/4 v4, -0x1

    if-eqz v6, :cond_3

    .line 23
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->z0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    if-eqz v6, :cond_4

    .line 24
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->A0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 25
    invoke-static {v8}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 26
    invoke-virtual {v1, p3}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    goto :goto_4

    .line 27
    :cond_5
    invoke-static {v8}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move/from16 v5, p6

    .line 28
    invoke-virtual {v1, v5}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v2

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    goto :goto_4

    .line 29
    :cond_6
    invoke-static {v8}, Landroidx/media3/common/y;->s(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 30
    const-string v2, "application/cea-608"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    invoke-static/range {p11 .. p11}, Lz1/d;->C(Ljava/util/List;)I

    move-result v4

    goto :goto_3

    .line 32
    :cond_7
    const-string v2, "application/cea-708"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 33
    invoke-static/range {p11 .. p11}, Lz1/d;->D(Ljava/util/List;)I

    move-result v4

    .line 34
    :cond_8
    :goto_3
    invoke-virtual {v1, v4}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    goto :goto_4

    .line 35
    :cond_9
    invoke-static {v8}, Landroidx/media3/common/y;->q(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 36
    invoke-virtual {v1, p3}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 37
    :cond_a
    :goto_4
    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    return-object v1
.end method

.method protected e0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/h;
    .locals 8

    .line 1
    const-string v0, "moreInformationURL"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v6

    .line 8
    const-string v0, "lang"

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    move-object v0, v1

    .line 15
    move-object v2, v0

    .line 16
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 17
    .line 18
    .line 19
    const-string v3, "Title"

    .line 20
    .line 21
    invoke-static {p1, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_1
    move-object v5, v2

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    const-string v3, "Source"

    .line 34
    .line 35
    invoke-static {p1, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string v3, "Copyright"

    .line 47
    .line 48
    invoke-static {p1, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :goto_2
    const-string v2, "ProgramInformation"

    .line 64
    .line 65
    invoke-static {p1, v2}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    new-instance p1, Lz1/h;

    .line 72
    .line 73
    move-object v2, p1

    .line 74
    move-object v3, v1

    .line 75
    move-object v4, v0

    .line 76
    invoke-direct/range {v2 .. v7}, Lz1/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_3
    move-object v2, v5

    .line 81
    goto :goto_0
.end method

.method protected f(JJJZJJJJLz1/h;Lz1/o;Lz1/l;Landroid/net/Uri;Ljava/util/List;)Lz1/c;
    .locals 22

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    move-wide/from16 v3, p3

    .line 4
    .line 5
    move-wide/from16 v5, p5

    .line 6
    .line 7
    move/from16 v7, p7

    .line 8
    .line 9
    move-wide/from16 v8, p8

    .line 10
    .line 11
    move-wide/from16 v10, p10

    .line 12
    .line 13
    move-wide/from16 v12, p12

    .line 14
    .line 15
    move-wide/from16 v14, p14

    .line 16
    .line 17
    move-object/from16 v16, p16

    .line 18
    .line 19
    move-object/from16 v17, p17

    .line 20
    .line 21
    move-object/from16 v18, p18

    .line 22
    .line 23
    move-object/from16 v19, p19

    .line 24
    .line 25
    move-object/from16 v20, p20

    .line 26
    .line 27
    new-instance v21, Lz1/c;

    .line 28
    .line 29
    move-object/from16 v0, v21

    .line 30
    .line 31
    invoke-direct/range {v0 .. v20}, Lz1/c;-><init>(JJJZJJJJLz1/h;Lz1/o;Lz1/l;Landroid/net/Uri;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    return-object v21
.end method

.method protected f0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lz1/i;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v2

    .line 6
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-wide/16 p2, -0x1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string v0, "-"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object v0, p1, v0

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    array-length v3, p1

    .line 28
    const/4 v4, 0x2

    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    aget-object p1, p1, p2

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    sub-long/2addr p1, v0

    .line 39
    const-wide/16 v3, 0x1

    .line 40
    .line 41
    add-long/2addr p1, v3

    .line 42
    move-wide v5, p1

    .line 43
    :goto_0
    move-wide v3, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    move-wide v5, p2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_2
    move-object v1, p0

    .line 51
    invoke-virtual/range {v1 .. v6}, Lz1/d;->h(Ljava/lang/String;JJ)Lz1/i;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method protected g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lz1/e;)Lz1/g;
    .locals 8

    .line 1
    new-instance v7, Lz1/g;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lz1/g;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lz1/e;)V

    .line 10
    .line 11
    .line 12
    return-object v7
.end method

.method protected g0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lz1/k;JJJJJZ)Lz1/d$a;
    .locals 38

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {v14, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2
    const-string v0, "bandwidth"

    const/4 v2, -0x1

    invoke-static {v14, v0, v2}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    .line 3
    const-string v0, "mimeType"

    move-object/from16 v2, p3

    invoke-static {v14, v0, v2}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4
    const-string v0, "codecs"

    move-object/from16 v2, p4

    invoke-static {v14, v0, v2}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5
    const-string v0, "scte214:supplementalCodecs"

    move-object/from16 v2, p5

    .line 6
    invoke-static {v14, v0, v2}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 7
    const-string v0, "scte214:supplementalProfiles"

    move-object/from16 v2, p6

    .line 8
    invoke-static {v14, v0, v2}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 9
    const-string v0, "width"

    move/from16 v2, p7

    invoke-static {v14, v0, v2}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 10
    const-string v0, "height"

    move/from16 v2, p8

    invoke-static {v14, v0, v2}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, p9

    .line 11
    invoke-static {v14, v0}, Lz1/d;->U(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v23

    .line 12
    const-string v0, "audioSamplingRate"

    move/from16 v2, p11

    invoke-static {v14, v0, v2}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v24

    .line 13
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p15

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v7, p16

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move/from16 v25, p10

    move-wide/from16 v5, p22

    move/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v0, p17

    move-wide/from16 v1, p24

    .line 18
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 19
    const-string v3, "BaseURL"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v26, :cond_0

    .line 20
    invoke-virtual {v15, v14, v5, v6}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    const/16 v26, 0x1

    :cond_0
    move-object/from16 v3, p2

    move/from16 v4, p28

    move-wide/from16 p3, v5

    .line 21
    invoke-virtual {v15, v14, v3, v4}, Lz1/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v5, p3

    :goto_1
    move-object/from16 v32, v8

    move-object/from16 v37, v13

    move/from16 v7, v25

    move-object/from16 v25, v0

    :goto_2
    move-object v13, v11

    move-object v11, v9

    goto/16 :goto_9

    :cond_1
    move/from16 v4, p28

    .line 22
    const-string v3, "AudioChannelConfiguration"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v15, v14, v13}, Lz1/d;->z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v25, v0

    move v7, v3

    move-object/from16 v32, v8

    move-object/from16 v37, v13

    goto :goto_2

    .line 24
    :cond_2
    const-string v3, "SegmentBase"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    check-cast v0, Lz1/k$e;

    invoke-virtual {v15, v14, v0}, Lz1/d;->l0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$e;)Lz1/k$e;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_3
    const-string v3, "SegmentList"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v15, v14, v1, v2}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v28

    .line 28
    move-object v2, v0

    check-cast v2, Lz1/k$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p18

    move-wide/from16 v30, v5

    move-wide/from16 v5, p20

    move-object/from16 v32, v8

    move-wide/from16 v7, v30

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-wide/from16 v9, v28

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-wide/from16 v11, p26

    .line 29
    invoke-virtual/range {v0 .. v12}, Lz1/d;->m0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$b;JJJJJ)Lz1/k$b;

    move-result-object v0

    move-object/from16 v37, v13

    :goto_3
    move/from16 v7, v25

    move-wide/from16 v1, v28

    move-wide/from16 v5, v30

    move-object/from16 v11, v33

    move-object/from16 v10, v34

    move-object/from16 v13, v35

    :goto_4
    move-object/from16 v12, v36

    :goto_5
    move-object/from16 v25, v0

    goto/16 :goto_9

    :cond_4
    move-wide/from16 v30, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    .line 30
    const-string v3, "SegmentTemplate"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 31
    invoke-virtual {v15, v14, v1, v2}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v28

    .line 32
    move-object v2, v0

    check-cast v2, Lz1/k$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p16

    move-wide/from16 v4, p18

    move-wide/from16 v6, p20

    move-wide/from16 v8, v30

    move-wide/from16 v10, v28

    move-object/from16 v37, v13

    move-wide/from16 v12, p26

    .line 33
    invoke-virtual/range {v0 .. v13}, Lz1/d;->n0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$c;Ljava/util/List;JJJJJ)Lz1/k$c;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object/from16 v37, v13

    .line 34
    const-string v3, "ContentProtection"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 35
    invoke-virtual/range {p0 .. p1}, Lz1/d;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    .line 36
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 37
    move-object/from16 v27, v4

    check-cast v27, Ljava/lang/String;

    .line 38
    :cond_6
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 39
    check-cast v3, Landroidx/media3/common/DrmInitData$SchemeData;

    move-object/from16 v13, v35

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move-object/from16 v13, v35

    :goto_6
    move/from16 v7, v25

    move-wide/from16 v5, v30

    move-object/from16 v11, v33

    move-object/from16 v10, v34

    goto :goto_4

    :cond_8
    move-object/from16 v13, v35

    .line 40
    const-string v3, "InbandEventStream"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 41
    invoke-static {v14, v3}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    move-result-object v3

    move-object/from16 v12, v36

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v33

    :goto_7
    move-object/from16 v10, v34

    goto :goto_8

    :cond_9
    move-object/from16 v12, v36

    .line 42
    const-string v3, "EssentialProperty"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 43
    invoke-static {v14, v3}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    move-result-object v3

    move-object/from16 v11, v33

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v11, v33

    .line 44
    const-string v3, "SupplementalProperty"

    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 45
    invoke-static {v14, v3}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    move-result-object v3

    move-object/from16 v10, v34

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 v10, v34

    .line 46
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8
    move/from16 v7, v25

    move-wide/from16 v5, v30

    goto/16 :goto_5

    .line 47
    :goto_9
    const-string v0, "Representation"

    invoke-static {v14, v0}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move v6, v7

    move/from16 v7, v24

    move/from16 v8, v17

    move-object/from16 v9, p12

    move-object/from16 v28, v10

    move-object/from16 v10, p13

    move-object/from16 v29, v11

    move-object/from16 v11, p14

    move-object/from16 v30, v12

    move-object/from16 v12, v37

    move-object/from16 v31, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move-object/from16 v15, v29

    move-object/from16 v16, v28

    .line 48
    invoke-virtual/range {v0 .. v16}, Lz1/d;->e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/r;

    move-result-object v0

    if-eqz v25, :cond_c

    goto :goto_a

    .line 49
    :cond_c
    new-instance v1, Lz1/k$e;

    invoke-direct {v1}, Lz1/k$e;-><init>()V

    move-object/from16 v25, v1

    .line 50
    :goto_a
    new-instance v1, Lz1/d$a;

    .line 51
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v32, p2

    :goto_b
    const-wide/16 v2, -0x1

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v32

    move-object/from16 p4, v25

    move-object/from16 p5, v27

    move-object/from16 p6, v31

    move-object/from16 p7, v30

    move-object/from16 p8, v29

    move-object/from16 p9, v28

    move-wide/from16 p10, v2

    invoke-direct/range {p1 .. p11}, Lz1/d$a;-><init>(Landroidx/media3/common/r;Ljava/util/List;Lz1/k;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    return-object v1

    :cond_e
    move-object/from16 v15, p0

    move-object v9, v11

    move-object v11, v13

    move-object/from16 v0, v25

    move-object/from16 v8, v32

    move-object/from16 v13, v37

    move/from16 v25, v7

    move-object/from16 v7, p16

    goto/16 :goto_0
.end method

.method protected h(Ljava/lang/String;JJ)Lz1/i;
    .locals 7

    .line 1
    new-instance v6, Lz1/i;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lz1/i;-><init>(Ljava/lang/String;JJ)V

    .line 8
    .line 9
    .line 10
    return-object v6
.end method

.method protected h0(Ljava/util/List;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lz1/e;

    .line 14
    .line 15
    iget-object v3, v2, Lz1/e;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "urn:mpeg:dash:role:2011"

    .line 18
    .line 19
    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lz1/e;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lz1/d;->i0(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    or-int/2addr v1, v2

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    const-string v3, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    .line 34
    .line 35
    iget-object v4, v2, Lz1/e;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3, v4}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v2, v2, Lz1/e;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lz1/d;->w0(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return v1
.end method

.method protected i(Lz1/d$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lz1/j;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    iget-object v2, v0, Lz1/d$a;->a:Landroidx/media3/common/r;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object/from16 v1, p3

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v1, v0, Lz1/d$a;->d:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    move-object/from16 v1, p4

    .line 32
    .line 33
    :cond_1
    iget-object v3, v0, Lz1/d$a;->e:Ljava/util/ArrayList;

    .line 34
    .line 35
    move-object/from16 v4, p5

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    invoke-static {v3}, Lz1/d;->q(Ljava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lz1/d;->r(Ljava/util/ArrayList;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Landroidx/media3/common/DrmInitData;

    .line 53
    .line 54
    invoke-direct {v4, v1, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v10, v0, Lz1/d$a;->f:Ljava/util/ArrayList;

    .line 61
    .line 62
    move-object/from16 v1, p6

    .line 63
    .line 64
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    iget-wide v5, v0, Lz1/d$a;->g:J

    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iget-object v8, v0, Lz1/d$a;->b:Lcom/google/common/collect/ImmutableList;

    .line 74
    .line 75
    iget-object v9, v0, Lz1/d$a;->c:Lz1/k;

    .line 76
    .line 77
    iget-object v11, v0, Lz1/d$a;->h:Ljava/util/List;

    .line 78
    .line 79
    iget-object v12, v0, Lz1/d$a;->i:Ljava/util/List;

    .line 80
    .line 81
    const/4 v13, 0x0

    .line 82
    invoke-static/range {v5 .. v13}, Lz1/j;->n(JLandroidx/media3/common/r;Ljava/util/List;Lz1/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lz1/j;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method protected i0(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return v4

    .line 10
    :cond_0
    const/4 v5, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    sparse-switch v6, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :sswitch_0
    const-string v6, "supplementary"

    .line 21
    .line 22
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    const/16 v5, 0xc

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string v6, "emergency"

    .line 35
    .line 36
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_2
    const/16 v5, 0xb

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :sswitch_2
    const-string v6, "commentary"

    .line 49
    .line 50
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_3
    const/16 v5, 0xa

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :sswitch_3
    const-string v6, "caption"

    .line 63
    .line 64
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_4
    const/16 v5, 0x9

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :sswitch_4
    const-string v6, "sign"

    .line 77
    .line 78
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_5
    move v5, v0

    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :sswitch_5
    const-string v6, "main"

    .line 90
    .line 91
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const/4 v5, 0x7

    .line 99
    goto :goto_0

    .line 100
    :sswitch_6
    const-string v6, "dub"

    .line 101
    .line 102
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_7

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    const/4 v5, 0x6

    .line 110
    goto :goto_0

    .line 111
    :sswitch_7
    const-string v6, "forced-subtitle"

    .line 112
    .line 113
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_8

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_8
    const/4 v5, 0x5

    .line 121
    goto :goto_0

    .line 122
    :sswitch_8
    const-string v6, "alternate"

    .line 123
    .line 124
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_9

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_9
    move v5, v1

    .line 132
    goto :goto_0

    .line 133
    :sswitch_9
    const-string v6, "forced_subtitle"

    .line 134
    .line 135
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_a

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_a
    const/4 v5, 0x3

    .line 143
    goto :goto_0

    .line 144
    :sswitch_a
    const-string v6, "enhanced-audio-intelligibility"

    .line 145
    .line 146
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_b

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_b
    move v5, v2

    .line 154
    goto :goto_0

    .line 155
    :sswitch_b
    const-string v6, "description"

    .line 156
    .line 157
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_c

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_c
    move v5, v3

    .line 165
    goto :goto_0

    .line 166
    :sswitch_c
    const-string v6, "subtitle"

    .line 167
    .line 168
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_d

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_d
    move v5, v4

    .line 176
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    return v4

    .line 180
    :pswitch_0
    return v1

    .line 181
    :pswitch_1
    const/16 p1, 0x20

    .line 182
    .line 183
    return p1

    .line 184
    :pswitch_2
    return v0

    .line 185
    :pswitch_3
    const/16 p1, 0x40

    .line 186
    .line 187
    return p1

    .line 188
    :pswitch_4
    const/16 p1, 0x100

    .line 189
    .line 190
    return p1

    .line 191
    :pswitch_5
    return v3

    .line 192
    :pswitch_6
    const/16 p1, 0x10

    .line 193
    .line 194
    return p1

    .line 195
    :pswitch_7
    return v2

    .line 196
    :pswitch_8
    const/16 p1, 0x800

    .line 197
    .line 198
    return p1

    .line 199
    :pswitch_9
    const/16 p1, 0x200

    .line 200
    .line 201
    return p1

    .line 202
    :pswitch_a
    const/16 p1, 0x80

    .line 203
    .line 204
    return p1

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
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
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected j(Lz1/i;JJJJLjava/util/List;JLjava/util/List;JJ)Lz1/k$b;
    .locals 19

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    move-wide/from16 v4, p4

    .line 6
    .line 7
    move-wide/from16 v6, p6

    .line 8
    .line 9
    move-wide/from16 v8, p8

    .line 10
    .line 11
    move-object/from16 v10, p10

    .line 12
    .line 13
    move-wide/from16 v11, p11

    .line 14
    .line 15
    move-object/from16 v13, p13

    .line 16
    .line 17
    new-instance v18, Lz1/k$b;

    .line 18
    .line 19
    move-object/from16 v0, v18

    .line 20
    .line 21
    invoke-static/range {p14 .. p15}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v14

    .line 25
    invoke-static/range {p16 .. p17}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v16

    .line 29
    invoke-direct/range {v0 .. v17}, Lz1/k$b;-><init>(Lz1/i;JJJJLjava/util/List;JLjava/util/List;JJ)V

    .line 30
    .line 31
    .line 32
    return-object v18
.end method

.method protected j0(Ljava/util/List;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lz1/e;

    .line 14
    .line 15
    const-string v3, "http://dashif.org/guidelines/trickmode"

    .line 16
    .line 17
    iget-object v2, v2, Lz1/e;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3, v2}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x4000

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method protected k(Lz1/i;JJJJJLjava/util/List;JLz1/n;Lz1/n;JJ)Lz1/k$c;
    .locals 22

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    move-wide/from16 v4, p4

    .line 6
    .line 7
    move-wide/from16 v6, p6

    .line 8
    .line 9
    move-wide/from16 v8, p8

    .line 10
    .line 11
    move-wide/from16 v10, p10

    .line 12
    .line 13
    move-object/from16 v12, p12

    .line 14
    .line 15
    move-wide/from16 v13, p13

    .line 16
    .line 17
    move-object/from16 v15, p15

    .line 18
    .line 19
    move-object/from16 v16, p16

    .line 20
    .line 21
    new-instance v21, Lz1/k$c;

    .line 22
    .line 23
    move-object/from16 v0, v21

    .line 24
    .line 25
    invoke-static/range {p17 .. p18}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v17

    .line 29
    invoke-static/range {p19 .. p20}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v19

    .line 33
    invoke-direct/range {v0 .. v20}, Lz1/k$c;-><init>(Lz1/i;JJJJJLjava/util/List;JLz1/n;Lz1/n;JJ)V

    .line 34
    .line 35
    .line 36
    return-object v21
.end method

.method protected k0(Ljava/util/List;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lz1/e;

    .line 14
    .line 15
    iget-object v3, v2, Lz1/e;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "urn:mpeg:dash:role:2011"

    .line 18
    .line 19
    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lz1/e;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lz1/d;->i0(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    or-int/2addr v1, v2

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v1
.end method

.method protected l(JJ)Lz1/k$d;
    .locals 1

    .line 1
    new-instance v0, Lz1/k$d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lz1/k$d;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected l0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$e;)Lz1/k$e;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v4, v1, Lz1/k;->b:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v4, v2

    .line 13
    :goto_0
    const-string v6, "timescale"

    .line 14
    .line 15
    invoke-static {v0, v6, v4, v5}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-wide v6, v1, Lz1/k;->c:J

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-wide v6, v4

    .line 27
    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 28
    .line 29
    invoke-static {v0, v8, v6, v7}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v11

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-wide v6, v1, Lz1/k$e;->d:J

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-wide v6, v4

    .line 39
    :goto_2
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-wide v4, v1, Lz1/k$e;->e:J

    .line 42
    .line 43
    :cond_3
    const-string v8, "indexRange"

    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    invoke-interface {v0, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-eqz v8, :cond_4

    .line 51
    .line 52
    const-string v4, "-"

    .line 53
    .line 54
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    aget-object v5, v4, v5

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    const/4 v7, 0x1

    .line 66
    aget-object v4, v4, v7

    .line 67
    .line 68
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    sub-long/2addr v7, v5

    .line 73
    add-long/2addr v7, v2

    .line 74
    move-wide v15, v7

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move-wide v15, v4

    .line 77
    move-wide v5, v6

    .line 78
    :goto_3
    if-eqz v1, :cond_5

    .line 79
    .line 80
    iget-object v13, v1, Lz1/k;->a:Lz1/i;

    .line 81
    .line 82
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 83
    .line 84
    .line 85
    const-string v1, "Initialization"

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p1}, Lz1/d;->V(Lorg/xmlpull/v1/XmlPullParser;)Lz1/i;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    move-object v13, v1

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    .line 101
    .line 102
    :goto_4
    const-string v1, "SegmentBase"

    .line 103
    .line 104
    invoke-static {v0, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    move-object/from16 v7, p0

    .line 111
    .line 112
    move-object v8, v13

    .line 113
    move-wide v13, v5

    .line 114
    invoke-virtual/range {v7 .. v16}, Lz1/d;->m(Lz1/i;JJJJ)Lz1/k$e;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

.method protected m(Lz1/i;JJJJ)Lz1/k$e;
    .locals 11

    .line 1
    new-instance v10, Lz1/k$e;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    move-wide/from16 v6, p6

    .line 8
    .line 9
    move-wide/from16 v8, p8

    .line 10
    .line 11
    invoke-direct/range {v0 .. v9}, Lz1/k$e;-><init>(Lz1/i;JJJJ)V

    .line 12
    .line 13
    .line 14
    return-object v10
.end method

.method protected m0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$b;JJJJJ)Lz1/k$b;
    .locals 23

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    const-wide/16 v0, 0x1

    .line 6
    .line 7
    if-eqz v7, :cond_0

    .line 8
    .line 9
    iget-wide v2, v7, Lz1/k;->b:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v2, v0

    .line 13
    :goto_0
    const-string v4, "timescale"

    .line 14
    .line 15
    invoke-static {v6, v4, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    iget-wide v2, v7, Lz1/k;->c:J

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 27
    .line 28
    invoke-static {v6, v4, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v10

    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    iget-wide v2, v7, Lz1/k$a;->e:J

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    :goto_2
    const-string v4, "duration"

    .line 43
    .line 44
    invoke-static {v6, v4, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v13

    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    iget-wide v0, v7, Lz1/k$a;->d:J

    .line 51
    .line 52
    :cond_3
    const-string v2, "startNumber"

    .line 53
    .line 54
    invoke-static {v6, v2, v0, v1}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v15

    .line 58
    invoke-static/range {p7 .. p10}, Lz1/d;->s(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v17

    .line 62
    const/4 v0, 0x0

    .line 63
    move-object v12, v0

    .line 64
    move-object/from16 v19, v12

    .line 65
    .line 66
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 67
    .line 68
    .line 69
    const-string v1, "Initialization"

    .line 70
    .line 71
    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual/range {p0 .. p1}, Lz1/d;->V(Lorg/xmlpull/v1/XmlPullParser;)Lz1/i;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object/from16 v19, v1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const-string v1, "SegmentTimeline"

    .line 85
    .line 86
    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    move-object/from16 v0, p0

    .line 93
    .line 94
    move-object/from16 v1, p1

    .line 95
    .line 96
    move-wide v2, v8

    .line 97
    move-wide/from16 v4, p5

    .line 98
    .line 99
    invoke-virtual/range {v0 .. v5}, Lz1/d;->o0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    const-string v1, "SegmentURL"

    .line 105
    .line 106
    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_8

    .line 111
    .line 112
    if-nez v12, :cond_7

    .line 113
    .line 114
    new-instance v12, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lz1/d;->p0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/i;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_8
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    const-string v1, "SegmentList"

    .line 131
    .line 132
    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    if-eqz v7, :cond_c

    .line 139
    .line 140
    if-eqz v19, :cond_9

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    iget-object v1, v7, Lz1/k;->a:Lz1/i;

    .line 144
    .line 145
    move-object/from16 v19, v1

    .line 146
    .line 147
    :goto_4
    if-eqz v0, :cond_a

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_a
    iget-object v0, v7, Lz1/k$a;->f:Ljava/util/List;

    .line 151
    .line 152
    :goto_5
    if-eqz v12, :cond_b

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_b
    iget-object v12, v7, Lz1/k$b;->j:Ljava/util/List;

    .line 156
    .line 157
    :cond_c
    :goto_6
    move-object v1, v12

    .line 158
    move-object/from16 v6, v19

    .line 159
    .line 160
    move-object/from16 v5, p0

    .line 161
    .line 162
    move-wide v7, v8

    .line 163
    move-wide v9, v10

    .line 164
    move-wide v11, v15

    .line 165
    move-object v15, v0

    .line 166
    move-wide/from16 v16, v17

    .line 167
    .line 168
    move-object/from16 v18, v1

    .line 169
    .line 170
    move-wide/from16 v19, p11

    .line 171
    .line 172
    move-wide/from16 v21, p3

    .line 173
    .line 174
    invoke-virtual/range {v5 .. v22}, Lz1/d;->j(Lz1/i;JJJJLjava/util/List;JLjava/util/List;JJ)Lz1/k$b;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    return-object v0
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)Lz1/o;
    .locals 1

    .line 1
    new-instance v0, Lz1/o;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lz1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected n0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$c;Ljava/util/List;JJJJJ)Lz1/k$c;
    .locals 24

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    if-eqz v7, :cond_0

    .line 10
    .line 11
    iget-wide v2, v7, Lz1/k;->b:J

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-wide v2, v0

    .line 15
    :goto_0
    const-string v4, "timescale"

    .line 16
    .line 17
    invoke-static {v6, v4, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    if-eqz v7, :cond_1

    .line 22
    .line 23
    iget-wide v2, v7, Lz1/k;->c:J

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 29
    .line 30
    invoke-static {v6, v4, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v10

    .line 34
    if-eqz v7, :cond_2

    .line 35
    .line 36
    iget-wide v2, v7, Lz1/k$a;->e:J

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :goto_2
    const-string v4, "duration"

    .line 45
    .line 46
    invoke-static {v6, v4, v2, v3}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v12

    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    iget-wide v0, v7, Lz1/k$a;->d:J

    .line 53
    .line 54
    :cond_3
    const-string v2, "startNumber"

    .line 55
    .line 56
    invoke-static {v6, v2, v0, v1}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v16

    .line 60
    invoke-static/range {p3 .. p3}, Lz1/d;->Y(Ljava/util/List;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v18

    .line 64
    invoke-static/range {p8 .. p11}, Lz1/d;->s(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v20

    .line 68
    const/4 v0, 0x0

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    iget-object v1, v7, Lz1/k$c;->k:Lz1/n;

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    move-object v1, v0

    .line 75
    :goto_3
    const-string v2, "media"

    .line 76
    .line 77
    invoke-virtual {v15, v6, v2, v1}, Lz1/d;->x0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lz1/n;)Lz1/n;

    .line 78
    .line 79
    .line 80
    move-result-object v22

    .line 81
    if-eqz v7, :cond_5

    .line 82
    .line 83
    iget-object v1, v7, Lz1/k$c;->j:Lz1/n;

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    move-object v1, v0

    .line 87
    :goto_4
    const-string v2, "initialization"

    .line 88
    .line 89
    invoke-virtual {v15, v6, v2, v1}, Lz1/d;->x0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lz1/n;)Lz1/n;

    .line 90
    .line 91
    .line 92
    move-result-object v23

    .line 93
    move-object v14, v0

    .line 94
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 95
    .line 96
    .line 97
    const-string v1, "Initialization"

    .line 98
    .line 99
    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p1}, Lz1/d;->V(Lorg/xmlpull/v1/XmlPullParser;)Lz1/i;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    move-object v14, v1

    .line 110
    goto :goto_6

    .line 111
    :cond_6
    const-string v1, "SegmentTimeline"

    .line 112
    .line 113
    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    move-object/from16 v1, p1

    .line 122
    .line 123
    move-wide v2, v8

    .line 124
    move-wide/from16 v4, p6

    .line 125
    .line 126
    invoke-virtual/range {v0 .. v5}, Lz1/d;->o0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_6

    .line 131
    :cond_7
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 132
    .line 133
    .line 134
    :goto_6
    const-string v1, "SegmentTemplate"

    .line 135
    .line 136
    invoke-static {v6, v1}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_b

    .line 141
    .line 142
    if-eqz v7, :cond_a

    .line 143
    .line 144
    if-eqz v14, :cond_8

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_8
    iget-object v14, v7, Lz1/k;->a:Lz1/i;

    .line 148
    .line 149
    :goto_7
    if-eqz v0, :cond_9

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_9
    iget-object v0, v7, Lz1/k$a;->f:Ljava/util/List;

    .line 153
    .line 154
    :cond_a
    :goto_8
    move-object v1, v14

    .line 155
    move-object v14, v0

    .line 156
    move-object/from16 v0, p0

    .line 157
    .line 158
    move-wide v2, v8

    .line 159
    move-wide v4, v10

    .line 160
    move-wide/from16 v6, v16

    .line 161
    .line 162
    move-wide/from16 v8, v18

    .line 163
    .line 164
    move-wide v10, v12

    .line 165
    move-object v12, v14

    .line 166
    move-wide/from16 v13, v20

    .line 167
    .line 168
    move-object/from16 v15, v23

    .line 169
    .line 170
    move-object/from16 v16, v22

    .line 171
    .line 172
    move-wide/from16 v17, p12

    .line 173
    .line 174
    move-wide/from16 v19, p4

    .line 175
    .line 176
    invoke-virtual/range {v0 .. v20}, Lz1/d;->k(Lz1/i;JJJJJLjava/util/List;JLz1/n;Lz1/n;JJ)Lz1/k$c;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_b
    move-object/from16 v15, p0

    .line 182
    .line 183
    goto :goto_5
.end method

.method protected o0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v10, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    move-wide v3, v1

    .line 17
    move-wide v5, v11

    .line 18
    move v1, v13

    .line 19
    move v7, v1

    .line 20
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 21
    .line 22
    .line 23
    const-string v2, "S"

    .line 24
    .line 25
    invoke-static {v0, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    const-string v2, "t"

    .line 32
    .line 33
    invoke-static {v0, v2, v11, v12}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v14

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    move-object/from16 v1, p0

    .line 40
    .line 41
    move-object v2, v10

    .line 42
    move-wide v8, v14

    .line 43
    invoke-direct/range {v1 .. v9}, Lz1/d;->a(Ljava/util/List;JJIJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    :cond_1
    cmp-long v1, v14, v11

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-wide v14, v3

    .line 53
    :goto_0
    const-string v1, "d"

    .line 54
    .line 55
    invoke-static {v0, v1, v11, v12}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const-string v3, "r"

    .line 60
    .line 61
    invoke-static {v0, v3, v13}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x1

    .line 66
    move-wide v5, v1

    .line 67
    move v7, v3

    .line 68
    move v1, v4

    .line 69
    move-wide v3, v14

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static/range {p1 .. p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    const-string v2, "SegmentTimeline"

    .line 75
    .line 76
    invoke-static {v0, v2}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const-wide/16 v18, 0x3e8

    .line 85
    .line 86
    move-wide/from16 v14, p4

    .line 87
    .line 88
    move-wide/from16 v16, p2

    .line 89
    .line 90
    invoke-static/range {v14 .. v19}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    .line 91
    .line 92
    .line 93
    move-result-wide v8

    .line 94
    move-object/from16 v0, p0

    .line 95
    .line 96
    move-object v1, v10

    .line 97
    move-wide v2, v3

    .line 98
    move-wide v4, v5

    .line 99
    move v6, v7

    .line 100
    move-wide v7, v8

    .line 101
    invoke-direct/range {v0 .. v8}, Lz1/d;->a(Ljava/util/List;JJIJ)J

    .line 102
    .line 103
    .line 104
    :cond_4
    return-object v10
.end method

.method protected p0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/i;
    .locals 2

    .line 1
    const-string v0, "media"

    .line 2
    .line 3
    const-string v1, "mediaRange"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lz1/d;->f0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lz1/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lz1/d;->w(Landroid/net/Uri;Ljava/io/InputStream;)Lz1/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected q0(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "forced_subtitle"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const-string v1, "forced-subtitle"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    const/4 p1, 0x2

    .line 23
    return p1
.end method

.method protected r0(Ljava/util/List;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lz1/e;

    .line 14
    .line 15
    iget-object v3, v2, Lz1/e;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "urn:mpeg:dash:role:2011"

    .line 18
    .line 19
    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v2, Lz1/e;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lz1/d;->q0(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    or-int/2addr v1, v2

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v1
.end method

.method protected s0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/l;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const v3, -0x800001

    .line 9
    .line 10
    .line 11
    move-wide v4, v1

    .line 12
    move-wide v6, v4

    .line 13
    move-wide v8, v6

    .line 14
    move v10, v3

    .line 15
    move v11, v10

    .line 16
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 17
    .line 18
    .line 19
    const-string v12, "Latency"

    .line 20
    .line 21
    invoke-static {v0, v12}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v12

    .line 25
    const-string v13, "max"

    .line 26
    .line 27
    const-string v14, "min"

    .line 28
    .line 29
    if-eqz v12, :cond_1

    .line 30
    .line 31
    const-string v4, "target"

    .line 32
    .line 33
    invoke-static {v0, v4, v1, v2}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-static {v0, v14, v1, v2}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    invoke-static {v0, v13, v1, v2}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    :cond_0
    :goto_1
    move-wide v13, v4

    .line 46
    move-wide v15, v6

    .line 47
    move-wide/from16 v17, v8

    .line 48
    .line 49
    move/from16 v19, v10

    .line 50
    .line 51
    move/from16 v20, v11

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const-string v12, "PlaybackRate"

    .line 55
    .line 56
    invoke-static {v0, v12}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_0

    .line 61
    .line 62
    invoke-static {v0, v14, v3}, Lz1/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    invoke-static {v0, v13, v3}, Lz1/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    goto :goto_1

    .line 71
    :goto_2
    const-string v4, "ServiceDescription"

    .line 72
    .line 73
    invoke-static {v0, v4}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    new-instance v0, Lz1/l;

    .line 80
    .line 81
    move-object v12, v0

    .line 82
    invoke-direct/range {v12 .. v20}, Lz1/l;-><init>(JJJFF)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_2
    move-wide v4, v13

    .line 87
    move-wide v6, v15

    .line 88
    move-wide/from16 v8, v17

    .line 89
    .line 90
    move/from16 v10, v19

    .line 91
    .line 92
    move/from16 v11, v20

    .line 93
    .line 94
    goto :goto_0
.end method

.method protected v0(Ljava/util/List;)Landroid/util/Pair;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_3

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lz1/e;

    .line 14
    .line 15
    iget-object v3, v2, Lz1/e;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "http://dashif.org/thumbnail_tile"

    .line 18
    .line 19
    invoke-static {v4, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string v3, "http://dashif.org/guidelines/thumbnail_tile"

    .line 26
    .line 27
    iget-object v4, v2, Lz1/e;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v3, v4}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    :cond_0
    iget-object v2, v2, Lz1/e;->b:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const-string v3, "x"

    .line 40
    .line 41
    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    array-length v3, v2

    .line 46
    const/4 v4, 0x2

    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :try_start_0
    aget-object v3, v2, v0

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    aget-object v2, v2, v4

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object p1

    .line 76
    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const/4 p1, 0x0

    .line 80
    return-object p1
.end method

.method public w(Landroid/net/Uri;Ljava/io/InputStream;)Lz1/c;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lz1/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne p2, v2, :cond_0

    .line 17
    .line 18
    const-string p2, "MPD"

    .line 19
    .line 20
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1}, Lz1/d;->a0(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lz1/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    .line 38
    .line 39
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    invoke-static {v0, p1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    throw p1
.end method

.method protected w0(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    const/4 v3, -0x1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    packed-switch v4, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    goto :goto_0

    .line 16
    :pswitch_1
    const-string v4, "6"

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v3, v0

    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    const-string v4, "4"

    .line 28
    .line 29
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v3, 0x3

    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    const-string v4, "3"

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v3, 0x2

    .line 48
    goto :goto_0

    .line 49
    :pswitch_4
    const-string v4, "2"

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move v3, v1

    .line 59
    goto :goto_0

    .line 60
    :pswitch_5
    const-string v4, "1"

    .line 61
    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    move v3, v2

    .line 70
    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :pswitch_6
    return v1

    .line 75
    :pswitch_7
    const/16 p1, 0x8

    .line 76
    .line 77
    return p1

    .line 78
    :pswitch_8
    return v0

    .line 79
    :pswitch_9
    const/16 p1, 0x800

    .line 80
    .line 81
    return p1

    .line 82
    :pswitch_a
    const/16 p1, 0x200

    .line 83
    .line 84
    return p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lz1/k;JJJJJZ)Lz1/a;
    .locals 60

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    const-string v0, "id"

    .line 6
    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    invoke-static {v14, v0, v1, v2}, Lz1/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v29

    .line 13
    invoke-virtual/range {p0 .. p1}, Lz1/d;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "mimeType"

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v31

    .line 24
    const-string v1, "codecs"

    .line 25
    .line 26
    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v12

    .line 30
    const-string v1, "scte214:supplementalCodecs"

    .line 31
    .line 32
    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v32

    .line 36
    const-string v1, "scte214:supplementalProfiles"

    .line 37
    .line 38
    invoke-interface {v14, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v33

    .line 42
    const-string v1, "width"

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-static {v14, v1, v2}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v34

    .line 49
    const-string v1, "height"

    .line 50
    .line 51
    invoke-static {v14, v1, v2}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v35

    .line 55
    const/high16 v1, -0x40800000    # -1.0f

    .line 56
    .line 57
    invoke-static {v14, v1}, Lz1/d;->U(Lorg/xmlpull/v1/XmlPullParser;F)F

    .line 58
    .line 59
    .line 60
    move-result v36

    .line 61
    const-string v1, "audioSamplingRate"

    .line 62
    .line 63
    invoke-static {v14, v1, v2}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v37

    .line 67
    const-string v11, "lang"

    .line 68
    .line 69
    invoke-interface {v14, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v3, "label"

    .line 74
    .line 75
    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v38

    .line 79
    new-instance v10, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v9, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v8, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v7, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v6, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v5, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v4, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v13, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    const/16 v39, 0x0

    .line 125
    .line 126
    move-object/from16 v40, p3

    .line 127
    .line 128
    move/from16 v41, v2

    .line 129
    .line 130
    move-object/from16 v17, v10

    .line 131
    .line 132
    move/from16 v42, v39

    .line 133
    .line 134
    const/16 v43, 0x0

    .line 135
    .line 136
    move-object v10, v1

    .line 137
    move-wide/from16 v1, p6

    .line 138
    .line 139
    move-wide/from16 p6, p8

    .line 140
    .line 141
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 142
    .line 143
    .line 144
    move-object/from16 v18, v3

    .line 145
    .line 146
    const-string v3, "BaseURL"

    .line 147
    .line 148
    invoke-static {v14, v3}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_1

    .line 153
    .line 154
    if-nez v42, :cond_0

    .line 155
    .line 156
    invoke-virtual {v15, v14, v1, v2}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    const/16 v42, 0x1

    .line 161
    .line 162
    :cond_0
    move-object/from16 v3, p2

    .line 163
    .line 164
    move-wide/from16 p8, v1

    .line 165
    .line 166
    move-object/from16 v19, v8

    .line 167
    .line 168
    move/from16 v8, p14

    .line 169
    .line 170
    invoke-virtual {v15, v14, v3, v8}, Lz1/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    .line 176
    .line 177
    move-wide/from16 v1, p8

    .line 178
    .line 179
    move-object/from16 v48, v4

    .line 180
    .line 181
    move-object/from16 v49, v5

    .line 182
    .line 183
    move-object/from16 v50, v6

    .line 184
    .line 185
    move-object/from16 v51, v7

    .line 186
    .line 187
    move-object/from16 v53, v9

    .line 188
    .line 189
    move-object/from16 v56, v11

    .line 190
    .line 191
    move-object/from16 v57, v12

    .line 192
    .line 193
    move-object/from16 v59, v13

    .line 194
    .line 195
    move-object/from16 v4, v17

    .line 196
    .line 197
    move-object/from16 v15, v18

    .line 198
    .line 199
    move-object/from16 v3, v19

    .line 200
    .line 201
    :goto_1
    const/16 v58, 0x0

    .line 202
    .line 203
    :goto_2
    move-wide/from16 v16, p6

    .line 204
    .line 205
    goto/16 :goto_a

    .line 206
    .line 207
    :cond_1
    move-object/from16 v3, p2

    .line 208
    .line 209
    move-wide/from16 v20, v1

    .line 210
    .line 211
    move-object/from16 v19, v8

    .line 212
    .line 213
    move/from16 v8, p14

    .line 214
    .line 215
    const-string v1, "ContentProtection"

    .line 216
    .line 217
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_4

    .line 222
    .line 223
    invoke-virtual/range {p0 .. p1}, Lz1/d;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 228
    .line 229
    if-eqz v2, :cond_2

    .line 230
    .line 231
    move-object/from16 v43, v2

    .line 232
    .line 233
    check-cast v43, Ljava/lang/String;

    .line 234
    .line 235
    :cond_2
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 236
    .line 237
    if-eqz v1, :cond_3

    .line 238
    .line 239
    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 240
    .line 241
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    :cond_3
    move-object/from16 v48, v4

    .line 245
    .line 246
    move-object/from16 v49, v5

    .line 247
    .line 248
    move-object/from16 v50, v6

    .line 249
    .line 250
    move-object/from16 v51, v7

    .line 251
    .line 252
    move-object/from16 v53, v9

    .line 253
    .line 254
    move-object/from16 v56, v11

    .line 255
    .line 256
    move-object/from16 v57, v12

    .line 257
    .line 258
    move-object/from16 v59, v13

    .line 259
    .line 260
    move-object/from16 v4, v17

    .line 261
    .line 262
    move-object/from16 v15, v18

    .line 263
    .line 264
    move-object/from16 v3, v19

    .line 265
    .line 266
    move-wide/from16 v1, v20

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_4
    const-string v1, "ContentComponent"

    .line 270
    .line 271
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_5

    .line 276
    .line 277
    const/4 v2, 0x0

    .line 278
    invoke-interface {v14, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v10, v1}, Lz1/d;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual/range {p0 .. p1}, Lz1/d;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    invoke-static {v0, v10}, Lz1/d;->o(II)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    move-object v10, v1

    .line 295
    :goto_3
    move-object/from16 v58, v2

    .line 296
    .line 297
    move-object/from16 v48, v4

    .line 298
    .line 299
    move-object/from16 v49, v5

    .line 300
    .line 301
    move-object/from16 v50, v6

    .line 302
    .line 303
    move-object/from16 v51, v7

    .line 304
    .line 305
    move-object/from16 v53, v9

    .line 306
    .line 307
    move-object/from16 v56, v11

    .line 308
    .line 309
    move-object/from16 v57, v12

    .line 310
    .line 311
    move-object/from16 v59, v13

    .line 312
    .line 313
    move-object/from16 v4, v17

    .line 314
    .line 315
    move-object/from16 v15, v18

    .line 316
    .line 317
    move-object/from16 v3, v19

    .line 318
    .line 319
    move-wide/from16 v1, v20

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_5
    const/4 v2, 0x0

    .line 323
    const-string v1, "Role"

    .line 324
    .line 325
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v16

    .line 329
    if-eqz v16, :cond_6

    .line 330
    .line 331
    invoke-static {v14, v1}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    :goto_4
    move/from16 v46, v0

    .line 339
    .line 340
    move-object/from16 v58, v2

    .line 341
    .line 342
    move-object/from16 v48, v4

    .line 343
    .line 344
    move-object/from16 v49, v5

    .line 345
    .line 346
    move-object/from16 v50, v6

    .line 347
    .line 348
    move-object/from16 v51, v7

    .line 349
    .line 350
    move-object/from16 v53, v9

    .line 351
    .line 352
    move-object/from16 v55, v10

    .line 353
    .line 354
    move-object/from16 v56, v11

    .line 355
    .line 356
    move-object/from16 v57, v12

    .line 357
    .line 358
    move-object/from16 v59, v13

    .line 359
    .line 360
    move-object/from16 v4, v17

    .line 361
    .line 362
    move-object/from16 v15, v18

    .line 363
    .line 364
    move-object/from16 v3, v19

    .line 365
    .line 366
    move-wide/from16 v44, v20

    .line 367
    .line 368
    move-wide/from16 v0, p6

    .line 369
    .line 370
    goto/16 :goto_9

    .line 371
    .line 372
    :cond_6
    const-string v1, "AudioChannelConfiguration"

    .line 373
    .line 374
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_7

    .line 379
    .line 380
    invoke-virtual {v15, v14, v12}, Lz1/d;->z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    move/from16 v41, v1

    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_7
    const-string v1, "Accessibility"

    .line 388
    .line 389
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v16

    .line 393
    if-eqz v16, :cond_8

    .line 394
    .line 395
    invoke-static {v14, v1}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_8
    const-string v1, "EssentialProperty"

    .line 404
    .line 405
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v16

    .line 409
    if-eqz v16, :cond_9

    .line 410
    .line 411
    invoke-static {v14, v1}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_9
    const-string v1, "SupplementalProperty"

    .line 420
    .line 421
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    move-result v16

    .line 425
    if-eqz v16, :cond_a

    .line 426
    .line 427
    invoke-static {v14, v1}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    goto :goto_4

    .line 435
    :cond_a
    const-string v1, "Representation"

    .line 436
    .line 437
    invoke-static {v14, v1}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_c

    .line 442
    .line 443
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-nez v1, :cond_b

    .line 448
    .line 449
    move v1, v0

    .line 450
    move-object/from16 v16, v13

    .line 451
    .line 452
    goto :goto_5

    .line 453
    :cond_b
    move v1, v0

    .line 454
    move-object/from16 v16, v3

    .line 455
    .line 456
    :goto_5
    move-object/from16 v0, p0

    .line 457
    .line 458
    move/from16 v46, v1

    .line 459
    .line 460
    move-wide/from16 v44, v20

    .line 461
    .line 462
    move-object/from16 v1, p1

    .line 463
    .line 464
    move-object/from16 v20, v2

    .line 465
    .line 466
    move-object/from16 v2, v16

    .line 467
    .line 468
    move-object/from16 v47, v18

    .line 469
    .line 470
    move-object/from16 v3, v31

    .line 471
    .line 472
    move-object/from16 v48, v4

    .line 473
    .line 474
    move-object v4, v12

    .line 475
    move-object/from16 v49, v5

    .line 476
    .line 477
    move-object/from16 v5, v32

    .line 478
    .line 479
    move-object/from16 v50, v6

    .line 480
    .line 481
    move-object/from16 v6, v33

    .line 482
    .line 483
    move-object/from16 v51, v7

    .line 484
    .line 485
    move/from16 v7, v34

    .line 486
    .line 487
    move-object/from16 v52, v19

    .line 488
    .line 489
    move/from16 v8, v35

    .line 490
    .line 491
    move-object/from16 v53, v9

    .line 492
    .line 493
    move/from16 v9, v36

    .line 494
    .line 495
    move-object/from16 v55, v10

    .line 496
    .line 497
    move-object/from16 v54, v17

    .line 498
    .line 499
    move/from16 v10, v41

    .line 500
    .line 501
    move-object/from16 v56, v11

    .line 502
    .line 503
    move/from16 v11, v37

    .line 504
    .line 505
    move-object/from16 v57, v12

    .line 506
    .line 507
    move-object/from16 v12, v55

    .line 508
    .line 509
    move-object/from16 v59, v13

    .line 510
    .line 511
    move-object/from16 v58, v20

    .line 512
    .line 513
    move-object/from16 v13, v50

    .line 514
    .line 515
    move-object/from16 v14, v51

    .line 516
    .line 517
    move-object/from16 v15, v49

    .line 518
    .line 519
    move-object/from16 v16, v48

    .line 520
    .line 521
    move-object/from16 v17, v40

    .line 522
    .line 523
    move-wide/from16 v18, p10

    .line 524
    .line 525
    move-wide/from16 v20, p4

    .line 526
    .line 527
    move-wide/from16 v22, v44

    .line 528
    .line 529
    move-wide/from16 v24, p6

    .line 530
    .line 531
    move-wide/from16 v26, p12

    .line 532
    .line 533
    move/from16 v28, p14

    .line 534
    .line 535
    invoke-virtual/range {v0 .. v28}, Lz1/d;->g0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lz1/k;JJJJJZ)Lz1/d$a;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    iget-object v1, v0, Lz1/d$a;->a:Landroidx/media3/common/r;

    .line 540
    .line 541
    iget-object v1, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 542
    .line 543
    invoke-static {v1}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    move/from16 v14, v46

    .line 548
    .line 549
    invoke-static {v14, v1}, Lz1/d;->o(II)I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    move-object/from16 v15, v47

    .line 554
    .line 555
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-object/from16 v14, p1

    .line 559
    .line 560
    move-wide/from16 v16, p6

    .line 561
    .line 562
    move v0, v1

    .line 563
    move-wide/from16 v1, v44

    .line 564
    .line 565
    :goto_6
    move-object/from16 v3, v52

    .line 566
    .line 567
    move-object/from16 v4, v54

    .line 568
    .line 569
    :goto_7
    move-object/from16 v10, v55

    .line 570
    .line 571
    goto/16 :goto_a

    .line 572
    .line 573
    :cond_c
    move v14, v0

    .line 574
    move-object/from16 v58, v2

    .line 575
    .line 576
    move-object/from16 v48, v4

    .line 577
    .line 578
    move-object/from16 v49, v5

    .line 579
    .line 580
    move-object/from16 v50, v6

    .line 581
    .line 582
    move-object/from16 v51, v7

    .line 583
    .line 584
    move-object/from16 v53, v9

    .line 585
    .line 586
    move-object/from16 v55, v10

    .line 587
    .line 588
    move-object/from16 v56, v11

    .line 589
    .line 590
    move-object/from16 v57, v12

    .line 591
    .line 592
    move-object/from16 v59, v13

    .line 593
    .line 594
    move-object/from16 v54, v17

    .line 595
    .line 596
    move-object/from16 v15, v18

    .line 597
    .line 598
    move-object/from16 v52, v19

    .line 599
    .line 600
    move-wide/from16 v44, v20

    .line 601
    .line 602
    const-string v0, "SegmentBase"

    .line 603
    .line 604
    move-object/from16 v13, p1

    .line 605
    .line 606
    invoke-static {v13, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-eqz v0, :cond_d

    .line 611
    .line 612
    move-object/from16 v0, v40

    .line 613
    .line 614
    check-cast v0, Lz1/k$e;

    .line 615
    .line 616
    move-object/from16 v11, p0

    .line 617
    .line 618
    invoke-virtual {v11, v13, v0}, Lz1/d;->l0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$e;)Lz1/k$e;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    move-wide/from16 v16, p6

    .line 623
    .line 624
    move-object/from16 v40, v0

    .line 625
    .line 626
    move v0, v14

    .line 627
    move-wide/from16 v1, v44

    .line 628
    .line 629
    move-object/from16 v3, v52

    .line 630
    .line 631
    move-object/from16 v4, v54

    .line 632
    .line 633
    move-object/from16 v10, v55

    .line 634
    .line 635
    move-object v14, v13

    .line 636
    goto/16 :goto_a

    .line 637
    .line 638
    :cond_d
    move-object/from16 v11, p0

    .line 639
    .line 640
    const-string v0, "SegmentList"

    .line 641
    .line 642
    invoke-static {v13, v0}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    if-eqz v0, :cond_e

    .line 647
    .line 648
    move-wide/from16 v0, p6

    .line 649
    .line 650
    invoke-virtual {v11, v13, v0, v1}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 651
    .line 652
    .line 653
    move-result-wide v16

    .line 654
    move-object/from16 v2, v40

    .line 655
    .line 656
    check-cast v2, Lz1/k$b;

    .line 657
    .line 658
    move-object/from16 v0, p0

    .line 659
    .line 660
    move-object/from16 v1, p1

    .line 661
    .line 662
    move-wide/from16 v3, p10

    .line 663
    .line 664
    move-wide/from16 v5, p4

    .line 665
    .line 666
    move-wide/from16 v7, v44

    .line 667
    .line 668
    move-wide/from16 v9, v16

    .line 669
    .line 670
    move/from16 v46, v14

    .line 671
    .line 672
    move-object v14, v11

    .line 673
    move-wide/from16 v11, p12

    .line 674
    .line 675
    invoke-virtual/range {v0 .. v12}, Lz1/d;->m0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$b;JJJJJ)Lz1/k$b;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    move-object/from16 v40, v0

    .line 680
    .line 681
    move-object v14, v13

    .line 682
    :goto_8
    move-wide/from16 v1, v44

    .line 683
    .line 684
    move/from16 v0, v46

    .line 685
    .line 686
    goto :goto_6

    .line 687
    :cond_e
    move-wide/from16 v0, p6

    .line 688
    .line 689
    move/from16 v46, v14

    .line 690
    .line 691
    move-object v14, v11

    .line 692
    const-string v2, "SegmentTemplate"

    .line 693
    .line 694
    invoke-static {v13, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    if-eqz v2, :cond_f

    .line 699
    .line 700
    invoke-virtual {v14, v13, v0, v1}, Lz1/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 701
    .line 702
    .line 703
    move-result-wide v16

    .line 704
    move-object/from16 v2, v40

    .line 705
    .line 706
    check-cast v2, Lz1/k$c;

    .line 707
    .line 708
    move-object/from16 v0, p0

    .line 709
    .line 710
    move-object/from16 v1, p1

    .line 711
    .line 712
    move-object/from16 v3, v48

    .line 713
    .line 714
    move-wide/from16 v4, p10

    .line 715
    .line 716
    move-wide/from16 v6, p4

    .line 717
    .line 718
    move-wide/from16 v8, v44

    .line 719
    .line 720
    move-wide/from16 v10, v16

    .line 721
    .line 722
    move-object v14, v13

    .line 723
    move-wide/from16 v12, p12

    .line 724
    .line 725
    invoke-virtual/range {v0 .. v13}, Lz1/d;->n0(Lorg/xmlpull/v1/XmlPullParser;Lz1/k$c;Ljava/util/List;JJJJJ)Lz1/k$c;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    move-object/from16 v40, v0

    .line 730
    .line 731
    goto :goto_8

    .line 732
    :cond_f
    move-object v14, v13

    .line 733
    const-string v2, "InbandEventStream"

    .line 734
    .line 735
    invoke-static {v14, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    if-eqz v3, :cond_10

    .line 740
    .line 741
    invoke-static {v14, v2}, Lz1/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz1/e;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    move-object/from16 v3, v52

    .line 746
    .line 747
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-object/from16 v4, v54

    .line 751
    .line 752
    goto :goto_9

    .line 753
    :cond_10
    move-object/from16 v3, v52

    .line 754
    .line 755
    const-string v2, "Label"

    .line 756
    .line 757
    invoke-static {v14, v2}, Landroidx/media3/common/util/b1;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    if-eqz v2, :cond_11

    .line 762
    .line 763
    invoke-virtual/range {p0 .. p1}, Lz1/d;->X(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/media3/common/s;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    move-object/from16 v4, v54

    .line 768
    .line 769
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    goto :goto_9

    .line 773
    :cond_11
    move-object/from16 v4, v54

    .line 774
    .line 775
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/b1;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    if-eqz v2, :cond_12

    .line 780
    .line 781
    invoke-virtual/range {p0 .. p1}, Lz1/d;->y(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 782
    .line 783
    .line 784
    :cond_12
    :goto_9
    move-wide/from16 v16, v0

    .line 785
    .line 786
    move-wide/from16 v1, v44

    .line 787
    .line 788
    move/from16 v0, v46

    .line 789
    .line 790
    goto/16 :goto_7

    .line 791
    .line 792
    :goto_a
    const-string v5, "AdaptationSet"

    .line 793
    .line 794
    invoke-static {v14, v5}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 795
    .line 796
    .line 797
    move-result v5

    .line 798
    if-eqz v5, :cond_14

    .line 799
    .line 800
    new-instance v1, Ljava/util/ArrayList;

    .line 801
    .line 802
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 803
    .line 804
    .line 805
    move-result v2

    .line 806
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 807
    .line 808
    .line 809
    move/from16 v2, v39

    .line 810
    .line 811
    :goto_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 812
    .line 813
    .line 814
    move-result v5

    .line 815
    if-ge v2, v5, :cond_13

    .line 816
    .line 817
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    check-cast v5, Lz1/d$a;

    .line 822
    .line 823
    move-object/from16 p1, p0

    .line 824
    .line 825
    move-object/from16 p2, v5

    .line 826
    .line 827
    move-object/from16 p3, v38

    .line 828
    .line 829
    move-object/from16 p4, v4

    .line 830
    .line 831
    move-object/from16 p5, v43

    .line 832
    .line 833
    move-object/from16 p6, v53

    .line 834
    .line 835
    move-object/from16 p7, v3

    .line 836
    .line 837
    invoke-virtual/range {p1 .. p7}, Lz1/d;->i(Lz1/d$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lz1/j;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    add-int/lit8 v2, v2, 0x1

    .line 845
    .line 846
    goto :goto_b

    .line 847
    :cond_13
    move-object/from16 p1, p0

    .line 848
    .line 849
    move-wide/from16 p2, v29

    .line 850
    .line 851
    move/from16 p4, v0

    .line 852
    .line 853
    move-object/from16 p5, v1

    .line 854
    .line 855
    move-object/from16 p6, v51

    .line 856
    .line 857
    move-object/from16 p7, v49

    .line 858
    .line 859
    move-object/from16 p8, v48

    .line 860
    .line 861
    invoke-virtual/range {p1 .. p8}, Lz1/d;->b(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lz1/a;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    return-object v0

    .line 866
    :cond_14
    move-object v8, v3

    .line 867
    move-object v3, v15

    .line 868
    move-wide/from16 p6, v16

    .line 869
    .line 870
    move-object/from16 v5, v49

    .line 871
    .line 872
    move-object/from16 v6, v50

    .line 873
    .line 874
    move-object/from16 v7, v51

    .line 875
    .line 876
    move-object/from16 v9, v53

    .line 877
    .line 878
    move-object/from16 v11, v56

    .line 879
    .line 880
    move-object/from16 v12, v57

    .line 881
    .line 882
    move-object/from16 v13, v59

    .line 883
    .line 884
    move-object/from16 v15, p0

    .line 885
    .line 886
    move-object/from16 v17, v4

    .line 887
    .line 888
    move-object/from16 v4, v48

    .line 889
    .line 890
    goto/16 :goto_0
.end method

.method protected x0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lz1/n;)Lz1/n;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lz1/n;->b(Ljava/lang/String;)Lz1/n;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    return-object p3
.end method

.method protected y(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lz1/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected y0(Lorg/xmlpull/v1/XmlPullParser;)Lz1/o;
    .locals 3

    .line 1
    const-string v0, "schemeIdUri"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "value"

    .line 9
    .line 10
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, v0, p1}, Lz1/d;->n(Ljava/lang/String;Ljava/lang/String;)Lz1/o;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected z(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "schemeIdUri"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lz1/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sparse-switch v2, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    :goto_0
    move v0, v1

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x7

    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x6

    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x5

    .line 54
    goto :goto_1

    .line 55
    :sswitch_3
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, 0x4

    .line 65
    goto :goto_1

    .line 66
    :sswitch_4
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v0, 0x3

    .line 76
    goto :goto_1

    .line 77
    :sswitch_5
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 v0, 0x2

    .line 87
    goto :goto_1

    .line 88
    :sswitch_6
    const-string v2, "tag:dolby.com,2015:dash:audio_channel_configuration:2015"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    const/4 v0, 0x1

    .line 98
    goto :goto_1

    .line 99
    :sswitch_7
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 v0, 0x0

    .line 109
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_0
    invoke-static {p1}, Lz1/d;->N(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    goto :goto_2

    .line 118
    :pswitch_1
    invoke-static {p1}, Lz1/d;->b0(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    goto :goto_2

    .line 123
    :pswitch_2
    invoke-static {p1}, Lz1/d;->L(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    goto :goto_2

    .line 128
    :pswitch_3
    const-string p2, "value"

    .line 129
    .line 130
    invoke-static {p1, p2, v1}, Lz1/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto :goto_2

    .line 135
    :pswitch_4
    invoke-static {p1, p2}, Lz1/d;->I(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    goto :goto_2

    .line 140
    :pswitch_5
    invoke-static {p1}, Lz1/d;->M(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    :cond_8
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 145
    .line 146
    .line 147
    const-string p2, "AudioChannelConfiguration"

    .line 148
    .line 149
    invoke-static {p1, p2}, Landroidx/media3/common/util/b1;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_8

    .line 154
    .line 155
    return v1

    .line 156
    nop

    .line 157
    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_7
        -0x7ad5b1c4 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

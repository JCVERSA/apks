.class public Lz9/d;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/b0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz9/d$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:[I


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
    sput-object v0, Lz9/d;->b:Ljava/util/regex/Pattern;

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
    sput-object v0, Lz9/d;->c:Ljava/util/regex/Pattern;

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
    sput-object v0, Lz9/d;->d:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const/16 v0, 0x15

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    sput-object v0, Lz9/d;->e:[I

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
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
    iput-object v0, p0, Lz9/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
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
    check-cast v1, Lz9/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz9/e;->a:Ljava/lang/String;

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
    iget-object v2, v1, Lz9/e;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget-object v3, Lz9/d;->c:Ljava/util/regex/Pattern;

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
    iget-object v1, v1, Lz9/e;->b:Ljava/lang/String;

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
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

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
    check-cast v1, Lz9/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz9/e;->a:Ljava/lang/String;

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
    iget-object v2, v1, Lz9/e;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget-object v3, Lz9/d;->d:Ljava/util/regex/Pattern;

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
    iget-object v1, v1, Lz9/e;->b:Ljava/lang/String;

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
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->I0(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method protected static H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;
    .locals 4

    .line 1
    const-string v0, "schemeIdUri"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {p0, v1, v2}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v3, "id"

    .line 17
    .line 18
    invoke-static {p0, v3, v2}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    new-instance p0, Lz9/e;

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v2}, Lz9/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method protected static I(Lorg/xmlpull/v1/XmlPullParser;)I
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
    const/4 p0, 0x3

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
    move p0, v0

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string v3, "a000"

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
    move p0, v1

    .line 62
    goto :goto_1

    .line 63
    :sswitch_3
    const-string v3, "4000"

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
    const/4 p0, 0x0

    .line 73
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    return v2

    .line 77
    :pswitch_0
    const/16 p0, 0x8

    .line 78
    .line 79
    return p0

    .line 80
    :pswitch_1
    const/4 p0, 0x6

    .line 81
    return p0

    .line 82
    :pswitch_2
    return v0

    .line 83
    :pswitch_3
    return v1

    .line 84
    nop

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static J(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v0, v1}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

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

.method protected static K(Lorg/xmlpull/v1/XmlPullParser;)I
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

.method protected static L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
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
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->J0(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method protected static M(Ljava/util/List;)Ljava/lang/String;
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
    check-cast v1, Lz9/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz9/e;->a:Ljava/lang/String;

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
    iget-object v4, v1, Lz9/e;->b:Ljava/lang/String;

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
    iget-object v1, v1, Lz9/e;->b:Ljava/lang/String;

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

.method protected static Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F
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

.method protected static R(Lorg/xmlpull/v1/XmlPullParser;F)F
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
    sget-object v0, Lz9/d;->b:Ljava/util/regex/Pattern;

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

.method protected static T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
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

.method protected static V(Ljava/util/List;)J
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
    check-cast v1, Lz9/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz9/e;->a:Ljava/lang/String;

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
    iget-object p0, v1, Lz9/e;->b:Ljava/lang/String;

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

.method protected static W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
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

.method protected static Y(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v0, v1}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-ltz p0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lz9/d;->e:[I

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
    invoke-static {p7, p8, p4, p5}, Lcom/google/android/exoplayer2/util/p0;->m(JJ)J

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
    invoke-virtual {p0, p2, p3, p4, p5}, Lz9/d;->l(JJ)Lz9/k$d;

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
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

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
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

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
    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 14
    .line 15
    sget-object v3, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    .line 16
    .line 17
    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

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
    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 51
    .line 52
    sget-object v3, Lcom/google/android/exoplayer2/l;->b:Ljava/util/UUID;

    .line 53
    .line 54
    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

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
    iget-object v3, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 67
    .line 68
    sget-object v4, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    .line 69
    .line 70
    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 73
    .line 74
    invoke-direct {v3, v4, v2, v5, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

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

.method protected static q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

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
    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->canReplace(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Z

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

.method protected static r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/w;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/w;->s(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/w;->r(Ljava/lang/String;)Z

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
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/w;->p(Ljava/lang/String;)Z

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
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/w;->g(Ljava/lang/String;)Ljava/lang/String;

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

.method public static v(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/q0;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

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
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/q0;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

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
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/q0;->c(Lorg/xmlpull/v1/XmlPullParser;)Z

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
    invoke-static {p1, v5}, Lz9/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/n0;->b(Ljava/lang/String;)Z

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
    new-instance p2, Lz9/b;

    .line 59
    .line 60
    invoke-direct {p2, p1, v2, v1, v4}, Lz9/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    new-array p1, v3, [Lz9/b;

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
    check-cast v6, Lz9/b;

    .line 88
    .line 89
    iget-object v7, v6, Lz9/b;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v7, p1}, Lcom/google/android/exoplayer2/util/n0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    iget v1, v6, Lz9/b;->c:I

    .line 103
    .line 104
    iget v4, v6, Lz9/b;->d:I

    .line 105
    .line 106
    iget-object v8, v6, Lz9/b;->b:Ljava/lang/String;

    .line 107
    .line 108
    :cond_6
    new-instance v6, Lz9/b;

    .line 109
    .line 110
    invoke-direct {v6, v7, v8, v1, v4}, Lz9/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

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
    .locals 10

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
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_6

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sparse-switch v5, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :sswitch_0
    const-string v5, "urn:mpeg:dash:mp4protection:2011"

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x3

    .line 38
    goto :goto_0

    .line 39
    :sswitch_1
    const-string v5, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v4, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_2
    const-string v5, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v4, v0

    .line 60
    goto :goto_0

    .line 61
    :sswitch_3
    const-string v5, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    .line 62
    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move v4, v3

    .line 71
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    goto :goto_5

    .line 75
    :pswitch_0
    const-string v1, "value"

    .line 76
    .line 77
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v4, "default_KID"

    .line 82
    .line 83
    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/util/q0;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_5

    .line 92
    .line 93
    const-string v5, "00000000-0000-0000-0000-000000000000"

    .line 94
    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_5

    .line 100
    .line 101
    const-string v5, "\\s+"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    array-length v5, v4

    .line 108
    new-array v5, v5, [Ljava/util/UUID;

    .line 109
    .line 110
    move v6, v3

    .line 111
    :goto_1
    array-length v7, v4

    .line 112
    if-ge v6, v7, :cond_4

    .line 113
    .line 114
    aget-object v7, v4, v6

    .line 115
    .line 116
    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    aput-object v7, v5, v6

    .line 121
    .line 122
    add-int/2addr v6, v0

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    sget-object v0, Lcom/google/android/exoplayer2/l;->b:Ljava/util/UUID;

    .line 125
    .line 126
    invoke-static {v0, v5, v2}, Lq9/l;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    move-object v5, v2

    .line 131
    goto :goto_6

    .line 132
    :cond_5
    move-object v0, v2

    .line 133
    move-object v4, v0

    .line 134
    :goto_2
    move-object v5, v4

    .line 135
    goto :goto_6

    .line 136
    :pswitch_1
    sget-object v0, Lcom/google/android/exoplayer2/l;->d:Ljava/util/UUID;

    .line 137
    .line 138
    :goto_3
    move-object v1, v2

    .line 139
    :goto_4
    move-object v4, v1

    .line 140
    goto :goto_2

    .line 141
    :pswitch_2
    sget-object v0, Lcom/google/android/exoplayer2/l;->e:Ljava/util/UUID;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :pswitch_3
    sget-object v0, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    :goto_5
    move-object v0, v2

    .line 148
    move-object v1, v0

    .line 149
    goto :goto_4

    .line 150
    :cond_7
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 151
    .line 152
    .line 153
    const-string v6, "clearkey:Laurl"

    .line 154
    .line 155
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const/4 v7, 0x4

    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-ne v6, v7, :cond_8

    .line 167
    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    goto/16 :goto_7

    .line 173
    .line 174
    :cond_8
    const-string v6, "ms:laurl"

    .line 175
    .line 176
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_9

    .line 181
    .line 182
    const-string v5, "licenseUrl"

    .line 183
    .line 184
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    goto :goto_7

    .line 189
    :cond_9
    if-nez v4, :cond_b

    .line 190
    .line 191
    const-string v6, "pssh"

    .line 192
    .line 193
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/q0;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_b

    .line 198
    .line 199
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-ne v6, v7, :cond_b

    .line 204
    .line 205
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v0}, Lq9/l;->f([B)Ljava/util/UUID;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    if-nez v4, :cond_a

    .line 218
    .line 219
    const-string v0, "MpdParser"

    .line 220
    .line 221
    const-string v6, "Skipping malformed cenc:pssh data"

    .line 222
    .line 223
    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object v0, v4

    .line 227
    move-object v4, v2

    .line 228
    goto :goto_7

    .line 229
    :cond_a
    move-object v9, v4

    .line 230
    move-object v4, v0

    .line 231
    move-object v0, v9

    .line 232
    goto :goto_7

    .line 233
    :cond_b
    if-nez v4, :cond_c

    .line 234
    .line 235
    sget-object v6, Lcom/google/android/exoplayer2/l;->e:Ljava/util/UUID;

    .line 236
    .line 237
    invoke-virtual {v6, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-eqz v8, :cond_c

    .line 242
    .line 243
    const-string v8, "mspr:pro"

    .line 244
    .line 245
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-eqz v8, :cond_c

    .line 250
    .line 251
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 252
    .line 253
    .line 254
    move-result v8

    .line 255
    if-ne v8, v7, :cond_c

    .line 256
    .line 257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v6, v4}, Lq9/l;->a(Ljava/util/UUID;[B)[B

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    goto :goto_7

    .line 270
    :cond_c
    invoke-static {p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 271
    .line 272
    .line 273
    :goto_7
    const-string v6, "ContentProtection"

    .line 274
    .line 275
    invoke-static {p1, v6}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_7

    .line 280
    .line 281
    if-eqz v0, :cond_d

    .line 282
    .line 283
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 284
    .line 285
    const-string p1, "video/mp4"

    .line 286
    .line 287
    invoke-direct {v2, v0, v5, p1, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 288
    .line 289
    .line 290
    :cond_d
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    return-object p1

    .line 295
    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

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
    .line 312
    .line 313
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
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    :cond_3
    :goto_0
    return v1
.end method

.method protected N(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
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
    invoke-static {v0, v1, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v0, v1, v4, v5}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v9

    .line 22
    const-string v1, "presentationTime"

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    const-wide/32 v13, 0xf4240

    .line 37
    .line 38
    .line 39
    move-wide v11, v1

    .line 40
    move-wide/from16 v15, p4

    .line 41
    .line 42
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    const-string v3, "messageData"

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {v0, v3, v4}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    move-object/from16 v12, p0

    .line 54
    .line 55
    move-object/from16 v4, p6

    .line 56
    .line 57
    invoke-virtual {v12, v0, v4}, Lz9/d;->O(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    :goto_0
    move-object v11, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/p0;->n0(Ljava/lang/String;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    move-object/from16 v4, p0

    .line 75
    .line 76
    move-object/from16 v5, p2

    .line 77
    .line 78
    move-object/from16 v6, p3

    .line 79
    .line 80
    invoke-virtual/range {v4 .. v11}, Lz9/d;->c(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method

.method protected O(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
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
    sget-object v1, Lcom/google/common/base/c;->c:Ljava/nio/charset/Charset;

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
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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

.method protected P(Lorg/xmlpull/v1/XmlPullParser;)Lz9/f;
    .locals 13

    .line 1
    const-string v0, "schemeIdUri"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "value"

    .line 10
    .line 11
    invoke-static {p1, v2, v1}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "timescale"

    .line 16
    .line 17
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    invoke-static {p1, v2, v3, v4}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v9

    .line 23
    new-instance v11, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 29
    .line 30
    const/16 v2, 0x200

    .line 31
    .line 32
    invoke-direct {v12, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 36
    .line 37
    .line 38
    const-string v2, "Event"

    .line 39
    .line 40
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    move-object v2, p0

    .line 47
    move-object v3, p1

    .line 48
    move-object v4, v0

    .line 49
    move-object v5, v1

    .line 50
    move-wide v6, v9

    .line 51
    move-object v8, v12

    .line 52
    invoke-virtual/range {v2 .. v8}, Lz9/d;->N(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    const-string v2, "EventStream"

    .line 64
    .line 65
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    new-array v7, p1, [J

    .line 76
    .line 77
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    new-array v8, p1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-ge p1, v2, :cond_2

    .line 89
    .line 90
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/util/Pair;

    .line 95
    .line 96
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v3, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    aput-wide v3, v7, p1

    .line 105
    .line 106
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 109
    .line 110
    aput-object v2, v8, p1

    .line 111
    .line 112
    add-int/lit8 p1, p1, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    move-object v2, p0

    .line 116
    move-object v3, v0

    .line 117
    move-object v4, v1

    .line 118
    move-wide v5, v9

    .line 119
    invoke-virtual/range {v2 .. v8}, Lz9/d;->d(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lz9/f;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method protected S(Lorg/xmlpull/v1/XmlPullParser;)Lz9/i;
    .locals 2

    .line 1
    const-string v0, "sourceURL"

    .line 2
    .line 3
    const-string v1, "range"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lz9/d;->c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lz9/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected U(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Label"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz9/d;->r0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected X(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lz9/c;
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
    invoke-virtual {v14, v12, v2, v1}, Lz9/d;->a0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v14, v1}, Lz9/d;->u([Ljava/lang/String;)Z

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
    invoke-static {v12, v1, v9, v10}, Lz9/d;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v16

    .line 30
    const-string v1, "mediaPresentationDuration"

    .line 31
    .line 32
    invoke-static {v12, v1, v9, v10}, Lz9/d;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v18

    .line 36
    const-string v1, "minBufferTime"

    .line 37
    .line 38
    invoke-static {v12, v1, v9, v10}, Lz9/d;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v12, v1, v9, v10}, Lz9/d;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v12, v1, v9, v10}, Lz9/d;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v12, v1, v9, v10}, Lz9/d;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v12, v1, v9, v10}, Lz9/d;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    new-instance v5, Lz9/b;

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
    invoke-direct {v5, v6, v7, v8, v13}, Lz9/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    new-array v6, v13, [Lz9/b;

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
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual {v14, v12, v3, v4}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    move/from16 v31, v13

    .line 179
    .line 180
    :cond_6
    invoke-virtual {v14, v12, v7, v15}, Lz9/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

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
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_8

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p1}, Lz9/d;->b0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/h;

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
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p1}, Lz9/d;->u0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/o;

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
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/n0;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

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
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_b

    .line 257
    .line 258
    invoke-virtual/range {p0 .. p1}, Lz9/d;->p0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/l;

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
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual/range {v0 .. v11}, Lz9/d;->Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v1, Lz9/g;

    .line 315
    .line 316
    iget-wide v2, v1, Lz9/g;->b:J

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
    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

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
    iget-wide v4, v1, Lz9/g;->b:J

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
    invoke-static/range {p1 .. p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 397
    .line 398
    .line 399
    goto :goto_9

    .line 400
    :goto_a
    const-string v0, "MPD"

    .line 401
    .line 402
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

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
    invoke-virtual/range {v0 .. v20}, Lz9/d;->f(JJJZJJJJLz9/h;Lz9/o;Lz9/l;Landroid/net/Uri;Ljava/util/List;)Lz9/c;

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
    invoke-static {v0, v13}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

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

.method protected Z(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;
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
    invoke-static {v14, v0, v1, v2}, Lz9/d;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v14, v0, v10, v11}, Lz9/d;->L(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual {v15, v14, v6, v7}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

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
    invoke-virtual {v15, v14, v4, v5}, Lz9/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

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
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual/range {v0 .. v14}, Lz9/d;->x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lz9/k;JJJJJZ)Lz9/a;

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
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p1}, Lz9/d;->P(Lorg/xmlpull/v1/XmlPullParser;)Lz9/f;

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
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual {v13, v14, v11}, Lz9/d;->i0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$e;)Lz9/k$e;

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
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual {v13, v14, v9, v10}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

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
    invoke-virtual/range {v0 .. v12}, Lz9/d;->j0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$b;JJJJJ)Lz9/k$b;

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
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual {v13, v14, v10, v11}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

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
    invoke-virtual/range {v0 .. v13}, Lz9/d;->k0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$c;Ljava/util/List;JJJJJ)Lz9/k$c;

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
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_9

    .line 351
    .line 352
    invoke-static {v14, v0}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

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
    invoke-static/range {p1 .. p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :goto_6
    const-string v0, "Period"

    .line 366
    .line 367
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual/range {p1 .. p7}, Lz9/d;->g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lz9/e;)Lz9/g;

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

.method protected a0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
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

.method protected b(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lz9/a;
    .locals 8

    .line 1
    new-instance v7, Lz9/a;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lz9/a;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method protected b0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/h;
    .locals 8

    .line 1
    const-string v0, "moreInformationURL"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v6

    .line 8
    const-string v0, "lang"

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :goto_2
    const-string v2, "ProgramInformation"

    .line 64
    .line 65
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    new-instance p1, Lz9/h;

    .line 72
    .line 73
    move-object v2, p1

    .line 74
    move-object v3, v1

    .line 75
    move-object v4, v0

    .line 76
    invoke-direct/range {v2 .. v7}, Lz9/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method protected c(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

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
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 11
    .line 12
    .line 13
    return-object v8
.end method

.method protected c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lz9/i;
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
    invoke-virtual/range {v1 .. v6}, Lz9/d;->h(Ljava/lang/String;JJ)Lz9/i;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lz9/f;
    .locals 8

    .line 1
    new-instance v7, Lz9/f;

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
    invoke-direct/range {v0 .. v6}, Lz9/f;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    .line 10
    .line 11
    .line 12
    return-object v7
.end method

.method protected d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lz9/k;JJJJJZ)Lz9/d$a;
    .locals 35

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

    invoke-static {v14, v0, v2}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    .line 3
    const-string v0, "mimeType"

    move-object/from16 v2, p3

    invoke-static {v14, v0, v2}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4
    const-string v0, "codecs"

    move-object/from16 v2, p4

    invoke-static {v14, v0, v2}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5
    const-string v0, "width"

    move/from16 v2, p5

    invoke-static {v14, v0, v2}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    .line 6
    const-string v0, "height"

    move/from16 v2, p6

    invoke-static {v14, v0, v2}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, p7

    .line 7
    invoke-static {v14, v0}, Lz9/d;->R(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v22

    .line 8
    const-string v0, "audioSamplingRate"

    move/from16 v2, p9

    invoke-static {v14, v0, v2}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v10, p14

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move/from16 v24, p8

    move-wide/from16 v5, p20

    move/from16 v25, v0

    move-object/from16 v26, v1

    move-object/from16 v0, p15

    move-wide/from16 v1, p22

    .line 14
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 15
    const-string v3, "BaseURL"

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v25, :cond_0

    .line 16
    invoke-virtual {v15, v14, v5, v6}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    const/16 v25, 0x1

    :cond_0
    move-object/from16 v8, p2

    move/from16 v3, p26

    .line 17
    invoke-virtual {v15, v14, v8, v3}, Lz9/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move-object/from16 v31, v7

    move-object v15, v13

    move/from16 v7, v24

    move-object/from16 v24, v0

    :goto_2
    move-object v13, v11

    move-object v11, v9

    goto/16 :goto_7

    :cond_1
    move-object/from16 v8, p2

    move/from16 v3, p26

    .line 18
    const-string v4, "AudioChannelConfiguration"

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual/range {p0 .. p1}, Lz9/d;->z(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    move-object/from16 v24, v0

    move-object/from16 v31, v7

    move-object v15, v13

    move v7, v4

    goto :goto_2

    .line 20
    :cond_2
    const-string v4, "SegmentBase"

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    check-cast v0, Lz9/k$e;

    invoke-virtual {v15, v14, v0}, Lz9/d;->i0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$e;)Lz9/k$e;

    move-result-object v0

    goto :goto_1

    .line 22
    :cond_3
    const-string v4, "SegmentList"

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    invoke-virtual {v15, v14, v1, v2}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v27

    .line 24
    move-object v2, v0

    check-cast v2, Lz9/k$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p16

    move-wide/from16 v29, v5

    move-wide/from16 v5, p18

    move-object/from16 v31, v7

    move-wide/from16 v7, v29

    move-object/from16 v32, v9

    move-wide/from16 v9, v27

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move-wide/from16 v11, p24

    .line 25
    invoke-virtual/range {v0 .. v12}, Lz9/d;->j0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$b;JJJJJ)Lz9/k$b;

    move-result-object v0

    move-object v15, v13

    :goto_3
    move/from16 v7, v24

    move-wide/from16 v1, v27

    :goto_4
    move-wide/from16 v5, v29

    move-object/from16 v11, v32

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    :goto_5
    move-object/from16 v24, v0

    goto/16 :goto_7

    :cond_4
    move-wide/from16 v29, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v9

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    .line 26
    const-string v3, "SegmentTemplate"

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {v15, v14, v1, v2}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v27

    .line 28
    move-object v2, v0

    check-cast v2, Lz9/k$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p14

    move-wide/from16 v4, p16

    move-wide/from16 v6, p18

    move-wide/from16 v8, v29

    move-wide/from16 v10, v27

    move-object v15, v13

    move-wide/from16 v12, p24

    .line 29
    invoke-virtual/range {v0 .. v13}, Lz9/d;->k0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$c;Ljava/util/List;JJJJJ)Lz9/k$c;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v15, v13

    .line 30
    const-string v3, "ContentProtection"

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 31
    invoke-virtual/range {p0 .. p1}, Lz9/d;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    .line 32
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 33
    move-object/from16 v26, v4

    check-cast v26, Ljava/lang/String;

    .line 34
    :cond_6
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 35
    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move/from16 v7, v24

    goto :goto_4

    .line 36
    :cond_8
    const-string v3, "InbandEventStream"

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 37
    invoke-static {v14, v3}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    move-result-object v3

    move-object/from16 v13, v33

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v32

    move-object/from16 v12, v34

    goto :goto_6

    :cond_9
    move-object/from16 v13, v33

    .line 38
    const-string v3, "EssentialProperty"

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 39
    invoke-static {v14, v3}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    move-result-object v3

    move-object/from16 v12, v34

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v32

    goto :goto_6

    :cond_a
    move-object/from16 v12, v34

    .line 40
    const-string v3, "SupplementalProperty"

    invoke-static {v14, v3}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 41
    invoke-static {v14, v3}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    move-result-object v3

    move-object/from16 v11, v32

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-object/from16 v11, v32

    .line 42
    invoke-static/range {p1 .. p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    move/from16 v7, v24

    move-wide/from16 v5, v29

    goto/16 :goto_5

    .line 43
    :goto_7
    const-string v0, "Representation"

    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move v6, v7

    move/from16 v7, v23

    move/from16 v8, v17

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v27, v11

    move-object/from16 v11, p12

    move-object/from16 v28, v12

    move-object/from16 v12, v19

    move-object/from16 v29, v13

    move-object/from16 v13, v28

    move-object/from16 v14, v27

    .line 44
    invoke-virtual/range {v0 .. v14}, Lz9/d;->e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/p1;

    move-result-object v0

    if-eqz v24, :cond_c

    goto :goto_8

    .line 45
    :cond_c
    new-instance v1, Lz9/k$e;

    invoke-direct {v1}, Lz9/k$e;-><init>()V

    move-object/from16 v24, v1

    .line 46
    :goto_8
    new-instance v1, Lz9/d$a;

    .line 47
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v31, p2

    :goto_9
    const-wide/16 v2, -0x1

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v31

    move-object/from16 p4, v24

    move-object/from16 p5, v26

    move-object/from16 p6, v15

    move-object/from16 p7, v29

    move-object/from16 p8, v28

    move-object/from16 p9, v27

    move-wide/from16 p10, v2

    invoke-direct/range {p1 .. p11}, Lz9/d$a;-><init>(Lcom/google/android/exoplayer2/p1;Ljava/util/List;Lz9/k;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    return-object v1

    :cond_e
    move-object/from16 v10, p14

    move-object v9, v11

    move-object v11, v13

    move-object v13, v15

    move-object/from16 v0, v24

    move-object/from16 v15, p0

    move/from16 v24, v7

    move-object/from16 v7, v31

    goto/16 :goto_0
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/p1;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move v2, p3

    .line 4
    move v3, p4

    .line 5
    move-object/from16 v4, p10

    .line 6
    .line 7
    move-object/from16 v5, p12

    .line 8
    .line 9
    invoke-static {p2, v5}, Lz9/d;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const-string v7, "audio/eac3"

    .line 14
    .line 15
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    invoke-static/range {p14 .. p14}, Lz9/d;->M(Ljava/util/List;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string v7, "audio/eac3-joc"

    .line 26
    .line 27
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    const-string v5, "ec+3"

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v4}, Lz9/d;->o0(Ljava/util/List;)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-virtual {p0, v4}, Lz9/d;->h0(Ljava/util/List;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    move-object/from16 v8, p11

    .line 44
    .line 45
    invoke-virtual {p0, v8}, Lz9/d;->e0(Ljava/util/List;)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    or-int/2addr v4, v9

    .line 50
    move-object/from16 v9, p13

    .line 51
    .line 52
    invoke-virtual {p0, v9}, Lz9/d;->g0(Ljava/util/List;)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    or-int/2addr v4, v9

    .line 57
    move-object/from16 v9, p14

    .line 58
    .line 59
    invoke-virtual {p0, v9}, Lz9/d;->g0(Ljava/util/List;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    or-int/2addr v4, v9

    .line 64
    new-instance v9, Lcom/google/android/exoplayer2/p1$b;

    .line 65
    .line 66
    invoke-direct {v9}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 67
    .line 68
    .line 69
    move-object v10, p1

    .line 70
    invoke-virtual {v9, p1}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v9, p2}, Lcom/google/android/exoplayer2/p1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move/from16 v5, p8

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/p1$b;->g0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/p1$b;->c0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object/from16 v4, p9

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/w;->s(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_1

    .line 111
    .line 112
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2, p4}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move/from16 v3, p5

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p1$b;->P(F)Lcom/google/android/exoplayer2/p1$b;

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_2

    .line 131
    .line 132
    move/from16 v4, p6

    .line 133
    .line 134
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/p1$b;->H(I)Lcom/google/android/exoplayer2/p1$b;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move/from16 v3, p7

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p1$b;->f0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/w;->r(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_5

    .line 149
    .line 150
    const-string v2, "application/cea-608"

    .line 151
    .line 152
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    invoke-static/range {p11 .. p11}, Lz9/d;->C(Ljava/util/List;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const-string v2, "application/cea-708"

    .line 164
    .line 165
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_4

    .line 170
    .line 171
    invoke-static/range {p11 .. p11}, Lz9/d;->D(Ljava/util/List;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    goto :goto_0

    .line 176
    :cond_4
    const/4 v2, -0x1

    .line 177
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->F(I)Lcom/google/android/exoplayer2/p1$b;

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/w;->p(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_6

    .line 186
    .line 187
    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2, p4}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 192
    .line 193
    .line 194
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    return-object v1
.end method

.method protected e0(Ljava/util/List;)I
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
    check-cast v2, Lz9/e;

    .line 14
    .line 15
    iget-object v3, v2, Lz9/e;->a:Ljava/lang/String;

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
    iget-object v2, v2, Lz9/e;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lz9/d;->f0(Ljava/lang/String;)I

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
    iget-object v4, v2, Lz9/e;->a:Ljava/lang/String;

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
    iget-object v2, v2, Lz9/e;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lz9/d;->s0(Ljava/lang/String;)I

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

.method protected f(JJJZJJJJLz9/h;Lz9/o;Lz9/l;Landroid/net/Uri;Ljava/util/List;)Lz9/c;
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
    new-instance v21, Lz9/c;

    .line 28
    .line 29
    move-object/from16 v0, v21

    .line 30
    .line 31
    invoke-direct/range {v0 .. v20}, Lz9/c;-><init>(JJJZJJJJLz9/h;Lz9/o;Lz9/l;Landroid/net/Uri;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    return-object v21
.end method

.method protected f0(Ljava/lang/String;)I
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

.method protected g(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lz9/e;)Lz9/g;
    .locals 8

    .line 1
    new-instance v7, Lz9/g;

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
    invoke-direct/range {v0 .. v6}, Lz9/g;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lz9/e;)V

    .line 10
    .line 11
    .line 12
    return-object v7
.end method

.method protected g0(Ljava/util/List;)I
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
    check-cast v2, Lz9/e;

    .line 14
    .line 15
    const-string v3, "http://dashif.org/guidelines/trickmode"

    .line 16
    .line 17
    iget-object v2, v2, Lz9/e;->a:Ljava/lang/String;

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

.method protected h(Ljava/lang/String;JJ)Lz9/i;
    .locals 7

    .line 1
    new-instance v6, Lz9/i;

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
    invoke-direct/range {v0 .. v5}, Lz9/i;-><init>(Ljava/lang/String;JJ)V

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
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lz9/e;

    .line 14
    .line 15
    iget-object v3, v2, Lz9/e;->a:Ljava/lang/String;

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
    iget-object v2, v2, Lz9/e;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lz9/d;->f0(Ljava/lang/String;)I

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

.method protected i(Lz9/d$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lz9/j;
    .locals 10

    .line 1
    iget-object v0, p1, Lz9/d$a;->a:Lcom/google/android/exoplayer2/p1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/p1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p2, p1, Lz9/d$a;->d:Ljava/lang/String;

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object p3, p2

    .line 18
    :goto_0
    iget-object p2, p1, Lz9/d$a;->e:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    if-nez p4, :cond_2

    .line 28
    .line 29
    invoke-static {p2}, Lz9/d;->q(Ljava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lz9/d;->r(Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    new-instance p4, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 36
    .line 37
    invoke-direct {p4, p3, p2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/p1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1$b;

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v6, p1, Lz9/d$a;->f:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v6, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    iget-wide v1, p1, Lz9/d$a;->g:J

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, p1, Lz9/d$a;->b:Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    iget-object v5, p1, Lz9/d$a;->c:Lz9/k;

    .line 57
    .line 58
    iget-object v7, p1, Lz9/d$a;->h:Ljava/util/List;

    .line 59
    .line 60
    iget-object v8, p1, Lz9/d$a;->i:Ljava/util/List;

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-static/range {v1 .. v9}, Lz9/j;->n(JLcom/google/android/exoplayer2/p1;Ljava/util/List;Lz9/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lz9/j;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method protected i0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$e;)Lz9/k$e;
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
    iget-wide v4, v1, Lz9/k;->b:J

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
    invoke-static {v0, v6, v4, v5}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    iget-wide v6, v1, Lz9/k;->c:J

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
    invoke-static {v0, v8, v6, v7}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v11

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-wide v6, v1, Lz9/k$e;->d:J

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
    iget-wide v4, v1, Lz9/k$e;->e:J

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
    iget-object v13, v1, Lz9/k;->a:Lz9/i;

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
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p1}, Lz9/d;->S(Lorg/xmlpull/v1/XmlPullParser;)Lz9/i;

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
    invoke-static/range {p1 .. p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    .line 101
    .line 102
    :goto_4
    const-string v1, "SegmentBase"

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual/range {v7 .. v16}, Lz9/d;->m(Lz9/i;JJJJ)Lz9/k$e;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

.method protected j(Lz9/i;JJJJLjava/util/List;JLjava/util/List;JJ)Lz9/k$b;
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
    new-instance v18, Lz9/k$b;

    .line 18
    .line 19
    move-object/from16 v0, v18

    .line 20
    .line 21
    invoke-static/range {p14 .. p15}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v14

    .line 25
    invoke-static/range {p16 .. p17}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v16

    .line 29
    invoke-direct/range {v0 .. v17}, Lz9/k$b;-><init>(Lz9/i;JJJJLjava/util/List;JLjava/util/List;JJ)V

    .line 30
    .line 31
    .line 32
    return-object v18
.end method

.method protected j0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$b;JJJJJ)Lz9/k$b;
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
    iget-wide v2, v7, Lz9/k;->b:J

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
    invoke-static {v6, v4, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    iget-wide v2, v7, Lz9/k;->c:J

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
    invoke-static {v6, v4, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v10

    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    iget-wide v2, v7, Lz9/k$a;->e:J

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
    invoke-static {v6, v4, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v13

    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    iget-wide v0, v7, Lz9/k$a;->d:J

    .line 51
    .line 52
    :cond_3
    const-string v2, "startNumber"

    .line 53
    .line 54
    invoke-static {v6, v2, v0, v1}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v15

    .line 58
    invoke-static/range {p7 .. p10}, Lz9/d;->s(JJ)J

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
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual/range {p0 .. p1}, Lz9/d;->S(Lorg/xmlpull/v1/XmlPullParser;)Lz9/i;

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
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual/range {v0 .. v5}, Lz9/d;->l0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

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
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual/range {p0 .. p1}, Lz9/d;->m0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/i;

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
    invoke-static/range {p1 .. p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    const-string v1, "SegmentList"

    .line 131
    .line 132
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    iget-object v1, v7, Lz9/k;->a:Lz9/i;

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
    iget-object v0, v7, Lz9/k$a;->f:Ljava/util/List;

    .line 151
    .line 152
    :goto_5
    if-eqz v12, :cond_b

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_b
    iget-object v12, v7, Lz9/k$b;->j:Ljava/util/List;

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
    invoke-virtual/range {v5 .. v22}, Lz9/d;->j(Lz9/i;JJJJLjava/util/List;JLjava/util/List;JJ)Lz9/k$b;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    return-object v0
.end method

.method protected k(Lz9/i;JJJJJLjava/util/List;JLz9/n;Lz9/n;JJ)Lz9/k$c;
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
    new-instance v21, Lz9/k$c;

    .line 22
    .line 23
    move-object/from16 v0, v21

    .line 24
    .line 25
    invoke-static/range {p17 .. p18}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v17

    .line 29
    invoke-static/range {p19 .. p20}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v19

    .line 33
    invoke-direct/range {v0 .. v20}, Lz9/k$c;-><init>(Lz9/i;JJJJJLjava/util/List;JLz9/n;Lz9/n;JJ)V

    .line 34
    .line 35
    .line 36
    return-object v21
.end method

.method protected k0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$c;Ljava/util/List;JJJJJ)Lz9/k$c;
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
    iget-wide v2, v7, Lz9/k;->b:J

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
    invoke-static {v6, v4, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    if-eqz v7, :cond_1

    .line 22
    .line 23
    iget-wide v2, v7, Lz9/k;->c:J

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
    invoke-static {v6, v4, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v10

    .line 34
    if-eqz v7, :cond_2

    .line 35
    .line 36
    iget-wide v2, v7, Lz9/k$a;->e:J

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
    invoke-static {v6, v4, v2, v3}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v12

    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    iget-wide v0, v7, Lz9/k$a;->d:J

    .line 53
    .line 54
    :cond_3
    const-string v2, "startNumber"

    .line 55
    .line 56
    invoke-static {v6, v2, v0, v1}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v16

    .line 60
    invoke-static/range {p3 .. p3}, Lz9/d;->V(Ljava/util/List;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v18

    .line 64
    invoke-static/range {p8 .. p11}, Lz9/d;->s(JJ)J

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
    iget-object v1, v7, Lz9/k$c;->k:Lz9/n;

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
    invoke-virtual {v15, v6, v2, v1}, Lz9/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lz9/n;)Lz9/n;

    .line 78
    .line 79
    .line 80
    move-result-object v22

    .line 81
    if-eqz v7, :cond_5

    .line 82
    .line 83
    iget-object v1, v7, Lz9/k$c;->j:Lz9/n;

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
    invoke-virtual {v15, v6, v2, v1}, Lz9/d;->t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lz9/n;)Lz9/n;

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
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p1}, Lz9/d;->S(Lorg/xmlpull/v1/XmlPullParser;)Lz9/i;

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
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-virtual/range {v0 .. v5}, Lz9/d;->l0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_6

    .line 131
    :cond_7
    invoke-static/range {p1 .. p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 132
    .line 133
    .line 134
    :goto_6
    const-string v1, "SegmentTemplate"

    .line 135
    .line 136
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    iget-object v14, v7, Lz9/k;->a:Lz9/i;

    .line 148
    .line 149
    :goto_7
    if-eqz v0, :cond_9

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_9
    iget-object v0, v7, Lz9/k$a;->f:Ljava/util/List;

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
    invoke-virtual/range {v0 .. v20}, Lz9/d;->k(Lz9/i;JJJJJLjava/util/List;JLz9/n;Lz9/n;JJ)Lz9/k$c;

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

.method protected l(JJ)Lz9/k$d;
    .locals 1

    .line 1
    new-instance v0, Lz9/k$d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lz9/k$d;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected l0(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
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
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {v0, v2, v11, v12}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-direct/range {v1 .. v9}, Lz9/d;->a(Ljava/util/List;JJIJ)J

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
    invoke-static {v0, v1, v11, v12}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const-string v3, "r"

    .line 60
    .line 61
    invoke-static {v0, v3, v13}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

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
    invoke-static/range {p1 .. p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    const-string v2, "SegmentTimeline"

    .line 75
    .line 76
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

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
    invoke-direct/range {v0 .. v8}, Lz9/d;->a(Ljava/util/List;JJIJ)J

    .line 102
    .line 103
    .line 104
    :cond_4
    return-object v10
.end method

.method protected m(Lz9/i;JJJJ)Lz9/k$e;
    .locals 11

    .line 1
    new-instance v10, Lz9/k$e;

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
    invoke-direct/range {v0 .. v9}, Lz9/k$e;-><init>(Lz9/i;JJJJ)V

    .line 12
    .line 13
    .line 14
    return-object v10
.end method

.method protected m0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/i;
    .locals 2

    .line 1
    const-string v0, "media"

    .line 2
    .line 3
    const-string v1, "mediaRange"

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lz9/d;->c0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lz9/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)Lz9/o;
    .locals 1

    .line 1
    new-instance v0, Lz9/o;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lz9/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected n0(Ljava/lang/String;)I
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

.method protected o0(Ljava/util/List;)I
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
    check-cast v2, Lz9/e;

    .line 14
    .line 15
    iget-object v3, v2, Lz9/e;->a:Ljava/lang/String;

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
    iget-object v2, v2, Lz9/e;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lz9/d;->n0(Ljava/lang/String;)I

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

.method protected p0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/l;
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
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    invoke-static {v0, v4, v1, v2}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-static {v0, v14, v1, v2}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    invoke-static {v0, v13, v1, v2}, Lz9/d;->W(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

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
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_0

    .line 61
    .line 62
    invoke-static {v0, v14, v3}, Lz9/d;->Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    invoke-static {v0, v13, v3}, Lz9/d;->Q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

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
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    new-instance v0, Lz9/l;

    .line 80
    .line 81
    move-object v12, v0

    .line 82
    invoke-direct/range {v12 .. v20}, Lz9/l;-><init>(JJJFF)V

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

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lz9/d;->w(Landroid/net/Uri;Ljava/io/InputStream;)Lz9/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected s0(Ljava/lang/String;)I
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

.method protected t0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lz9/n;)Lz9/n;
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
    invoke-static {p1}, Lz9/n;->b(Ljava/lang/String;)Lz9/n;

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

.method protected u0(Lorg/xmlpull/v1/XmlPullParser;)Lz9/o;
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
    invoke-virtual {p0, v0, p1}, Lz9/d;->n(Ljava/lang/String;Ljava/lang/String;)Lz9/o;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public w(Landroid/net/Uri;Ljava/io/InputStream;)Lz9/c;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lz9/d;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

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
    invoke-virtual {p0, v1, p1}, Lz9/d;->X(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lz9/c;

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
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

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
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    throw p1
.end method

.method protected x(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lz9/k;JJJJJZ)Lz9/a;
    .locals 54

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
    const/4 v1, -0x1

    .line 8
    invoke-static {v14, v0, v1}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v27

    .line 12
    invoke-virtual/range {p0 .. p1}, Lz9/d;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v2, "mimeType"

    .line 17
    .line 18
    const/4 v13, 0x0

    .line 19
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v28

    .line 23
    const-string v2, "codecs"

    .line 24
    .line 25
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v29

    .line 29
    const-string v2, "width"

    .line 30
    .line 31
    invoke-static {v14, v2, v1}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v30

    .line 35
    const-string v2, "height"

    .line 36
    .line 37
    invoke-static {v14, v2, v1}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v31

    .line 41
    const/high16 v2, -0x40800000    # -1.0f

    .line 42
    .line 43
    invoke-static {v14, v2}, Lz9/d;->R(Lorg/xmlpull/v1/XmlPullParser;F)F

    .line 44
    .line 45
    .line 46
    move-result v32

    .line 47
    const-string v2, "audioSamplingRate"

    .line 48
    .line 49
    invoke-static {v14, v2, v1}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v33

    .line 53
    const-string v12, "lang"

    .line 54
    .line 55
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "label"

    .line 60
    .line 61
    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-instance v11, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v10, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v9, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v8, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v7, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v6, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v5, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v4, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    const/16 v34, 0x0

    .line 106
    .line 107
    move-object/from16 v35, p3

    .line 108
    .line 109
    move/from16 v36, v0

    .line 110
    .line 111
    move/from16 v37, v1

    .line 112
    .line 113
    move-object/from16 v38, v2

    .line 114
    .line 115
    move-object/from16 v39, v3

    .line 116
    .line 117
    move-object/from16 v41, v13

    .line 118
    .line 119
    move/from16 v40, v34

    .line 120
    .line 121
    move-wide/from16 v2, p6

    .line 122
    .line 123
    move-wide/from16 v0, p8

    .line 124
    .line 125
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 126
    .line 127
    .line 128
    const-string v13, "BaseURL"

    .line 129
    .line 130
    invoke-static {v14, v13}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-eqz v13, :cond_2

    .line 135
    .line 136
    if-nez v40, :cond_0

    .line 137
    .line 138
    invoke-virtual {v15, v14, v2, v3}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    const/16 v40, 0x1

    .line 143
    .line 144
    :cond_0
    move-object/from16 v13, p2

    .line 145
    .line 146
    move-wide/from16 p6, v0

    .line 147
    .line 148
    move-object/from16 v17, v10

    .line 149
    .line 150
    move/from16 v10, p14

    .line 151
    .line 152
    invoke-virtual {v15, v14, v13, v10}, Lz9/d;->B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    .line 158
    .line 159
    :cond_1
    :goto_1
    move-wide/from16 v0, p6

    .line 160
    .line 161
    move-wide/from16 v42, v2

    .line 162
    .line 163
    move-object v15, v5

    .line 164
    move-object/from16 v45, v7

    .line 165
    .line 166
    move-object/from16 v46, v8

    .line 167
    .line 168
    move-object/from16 v47, v9

    .line 169
    .line 170
    move-object/from16 v49, v11

    .line 171
    .line 172
    move-object/from16 v50, v12

    .line 173
    .line 174
    move-object/from16 v3, v17

    .line 175
    .line 176
    move/from16 v52, v36

    .line 177
    .line 178
    move-object/from16 v53, v38

    .line 179
    .line 180
    const/16 v51, 0x0

    .line 181
    .line 182
    move-object/from16 v36, v4

    .line 183
    .line 184
    move-object/from16 v38, v6

    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_2
    move-object/from16 v13, p2

    .line 189
    .line 190
    move-wide/from16 p6, v0

    .line 191
    .line 192
    move-object/from16 v17, v10

    .line 193
    .line 194
    move/from16 v10, p14

    .line 195
    .line 196
    const-string v0, "ContentProtection"

    .line 197
    .line 198
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_4

    .line 203
    .line 204
    invoke-virtual/range {p0 .. p1}, Lz9/d;->E(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 209
    .line 210
    if-eqz v1, :cond_3

    .line 211
    .line 212
    move-object/from16 v41, v1

    .line 213
    .line 214
    check-cast v41, Ljava/lang/String;

    .line 215
    .line 216
    :cond_3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 217
    .line 218
    if-eqz v0, :cond_1

    .line 219
    .line 220
    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 221
    .line 222
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_4
    const-string v0, "ContentComponent"

    .line 227
    .line 228
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_5

    .line 233
    .line 234
    const/4 v1, 0x0

    .line 235
    invoke-interface {v14, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    move-object/from16 v15, v38

    .line 240
    .line 241
    invoke-static {v15, v0}, Lz9/d;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual/range {p0 .. p1}, Lz9/d;->F(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    move/from16 v13, v36

    .line 250
    .line 251
    invoke-static {v13, v15}, Lz9/d;->o(II)I

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    move-object/from16 v53, v0

    .line 256
    .line 257
    move-object/from16 v51, v1

    .line 258
    .line 259
    move-wide/from16 v42, v2

    .line 260
    .line 261
    move-object/from16 v36, v4

    .line 262
    .line 263
    move-object v15, v5

    .line 264
    move-object/from16 v38, v6

    .line 265
    .line 266
    move-object/from16 v45, v7

    .line 267
    .line 268
    move-object/from16 v46, v8

    .line 269
    .line 270
    move-object/from16 v47, v9

    .line 271
    .line 272
    move-object/from16 v49, v11

    .line 273
    .line 274
    move-object/from16 v50, v12

    .line 275
    .line 276
    move/from16 v52, v13

    .line 277
    .line 278
    move-object/from16 v3, v17

    .line 279
    .line 280
    :goto_2
    move-wide/from16 v0, p6

    .line 281
    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_5
    move/from16 v13, v36

    .line 285
    .line 286
    move-object/from16 v15, v38

    .line 287
    .line 288
    const/4 v1, 0x0

    .line 289
    const-string v0, "Role"

    .line 290
    .line 291
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v16

    .line 295
    if-eqz v16, :cond_6

    .line 296
    .line 297
    invoke-static {v14, v0}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_6
    const-string v0, "AudioChannelConfiguration"

    .line 306
    .line 307
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_7

    .line 312
    .line 313
    invoke-virtual/range {p0 .. p1}, Lz9/d;->z(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    move/from16 v37, v0

    .line 318
    .line 319
    :goto_3
    move-object/from16 v51, v1

    .line 320
    .line 321
    move-wide/from16 v42, v2

    .line 322
    .line 323
    move-object/from16 v36, v4

    .line 324
    .line 325
    move-object/from16 v38, v6

    .line 326
    .line 327
    move-object/from16 v45, v7

    .line 328
    .line 329
    move-object/from16 v46, v8

    .line 330
    .line 331
    move-object/from16 v47, v9

    .line 332
    .line 333
    move-object/from16 v49, v11

    .line 334
    .line 335
    move-object/from16 v50, v12

    .line 336
    .line 337
    move/from16 v52, v13

    .line 338
    .line 339
    move-object/from16 v53, v15

    .line 340
    .line 341
    move-object/from16 v3, v17

    .line 342
    .line 343
    move-wide/from16 v0, p6

    .line 344
    .line 345
    move-object v15, v5

    .line 346
    goto/16 :goto_6

    .line 347
    .line 348
    :cond_7
    const-string v0, "Accessibility"

    .line 349
    .line 350
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v16

    .line 354
    if-eqz v16, :cond_8

    .line 355
    .line 356
    invoke-static {v14, v0}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_8
    const-string v0, "EssentialProperty"

    .line 365
    .line 366
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result v16

    .line 370
    if-eqz v16, :cond_9

    .line 371
    .line 372
    invoke-static {v14, v0}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_9
    const-string v0, "SupplementalProperty"

    .line 381
    .line 382
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v16

    .line 386
    if-eqz v16, :cond_a

    .line 387
    .line 388
    invoke-static {v14, v0}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_a
    const-string v0, "Representation"

    .line 397
    .line 398
    invoke-static {v14, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_c

    .line 403
    .line 404
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-nez v0, :cond_b

    .line 409
    .line 410
    move-object/from16 v16, v4

    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_b
    move-object/from16 v16, p2

    .line 414
    .line 415
    :goto_4
    move-object/from16 v0, p0

    .line 416
    .line 417
    move-object/from16 v18, v1

    .line 418
    .line 419
    move-object/from16 v1, p1

    .line 420
    .line 421
    move-wide/from16 v42, v2

    .line 422
    .line 423
    move-object/from16 v2, v16

    .line 424
    .line 425
    move-object/from16 v3, v28

    .line 426
    .line 427
    move-object/from16 v36, v4

    .line 428
    .line 429
    move-object/from16 v4, v29

    .line 430
    .line 431
    move-object/from16 v44, v5

    .line 432
    .line 433
    move/from16 v5, v30

    .line 434
    .line 435
    move-object/from16 v38, v6

    .line 436
    .line 437
    move/from16 v6, v31

    .line 438
    .line 439
    move-object/from16 v45, v7

    .line 440
    .line 441
    move/from16 v7, v32

    .line 442
    .line 443
    move-object/from16 v46, v8

    .line 444
    .line 445
    move/from16 v8, v37

    .line 446
    .line 447
    move-object/from16 v47, v9

    .line 448
    .line 449
    move/from16 v9, v33

    .line 450
    .line 451
    move-object/from16 v48, v17

    .line 452
    .line 453
    move-object v10, v15

    .line 454
    move-object/from16 v49, v11

    .line 455
    .line 456
    move-object/from16 v11, v46

    .line 457
    .line 458
    move-object/from16 v50, v12

    .line 459
    .line 460
    move-object/from16 v12, v47

    .line 461
    .line 462
    move/from16 v52, v13

    .line 463
    .line 464
    move-object/from16 v51, v18

    .line 465
    .line 466
    move-object/from16 v13, v45

    .line 467
    .line 468
    move-object/from16 v14, v38

    .line 469
    .line 470
    move-object/from16 v53, v15

    .line 471
    .line 472
    move-object/from16 v15, v35

    .line 473
    .line 474
    move-wide/from16 v16, p10

    .line 475
    .line 476
    move-wide/from16 v18, p4

    .line 477
    .line 478
    move-wide/from16 v20, v42

    .line 479
    .line 480
    move-wide/from16 v22, p6

    .line 481
    .line 482
    move-wide/from16 v24, p12

    .line 483
    .line 484
    move/from16 v26, p14

    .line 485
    .line 486
    invoke-virtual/range {v0 .. v26}, Lz9/d;->d0(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lz9/k;JJJJJZ)Lz9/d$a;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    iget-object v1, v0, Lz9/d$a;->a:Lcom/google/android/exoplayer2/p1;

    .line 491
    .line 492
    iget-object v1, v1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 493
    .line 494
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/w;->k(Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    move/from16 v14, v52

    .line 499
    .line 500
    invoke-static {v14, v1}, Lz9/d;->o(II)I

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    move-object/from16 v15, v44

    .line 505
    .line 506
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-object/from16 v14, p1

    .line 510
    .line 511
    move/from16 v52, v1

    .line 512
    .line 513
    move-object/from16 v3, v48

    .line 514
    .line 515
    goto/16 :goto_2

    .line 516
    .line 517
    :cond_c
    move-object/from16 v51, v1

    .line 518
    .line 519
    move-wide/from16 v42, v2

    .line 520
    .line 521
    move-object/from16 v36, v4

    .line 522
    .line 523
    move-object/from16 v38, v6

    .line 524
    .line 525
    move-object/from16 v45, v7

    .line 526
    .line 527
    move-object/from16 v46, v8

    .line 528
    .line 529
    move-object/from16 v47, v9

    .line 530
    .line 531
    move-object/from16 v49, v11

    .line 532
    .line 533
    move-object/from16 v50, v12

    .line 534
    .line 535
    move v14, v13

    .line 536
    move-object/from16 v53, v15

    .line 537
    .line 538
    move-object/from16 v48, v17

    .line 539
    .line 540
    move-object v15, v5

    .line 541
    const-string v0, "SegmentBase"

    .line 542
    .line 543
    move-object/from16 v13, p1

    .line 544
    .line 545
    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_d

    .line 550
    .line 551
    move-object/from16 v0, v35

    .line 552
    .line 553
    check-cast v0, Lz9/k$e;

    .line 554
    .line 555
    move-object/from16 v11, p0

    .line 556
    .line 557
    invoke-virtual {v11, v13, v0}, Lz9/d;->i0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$e;)Lz9/k$e;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    move-object/from16 v35, v0

    .line 562
    .line 563
    move/from16 v52, v14

    .line 564
    .line 565
    move-object/from16 v3, v48

    .line 566
    .line 567
    move-wide/from16 v0, p6

    .line 568
    .line 569
    move-object v14, v13

    .line 570
    goto/16 :goto_6

    .line 571
    .line 572
    :cond_d
    move-object/from16 v11, p0

    .line 573
    .line 574
    const-string v0, "SegmentList"

    .line 575
    .line 576
    invoke-static {v13, v0}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-eqz v0, :cond_e

    .line 581
    .line 582
    move-wide/from16 v0, p6

    .line 583
    .line 584
    invoke-virtual {v11, v13, v0, v1}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 585
    .line 586
    .line 587
    move-result-wide v16

    .line 588
    move-object/from16 v2, v35

    .line 589
    .line 590
    check-cast v2, Lz9/k$b;

    .line 591
    .line 592
    move-object/from16 v0, p0

    .line 593
    .line 594
    move-object/from16 v1, p1

    .line 595
    .line 596
    move-wide/from16 v3, p10

    .line 597
    .line 598
    move-wide/from16 v5, p4

    .line 599
    .line 600
    move-wide/from16 v7, v42

    .line 601
    .line 602
    move-wide/from16 v9, v16

    .line 603
    .line 604
    move/from16 v52, v14

    .line 605
    .line 606
    move-object v14, v11

    .line 607
    move-wide/from16 v11, p12

    .line 608
    .line 609
    invoke-virtual/range {v0 .. v12}, Lz9/d;->j0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$b;JJJJJ)Lz9/k$b;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    move-object/from16 v35, v0

    .line 614
    .line 615
    move-object v14, v13

    .line 616
    :goto_5
    move-wide/from16 v0, v16

    .line 617
    .line 618
    move-object/from16 v3, v48

    .line 619
    .line 620
    goto :goto_6

    .line 621
    :cond_e
    move-wide/from16 v0, p6

    .line 622
    .line 623
    move/from16 v52, v14

    .line 624
    .line 625
    move-object v14, v11

    .line 626
    const-string v2, "SegmentTemplate"

    .line 627
    .line 628
    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    if-eqz v2, :cond_f

    .line 633
    .line 634
    invoke-virtual {v14, v13, v0, v1}, Lz9/d;->A(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 635
    .line 636
    .line 637
    move-result-wide v16

    .line 638
    move-object/from16 v2, v35

    .line 639
    .line 640
    check-cast v2, Lz9/k$c;

    .line 641
    .line 642
    move-object/from16 v0, p0

    .line 643
    .line 644
    move-object/from16 v1, p1

    .line 645
    .line 646
    move-object/from16 v3, v38

    .line 647
    .line 648
    move-wide/from16 v4, p10

    .line 649
    .line 650
    move-wide/from16 v6, p4

    .line 651
    .line 652
    move-wide/from16 v8, v42

    .line 653
    .line 654
    move-wide/from16 v10, v16

    .line 655
    .line 656
    move-object v14, v13

    .line 657
    move-wide/from16 v12, p12

    .line 658
    .line 659
    invoke-virtual/range {v0 .. v13}, Lz9/d;->k0(Lorg/xmlpull/v1/XmlPullParser;Lz9/k$c;Ljava/util/List;JJJJJ)Lz9/k$c;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    move-object/from16 v35, v0

    .line 664
    .line 665
    goto :goto_5

    .line 666
    :cond_f
    move-object v14, v13

    .line 667
    const-string v2, "InbandEventStream"

    .line 668
    .line 669
    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    if-eqz v3, :cond_10

    .line 674
    .line 675
    invoke-static {v14, v2}, Lz9/d;->H(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lz9/e;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    move-object/from16 v3, v48

    .line 680
    .line 681
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    goto :goto_6

    .line 685
    :cond_10
    move-object/from16 v3, v48

    .line 686
    .line 687
    const-string v2, "Label"

    .line 688
    .line 689
    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/q0;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-eqz v2, :cond_11

    .line 694
    .line 695
    invoke-virtual/range {p0 .. p1}, Lz9/d;->U(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    move-object/from16 v39, v2

    .line 700
    .line 701
    goto :goto_6

    .line 702
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/q0;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    if-eqz v2, :cond_12

    .line 707
    .line 708
    invoke-virtual/range {p0 .. p1}, Lz9/d;->y(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 709
    .line 710
    .line 711
    :cond_12
    :goto_6
    const-string v2, "AdaptationSet"

    .line 712
    .line 713
    invoke-static {v14, v2}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    if-eqz v2, :cond_14

    .line 718
    .line 719
    new-instance v0, Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 726
    .line 727
    .line 728
    move/from16 v1, v34

    .line 729
    .line 730
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    if-ge v1, v2, :cond_13

    .line 735
    .line 736
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    check-cast v2, Lz9/d$a;

    .line 741
    .line 742
    move-object/from16 p1, p0

    .line 743
    .line 744
    move-object/from16 p2, v2

    .line 745
    .line 746
    move-object/from16 p3, v39

    .line 747
    .line 748
    move-object/from16 p4, v41

    .line 749
    .line 750
    move-object/from16 p5, v49

    .line 751
    .line 752
    move-object/from16 p6, v3

    .line 753
    .line 754
    invoke-virtual/range {p1 .. p6}, Lz9/d;->i(Lz9/d$a;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lz9/j;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    add-int/lit8 v1, v1, 0x1

    .line 762
    .line 763
    goto :goto_7

    .line 764
    :cond_13
    move-object/from16 p1, p0

    .line 765
    .line 766
    move/from16 p2, v27

    .line 767
    .line 768
    move/from16 p3, v52

    .line 769
    .line 770
    move-object/from16 p4, v0

    .line 771
    .line 772
    move-object/from16 p5, v47

    .line 773
    .line 774
    move-object/from16 p6, v45

    .line 775
    .line 776
    move-object/from16 p7, v38

    .line 777
    .line 778
    invoke-virtual/range {p1 .. p7}, Lz9/d;->b(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lz9/a;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    return-object v0

    .line 783
    :cond_14
    move-object v10, v3

    .line 784
    move-object v5, v15

    .line 785
    move-object/from16 v4, v36

    .line 786
    .line 787
    move-object/from16 v6, v38

    .line 788
    .line 789
    move-wide/from16 v2, v42

    .line 790
    .line 791
    move-object/from16 v7, v45

    .line 792
    .line 793
    move-object/from16 v8, v46

    .line 794
    .line 795
    move-object/from16 v9, v47

    .line 796
    .line 797
    move-object/from16 v11, v49

    .line 798
    .line 799
    move-object/from16 v12, v50

    .line 800
    .line 801
    move-object/from16 v13, v51

    .line 802
    .line 803
    move/from16 v36, v52

    .line 804
    .line 805
    move-object/from16 v38, v53

    .line 806
    .line 807
    move-object/from16 v15, p0

    .line 808
    .line 809
    goto/16 :goto_0
.end method

.method protected y(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lz9/d;->v(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected z(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    .line 1
    const-string v0, "schemeIdUri"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Lz9/d;->q0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    goto :goto_1

    .line 21
    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x6

    .line 31
    goto :goto_1

    .line 32
    :sswitch_1
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x5

    .line 42
    goto :goto_1

    .line 43
    :sswitch_2
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x4

    .line 53
    goto :goto_1

    .line 54
    :sswitch_3
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x3

    .line 64
    goto :goto_1

    .line 65
    :sswitch_4
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v0, 0x2

    .line 75
    goto :goto_1

    .line 76
    :sswitch_5
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v0, 0x1

    .line 86
    goto :goto_1

    .line 87
    :sswitch_6
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/4 v0, 0x0

    .line 97
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :pswitch_0
    invoke-static {p1}, Lz9/d;->K(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    goto :goto_2

    .line 106
    :pswitch_1
    invoke-static {p1}, Lz9/d;->Y(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_2

    .line 111
    :pswitch_2
    invoke-static {p1}, Lz9/d;->I(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    goto :goto_2

    .line 116
    :pswitch_3
    const-string v0, "value"

    .line 117
    .line 118
    invoke-static {p1, v0, v1}, Lz9/d;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    goto :goto_2

    .line 123
    :pswitch_4
    invoke-static {p1}, Lz9/d;->J(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    :cond_7
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 128
    .line 129
    .line 130
    const-string v0, "AudioChannelConfiguration"

    .line 131
    .line 132
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/q0;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    return v1

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

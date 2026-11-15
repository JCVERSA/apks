.class public final Lfie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhe;


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Lzhe;


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfie;->b:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfie;->c:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfie;->d:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfie;->e:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfie;->f:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfie;->g:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfie;->h:Ljava/util/regex/Pattern;

    new-instance v0, Lzhe;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lzhe;-><init>(FII)V

    sput-object v0, Lfie;->i:Lzhe;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lfie;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;Lzhe;)J
    .locals 13

    sget-object v0, Lfie;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v7, v8

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v9, v9

    add-double/2addr v7, v9

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v5

    :goto_0
    add-double/2addr v7, v9

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lzhe;->a:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v5

    :goto_1
    add-double/2addr v7, v11

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lzhe;->b:I

    int-to-double v4, p0

    iget p0, p1, Lzhe;->a:F

    float-to-double p0, p0

    div-double/2addr v0, v4

    div-double v5, v0, p0

    :cond_2
    add-double/2addr v7, v9

    add-double/2addr v7, v5

    mul-double/2addr v7, v2

    double-to-long p0, v7

    return-wide p0

    :cond_3
    sget-object v0, Lfie;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_9

    const/16 v1, 0x68

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_7

    const/16 v1, 0xda6

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v4

    goto :goto_3

    :cond_5
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_6
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v6

    goto :goto_3

    :cond_7
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v8

    goto :goto_3

    :cond_8
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v5

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_f

    if-eq v7, v8, :cond_e

    if-eq v7, v6, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    goto :goto_6

    :cond_b
    iget p0, p1, Lzhe;->c:I

    int-to-double p0, p0

    :goto_4
    div-double/2addr v9, p0

    goto :goto_6

    :cond_c
    iget p0, p1, Lzhe;->a:F

    float-to-double p0, p0

    goto :goto_4

    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    goto :goto_4

    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    :goto_5
    mul-double/2addr v9, p0

    goto :goto_6

    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    goto :goto_5

    :goto_6
    mul-double/2addr v9, v2

    double-to-long p0, v9

    return-wide p0

    :cond_10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzajw;

    const-string v0, "Malformed time expression: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 5

    invoke-static {p0}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public static e(Liie;)Liie;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Liie;

    invoke-direct {p0}, Liie;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;Liie;)Liie;
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_24

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, -0x1

    const/4 v12, 0x3

    const/4 v13, 0x2

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "multiRowAlign"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "backgroundColor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v2

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "rubyPosition"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v8, "textEmphasis"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xd

    goto/16 :goto_2

    :sswitch_4
    const-string v8, "fontSize"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v10

    goto/16 :goto_2

    :sswitch_5
    const-string v8, "textCombine"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v8, "shear"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v8, "color"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v13

    goto/16 :goto_2

    :sswitch_8
    const-string v8, "ruby"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xa

    goto :goto_2

    :sswitch_9
    const-string v8, "id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_2

    :sswitch_a
    const-string v8, "fontWeight"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_2

    :sswitch_b
    const-string v8, "textDecoration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc

    goto :goto_2

    :sswitch_c
    const-string v8, "origin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xf

    goto :goto_2

    :sswitch_d
    const-string v8, "textAlign"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    goto :goto_2

    :sswitch_e
    const-string v8, "fontFamily"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v12

    goto :goto_2

    :sswitch_f
    const-string v8, "extent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x10

    goto :goto_2

    :sswitch_10
    const-string v8, "fontStyle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    move v7, v11

    :goto_2
    const/4 v8, 0x0

    const-string v14, "TtmlParser"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v6}, Liie;->C(Ljava/lang/String;)Liie;

    goto/16 :goto_c

    :pswitch_1
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v6}, Liie;->L(Ljava/lang/String;)Liie;

    goto/16 :goto_c

    :pswitch_2
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v7

    sget-object v0, Lfie;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v9, :cond_1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Invalid value for shear: "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v8, -0x3d380000    # -100.0f

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Failed to parse shear: "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v0}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v7, v10}, Liie;->a(F)Liie;

    move-object v0, v7

    goto/16 :goto_c

    :pswitch_3
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-static {v6}, Lxhe;->a(Ljava/lang/String;)Lxhe;

    move-result-object v6

    invoke-virtual {v0, v6}, Liie;->d(Lxhe;)Liie;

    goto/16 :goto_c

    :pswitch_4
    invoke-static {v6}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto :goto_5

    :sswitch_11
    const-string v7, "linethrough"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v4

    goto :goto_5

    :sswitch_12
    const-string v7, "nolinethrough"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v2

    goto :goto_5

    :sswitch_13
    const-string v7, "underline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v13

    goto :goto_5

    :sswitch_14
    const-string v7, "nounderline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v12

    :cond_3
    :goto_5
    if-eqz v11, :cond_7

    if-eq v11, v2, :cond_6

    if-eq v11, v13, :cond_5

    if-eq v11, v12, :cond_4

    goto/16 :goto_c

    :cond_4
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v4}, Liie;->e(Z)Liie;

    goto/16 :goto_c

    :cond_5
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v2}, Liie;->e(Z)Liie;

    goto/16 :goto_c

    :cond_6
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v4}, Liie;->J(Z)Liie;

    goto/16 :goto_c

    :cond_7
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v2}, Liie;->J(Z)Liie;

    goto/16 :goto_c

    :pswitch_5
    invoke-static {v6}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x5305c081

    if-eq v7, v8, :cond_9

    const v8, 0x58705dc

    if-eq v7, v8, :cond_8

    goto :goto_6

    :cond_8
    const-string v7, "after"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v11, v2

    goto :goto_6

    :cond_9
    const-string v7, "before"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v11, v4

    :cond_a
    :goto_6
    if-eqz v11, :cond_c

    if-eq v11, v2, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v13}, Liie;->M(I)Liie;

    goto/16 :goto_c

    :cond_c
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v2}, Liie;->M(I)Liie;

    goto/16 :goto_c

    :pswitch_6
    invoke-static {v6}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    goto :goto_7

    :sswitch_15
    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v12

    goto :goto_7

    :sswitch_16
    const-string v7, "base"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v2

    goto :goto_7

    :sswitch_17
    const-string v7, "textContainer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v10

    goto :goto_7

    :sswitch_18
    const-string v7, "delimiter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v9

    goto :goto_7

    :sswitch_19
    const-string v7, "container"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v4

    goto :goto_7

    :sswitch_1a
    const-string v7, "baseContainer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v13

    :cond_d
    :goto_7
    if-eqz v11, :cond_11

    if-eq v11, v2, :cond_10

    if-eq v11, v13, :cond_10

    if-eq v11, v12, :cond_f

    if-eq v11, v10, :cond_f

    if-eq v11, v9, :cond_e

    goto/16 :goto_c

    :cond_e
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v10}, Liie;->N(I)Liie;

    goto/16 :goto_c

    :cond_f
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v12}, Liie;->N(I)Liie;

    goto/16 :goto_c

    :cond_10
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v13}, Liie;->N(I)Liie;

    goto/16 :goto_c

    :cond_11
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v2}, Liie;->N(I)Liie;

    goto/16 :goto_c

    :pswitch_7
    invoke-static {v6}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x179a1

    if-eq v7, v8, :cond_13

    const v8, 0x33af38

    if-eq v7, v8, :cond_12

    goto :goto_8

    :cond_12
    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    move v11, v4

    goto :goto_8

    :cond_13
    const-string v7, "all"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    move v11, v2

    :cond_14
    :goto_8
    if-eqz v11, :cond_16

    if-eq v11, v2, :cond_15

    goto/16 :goto_c

    :cond_15
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v2}, Liie;->c(Z)Liie;

    goto/16 :goto_c

    :cond_16
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v4}, Liie;->c(Z)Liie;

    goto/16 :goto_c

    :pswitch_8
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-static {v6}, Lfie;->d(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {v0, v6}, Liie;->K(Landroid/text/Layout$Alignment;)Liie;

    goto/16 :goto_c

    :pswitch_9
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-static {v6}, Lfie;->d(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {v0, v6}, Liie;->b(Landroid/text/Layout$Alignment;)Liie;

    goto/16 :goto_c

    :pswitch_a
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    const-string v7, "italic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Liie;->I(Z)Liie;

    goto/16 :goto_c

    :pswitch_b
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    const-string v7, "bold"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Liie;->B(Z)Liie;

    goto/16 :goto_c

    :pswitch_c
    :try_start_1
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    const-string v7, "\\s+"

    sget v9, Lkfh;->a:I

    invoke-virtual {v6, v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    if-ne v9, v2, :cond_17

    sget-object v7, Lfie;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    goto :goto_9

    :cond_17
    if-ne v9, v13, :cond_22

    sget-object v9, Lfie;->d:Ljava/util/regex/Pattern;

    aget-object v7, v7, v2

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v14, v9}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1 .. :try_end_1} :catch_1

    const-string v10, "\'."

    if-eqz v9, :cond_21

    :try_start_2
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_20

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v4, 0x25

    if-eq v15, v4, :cond_1a

    const/16 v4, 0xca8

    if-eq v15, v4, :cond_19

    const/16 v4, 0xe08

    if-eq v15, v4, :cond_18

    goto :goto_a

    :cond_18
    const-string v4, "px"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v11, 0x0

    goto :goto_a

    :cond_19
    const-string v4, "em"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v11, v2

    goto :goto_a

    :cond_1a
    const-string v4, "%"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v11, v13

    :cond_1b
    :goto_a
    if-eqz v11, :cond_1e

    if-eq v11, v2, :cond_1d

    if-ne v11, v13, :cond_1c

    :try_start_3
    invoke-virtual {v0, v12}, Liie;->G(I)Liie;

    goto :goto_b

    :cond_1c
    new-instance v4, Lcom/google/android/gms/internal/ads/zzajw;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid unit for fontSize: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1d
    invoke-virtual {v0, v13}, Liie;->G(I)Liie;

    goto :goto_b

    :cond_1e
    invoke-virtual {v0, v2}, Liie;->G(I)Liie;

    :goto_b
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v4}, Liie;->F(F)Liie;

    goto/16 :goto_c

    :cond_1f
    throw v8

    :cond_20
    throw v8

    :cond_21
    new-instance v4, Lcom/google/android/gms/internal/ads/zzajw;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid expression for fontSize: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_22
    new-instance v4, Lcom/google/android/gms/internal/ads/zzajw;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid number of entries for fontSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Failed parsing fontSize value: "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_d
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v6}, Liie;->E(Ljava/lang/String;)Liie;

    goto :goto_c

    :pswitch_e
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    :try_start_4
    invoke-static {v6}, Lqdg;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Liie;->D(I)Liie;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Failed parsing color value: "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_f
    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    :try_start_5
    invoke-static {v6}, Lqdg;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Liie;->A(I)Liie;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    :catch_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Failed parsing background value: "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_10
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "style"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {v0}, Lfie;->e(Liie;)Liie;

    move-result-object v0

    invoke-virtual {v0, v6}, Liie;->H(Ljava/lang/String;)Liie;

    :cond_23
    :goto_c
    add-int/2addr v5, v2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_24
    return-object v0

    nop

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_14
        -0x3d363934 -> :sswitch_13
        0x36723ff0 -> :sswitch_12
        0x641ec051 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x24de7f50 -> :sswitch_1a
        -0x187eb37f -> :sswitch_19
        -0xeee99f9 -> :sswitch_18
        -0x81c562c -> :sswitch_17
        0x2e06d1 -> :sswitch_16
        0x36452d -> :sswitch_15
    .end sparse-switch
.end method

.method public static g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget v0, Lkfh;->a:I

    const-string v0, "\\s+"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a([BIILwge;Lqfg;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lfie;->b([BII)Ltge;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lsge;->a(Ltge;Lwge;Lqfg;)V

    return-void
.end method

.method public final b([BII)Ltge;
    .locals 48

    const-string v3, "Ignoring region with malformed extent: "

    const-string v5, "Ignoring region with missing tts:extent: "

    const-string v6, "Ignoring region with malformed origin: "

    const-string v7, "id"

    const-string v8, "image"

    const-string v11, ""

    const-string v12, "http://www.w3.org/ns/ttml#parameter"

    move-object/from16 v13, p0

    :try_start_0
    iget-object v13, v13, Lfie;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lgie;

    const-string v17, ""

    const v25, -0x800001

    const/high16 v26, -0x80000000

    move-object/from16 v16, v4

    move/from16 v18, v25

    move/from16 v19, v25

    move/from16 v20, v26

    move/from16 v21, v26

    move/from16 v22, v25

    move/from16 v23, v25

    move/from16 v24, v26

    invoke-direct/range {v16 .. v26}, Lgie;-><init>(Ljava/lang/String;FFIIFFIFI)V

    invoke-interface {v15, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct {v4, v1, v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v1, 0x0

    invoke-interface {v13, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    sget-object v10, Lfie;->i:Lzhe;

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 v21, v1

    move-object/from16 v25, v21

    move-object/from16 v23, v10

    move/from16 v24, v19

    move/from16 v22, v20

    const/4 v1, 0x1

    :goto_0
    if-eq v9, v1, :cond_58

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyhe;

    move-object/from16 v26, v11

    if-nez v22, :cond_56

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p3, v4

    const-string v4, "tt"

    move-object/from16 v27, v1

    const/4 v1, 0x2

    if-ne v9, v1, :cond_51

    :try_start_1
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "extent"

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v29, v15

    const-string v15, "TtmlParser"

    if-eqz v1, :cond_f

    :try_start_2
    const-string v1, "frameRate"

    invoke-interface {v13, v12, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move-object/from16 v30, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3c

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3d

    :cond_0
    const/16 v1, 0x1e

    goto :goto_1

    :goto_2
    const-string v3, "frameRateMultiplier"

    invoke-interface {v13, v12, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v31, v5

    const-string v5, " "

    if-eqz v3, :cond_2

    :try_start_3
    sget v23, Lkfh;->a:I

    move-object/from16 v32, v6

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    move-object/from16 v33, v2

    const/4 v2, 0x2

    if-ne v6, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    move/from16 v2, v20

    :goto_3
    const-string v6, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-static {v2, v6}, Ln7g;->e(ZLjava/lang/Object;)V

    aget-object v2, v3, v20

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_4

    :cond_2
    move-object/from16 v33, v2

    move-object/from16 v32, v6

    move/from16 v2, v28

    :goto_4
    iget v3, v10, Lzhe;->b:I

    const-string v6, "subFrameRate"

    invoke-interface {v13, v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_3
    iget v6, v10, Lzhe;->c:I

    move/from16 v23, v6

    const-string v6, "tickRate"

    invoke-interface {v13, v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v34, v10

    goto :goto_5

    :cond_4
    move-object/from16 v34, v10

    move/from16 v6, v23

    :goto_5
    new-instance v10, Lzhe;

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-direct {v10, v1, v3, v6}, Lzhe;-><init>(FII)V

    const-string v1, "cellResolution"

    invoke-interface {v13, v12, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_6
    move-object/from16 v36, v7

    move-object/from16 v23, v10

    move-object/from16 v35, v12

    :goto_7
    move/from16 v24, v19

    goto/16 :goto_b

    :cond_5
    sget-object v2, Lfie;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v6, "Ignoring malformed cell resolution: "

    if-nez v3, :cond_6

    :try_start_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :cond_6
    const/4 v3, 0x1

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_a

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v23, v10

    const/4 v10, 0x2

    :try_start_6
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    move-object/from16 v35, v12

    const/4 v10, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v35, v12

    move/from16 v2, v20

    move v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v35, v12

    move/from16 v10, v20

    :goto_8
    :try_start_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v36, v7

    :try_start_8
    const-string v7, "Invalid cell resolution "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Ln7g;->e(ZLjava/lang/Object;)V

    move/from16 v24, v2

    goto :goto_b

    :catch_2
    move-object/from16 v36, v7

    goto :goto_a

    :catch_3
    move-object/from16 v36, v7

    :goto_9
    move-object/from16 v35, v12

    goto :goto_a

    :cond_9
    move-object/from16 v36, v7

    move-object/from16 v35, v12

    const/4 v2, 0x0

    throw v2

    :catch_4
    move-object/from16 v36, v7

    move-object/from16 v23, v10

    goto :goto_9

    :cond_a
    move-object/from16 v36, v7

    move-object/from16 v23, v10

    move-object/from16 v35, v12

    const/4 v2, 0x0

    throw v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_5
    :goto_a
    :try_start_9
    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :goto_b
    invoke-static {v13, v9}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    :goto_c
    const/16 v25, 0x0

    goto :goto_d

    :cond_b
    sget-object v2, Lfie;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v2, "Ignoring non-pixel tts extent: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_c

    :cond_c
    const/4 v3, 0x1

    :try_start_a
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Laie;

    invoke-direct {v5, v3, v2}, Laie;-><init>(II)V

    move-object/from16 v25, v5

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    throw v2

    :cond_e
    const/4 v2, 0x0

    throw v2
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_6
    :try_start_b
    const-string v2, "Ignoring malformed tts extent: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :goto_d
    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_e

    :cond_f
    move-object/from16 v33, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v36, v7

    move-object/from16 v34, v10

    move-object/from16 v35, v12

    goto :goto_d

    :goto_e
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    const-string v5, "metadata"

    const-string v6, "region"

    const-string v7, "head"

    const-string v10, "style"

    if-nez v4, :cond_11

    :try_start_c
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "body"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "div"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "p"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "span"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "br"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "styling"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "layout"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "data"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "information"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_f

    :cond_10
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unsupported tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p3

    move-object/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object v6, v13

    move-object/from16 v5, v29

    move-object/from16 v11, v31

    move-object/from16 v47, v32

    move-object/from16 v3, v33

    move-object/from16 v33, v36

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v22, 0x1

    move-object/from16 v31, v8

    move-object/from16 v8, v30

    goto/16 :goto_3b

    :cond_11
    :goto_f
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    :goto_10
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v13, v10}, Lmgh;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v13, v10}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Liie;

    invoke-direct {v11}, Liie;-><init>()V

    invoke-static {v13, v11}, Lfie;->f(Lorg/xmlpull/v1/XmlPullParser;Liie;)Liie;

    move-result-object v11

    if-eqz v4, :cond_12

    invoke-static {v4}, Lfie;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v12, v4

    move-object/from16 v23, v1

    move/from16 v1, v20

    :goto_11
    if-ge v1, v12, :cond_13

    move/from16 v24, v12

    aget-object v12, v4, v1

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Liie;

    invoke-virtual {v11, v12}, Liie;->z(Liie;)Liie;

    const/4 v12, 0x1

    add-int/2addr v1, v12

    move/from16 v12, v24

    goto :goto_11

    :cond_12
    move-object/from16 v23, v1

    :cond_13
    invoke-virtual {v11}, Liie;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v14, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move-object/from16 v24, v5

    move-object/from16 v5, v29

    move-object/from16 v11, v31

    move-object/from16 v47, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v36

    move-object/from16 v31, v8

    :goto_12
    move-object/from16 v8, v30

    move-object/from16 v30, v9

    goto/16 :goto_27

    :cond_15
    move-object/from16 v23, v1

    invoke-static {v13, v6}, Lmgh;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v13, v5}, Lmgh;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v13, v8}, Lmgh;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v1, v36

    invoke-static {v13, v1}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v33

    invoke-interface {v12, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_16
    move-object/from16 v12, v33

    goto :goto_14

    :cond_17
    move-object/from16 v12, v33

    move-object/from16 v1, v36

    :goto_14
    invoke-static {v13, v5}, Lmgh;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v33, v1

    move-object/from16 v24, v5

    move-object/from16 v5, v29

    move-object/from16 v11, v31

    move-object/from16 v47, v32

    move-object/from16 v31, v8

    move-object/from16 v32, v12

    goto :goto_12

    :cond_18
    move-object/from16 v36, v1

    move-object/from16 v33, v12

    goto :goto_13

    :cond_19
    move-object/from16 v12, v33

    move-object/from16 v1, v36

    invoke-static {v13, v1}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-nez v37, :cond_1a

    move-object/from16 v33, v1

    move-object/from16 v24, v5

    move-object/from16 v11, v31

    move-object/from16 v47, v32

    const/4 v1, 0x0

    move-object/from16 v31, v8

    move-object/from16 v32, v12

    :goto_15
    move-object/from16 v8, v30

    :goto_16
    move-object/from16 v30, v9

    goto/16 :goto_26

    :cond_1a
    const-string v4, "origin"

    invoke-static {v13, v4}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    invoke-static {v13, v10}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1b

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Liie;

    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Liie;->i()Ljava/lang/String;

    move-result-object v4

    :cond_1b
    if-eqz v4, :cond_23

    sget-object v11, Lfie;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object/from16 v33, v1

    sget-object v1, Lfie;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v24
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v24, :cond_1e

    move-object/from16 v24, v5

    const/4 v5, 0x1

    :try_start_d
    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1c

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v5, v11

    move/from16 v38, v1

    move v1, v5

    move-object/from16 v11, v31

    move-object/from16 v5, v32

    move-object/from16 v31, v8

    move-object/from16 v32, v12

    goto/16 :goto_1b

    :catch_7
    move-object/from16 v5, v32

    goto :goto_17

    :cond_1c
    const/4 v1, 0x0

    throw v1

    :cond_1d
    const/4 v1, 0x0

    throw v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :goto_17
    :try_start_e
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v47, v5

    move-object/from16 v32, v12

    move-object/from16 v11, v31

    const/4 v1, 0x0

    move-object/from16 v31, v8

    goto :goto_15

    :cond_1e
    move-object/from16 v24, v5

    move-object/from16 v5, v32

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_22

    if-nez v3, :cond_1f

    move-object/from16 v11, v31

    invoke-virtual {v11, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    move-object/from16 v47, v5

    move-object/from16 v31, v8

    move-object/from16 v32, v12

    :goto_18
    move-object/from16 v8, v30

    const/4 v1, 0x0

    goto/16 :goto_16

    :cond_1f
    move-object/from16 v11, v31

    move-object/from16 v31, v8

    const/4 v8, 0x1

    :try_start_f
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_21

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    move-object/from16 v32, v12

    const/4 v12, 0x2

    :try_start_10
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v8, v8

    iget v12, v3, Laie;->a:I

    int-to-float v12, v12

    div-float/2addr v8, v12

    int-to-float v1, v1

    iget v12, v3, Laie;->b:I

    int-to-float v12, v12

    div-float/2addr v1, v12

    move/from16 v38, v8

    goto :goto_1b

    :cond_20
    const/4 v1, 0x0

    throw v1

    :catch_8
    move-object/from16 v32, v12

    goto :goto_19

    :cond_21
    move-object/from16 v32, v12

    const/4 v1, 0x0

    throw v1
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_9
    :goto_19
    :try_start_11
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    move-object/from16 v47, v5

    goto :goto_18

    :cond_22
    move-object/from16 v32, v12

    move-object/from16 v11, v31

    move-object/from16 v31, v8

    const-string v1, "Ignoring region with unsupported origin: "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_23
    move-object/from16 v33, v1

    move-object/from16 v24, v5

    move-object/from16 v11, v31

    move-object/from16 v5, v32

    move-object/from16 v31, v8

    move-object/from16 v32, v12

    const/4 v1, 0x0

    const/16 v38, 0x0

    :goto_1b
    invoke-static {v13, v9}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_24

    invoke-static {v13, v10}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_24

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Liie;

    if-eqz v12, :cond_24

    invoke-virtual {v12}, Liie;->f()Ljava/lang/String;

    move-result-object v8

    :cond_24
    if-eqz v8, :cond_2c

    sget-object v12, Lfie;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move-object/from16 v47, v5

    sget-object v5, Lfie;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    :try_start_12
    invoke-virtual {v12, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v5, v8

    const/4 v8, 0x2

    invoke-virtual {v12, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_25

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v4, v8

    move/from16 v43, v4

    move/from16 v42, v5

    move-object/from16 v8, v30

    move-object/from16 v30, v9

    goto/16 :goto_1f

    :cond_25
    const/4 v1, 0x0

    throw v1

    :cond_26
    const/4 v1, 0x0

    throw v1
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    :catch_a
    :try_start_13
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, v30

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    move-object/from16 v30, v9

    :goto_1d
    const/4 v1, 0x0

    goto/16 :goto_26

    :cond_27
    move-object/from16 v8, v30

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_2b

    if-nez v3, :cond_28

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    goto :goto_1c

    :cond_28
    const/4 v12, 0x1

    :try_start_14
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_2a

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    move-object/from16 v30, v9

    const/4 v9, 0x2

    :try_start_15
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v9, v12

    iget v12, v3, Laie;->a:I

    int-to-float v12, v12

    div-float/2addr v9, v12

    int-to-float v5, v5

    iget v4, v3, Laie;->b:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    move/from16 v43, v5

    move/from16 v42, v9

    goto :goto_1f

    :cond_29
    const/4 v1, 0x0

    throw v1

    :catch_b
    move-object/from16 v30, v9

    goto :goto_1e

    :cond_2a
    move-object/from16 v30, v9

    const/4 v1, 0x0

    throw v1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    :catch_c
    :goto_1e
    :try_start_16
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2b
    move-object/from16 v30, v9

    const-string v1, "Ignoring region with unsupported extent: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2c
    move-object/from16 v47, v5

    move-object/from16 v8, v30

    move-object/from16 v30, v9

    move/from16 v42, v28

    move/from16 v43, v42

    :goto_1f
    const-string v4, "displayAlign"

    invoke-static {v13, v4}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-static {v4}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    const v9, -0x514d33ab

    if-eq v5, v9, :cond_2e

    const v9, 0x58705dc

    if-eq v5, v9, :cond_2d

    goto :goto_20

    :cond_2d
    const-string v5, "after"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_21

    :cond_2e
    const-string v5, "center"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move/from16 v4, v20

    goto :goto_21

    :cond_2f
    :goto_20
    const/4 v4, -0x1

    :goto_21
    if-eqz v4, :cond_32

    const/4 v5, 0x1

    if-eq v4, v5, :cond_31

    :cond_30
    move/from16 v39, v1

    move/from16 v41, v20

    goto :goto_22

    :cond_31
    add-float v1, v1, v43

    move/from16 v39, v1

    const/16 v41, 0x2

    goto :goto_22

    :cond_32
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v43, v4

    add-float/2addr v1, v4

    move/from16 v39, v1

    const/16 v41, 0x1

    :goto_22
    int-to-float v1, v2

    div-float v45, v28, v1

    :try_start_17
    const-string v1, "writingMode"

    invoke-static {v13, v1}, Lmgh;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-static {v1}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    const/16 v5, 0xe6e

    if-eq v4, v5, :cond_35

    const v5, 0x363874

    if-eq v4, v5, :cond_34

    const v5, 0x363928

    if-eq v4, v5, :cond_33

    goto :goto_23

    :cond_33
    const-string v4, "tbrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x2

    goto :goto_24

    :cond_34
    const-string v4, "tblr"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    goto :goto_24

    :cond_35
    const-string v4, "tb"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move/from16 v1, v20

    goto :goto_24

    :cond_36
    :goto_23
    const/4 v1, -0x1

    :goto_24
    if-eqz v1, :cond_39

    const/4 v4, 0x1

    if-eq v1, v4, :cond_39

    const/4 v4, 0x2

    if-eq v1, v4, :cond_38

    :cond_37
    const/high16 v46, -0x80000000

    goto :goto_25

    :cond_38
    const/16 v46, 0x1

    goto :goto_25

    :cond_39
    const/16 v46, 0x2

    :goto_25
    :try_start_18
    new-instance v1, Lgie;

    const/16 v40, 0x0

    const/16 v44, 0x1

    move-object/from16 v36, v1

    invoke-direct/range {v36 .. v46}, Lgie;-><init>(Ljava/lang/String;FFIIFFIFI)V

    :goto_26
    if-eqz v1, :cond_3a

    iget-object v4, v1, Lgie;->a:Ljava/lang/String;

    move-object/from16 v5, v29

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_3a
    move-object/from16 v5, v29

    :goto_27
    invoke-static {v13, v7}, Lmgh;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v1, :cond_3b

    move-object/from16 v10, p3

    move-object v6, v13

    move-object/from16 v7, v23

    goto/16 :goto_35

    :cond_3b
    move-object/from16 v29, v5

    move-object/from16 v1, v23

    move-object/from16 v5, v24

    move-object/from16 v9, v30

    move-object/from16 v36, v33

    move-object/from16 v30, v8

    move-object/from16 v8, v31

    move-object/from16 v33, v32

    move-object/from16 v32, v47

    move-object/from16 v31, v11

    goto/16 :goto_10

    :cond_3c
    move-object/from16 v23, v1

    move-object/from16 v5, v29

    move-object/from16 v11, v31

    move-object/from16 v47, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v36

    move-object/from16 v31, v8

    move-object/from16 v8, v30

    :try_start_19
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v13, v4}, Lfie;->f(Lorg/xmlpull/v1/XmlPullParser;Liie;)Liie;

    move-result-object v41
    :try_end_19
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_19 .. :try_end_19} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v4, v20

    move-wide/from16 v28, v24

    move-wide/from16 v36, v28

    move-wide/from16 v38, v36

    move-object/from16 v43, v26

    const/16 v42, 0x0

    const/16 v44, 0x0

    :goto_28
    if-ge v4, v1, :cond_45

    :try_start_1a
    invoke-interface {v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_1a
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    sparse-switch v12, :sswitch_data_0

    goto :goto_29

    :sswitch_0
    const-string v12, "backgroundImage"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v7, 0x5

    goto :goto_2a

    :sswitch_1
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v7, 0x3

    goto :goto_2a

    :sswitch_2
    const-string v12, "begin"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    move/from16 v7, v20

    goto :goto_2a

    :sswitch_3
    const-string v12, "end"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v7, 0x1

    goto :goto_2a

    :sswitch_4
    const-string v12, "dur"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v7, 0x2

    goto :goto_2a

    :sswitch_5
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const/4 v7, 0x4

    goto :goto_2a

    :cond_3d
    :goto_29
    const/4 v7, -0x1

    :goto_2a
    if-eqz v7, :cond_44

    const/4 v12, 0x1

    if-eq v7, v12, :cond_43

    const/4 v12, 0x2

    if-eq v7, v12, :cond_42

    const/4 v12, 0x3

    if-eq v7, v12, :cond_41

    const/4 v12, 0x4

    if-eq v7, v12, :cond_40

    const/4 v12, 0x5

    if-eq v7, v12, :cond_3e

    goto :goto_2b

    :cond_3e
    :try_start_1b
    const-string v7, "#"

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v44, v9

    :cond_3f
    :goto_2b
    move-object/from16 v7, v23

    :goto_2c
    const/4 v9, 0x1

    goto :goto_2e

    :catch_d
    move-exception v0

    move-object/from16 v10, p3

    move-object v1, v0

    move-object v6, v13

    move-object/from16 v7, v23

    goto/16 :goto_39

    :cond_40
    const/4 v12, 0x5

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    move-object/from16 v43, v9

    goto :goto_2b

    :cond_41
    const/4 v12, 0x5

    invoke-static {v9}, Lfie;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7
    :try_end_1b
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    if-lez v9, :cond_3f

    move-object/from16 v42, v7

    goto :goto_2b

    :cond_42
    move-object/from16 v7, v23

    const/4 v12, 0x5

    :try_start_1c
    invoke-static {v9, v7}, Lfie;->c(Ljava/lang/String;Lzhe;)J

    move-result-wide v38

    goto :goto_2c

    :catch_e
    move-exception v0

    :goto_2d
    move-object/from16 v10, p3

    move-object v1, v0

    move-object v6, v13

    goto/16 :goto_39

    :cond_43
    move-object/from16 v7, v23

    const/4 v12, 0x5

    invoke-static {v9, v7}, Lfie;->c(Ljava/lang/String;Lzhe;)J

    move-result-wide v28

    goto :goto_2c

    :cond_44
    move-object/from16 v7, v23

    const/4 v12, 0x5

    invoke-static {v9, v7}, Lfie;->c(Ljava/lang/String;Lzhe;)J

    move-result-wide v36

    goto :goto_2c

    :goto_2e
    add-int/2addr v4, v9

    move-object/from16 v23, v7

    goto/16 :goto_28

    :catch_f
    move-exception v0

    move-object/from16 v7, v23

    const/4 v12, 0x5

    goto :goto_2d

    :cond_45
    move-object/from16 v7, v23

    const/4 v12, 0x5

    if-eqz v27, :cond_49

    move-object/from16 v1, v27

    iget-wide v9, v1, Lyhe;->d:J
    :try_end_1c
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    cmp-long v4, v9, v24

    if-eqz v4, :cond_47

    cmp-long v4, v36, v24

    if-eqz v4, :cond_46

    add-long v36, v36, v9

    goto :goto_2f

    :cond_46
    move-wide/from16 v36, v24

    :goto_2f
    cmp-long v4, v28, v24

    if-eqz v4, :cond_48

    add-long v28, v28, v9

    :cond_47
    move-object v4, v1

    :goto_30
    move-wide/from16 v9, v36

    goto :goto_31

    :cond_48
    move-object v4, v1

    move-wide/from16 v28, v24

    goto :goto_30

    :cond_49
    move-object/from16 v1, v27

    move-wide/from16 v9, v36

    const/4 v4, 0x0

    :goto_31
    cmp-long v6, v28, v24

    if-nez v6, :cond_4d

    cmp-long v6, v38, v24

    if-eqz v6, :cond_4a

    add-long v38, v9, v38

    move-object v6, v13

    move-wide/from16 v39, v38

    goto :goto_34

    :cond_4a
    if-eqz v4, :cond_4c

    move-object v6, v13

    :try_start_1d
    iget-wide v12, v4, Lyhe;->e:J

    cmp-long v23, v12, v24

    if-eqz v23, :cond_4b

    move-wide/from16 v39, v12

    goto :goto_34

    :cond_4b
    :goto_32
    move-wide/from16 v39, v24

    goto :goto_34

    :catch_10
    move-exception v0

    move-object/from16 v10, p3

    :goto_33
    move-object v1, v0

    goto :goto_39

    :cond_4c
    move-object v6, v13

    goto :goto_32

    :cond_4d
    move-object v6, v13

    move-wide/from16 v39, v28

    :goto_34
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    move-wide/from16 v37, v9

    move-object/from16 v45, v4

    invoke-static/range {v36 .. v45}, Lyhe;->b(Ljava/lang/String;JJLiie;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyhe;)Lyhe;

    move-result-object v4
    :try_end_1d
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1d .. :try_end_1d} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    move-object/from16 v10, p3

    :try_start_1e
    invoke-virtual {v10, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v1, :cond_4e

    invoke-virtual {v1, v4}, Lyhe;->f(Lyhe;)V
    :try_end_1e
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0

    goto :goto_35

    :catch_11
    move-exception v0

    goto :goto_33

    :cond_4e
    :goto_35
    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v7

    :cond_4f
    :goto_36
    move-object/from16 v3, v32

    :goto_37
    const/4 v1, 0x1

    :cond_50
    :goto_38
    const/4 v2, -0x1

    goto/16 :goto_3b

    :catch_12
    move-exception v0

    move-object/from16 v10, p3

    move-object v6, v13

    move-object/from16 v7, v23

    goto :goto_33

    :goto_39
    :try_start_1f
    const-string v4, "Suppressing parser error"

    invoke-static {v15, v4, v1}, Lzrg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v7

    move-object/from16 v3, v32

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v22, 0x1

    goto/16 :goto_3b

    :cond_51
    move-object/from16 v32, v2

    move-object v11, v5

    move-object/from16 v47, v6

    move-object/from16 v33, v7

    move-object/from16 v31, v8

    move-object/from16 v34, v10

    move-object/from16 v35, v12

    move-object v6, v13

    move-object v5, v15

    move-object/from16 v1, v27

    const/4 v2, 0x4

    move-object/from16 v10, p3

    move-object v8, v3

    if-ne v9, v2, :cond_53

    if-eqz v1, :cond_52

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyhe;->c(Ljava/lang/String;)Lyhe;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyhe;->f(Lyhe;)V

    goto :goto_36

    :cond_52
    const/4 v1, 0x0

    throw v1

    :cond_53
    const/4 v1, 0x3

    if-ne v9, v1, :cond_4f

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    new-instance v1, Ljie;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyhe;

    if-eqz v2, :cond_54

    move-object/from16 v3, v32

    invoke-direct {v1, v2, v14, v5, v3}, Ljie;-><init>(Lyhe;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v21, v1

    goto :goto_3a

    :cond_54
    const/4 v1, 0x0

    throw v1

    :cond_55
    move-object/from16 v3, v32

    :goto_3a
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_37

    :cond_56
    move-object v11, v5

    move-object/from16 v47, v6

    move-object/from16 v33, v7

    move-object/from16 v31, v8

    move-object/from16 v34, v10

    move-object/from16 v35, v12

    move-object v6, v13

    move-object v5, v15

    const/4 v1, 0x2

    move-object v8, v3

    move-object v10, v4

    move-object v3, v2

    if-ne v9, v1, :cond_57

    const/4 v1, 0x1

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_38

    :cond_57
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v9, v2, :cond_50

    const/4 v2, -0x1

    add-int/lit8 v22, v22, -0x1

    :goto_3b
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    move-object v2, v3

    move-object v15, v5

    move-object v13, v6

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v11, v26

    move-object/from16 v8, v31

    move-object/from16 v7, v33

    move-object/from16 v10, v34

    move-object/from16 v12, v35

    move-object/from16 v6, v47

    goto/16 :goto_0

    :cond_58
    if-eqz v21, :cond_59

    return-object v21

    :cond_59
    const/4 v1, 0x0

    throw v1
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    :goto_3c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_3d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method

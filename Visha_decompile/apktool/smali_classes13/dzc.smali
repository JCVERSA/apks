.class public final Ldzc;
.super Lil5;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ldzc;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "^([a-zA-Z0-9_-]{11})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldzc;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ldzc;

    invoke-direct {v0}, Ldzc;-><init>()V

    sput-object v0, Ldzc;->b:Ldzc;

    const-string v5, "v/"

    const-string v6, "w/"

    const-string v1, "embed/"

    const-string v2, "live/"

    const-string v3, "shorts/"

    const-string v4, "watch/"

    invoke-static/range {v1 .. v6}, Lczc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldzc;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lil5;-><init>()V

    return-void
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldzc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "The given string is not a YouTube video ID"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Ldzc;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static m()Ldzc;
    .locals 1

    sget-object v0, Ldzc;->b:Ldzc;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "vnd.youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vnd.youtube.launch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldzc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/a;->l(Ljava/net/URL;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-static {v3}, Lcxc;->l0(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v3}, Lcxc;->k0(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v3}, Lcxc;->b0(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v3}, Lcxc;->c0(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v3}, Lcxc;->e0(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lqxc;->r()Lqxc;

    move-result-object v6

    invoke-virtual {v6, p1}, Lil5;->a(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Error: no suitable URL: "

    if-nez v6, :cond_31

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v6, "v"

    const/4 v8, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v1, v8

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "YOUTUBE.COM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x23

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "INVIDIOUS.SITE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0x22

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "WWW.INVIDIO.US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/16 v1, 0x21

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "WWW.YOUTUBE-NOCOOKIE.COM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/16 v1, 0x20

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "INVIDIOUS.SILKKY.CLOUD"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/16 v1, 0x1f

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "INVIDIOUS.BLAMEFRAN.NET"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    const/16 v1, 0x1e

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "INVIDIOUS.048596.XYZ"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    const/16 v1, 0x1d

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "YTPRIVATE.COM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    const/16 v1, 0x1c

    goto/16 :goto_2

    :sswitch_8
    const-string v1, "REDIRECT.INVIDIOUS.IO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1

    :cond_e
    const/16 v1, 0x1b

    goto/16 :goto_2

    :sswitch_9
    const-string v1, "INVIDIOUS.SNOPYTA.ORG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x1a

    goto/16 :goto_2

    :sswitch_a
    const-string v1, "INVIDIOUS.FDN.FR"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0x19

    goto/16 :goto_2

    :sswitch_b
    const-string v1, "INVIDIO.US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0x18

    goto/16 :goto_2

    :sswitch_c
    const-string v1, "TUBE.CONNECT.CAFE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x17

    goto/16 :goto_2

    :sswitch_d
    const-string v1, "WWW.YOUTUBE.COM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v1, 0x16

    goto/16 :goto_2

    :sswitch_e
    const-string v1, "INVIDIOUS.EXONIP.DE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v1, 0x15

    goto/16 :goto_2

    :sswitch_f
    const-string v1, "Y.COM.CM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v1, 0x14

    goto/16 :goto_2

    :sswitch_10
    const-string v1, "INVIDIOUS.MOOMOO.ME"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v1, 0x13

    goto/16 :goto_2

    :sswitch_11
    const-string v1, "HOOKTUBE.COM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v1, 0x12

    goto/16 :goto_2

    :sswitch_12
    const-string v1, "YOUTU.BE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x11

    goto/16 :goto_2

    :sswitch_13
    const-string v1, "INVIDIOUS-US.KAVIN.ROCKS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v1, 0x10

    goto/16 :goto_2

    :sswitch_14
    const-string v1, "INVIDIOUS.KAVIN.ROCKS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_15
    const-string v1, "MUSIC.YOUTUBE.COM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v1, 0xe

    goto/16 :goto_2

    :sswitch_16
    const-string v1, "YEWTU.BE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_17
    const-string v1, "INVIDIOU.SITE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_18
    const-string v1, "INV.RIVERSIDE.ROCKS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_19
    const-string v1, "DEV.INVIDIO.US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_1a
    const-string v1, "INVIDIOUS.NAMAZSO.EU"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_1b
    const-string v1, "PIPED.KAVIN.ROCKS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_1c
    const-string v1, "VID.PUFFYAN.US"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_1

    :cond_22
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_1d
    const-string v1, "YTB.TROM.TF"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_1

    :cond_23
    move v1, v0

    goto :goto_2

    :sswitch_1e
    const-string v1, "VID.MINT.LGBT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_1

    :cond_24
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_1f
    const-string v1, "YT.CYBERHOST.UK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_1

    :cond_25
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_20
    const-string v1, "M.YOUTUBE.COM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_1

    :cond_26
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_21
    const-string v1, "Y2U.BE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_1

    :cond_27
    move v1, v2

    goto :goto_2

    :sswitch_22
    const-string v2, "TUBUS.EDUVID.ORG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "INVIDIOUS.ZEE.LI"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_1

    :cond_28
    const/4 v1, 0x0

    :cond_29
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string p0, "embed/"

    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string v0, "attribution_link"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p0, "u"

    invoke-static {v3, p0}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/a;->x(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p0, v6}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-virtual {p0, v5}, Ldzc;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2c

    return-object p0

    :cond_2c
    invoke-static {v3, v6}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {v3, v6}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-static {p0}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    invoke-static {v5}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p1, "watch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-static {v3, v6}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-static {p1}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    invoke-virtual {p0, v5}, Ldzc;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    return-object p0

    :cond_2f
    invoke-static {v3, v6}, Lorg/schabi/newpipe/extractor/utils/a;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-static {p0}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    invoke-static {v5}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_4
    const-string p0, "googleads.g.doubleclick.net"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: found ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "The URL is not a YouTube URL"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given URL is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e0457d1 -> :sswitch_23
        -0x7c6e2400 -> :sswitch_22
        -0x6538c10b -> :sswitch_21
        -0x64efe82b -> :sswitch_20
        -0x5f9cd1ca -> :sswitch_1f
        -0x546db0a4 -> :sswitch_1e
        -0x445441a3 -> :sswitch_1d
        -0x440f3cd8 -> :sswitch_1c
        -0x4119c053 -> :sswitch_1b
        -0x314fe193 -> :sswitch_1a
        -0x17b6192d -> :sswitch_19
        -0x17aaa2fa -> :sswitch_18
        -0xe92e56e -> :sswitch_17
        -0x76cc11b -> :sswitch_16
        -0x325c673 -> :sswitch_15
        0x4620d47 -> :sswitch_14
        0x6257072 -> :sswitch_13
        0x627de31 -> :sswitch_12
        0xa169d1a -> :sswitch_11
        0x11fd15e8 -> :sswitch_10
        0x1578e74c -> :sswitch_f
        0x1824f098 -> :sswitch_e
        0x381ef9ff -> :sswitch_d
        0x3f4c7f6b -> :sswitch_c
        0x4949eb3a -> :sswitch_b
        0x5fd0bae8 -> :sswitch_a
        0x6249e462 -> :sswitch_9
        0x669117b6 -> :sswitch_8
        0x67acbc5b -> :sswitch_7
        0x6c60ce27 -> :sswitch_6
        0x6fdc1199 -> :sswitch_5
        0x7731d328 -> :sswitch_4
        0x7893fdf9 -> :sswitch_3
        0x78a7f811 -> :sswitch_2
        0x79548585 -> :sswitch_1
        0x7bbb6bf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://www.youtube.com/watch?v="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ldzc;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object p0, Ldzc;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldzc;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

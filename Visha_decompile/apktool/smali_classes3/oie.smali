.class public final Loie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lu4h;

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Loie;->c:Ljava/util/regex/Pattern;

    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Loie;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Loie;->a:Lu4h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Loie;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Loie;->c(Lu4h;)V

    invoke-virtual {p0}, Lu4h;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Loie;->d(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lu4h;->G()I

    move-result p0

    int-to-char p0, p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lu4h;)V
    .locals 8

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lu4h;->u()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v1

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v2

    aget-byte v1, v2, v1

    int-to-char v1, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v1

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v2

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    if-gt v4, v2, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-byte v6, v3, v1

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    add-int/lit8 v1, v1, 0x2

    aget-byte v4, v3, v4

    const/16 v6, 0x2a

    if-ne v4, v6, :cond_2

    :goto_2
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_1

    aget-byte v5, v3, v1

    int-to-char v5, v5

    if-ne v5, v6, :cond_0

    aget-byte v5, v3, v4

    int-to-char v5, v5

    if-ne v5, v7, :cond_0

    add-int/lit8 v2, v1, 0x2

    move v1, v2

    goto :goto_2

    :cond_0
    move v1, v4

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lu4h;->w()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lu4h;->m(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lu4h;->m(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static d(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lu4h;->w()I

    move-result v1

    invoke-virtual {p0}, Lu4h;->x()I

    move-result v2

    :goto_0
    move v3, v0

    :goto_1
    if-ge v1, v2, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v3

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lu4h;->w()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lu4h;->m(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lu4h;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x1

    iget-object v3, v0, Loie;->b:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v5

    :cond_0
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Lu4h;->T(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, v0, Loie;->a:Lu4h;

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lu4h;->j([BI)V

    invoke-virtual {v0, v5}, Lu4h;->l(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {v0}, Loie;->c(Lu4h;)V

    invoke-virtual {v0}, Lu4h;->u()I

    move-result v6

    const-string v7, "{"

    const/4 v8, 0x5

    const-string v9, ""

    const/4 v10, 0x0

    if-ge v6, v8, :cond_1

    :goto_1
    move-object v6, v10

    goto/16 :goto_5

    :cond_1
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8, v6}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "::cue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lu4h;->w()I

    move-result v6

    invoke-static {v0, v3}, Loie;->a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0, v6}, Lu4h;->l(I)V

    move-object v6, v9

    goto :goto_5

    :cond_4
    const-string v6, "("

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lu4h;->w()I

    move-result v6

    invoke-virtual {v0}, Lu4h;->x()I

    move-result v8

    move v11, v4

    :goto_2
    if-ge v6, v8, :cond_6

    if-nez v11, :cond_6

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v11

    add-int/lit8 v12, v6, 0x1

    aget-byte v6, v11, v6

    int-to-char v6, v6

    const/16 v11, 0x29

    if-ne v6, v11, :cond_5

    move v11, v2

    goto :goto_3

    :cond_5
    move v11, v4

    :goto_3
    move v6, v12

    goto :goto_2

    :cond_6
    add-int/2addr v6, v1

    invoke-virtual {v0}, Lu4h;->w()I

    move-result v8

    sub-int/2addr v6, v8

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v8}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    move-object v6, v10

    :goto_4
    invoke-static {v0, v3}, Loie;->a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const-string v11, ")"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    :goto_5
    if-eqz v6, :cond_2f

    invoke-static {v0, v3}, Loie;->a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_14

    :cond_9
    new-instance v7, Lpie;

    invoke-direct {v7}, Lpie;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    :goto_6
    move v6, v4

    move-object v8, v10

    goto :goto_8

    :cond_b
    const/16 v8, 0x5b

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v1, :cond_d

    sget-object v11, Loie;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v11, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v11}, Lpie;->w(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_d
    sget v8, Lkfh;->a:I

    const-string v8, "\\."

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v8, v6, v4

    const/16 v11, 0x23

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v1, :cond_e

    invoke-virtual {v8, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lpie;->v(Ljava/lang/String;)V

    add-int/2addr v11, v2

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lpie;->u(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v7, v8}, Lpie;->v(Ljava/lang/String;)V

    :goto_7
    array-length v8, v6

    if-le v8, v2, :cond_a

    invoke-static {v6, v2, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Lpie;->t([Ljava/lang/String;)V

    goto :goto_6

    :goto_8
    const-string v11, "}"

    if-nez v6, :cond_2d

    invoke-virtual {v0}, Lu4h;->w()I

    move-result v6

    invoke-static {v0, v3}, Loie;->a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    :cond_f
    move v12, v2

    goto :goto_9

    :cond_10
    move v12, v4

    :goto_9
    if-nez v12, :cond_2c

    invoke-virtual {v0, v6}, Lu4h;->l(I)V

    invoke-static {v0}, Loie;->c(Lu4h;)V

    invoke-static {v0, v3}, Loie;->d(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto/16 :goto_13

    :cond_11
    invoke-static {v0, v3}, Loie;->a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    goto/16 :goto_13

    :cond_12
    invoke-static {v0}, Loie;->c(Lu4h;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v4

    :goto_a
    const-string v15, ";"

    if-nez v14, :cond_16

    invoke-virtual {v0}, Lu4h;->w()I

    move-result v1

    invoke-static {v0, v3}, Loie;->a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move-object v1, v10

    goto :goto_d

    :cond_13
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_15

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    const/4 v1, -0x1

    const/4 v4, 0x0

    goto :goto_a

    :cond_15
    :goto_c
    invoke-virtual {v0, v1}, Lu4h;->l(I)V

    move v14, v2

    goto :goto_b

    :cond_16
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_2c

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_13

    :cond_17
    invoke-virtual {v0}, Lu4h;->w()I

    move-result v4

    invoke-static {v0, v3}, Loie;->a(Lu4h;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    goto :goto_e

    :cond_18
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-virtual {v0, v4}, Lu4h;->l(I)V

    :goto_e
    const-string v4, "color"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {v1}, Lqdg;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lpie;->l(I)Lpie;

    goto/16 :goto_13

    :cond_19
    const-string v4, "background-color"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v1}, Lqdg;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lpie;->i(I)Lpie;

    goto/16 :goto_13

    :cond_1a
    const-string v4, "ruby-position"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v11, 0x2

    if-eqz v4, :cond_1c

    const-string v4, "over"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v7, v2}, Lpie;->q(I)Lpie;

    goto/16 :goto_13

    :cond_1b
    const-string v4, "under"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v7, v11}, Lpie;->q(I)Lpie;

    goto/16 :goto_13

    :cond_1c
    const-string v4, "text-combine-upright"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "digits"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    move v1, v2

    goto :goto_f

    :cond_1e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v7, v1}, Lpie;->k(Z)Lpie;

    goto/16 :goto_13

    :cond_1f
    const-string v4, "text-decoration"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "underline"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v7, v2}, Lpie;->r(Z)Lpie;

    goto/16 :goto_13

    :cond_20
    const-string v4, "font-family"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v7, v1}, Lpie;->m(Ljava/lang/String;)Lpie;

    goto/16 :goto_13

    :cond_21
    const-string v4, "font-weight"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "bold"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v7, v2}, Lpie;->j(Z)Lpie;

    goto/16 :goto_13

    :cond_22
    const-string v4, "font-style"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "italic"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v7, v2}, Lpie;->p(Z)Lpie;

    goto/16 :goto_13

    :cond_23
    const-string v4, "font-size"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v4, Loie;->d:Ljava/util/regex/Pattern;

    invoke-static {v1}, Ld2i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid font-size: \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WebvttCssParser"

    invoke-static {v4, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_24
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v13, 0x25

    if-eq v6, v13, :cond_27

    const/16 v13, 0xca8

    if-eq v6, v13, :cond_26

    const/16 v13, 0xe08

    if-eq v6, v13, :cond_25

    goto :goto_10

    :cond_25
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    goto :goto_11

    :cond_26
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    goto :goto_11

    :cond_27
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v11

    goto :goto_11

    :cond_28
    :goto_10
    const/4 v1, -0x1

    :goto_11
    if-eqz v1, :cond_2b

    if-eq v1, v2, :cond_2a

    if-ne v1, v11, :cond_29

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lpie;->o(I)Lpie;

    goto :goto_12

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2a
    invoke-virtual {v7, v11}, Lpie;->o(I)Lpie;

    goto :goto_12

    :cond_2b
    invoke-virtual {v7, v2}, Lpie;->o(I)Lpie;

    :goto_12
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v7, v1}, Lpie;->n(F)Lpie;

    :cond_2c
    :goto_13
    move v6, v12

    const/4 v1, -0x1

    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_2d
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/4 v1, -0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2f
    :goto_14
    return-object v5
.end method

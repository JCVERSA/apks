.class public final Lcom/yandex/mobile/ads/impl/os$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private static a(IILjava/lang/String;Z)I
    .locals 4

    :goto_0
    if-ge p0, p1, :cond_7

    .line 1
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x30

    const/16 v3, 0x3a

    if-gt v1, v0, :cond_1

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    if-gt v1, v0, :cond_2

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x41

    if-gt v1, v0, :cond_3

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    :goto_2
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_6

    return p0

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method private static a(ILjava/lang/String;)J
    .locals 21

    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 73
    invoke-static {v2, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/os$a;->a(IILjava/lang/String;Z)I

    move-result v3

    .line 74
    invoke-static {}, Lcom/yandex/mobile/ads/impl/os;->c()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v5, -0x1

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v3, v0, :cond_4

    add-int/lit8 v14, v3, 0x1

    .line 75
    invoke-static {v14, v0, v1, v13}, Lcom/yandex/mobile/ads/impl/os$a;->a(IILjava/lang/String;Z)I

    move-result v14

    .line 76
    invoke-virtual {v4, v3, v14}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const-string v3, "group(...)"

    if-ne v7, v5, :cond_0

    .line 77
    invoke-static {}, Lcom/yandex/mobile/ads/impl/os;->c()Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 78
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 79
    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x3

    .line 80
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_1

    :cond_0
    if-ne v8, v5, :cond_1

    .line 81
    invoke-static {}, Lcom/yandex/mobile/ads/impl/os;->a()Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 82
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_1
    if-ne v9, v5, :cond_2

    .line 83
    invoke-static {}, Lcom/yandex/mobile/ads/impl/os;->b()Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 84
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "US"

    invoke-static {v3, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "toLowerCase(...)"

    invoke-static {v3, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/yandex/mobile/ads/impl/os;->b()Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v15

    const-string v9, "pattern(...)"

    invoke-static {v15, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v15 .. v20}, Lj1a;->m0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    div-int/lit8 v9, v3, 0x4

    goto :goto_1

    :cond_2
    if-ne v6, v5, :cond_3

    .line 86
    invoke-static {}, Lcom/yandex/mobile/ads/impl/os;->d()Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 87
    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 88
    invoke-static {v14, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/os$a;->a(IILjava/lang/String;Z)I

    move-result v3

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x46

    if-gt v0, v6, :cond_5

    const/16 v1, 0x64

    if-ge v6, v1, :cond_5

    add-int/lit16 v6, v6, 0x76c

    :cond_5
    if-ltz v6, :cond_6

    if-ge v6, v0, :cond_6

    add-int/lit16 v6, v6, 0x7d0

    :cond_6
    const/16 v0, 0x641

    const-string v1, "Failed requirement."

    if-lt v6, v0, :cond_c

    if-eq v9, v5, :cond_b

    if-gt v13, v8, :cond_a

    const/16 v0, 0x20

    if-ge v8, v0, :cond_a

    if-ltz v7, :cond_9

    const/16 v0, 0x18

    if-ge v7, v0, :cond_9

    if-ltz v10, :cond_8

    const/16 v0, 0x3c

    if-ge v10, v0, :cond_8

    if-ltz v11, :cond_7

    if-ge v11, v0, :cond_7

    .line 89
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/yandex/mobile/ads/impl/g92;->d:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 91
    invoke-virtual {v0, v13, v6}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v9, v13

    .line 92
    invoke-virtual {v0, v12, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    .line 93
    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 94
    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 95
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 96
    invoke-virtual {v0, v1, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 98
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 99
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/gi0;Lcom/yandex/mobile/ads/impl/qf0;)Ljava/util/List;
    .locals 40

    move-object/from16 v1, p0

    .line 2
    const-string v3, "."

    const-string v4, "url"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/qf0;->d()Ljava/util/List;

    move-result-object v5

    .line 4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    move v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v6, :cond_25

    .line 5
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 6
    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCookie"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 8
    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    .line 10
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v14, 0x3b

    invoke-static {v11, v14, v8, v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;CII)I

    move-result v0

    const/16 v15, 0x3d

    .line 11
    invoke-static {v11, v15, v8, v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;CII)I

    move-result v7

    if-ne v7, v0, :cond_0

    move-object/from16 v30, v4

    move-object/from16 v37, v5

    move/from16 v17, v6

    move v7, v8

    const/4 v5, 0x0

    goto/16 :goto_13

    .line 12
    :cond_0
    const-string v15, "<this>"

    invoke-static {v11, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v8, v7, v11}, Lcom/yandex/mobile/ads/impl/g92;->a(IILjava/lang/String;)I

    move-result v14

    .line 14
    invoke-static {v14, v7, v11}, Lcom/yandex/mobile/ads/impl/g92;->b(IILjava/lang/String;)I

    move-result v8

    .line 15
    invoke-virtual {v11, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v14, "substring(...)"

    invoke-static {v8, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v30, v4

    const/4 v2, 0x1

    goto :goto_3

    .line 17
    :cond_1
    invoke-static {v8, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v30, v4

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x1f

    if-ge v1, v2, :cond_5

    move/from16 v20, v2

    .line 19
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 20
    invoke-static {v2, v4}, Ly45;->l(II)I

    move-result v21

    if-lez v21, :cond_2

    const/16 v4, 0x7f

    invoke-static {v2, v4}, Ly45;->l(II)I

    move-result v2

    if-ltz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    add-int/2addr v1, v2

    move/from16 v2, v20

    goto :goto_1

    :goto_2
    if-eq v1, v4, :cond_6

    :goto_3
    move-object/from16 v37, v5

    move/from16 v17, v6

    :cond_4
    :goto_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_13

    :cond_5
    const/4 v2, 0x1

    :cond_6
    add-int/2addr v7, v2

    .line 21
    invoke-static {v11, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v7, v0, v11}, Lcom/yandex/mobile/ads/impl/g92;->a(IILjava/lang/String;)I

    move-result v1

    .line 23
    invoke-static {v1, v0, v11}, Lcom/yandex/mobile/ads/impl/g92;->b(IILjava/lang/String;)I

    move-result v2

    .line 24
    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v1, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_9

    .line 27
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v20, v2

    const/16 v2, 0x1f

    .line 28
    invoke-static {v7, v2}, Ly45;->l(II)I

    move-result v21

    if-lez v21, :cond_8

    const/16 v2, 0x7f

    invoke-static {v7, v2}, Ly45;->l(II)I

    move-result v7

    if-ltz v7, :cond_7

    const/4 v2, -0x1

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x1

    add-int/2addr v4, v7

    move/from16 v2, v20

    goto :goto_5

    :cond_8
    const/4 v7, 0x1

    const/4 v2, -0x1

    :goto_6
    if-eq v4, v2, :cond_a

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    :cond_a
    add-int/2addr v0, v7

    .line 29
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const-wide/16 v18, -0x1

    const-wide v20, 0xe677d21fdbffL

    move-wide/from16 v22, v18

    move-wide/from16 v31, v20

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    :goto_7
    const-wide v33, 0x7fffffffffffffffL

    const-wide/high16 v35, -0x8000000000000000L

    move-object/from16 v37, v5

    if-ge v0, v2, :cond_17

    move/from16 v17, v6

    const/16 v5, 0x3b

    .line 30
    invoke-static {v11, v5, v0, v2}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;CII)I

    move-result v6

    move/from16 v16, v2

    const/16 v5, 0x3d

    .line 31
    invoke-static {v11, v5, v0, v6}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;CII)I

    move-result v2

    .line 32
    invoke-static {v11, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {v0, v2, v11}, Lcom/yandex/mobile/ads/impl/g92;->a(IILjava/lang/String;)I

    move-result v0

    .line 34
    invoke-static {v0, v2, v11}, Lcom/yandex/mobile/ads/impl/g92;->b(IILjava/lang/String;)I

    move-result v5

    .line 35
    invoke-virtual {v11, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-ge v2, v6, :cond_b

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 36
    invoke-static {v11, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v2, v6, v11}, Lcom/yandex/mobile/ads/impl/g92;->a(IILjava/lang/String;)I

    move-result v2

    .line 38
    invoke-static {v2, v6, v11}, Lcom/yandex/mobile/ads/impl/g92;->b(IILjava/lang/String;)I

    move-result v5

    .line 39
    invoke-virtual {v11, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 40
    :cond_b
    const-string v2, ""

    .line 41
    :goto_8
    const-string v5, "expires"

    move-object/from16 v38, v11

    const/4 v11, 0x1

    invoke-static {v0, v5, v11}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 42
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/os$a;->a(ILjava/lang/String;)J

    move-result-wide v31
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_c
    move-object/from16 v39, v15

    goto :goto_a

    .line 43
    :cond_d
    const-string v5, "max-age"

    invoke-static {v0, v5, v11}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 44
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v33, 0x0

    cmp-long v0, v22, v33

    if-gtz v0, :cond_c

    move-object/from16 v39, v15

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 45
    :try_start_2
    new-instance v0, Lkotlin/text/Regex;

    const-string v11, "-?\\d+"

    invoke-direct {v0, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 46
    const-string v0, "-"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v39, v15

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x2

    :try_start_3
    invoke-static {v2, v0, v11, v15, v5}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_9
    move-wide/from16 v22, v35

    goto :goto_a

    :cond_e
    move-wide/from16 v22, v33

    :goto_a
    const/4 v11, 0x1

    const/16 v27, 0x1

    goto :goto_c

    :catch_1
    move-object/from16 v39, v15

    goto :goto_b

    :cond_f
    move-object/from16 v39, v15

    .line 47
    throw v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :goto_b
    const/4 v11, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v39, v15

    .line 48
    const-string v5, "domain"

    const/4 v11, 0x1

    invoke-static {v0, v5, v11}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x2

    .line 49
    :try_start_4
    invoke-static {v2, v3, v11, v15, v5}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 50
    invoke-static {v2, v3}, Lj1a;->F0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/jg0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object v4, v0

    const/4 v11, 0x1

    const/16 v28, 0x0

    goto :goto_c

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_12
    const-string v0, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 52
    :cond_13
    const-string v5, "path"

    const/4 v11, 0x1

    invoke-static {v0, v5, v11}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object v7, v2

    goto :goto_c

    .line 53
    :cond_14
    const-string v2, "secure"

    invoke-static {v0, v2, v11}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    move/from16 v25, v11

    goto :goto_c

    .line 54
    :cond_15
    const-string v2, "httponly"

    invoke-static {v0, v2, v11}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    move/from16 v26, v11

    :cond_16
    :goto_c
    add-int/lit8 v0, v6, 0x1

    move/from16 v2, v16

    move/from16 v6, v17

    move-object/from16 v5, v37

    move-object/from16 v11, v38

    move-object/from16 v15, v39

    goto/16 :goto_7

    :cond_17
    move/from16 v17, v6

    cmp-long v0, v22, v35

    if-nez v0, :cond_18

    move-wide/from16 v21, v35

    goto :goto_e

    :cond_18
    cmp-long v0, v22, v18

    if-eqz v0, :cond_1c

    const-wide v5, 0x20c49ba5e353f7L

    cmp-long v0, v22, v5

    if-gtz v0, :cond_19

    const/16 v0, 0x3e8

    int-to-long v5, v0

    mul-long v33, v22, v5

    :cond_19
    add-long v33, v12, v33

    cmp-long v0, v33, v12

    if-ltz v0, :cond_1b

    cmp-long v0, v33, v20

    if-lez v0, :cond_1a

    goto :goto_d

    :cond_1a
    move-wide/from16 v21, v33

    goto :goto_e

    :cond_1b
    :goto_d
    move-wide/from16 v21, v20

    goto :goto_e

    :cond_1c
    move-wide/from16 v21, v31

    .line 55
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_1d

    move-object v4, v0

    goto :goto_f

    .line 56
    :cond_1d
    invoke-static {v0, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_f

    :cond_1e
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 57
    invoke-static {v0, v4, v5, v6, v2}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v2, v5

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2e

    if-ne v2, v5, :cond_4

    .line 59
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 60
    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1f

    .line 61
    invoke-static {}, Lcom/monetization/ads/embedded/okhttp/src/main/kotlin/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->a()Lcom/monetization/ads/embedded/okhttp/src/main/kotlin/okhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v4}, Lcom/monetization/ads/embedded/okhttp/src/main/kotlin/okhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto/16 :goto_4

    :cond_1f
    const-string v0, "/"

    if-eqz v7, :cond_21

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 63
    invoke-static {v7, v0, v2, v6, v5}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto :goto_10

    :cond_20
    move-object/from16 v24, v7

    const/4 v7, 0x0

    goto :goto_12

    :cond_21
    const/4 v5, 0x0

    .line 64
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/gi0;->c()Ljava/lang/String;

    move-result-object v2

    const/16 v35, 0x6

    const/16 v36, 0x0

    const/16 v32, 0x2f

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v31, v2

    .line 65
    invoke-static/range {v31 .. v36}, Lj1a;->r0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v6

    if-eqz v6, :cond_22

    const/4 v7, 0x0

    .line 66
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_11
    move-object/from16 v24, v0

    goto :goto_12

    :cond_22
    const/4 v7, 0x0

    goto :goto_11

    .line 67
    :goto_12
    new-instance v0, Lcom/yandex/mobile/ads/impl/os;

    const/16 v29, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v1

    move-object/from16 v23, v4

    invoke-direct/range {v18 .. v29}, Lcom/yandex/mobile/ads/impl/os;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZI)V

    goto :goto_14

    :goto_13
    move-object v0, v5

    :goto_14
    if-nez v0, :cond_23

    :goto_15
    const/4 v1, 0x1

    goto :goto_16

    :cond_23
    if-nez v10, :cond_24

    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :cond_24
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :goto_16
    add-int/2addr v9, v1

    move-object/from16 v1, p0

    move v8, v7

    move/from16 v6, v17

    move-object/from16 v4, v30

    move-object/from16 v5, v37

    goto/16 :goto_0

    :cond_25
    if-eqz v10, :cond_26

    .line 70
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_17

    .line 72
    :cond_26
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :goto_17
    return-object v0
.end method

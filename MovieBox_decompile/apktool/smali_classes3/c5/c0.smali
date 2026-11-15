.class public Lc5/c0;
.super Lb5/b;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lb5/b2;


# static fields
.field public static final a:Lc5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/c0;->a:Lc5/c0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb5/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    .line 1
    iget-object v4, v0, Lc5/o0;->k:Lc5/j1;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v4}, Lc5/j1;->h0()V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 4
    const-class v6, Ljava/sql/Date;

    const-wide/32 v7, 0x5265c00

    if-ne v5, v6, :cond_1

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v6}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5
    move-object v6, v1

    check-cast v6, Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 6
    iget-object v6, v0, Lc5/o0;->s:Ljava/util/TimeZone;

    .line 7
    invoke-virtual {v6, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    .line 8
    rem-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-nez v6, :cond_1

    iget v6, v4, Lc5/j1;->c:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move/from16 v10, p5

    .line 9
    invoke-static {v6, v10, v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lc5/j1;->o0(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    const-class v6, Ljava/sql/Time;

    const-string v9, "millis"

    const-wide/16 v10, 0x3e8

    const-string v12, "unixtime"

    if-ne v5, v6, :cond_4

    .line 12
    move-object v6, v1

    check-cast v6, Ljava/sql/Time;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 13
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    div-long/2addr v13, v10

    .line 15
    invoke-virtual {v4, v13, v14}, Lc5/j1;->g0(J)V

    return-void

    .line 16
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 17
    invoke-virtual {v4, v13, v14}, Lc5/j1;->g0(J)V

    return-void

    :cond_3
    cmp-long v6, v13, v7

    if-gez v6, :cond_4

    .line 18
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lc5/j1;->o0(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    const-class v6, Ljava/sql/Timestamp;

    if-ne v5, v6, :cond_5

    .line 20
    move-object v6, v1

    check-cast v6, Ljava/sql/Timestamp;

    .line 21
    invoke-virtual {v6}, Ljava/sql/Timestamp;->getNanos()I

    move-result v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    .line 22
    :goto_0
    instance-of v7, v1, Ljava/util/Date;

    if-eqz v7, :cond_6

    .line 23
    move-object v7, v1

    check-cast v7, Ljava/util/Date;

    goto :goto_1

    .line 24
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->o(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v7

    .line 25
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 26
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v10

    .line 27
    invoke-virtual {v4, v0, v1}, Lc5/j1;->g0(J)V

    return-void

    .line 28
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 29
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 30
    invoke-virtual {v4, v0, v1}, Lc5/j1;->g0(J)V

    return-void

    .line 31
    :cond_8
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v8}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 32
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->n()Ljava/text/DateFormat;

    move-result-object v1

    if-nez v1, :cond_a

    .line 33
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 34
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 35
    :cond_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v3, v0, Lc5/o0;->t:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 36
    iget-object v0, v0, Lc5/o0;->s:Ljava/util/TimeZone;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v1, v2

    .line 37
    :cond_a
    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v4, v0}, Lc5/j1;->o0(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_b
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v8}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object/from16 v8, p4

    if-eq v5, v8, :cond_d

    .line 40
    const-class v2, Ljava/util/Date;

    if-ne v5, v2, :cond_c

    .line 41
    const-string v0, "new Date("

    invoke-virtual {v4, v0}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 42
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lc5/j1;->g0(J)V

    const/16 v0, 0x29

    .line 43
    invoke-virtual {v4, v0}, Lc5/j1;->write(I)V

    goto :goto_2

    :cond_c
    const/16 v2, 0x7b

    .line 44
    invoke-virtual {v4, v2}, Lc5/j1;->write(I)V

    .line 45
    sget-object v2, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lc5/j1;->u(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc5/o0;->B(Ljava/lang/String;)V

    .line 47
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/16 v2, 0x2c

    const-string v3, "val"

    invoke-virtual {v4, v2, v3, v0, v1}, Lc5/j1;->y(CLjava/lang/String;J)V

    const/16 v0, 0x7d

    .line 48
    invoke-virtual {v4, v0}, Lc5/j1;->write(I)V

    :goto_2
    return-void

    .line 49
    :cond_d
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 50
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 51
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x27

    goto :goto_3

    :cond_e
    const/16 v1, 0x22

    .line 52
    :goto_3
    invoke-virtual {v4, v1}, Lc5/j1;->write(I)V

    .line 53
    iget-object v5, v0, Lc5/o0;->s:Ljava/util/TimeZone;

    iget-object v0, v0, Lc5/o0;->t:Ljava/util/Locale;

    invoke-static {v5, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x2

    .line 56
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v3

    const/4 v8, 0x5

    .line 57
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xb

    .line 58
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xc

    .line 59
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xd

    .line 60
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0xe

    .line 61
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0x10

    const/16 v15, 0x13

    const/16 v2, 0xa

    if-lez v6, :cond_f

    .line 62
    const-string v13, "0000-00-00 00:00:00.000000000"

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    const/16 v3, 0x1d

    .line 63
    invoke-static {v6, v3, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 64
    invoke-static {v12, v15, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 65
    invoke-static {v10, v14, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 66
    invoke-static {v9, v11, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 67
    invoke-static {v8, v2, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/4 v2, 0x7

    .line 68
    invoke-static {v7, v2, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/4 v2, 0x4

    .line 69
    invoke-static {v5, v2, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    goto :goto_4

    :cond_f
    if-eqz v13, :cond_10

    .line 70
    const-string v3, "0000-00-00T00:00:00.000"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v2, 0x17

    .line 71
    invoke-static {v13, v2, v3}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 72
    invoke-static {v12, v15, v3}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 73
    invoke-static {v10, v14, v3}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 74
    invoke-static {v9, v11, v3}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/16 v2, 0xa

    .line 75
    invoke-static {v8, v2, v3}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/4 v13, 0x7

    .line 76
    invoke-static {v7, v13, v3}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/4 v2, 0x4

    .line 77
    invoke-static {v5, v2, v3}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    move-object v13, v3

    goto :goto_4

    :cond_10
    const/4 v3, 0x4

    const/4 v13, 0x7

    if-nez v12, :cond_11

    if-nez v10, :cond_11

    if-nez v9, :cond_11

    .line 78
    const-string v9, "0000-00-00"

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 79
    invoke-static {v8, v2, v9}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 80
    invoke-static {v7, v13, v9}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 81
    invoke-static {v5, v3, v9}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    move-object v13, v9

    goto :goto_4

    .line 82
    :cond_11
    const-string v2, "0000-00-00T00:00:00"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .line 83
    invoke-static {v12, v15, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 84
    invoke-static {v10, v14, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    .line 85
    invoke-static {v9, v11, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/16 v2, 0xa

    .line 86
    invoke-static {v8, v2, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/4 v2, 0x7

    .line 87
    invoke-static {v7, v2, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    const/4 v2, 0x4

    .line 88
    invoke-static {v5, v2, v13}, Lcom/alibaba/fastjson/util/f;->h(II[C)V

    :goto_4
    const/16 v2, 0x9

    const/16 v3, 0x30

    if-lez v6, :cond_14

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_13

    .line 89
    array-length v5, v13

    sub-int/2addr v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 90
    aget-char v5, v13, v5

    if-eq v5, v3, :cond_12

    goto :goto_6

    :cond_12
    add-int/2addr v0, v6

    goto :goto_5

    .line 91
    :cond_13
    :goto_6
    array-length v2, v13

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v13, v0, v2}, Lc5/j1;->write([CII)V

    .line 92
    invoke-virtual {v4, v1}, Lc5/j1;->write(I)V

    return-void

    .line 93
    :cond_14
    invoke-virtual {v4, v13}, Ljava/io/Writer;->write([C)V

    .line 94
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-float v0, v0

    const v5, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v5

    float-to-int v5, v0

    int-to-double v6, v5

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_15

    const/16 v0, 0x5a

    .line 95
    invoke-virtual {v4, v0}, Lc5/j1;->write(I)V

    goto :goto_8

    :cond_15
    const/16 v6, 0x2b

    if-le v5, v2, :cond_16

    .line 96
    invoke-virtual {v4, v6}, Lc5/j1;->write(I)V

    .line 97
    invoke-virtual {v4, v5}, Lc5/j1;->e0(I)V

    goto :goto_7

    :cond_16
    if-lez v5, :cond_17

    .line 98
    invoke-virtual {v4, v6}, Lc5/j1;->write(I)V

    .line 99
    invoke-virtual {v4, v3}, Lc5/j1;->write(I)V

    .line 100
    invoke-virtual {v4, v5}, Lc5/j1;->e0(I)V

    goto :goto_7

    :cond_17
    const/16 v2, -0x9

    const/16 v6, 0x2d

    if-ge v5, v2, :cond_18

    .line 101
    invoke-virtual {v4, v6}, Lc5/j1;->write(I)V

    neg-int v2, v5

    .line 102
    invoke-virtual {v4, v2}, Lc5/j1;->e0(I)V

    goto :goto_7

    :cond_18
    if-gez v5, :cond_19

    .line 103
    invoke-virtual {v4, v6}, Lc5/j1;->write(I)V

    .line 104
    invoke-virtual {v4, v3}, Lc5/j1;->write(I)V

    neg-int v2, v5

    .line 105
    invoke-virtual {v4, v2}, Lc5/j1;->e0(I)V

    :cond_19
    :goto_7
    const/16 v2, 0x3a

    .line 106
    invoke-virtual {v4, v2}, Lc5/j1;->write(I)V

    int-to-float v2, v5

    sub-float/2addr v0, v2

    .line 107
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lc5/j1;->d(Ljava/lang/CharSequence;)Lc5/j1;

    .line 109
    :goto_8
    invoke-virtual {v4, v1}, Lc5/j1;->write(I)V

    goto :goto_9

    .line 110
    :cond_1a
    invoke-virtual {v4, v7, v8}, Lc5/j1;->g0(J)V

    :goto_9
    return-void
.end method

.method public f(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    return-object p3

    .line 5
    :cond_0
    instance-of v0, p4, Ljava/util/Date;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    return-object p4

    .line 10
    :cond_1
    instance-of v0, p4, Ljava/math/BigDecimal;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    new-instance p1, Ljava/util/Date;

    .line 15
    .line 16
    check-cast p4, Ljava/math/BigDecimal;

    .line 17
    .line 18
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->E0(Ljava/math/BigDecimal;)J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_2
    instance-of v0, p4, Ljava/lang/Number;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    new-instance p1, Ljava/util/Date;

    .line 31
    .line 32
    check-cast p4, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide p2

    .line 38
    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_3
    instance-of v0, p4, Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_11

    .line 45
    .line 46
    check-cast p4, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    return-object p3

    .line 55
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v1, 0x17

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    if-ne v0, v1, :cond_5

    .line 63
    .line 64
    const-string v0, " 000"

    .line 65
    .line 66
    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    const/16 v0, 0x13

    .line 73
    .line 74
    invoke-virtual {p4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    :cond_5
    new-instance v0, La5/e;

    .line 79
    .line 80
    invoke-direct {v0, p4}, La5/e;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual {v0, v2}, La5/e;->x1(Z)Z

    .line 84
    .line 85
    .line 86
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const-class v3, Ljava/util/Calendar;

    .line 88
    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v0}, La5/c;->J0()Ljava/util/Calendar;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-ne p2, v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v0}, La5/c;->close()V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-virtual {v0}, La5/c;->close()V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :cond_7
    invoke-virtual {v0}, La5/c;->close()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, La5/a;->n()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eq v1, v4, :cond_9

    .line 128
    .line 129
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/16 v4, 0x16

    .line 134
    .line 135
    if-ne v1, v4, :cond_8

    .line 136
    .line 137
    const-string v1, "yyyyMMddHHmmssSSSZ"

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_9

    .line 144
    .line 145
    :cond_8
    const/16 v1, 0x54

    .line 146
    .line 147
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v4, -0x1

    .line 152
    if-eq v1, v4, :cond_a

    .line 153
    .line 154
    const-string v1, "\'T\'"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_a

    .line 161
    .line 162
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    add-int/lit8 v1, v1, 0x2

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ne v1, v0, :cond_a

    .line 173
    .line 174
    :cond_9
    invoke-virtual {p1}, La5/a;->o()Ljava/text/DateFormat;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :try_start_3
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 179
    .line 180
    .line 181
    move-result-object p1
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    .line 182
    return-object p1

    .line 183
    :catch_0
    :cond_a
    const-string p1, "/Date("

    .line 184
    .line 185
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_b

    .line 190
    .line 191
    const-string p1, ")/"

    .line 192
    .line 193
    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_b

    .line 198
    .line 199
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    add-int/lit8 p1, p1, -0x2

    .line 204
    .line 205
    const/4 v0, 0x6

    .line 206
    invoke-virtual {p4, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p4

    .line 210
    :cond_b
    const-string p1, "0000-00-00"

    .line 211
    .line 212
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_10

    .line 217
    .line 218
    const-string p1, "0000-00-00T00:00:00"

    .line 219
    .line 220
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_10

    .line 225
    .line 226
    const-string p1, "0001-01-01T00:00:00+08:00"

    .line 227
    .line 228
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_c

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_c
    const/16 p1, 0x7c

    .line 236
    .line 237
    invoke-virtual {p4, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    const/16 p3, 0x14

    .line 242
    .line 243
    if-le p1, p3, :cond_f

    .line 244
    .line 245
    add-int/lit8 p3, p1, 0x1

    .line 246
    .line 247
    invoke-virtual {p4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v1, "GMT"

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_f

    .line 266
    .line 267
    invoke-virtual {p4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    new-instance v0, La5/e;

    .line 272
    .line 273
    invoke-direct {v0, p1}, La5/e;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :try_start_4
    invoke-virtual {v0, v2}, La5/e;->x1(Z)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-eqz p1, :cond_e

    .line 281
    .line 282
    invoke-virtual {v0}, La5/c;->J0()Ljava/util/Calendar;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 287
    .line 288
    .line 289
    if-ne p2, v3, :cond_d

    .line 290
    .line 291
    invoke-virtual {v0}, La5/c;->close()V

    .line 292
    .line 293
    .line 294
    return-object p1

    .line 295
    :cond_d
    :try_start_5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 296
    .line 297
    .line 298
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 299
    invoke-virtual {v0}, La5/c;->close()V

    .line 300
    .line 301
    .line 302
    return-object p1

    .line 303
    :catchall_1
    move-exception p1

    .line 304
    goto :goto_0

    .line 305
    :cond_e
    invoke-virtual {v0}, La5/c;->close()V

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :goto_0
    invoke-virtual {v0}, La5/c;->close()V

    .line 310
    .line 311
    .line 312
    throw p1

    .line 313
    :cond_f
    :goto_1
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 314
    .line 315
    .line 316
    move-result-wide p1

    .line 317
    new-instance p3, Ljava/util/Date;

    .line 318
    .line 319
    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 320
    .line 321
    .line 322
    :cond_10
    :goto_2
    return-object p3

    .line 323
    :goto_3
    invoke-virtual {v0}, La5/c;->close()V

    .line 324
    .line 325
    .line 326
    throw p1

    .line 327
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 328
    .line 329
    const-string p2, "parse error"

    .line 330
    .line 331
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw p1
.end method

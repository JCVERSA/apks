.class public final Lfv/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfv/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfv/b$a;-><init>()V

    return-void
.end method

.method private final c(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 14

    .line 1
    invoke-static {}, Lfv/b;->a()Ljava/text/DateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/text/DateFormatSymbols;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 10
    .line 11
    .line 12
    sget v1, Lcom/transsion/usercenter/R$string;->month_jan:I

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget v1, Lcom/transsion/usercenter/R$string;->month_feb:I

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget v1, Lcom/transsion/usercenter/R$string;->month_mar:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    sget v1, Lcom/transsion/usercenter/R$string;->month_apr:I

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    sget v1, Lcom/transsion/usercenter/R$string;->month_may:I

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    sget v1, Lcom/transsion/usercenter/R$string;->month_june:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    sget v1, Lcom/transsion/usercenter/R$string;->month_july:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    sget v1, Lcom/transsion/usercenter/R$string;->month_aug:I

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    sget v1, Lcom/transsion/usercenter/R$string;->month_sept:I

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    sget v1, Lcom/transsion/usercenter/R$string;->month_oct:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    sget v1, Lcom/transsion/usercenter/R$string;->month_nov:I

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    sget v1, Lcom/transsion/usercenter/R$string;->month_dec:I

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 92
    .line 93
    const-string v1, "dd MMM"

    .line 94
    .line 95
    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lfv/b;->e(Ljava/text/DateFormat;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-static {}, Lfv/b;->a()Ljava/text/DateFormat;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

.method private final d(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private final e(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {p0, v1}, Lfv/b$a;->d(Ljava/lang/Long;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-direct {p0, p4}, Lfv/b$a;->d(Ljava/lang/Long;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    .line 33
    .line 34
    .line 35
    move-result-wide p4

    .line 36
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    sub-long/2addr p4, v0

    .line 41
    const-wide/32 v0, 0x5265c00

    .line 42
    .line 43
    .line 44
    rem-long v2, p4, v0

    .line 45
    .line 46
    const-wide/32 v4, 0x36ee80

    .line 47
    .line 48
    .line 49
    div-long/2addr v2, v4

    .line 50
    rem-long v6, p4, v0

    .line 51
    .line 52
    rem-long/2addr v6, v4

    .line 53
    const-wide/32 v4, 0xea60

    .line 54
    .line 55
    .line 56
    div-long/2addr v6, v4

    .line 57
    div-long/2addr p4, v0

    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    cmp-long p4, p4, v0

    .line 61
    .line 62
    if-lez p4, :cond_1

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lfv/b$a;->c(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    new-instance p4, Ljava/util/Date;

    .line 71
    .line 72
    invoke-direct {p4, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    const/4 p1, 0x0

    .line 83
    :goto_0
    return-object p1

    .line 84
    :cond_1
    cmp-long p2, v2, v0

    .line 85
    .line 86
    const-string p3, "getString(...)"

    .line 87
    .line 88
    if-lez p2, :cond_2

    .line 89
    .line 90
    :try_start_1
    invoke-static {}, Lfv/b;->c()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v5, "{$target}"

    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    const/4 v8, 0x4

    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    cmp-long p2, v6, v0

    .line 124
    .line 125
    if-lez p2, :cond_3

    .line 126
    .line 127
    invoke-static {}, Lfv/b;->d()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "{$target}"

    .line 139
    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const/4 v4, 0x4

    .line 153
    const/4 v5, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    invoke-static {}, Lfv/b;->b()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :goto_1
    return-object p1

    .line 169
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    const-string p1, ""

    .line 173
    .line 174
    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "timestamp"

    .line 9
    .line 10
    move-object/from16 v1, p2

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    const/4 v1, 0x7

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v8, 0x4

    .line 33
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/4 v10, 0x2

    .line 38
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    const/4 v12, 0x1

    .line 43
    add-int/2addr v11, v12

    .line 44
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-virtual {v13, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v14

    .line 59
    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    add-int/2addr v10, v12

    .line 72
    invoke-virtual {v13, v12}, Ljava/util/Calendar;->get(I)I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    sub-int v16, v0, v13

    .line 77
    .line 78
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    .line 79
    .line 80
    .line 81
    move-result v16

    .line 82
    if-lez v16, :cond_0

    .line 83
    .line 84
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 85
    .line 86
    const-string v1, "MM-dd-yyyy"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_1

    .line 102
    :cond_0
    if-ne v0, v13, :cond_5

    .line 103
    .line 104
    sub-int v0, v11, v10

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-lez v0, :cond_1

    .line 111
    .line 112
    move-object/from16 v1, p0

    .line 113
    .line 114
    move-object/from16 v2, p1

    .line 115
    .line 116
    invoke-direct/range {v1 .. v6}, Lfv/b$a;->e(Landroid/content/Context;JJ)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_1
    if-ne v11, v10, :cond_5

    .line 122
    .line 123
    sub-int v0, v9, v8

    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-lez v0, :cond_2

    .line 130
    .line 131
    move-object/from16 v1, p0

    .line 132
    .line 133
    move-object/from16 v2, p1

    .line 134
    .line 135
    invoke-direct/range {v1 .. v6}, Lfv/b$a;->e(Landroid/content/Context;JJ)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :cond_2
    if-ne v9, v8, :cond_5

    .line 141
    .line 142
    sub-int/2addr v7, v1

    .line 143
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-le v0, v12, :cond_3

    .line 148
    .line 149
    move-object/from16 v1, p0

    .line 150
    .line 151
    move-object/from16 v2, p1

    .line 152
    .line 153
    invoke-direct/range {v1 .. v6}, Lfv/b$a;->e(Landroid/content/Context;JJ)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    goto :goto_0

    .line 158
    :cond_3
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-ne v0, v12, :cond_4

    .line 163
    .line 164
    move-object/from16 v1, p0

    .line 165
    .line 166
    move-object/from16 v2, p1

    .line 167
    .line 168
    invoke-direct/range {v1 .. v6}, Lfv/b$a;->e(Landroid/content/Context;JJ)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    goto :goto_0

    .line 173
    :cond_4
    move-object/from16 v1, p0

    .line 174
    .line 175
    move-object/from16 v2, p1

    .line 176
    .line 177
    invoke-direct/range {v1 .. v6}, Lfv/b$a;->e(Landroid/content/Context;JJ)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-object v0

    .line 182
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :cond_5
    const-string v0, ""

    .line 186
    .line 187
    return-object v0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x0

    .line 38
    if-ne v3, v1, :cond_1

    .line 39
    .line 40
    move v1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v1, v4

    .line 43
    :goto_0
    const/4 v3, 0x6

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v0, v4

    .line 60
    :goto_1
    const-string v2, "format(...)"

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 67
    .line 68
    const-string v1, "HH:mm"

    .line 69
    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Ljava/util/Date;

    .line 78
    .line 79
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    if-eqz v1, :cond_4

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 95
    .line 96
    const-string v1, "dd/MM"

    .line 97
    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Ljava/util/Date;

    .line 106
    .line 107
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 119
    .line 120
    const-string v1, "dd/MM/yyyy"

    .line 121
    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljava/util/Date;

    .line 130
    .line 131
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    return-object p1
.end method

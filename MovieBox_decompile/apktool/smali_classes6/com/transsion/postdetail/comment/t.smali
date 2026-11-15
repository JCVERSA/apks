.class public final Lcom/transsion/postdetail/comment/t;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/postdetail/comment/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/comment/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/postdetail/comment/t;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/postdetail/comment/t;->a:Lcom/transsion/postdetail/comment/t;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p2, v0

    .line 4
    .line 5
    if-nez p1, :cond_0

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
    move-result-object p1

    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-ne v2, p1, :cond_1

    .line 39
    .line 40
    move p1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move p1, v3

    .line 43
    :goto_0
    const/4 v2, 0x6

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ne v1, v2, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v0, v3

    .line 60
    :goto_1
    const-string v1, "format(...)"

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 67
    .line 68
    const-string v0, "dd/MM"

    .line 69
    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {p1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/util/Date;

    .line 78
    .line 79
    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 91
    .line 92
    const-string v0, "dd/MM/yyyy"

    .line 93
    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {p1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Ljava/util/Date;

    .line 102
    .line 103
    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-object p1
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "divide(...)"

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x1

    .line 14
    const v4, 0xf4240

    .line 15
    .line 16
    .line 17
    if-ge p1, v4, :cond_1

    .line 18
    .line 19
    new-instance v4, Ljava/math/BigDecimal;

    .line 20
    .line 21
    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/math/BigDecimal;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p1, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " k"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/math/BigDecimal;

    .line 60
    .line 61
    invoke-direct {p1, v4}, Ljava/math/BigDecimal;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " m"

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_0
    return-object p1
.end method

.method public final c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sub-long/2addr v0, p2

    .line 11
    const-wide/16 v2, -0x7530

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gez v4, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/comment/t;->b(Landroid/content/Context;J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    cmp-long v2, v2, v0

    .line 23
    .line 24
    const-wide/16 v3, 0x2710

    .line 25
    .line 26
    if-gtz v2, :cond_1

    .line 27
    .line 28
    cmp-long v2, v0, v3

    .line 29
    .line 30
    if-gez v2, :cond_1

    .line 31
    .line 32
    sget p2, Lcom/transsion/postdetail/R$string;->comment_just_now:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    cmp-long v2, v3, v0

    .line 43
    .line 44
    const-wide/32 v3, 0xea60

    .line 45
    .line 46
    .line 47
    if-gtz v2, :cond_2

    .line 48
    .line 49
    cmp-long v2, v0, v3

    .line 50
    .line 51
    if-gez v2, :cond_2

    .line 52
    .line 53
    const-wide/16 p1, 0x3e8

    .line 54
    .line 55
    div-long/2addr v0, p1

    .line 56
    long-to-int p1, v0

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "s"

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    cmp-long v2, v3, v0

    .line 76
    .line 77
    const-wide/32 v5, 0x36ee80

    .line 78
    .line 79
    .line 80
    if-gtz v2, :cond_3

    .line 81
    .line 82
    cmp-long v2, v0, v5

    .line 83
    .line 84
    if-gez v2, :cond_3

    .line 85
    .line 86
    div-long/2addr v0, v3

    .line 87
    long-to-int p1, v0

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, "min"

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    cmp-long v2, v5, v0

    .line 107
    .line 108
    if-gtz v2, :cond_4

    .line 109
    .line 110
    const-wide/32 v2, 0x5265c00

    .line 111
    .line 112
    .line 113
    cmp-long v2, v0, v2

    .line 114
    .line 115
    if-gez v2, :cond_4

    .line 116
    .line 117
    div-long/2addr v0, v5

    .line 118
    long-to-int p1, v0

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, "h"

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    goto :goto_0

    .line 137
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/comment/t;->b(Landroid/content/Context;J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :goto_0
    return-object p1
.end method

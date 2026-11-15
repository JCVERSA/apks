.class public final Lcom/transsion/home/repository/HomePreferencesRepository;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/repository/HomePreferencesRepository$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/home/repository/HomePreferencesRepository$a;

.field public static final d:I


# instance fields
.field private final a:Lyk/b;

.field private final b:Lvi/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/repository/HomePreferencesRepository$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/repository/HomePreferencesRepository$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/repository/HomePreferencesRepository;->c:Lcom/transsion/home/repository/HomePreferencesRepository$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/repository/HomePreferencesRepository;->d:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lyk/b;Lcom/transsion/baselib/db/AppDatabase;)V
    .locals 1

    .line 1
    const-string v0, "api"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appDatabase"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/home/repository/HomePreferencesRepository;->a:Lyk/b;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/AppDatabase;->q1()Lvi/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lvi/a;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->j(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->l(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->h(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/home/repository/HomePreferencesRepository;Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(JLcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lcom/transsion/home/bean/HomePreferencesIntervalTime;)Z
    .locals 17

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getShowInterval()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getCloseInterval()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getChooseInterval()J

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v9

    .line 23
    const-wide/16 v11, 0x0

    .line 24
    .line 25
    cmp-long v9, v9, v11

    .line 26
    .line 27
    const/16 v10, 0x3e8

    .line 28
    .line 29
    if-lez v9, :cond_1

    .line 30
    .line 31
    cmp-long v9, v3, v11

    .line 32
    .line 33
    if-lez v9, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v13

    .line 39
    int-to-long v11, v10

    .line 40
    mul-long/2addr v3, v11

    .line 41
    add-long/2addr v13, v3

    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v15

    .line 48
    move-wide v11, v15

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-wide v3, v11

    .line 51
    move-wide v11, v3

    .line 52
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v13

    .line 56
    cmp-long v9, v13, v3

    .line 57
    .line 58
    if-lez v9, :cond_2

    .line 59
    .line 60
    cmp-long v9, v5, v3

    .line 61
    .line 62
    if-lez v9, :cond_2

    .line 63
    .line 64
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    int-to-long v13, v10

    .line 69
    mul-long/2addr v5, v13

    .line 70
    add-long/2addr v3, v5

    .line 71
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    const-wide/16 v5, 0x0

    .line 80
    .line 81
    cmp-long v3, v3, v5

    .line 82
    .line 83
    if-lez v3, :cond_3

    .line 84
    .line 85
    cmp-long v3, v7, v5

    .line 86
    .line 87
    if-lez v3, :cond_3

    .line 88
    .line 89
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    int-to-long v5, v10

    .line 94
    mul-long/2addr v7, v5

    .line 95
    add-long/2addr v3, v7

    .line 96
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    :cond_3
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 101
    .line 102
    cmp-long v9, v0, v11

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    if-ltz v9, :cond_4

    .line 106
    .line 107
    move v4, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    move v4, v10

    .line 110
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getShowTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getCloseTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v11

    .line 122
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->getChooseTime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v13

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v15, "----canShow:>>>> "

    .line 132
    .line 133
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, " <<<<<, id:"

    .line 140
    .line 141
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, ",now:"

    .line 148
    .line 149
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, ", showTime:"

    .line 156
    .line 157
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, ", closeTime:"

    .line 164
    .line 165
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, ", chooseTime:"

    .line 172
    .line 173
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    const/4 v7, 0x4

    .line 184
    const/4 v8, 0x0

    .line 185
    const-string v4, "HomePreferencesRepository"

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    invoke-static/range {v3 .. v8}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    if-ltz v9, :cond_5

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    move v2, v10

    .line 195
    :goto_2
    return v2
.end method

.method private static final h(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->setChooseTime(J)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final j(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->setCloseTime(J)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final l(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;J)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->setShowTime(J)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;-><init>(Lcom/transsion/home/repository/HomePreferencesRepository;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    if-ne v4, v5, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_2
    iget-wide v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->J$0:J

    .line 59
    .line 60
    iget-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v8, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 67
    .line 68
    iget-object v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v9, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v11, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v1, v0, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lvi/a;

    .line 89
    .line 90
    move-object/from16 v9, p1

    .line 91
    .line 92
    iput-object v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    move-object/from16 v10, p2

    .line 95
    .line 96
    iput-object v10, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$2:Ljava/lang/Object;

    .line 99
    .line 100
    iput-wide v7, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->J$0:J

    .line 101
    .line 102
    iput v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    .line 103
    .line 104
    invoke-interface {v1, v4, v2}, Lvi/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-ne v1, v3, :cond_4

    .line 109
    .line 110
    return-object v3

    .line 111
    :cond_4
    move-object v11, v4

    .line 112
    move-wide v6, v7

    .line 113
    move-object v8, v10

    .line 114
    :goto_1
    check-cast v1, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    .line 115
    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    new-instance v1, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    .line 119
    .line 120
    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getShowInterval()J

    .line 125
    .line 126
    .line 127
    move-result-wide v18

    .line 128
    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getCloseInterval()J

    .line 133
    .line 134
    .line 135
    move-result-wide v20

    .line 136
    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getChooseInterval()J

    .line 141
    .line 142
    .line 143
    move-result-wide v22

    .line 144
    const-wide/16 v12, 0x0

    .line 145
    .line 146
    const-wide/16 v14, 0x0

    .line 147
    .line 148
    const-wide/16 v16, 0x0

    .line 149
    .line 150
    move-object v10, v1

    .line 151
    invoke-direct/range {v10 .. v23}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;-><init>(Ljava/lang/String;JJJJJJ)V

    .line 152
    .line 153
    .line 154
    :cond_5
    move-object/from16 v24, v1

    .line 155
    .line 156
    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getShowInterval()J

    .line 161
    .line 162
    .line 163
    move-result-wide v32

    .line 164
    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getCloseInterval()J

    .line 169
    .line 170
    .line 171
    move-result-wide v34

    .line 172
    invoke-virtual {v9}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesIntervalTime;->getChooseInterval()J

    .line 177
    .line 178
    .line 179
    move-result-wide v36

    .line 180
    const/16 v38, 0xf

    .line 181
    .line 182
    const/16 v39, 0x0

    .line 183
    .line 184
    const/16 v25, 0x0

    .line 185
    .line 186
    const-wide/16 v26, 0x0

    .line 187
    .line 188
    const-wide/16 v28, 0x0

    .line 189
    .line 190
    const-wide/16 v30, 0x0

    .line 191
    .line 192
    invoke-static/range {v24 .. v39}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;->copy$default(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Ljava/lang/String;JJJJJJILjava/lang/Object;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-interface {v8, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    iget-object v4, v0, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lvi/a;

    .line 204
    .line 205
    const/4 v6, 0x0

    .line 206
    iput-object v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$0:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$1:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v6, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->L$2:Ljava/lang/Object;

    .line 211
    .line 212
    iput v5, v2, Lcom/transsion/home/repository/HomePreferencesRepository$updateIntervalRecord$1;->label:I

    .line 213
    .line 214
    invoke-interface {v4, v1, v2}, Lvi/a;->a(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-ne v1, v3, :cond_6

    .line 219
    .line 220
    return-object v3

    .line 221
    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 222
    .line 223
    return-object v1
.end method


# virtual methods
.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v2, v0, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;-><init>(Lcom/transsion/home/repository/HomePreferencesRepository;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const-string v6, "HomePreferencesRepository"

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x1

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    if-eq v4, v8, :cond_2

    .line 45
    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    iget-wide v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->J$0:J

    .line 49
    .line 50
    iget-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Lcom/transsion/home/repository/HomePreferencesRepository;

    .line 53
    .line 54
    iget-object v7, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v7, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 57
    .line 58
    iget-object v11, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Ljava/util/Iterator;

    .line 61
    .line 62
    iget-object v12, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v12, Ljava/util/List;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    iget-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v1, Lcom/transsion/home/repository/HomePreferencesRepository;->a:Lyk/b;

    .line 94
    .line 95
    move-object/from16 v4, p1

    .line 96
    .line 97
    iput-object v4, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    iput v8, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    .line 100
    .line 101
    invoke-static {v0, v7, v2, v8, v7}, Lyk/b$a;->a(Lyk/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-ne v0, v3, :cond_4

    .line 106
    .line 107
    return-object v3

    .line 108
    :cond_4
    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/transsion/home/bean/HomePreferencesList;

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/transsion/home/bean/HomePreferencesList;->getPreferences()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    :cond_5
    if-nez v7, :cond_6

    .line 123
    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 135
    .line 136
    const-string v2, "loadPreferencesState config is empty ~"

    .line 137
    .line 138
    invoke-virtual {v0, v6, v2, v8}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/transsion/home/bean/HomePreferencesState;

    .line 142
    .line 143
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/home/bean/HomePreferencesState;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_7
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 164
    .line 165
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    new-instance v10, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v11, "loadPreferencesState success "

    .line 175
    .line 176
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v0, v6, v9, v8}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    .line 191
    .line 192
    move-result-wide v9

    .line 193
    if-eqz v4, :cond_b

    .line 194
    .line 195
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_8

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    check-cast v7, Ljava/lang/Iterable;

    .line 203
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    :cond_9
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-eqz v11, :cond_a

    .line 218
    .line 219
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    move-object v12, v11

    .line 224
    check-cast v12, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 225
    .line 226
    invoke-virtual {v12}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTabCode()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-static {v12, v4, v8}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    if-eqz v12, :cond_9

    .line 235
    .line 236
    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_a
    move-object v7, v0

    .line 241
    :cond_b
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    move-object v12, v0

    .line 251
    move-object v11, v4

    .line 252
    :cond_c
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_f

    .line 257
    .line 258
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object v7, v0

    .line 263
    check-cast v7, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 264
    .line 265
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 266
    .line 267
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object v4, v1, Lcom/transsion/home/repository/HomePreferencesRepository;->b:Lvi/a;

    .line 272
    .line 273
    iput-object v12, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$0:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v11, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$1:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v7, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$2:Ljava/lang/Object;

    .line 278
    .line 279
    iput-object v1, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->L$3:Ljava/lang/Object;

    .line 280
    .line 281
    iput-wide v9, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->J$0:J

    .line 282
    .line 283
    iput v5, v2, Lcom/transsion/home/repository/HomePreferencesRepository$loadPreferencesState$1;->label:I

    .line 284
    .line 285
    invoke-interface {v4, v0, v2}, Lvi/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-ne v0, v3, :cond_d

    .line 290
    .line 291
    return-object v3

    .line 292
    :cond_d
    move-object v4, v1

    .line 293
    :goto_5
    check-cast v0, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    .line 294
    .line 295
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getIntervalTime()Lcom/transsion/home/bean/HomePreferencesIntervalTime;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    invoke-direct {v4, v9, v10, v0, v13}, Lcom/transsion/home/repository/HomePreferencesRepository;->e(JLcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lcom/transsion/home/bean/HomePreferencesIntervalTime;)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_e

    .line 304
    .line 305
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 309
    .line 310
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTabCode()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    new-instance v14, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v15, "loadPreferencesState  tabCode:"

    .line 324
    .line 325
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v4, ", showStyle:"

    .line 332
    .line 333
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v0, v6, v4, v8}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 344
    .line 345
    .line 346
    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 347
    .line 348
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    goto :goto_7

    .line 353
    :goto_6
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 354
    .line 355
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    if-eqz v0, :cond_c

    .line 368
    .line 369
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v14, "loadPreferencesState canShow error: "

    .line 381
    .line 382
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v15

    .line 392
    const/16 v17, 0x4

    .line 393
    .line 394
    const/16 v18, 0x0

    .line 395
    .line 396
    const-string v14, "HomePreferencesRepository"

    .line 397
    .line 398
    const/16 v16, 0x0

    .line 399
    .line 400
    invoke-static/range {v13 .. v18}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    goto/16 :goto_4

    .line 407
    .line 408
    :cond_f
    move-object v0, v12

    .line 409
    check-cast v0, Ljava/lang/Iterable;

    .line 410
    .line 411
    new-instance v2, Ljava/util/ArrayList;

    .line 412
    .line 413
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    :cond_10
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-eqz v4, :cond_11

    .line 425
    .line 426
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    move-object v5, v4

    .line 431
    check-cast v5, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 432
    .line 433
    invoke-virtual {v5}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    sget-object v6, Lcom/transsion/home/bean/HomePreferencesShowStyle;->OPT_INSERT:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    .line 438
    .line 439
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-eqz v5, :cond_10

    .line 448
    .line 449
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    goto :goto_8

    .line 453
    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    :cond_12
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_13

    .line 467
    .line 468
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    move-object v6, v5

    .line 473
    check-cast v6, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 474
    .line 475
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    sget-object v7, Lcom/transsion/home/bean/HomePreferencesShowStyle;->POPUP:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    .line 480
    .line 481
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    if-eqz v6, :cond_12

    .line 490
    .line 491
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    goto :goto_9

    .line 495
    :cond_13
    new-instance v4, Ljava/util/ArrayList;

    .line 496
    .line 497
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    :cond_14
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    if-eqz v5, :cond_15

    .line 509
    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    move-object v6, v5

    .line 515
    check-cast v6, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 516
    .line 517
    invoke-virtual {v6}, Lcom/transsion/home/bean/HomePreferencesConfig;->getShowStyle()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    sget-object v7, Lcom/transsion/home/bean/HomePreferencesShowStyle;->ENTER_POP:Lcom/transsion/home/bean/HomePreferencesShowStyle;

    .line 522
    .line 523
    invoke-virtual {v7}, Lcom/transsion/home/bean/HomePreferencesShowStyle;->getValue()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    if-eqz v6, :cond_14

    .line 532
    .line 533
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_15
    new-instance v0, Lcom/transsion/home/bean/HomePreferencesState;

    .line 538
    .line 539
    invoke-direct {v0, v12, v2, v3, v4}, Lcom/transsion/home/bean/HomePreferencesState;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 540
    .line 541
    .line 542
    return-object v0
.end method

.method public final g(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/repository/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/repository/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public final i(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/repository/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/repository/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public final k(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/home/repository/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/home/repository/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/home/repository/HomePreferencesRepository;->n(Lcom/transsion/home/bean/HomePreferencesConfig;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method

.method public final m(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p3, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;-><init>(Lcom/transsion/home/repository/HomePreferencesRepository;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p2, p1

    .line 43
    check-cast p2, Ljava/util/List;

    .line 44
    .line 45
    iget-object p1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p3

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string p3, "submitPreferences skip: empty options, labelId="

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const/4 v9, 0x4

    .line 92
    const/4 v10, 0x0

    .line 93
    const-string v6, "HomePreferencesRepository"

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_3
    new-instance v3, Lcom/transsion/home/bean/HomePreferencesSubmitRequest;

    .line 103
    .line 104
    invoke-direct {v3, p1, p2}, Lcom/transsion/home/bean/HomePreferencesSubmitRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/transsion/home/repository/HomePreferencesRepository;->a:Lyk/b;

    .line 110
    .line 111
    iput-object p1, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object p2, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->L$1:Ljava/lang/Object;

    .line 114
    .line 115
    iput v2, v4, Lcom/transsion/home/repository/HomePreferencesRepository$submitPreferences$1;->label:I

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    const/4 v5, 0x1

    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-static/range {v1 .. v6}, Lyk/b$a;->c(Lyk/b;Ljava/lang/String;Lcom/transsion/home/bean/HomePreferencesSubmitRequest;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    if-ne p3, v0, :cond_4

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_4
    :goto_2
    check-cast p3, Lcom/tn/lib/net/bean/BaseDto;

    .line 128
    .line 129
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_4

    .line 134
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 135
    .line 136
    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    :goto_4
    invoke-static {p3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    move-object v0, p3

    .line 151
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 152
    .line 153
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v2, "submitPreferences success, labelId="

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v2, ", options="

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    filled-new-array {p2}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    const/4 v5, 0x4

    .line 185
    const/4 v6, 0x0

    .line 186
    const-string v2, "HomePreferencesRepository"

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_5
    invoke-static {p3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    if-eqz p2, :cond_6

    .line 197
    .line 198
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    new-instance p3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v1, "submitPreferences error, labelId="

    .line 210
    .line 211
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p1, ", msg="

    .line 218
    .line 219
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const/4 v4, 0x4

    .line 230
    const/4 v5, 0x0

    .line 231
    const-string v1, "HomePreferencesRepository"

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    invoke-static/range {v0 .. v5}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 238
    .line 239
    return-object p1
.end method

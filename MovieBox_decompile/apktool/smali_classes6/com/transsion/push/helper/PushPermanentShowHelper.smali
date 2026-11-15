.class public final Lcom/transsion/push/helper/PushPermanentShowHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/push/helper/PushPermanentShowHelper;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static volatile d:J

.field private static final e:Lkotlin/Lazy;

.field private static final f:Lkotlin/Lazy;

.field private static final g:[Ljava/lang/Integer;

.field private static final h:[Ljava/lang/Integer;

.field private static i:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/transsion/push/helper/PushPermanentShowHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/helper/PushPermanentShowHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->a:Lcom/transsion/push/helper/PushPermanentShowHelper;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->b:Ljava/lang/String;

    .line 11
    .line 12
    const v0, 0x927c0

    .line 13
    .line 14
    .line 15
    sput v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->c:I

    .line 16
    .line 17
    new-instance v0, Lcom/transsion/push/helper/h;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/transsion/push/helper/h;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->e:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance v0, Lcom/transsion/push/helper/i;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsion/push/helper/i;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->f:Lkotlin/Lazy;

    .line 38
    .line 39
    sget v0, Lcom/transsion/lib/push/R$id;->imageIv1:I

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Lcom/transsion/lib/push/R$id;->imageIv2:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget v2, Lcom/transsion/lib/push/R$id;->imageIv3:I

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget v3, Lcom/transsion/lib/push/R$id;->imageIv4:I

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sget v4, Lcom/transsion/lib/push/R$id;->imageIv5:I

    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    sget v5, Lcom/transsion/lib/push/R$id;->imageIv6:I

    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    sget v6, Lcom/transsion/lib/push/R$id;->imageIv7:I

    .line 76
    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    sget v7, Lcom/transsion/lib/push/R$id;->imageIv8:I

    .line 82
    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    sget v8, Lcom/transsion/lib/push/R$id;->imageIv9:I

    .line 88
    .line 89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    sget v9, Lcom/transsion/lib/push/R$id;->imageIv10:I

    .line 94
    .line 95
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const/16 v10, 0xa

    .line 100
    .line 101
    new-array v10, v10, [Ljava/lang/Integer;

    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    aput-object v0, v10, v11

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    aput-object v1, v10, v0

    .line 108
    .line 109
    const/4 v1, 0x2

    .line 110
    aput-object v2, v10, v1

    .line 111
    .line 112
    const/4 v2, 0x3

    .line 113
    aput-object v3, v10, v2

    .line 114
    .line 115
    const/4 v3, 0x4

    .line 116
    aput-object v4, v10, v3

    .line 117
    .line 118
    const/4 v4, 0x5

    .line 119
    aput-object v5, v10, v4

    .line 120
    .line 121
    const/4 v4, 0x6

    .line 122
    aput-object v6, v10, v4

    .line 123
    .line 124
    const/4 v4, 0x7

    .line 125
    aput-object v7, v10, v4

    .line 126
    .line 127
    const/16 v4, 0x8

    .line 128
    .line 129
    aput-object v8, v10, v4

    .line 130
    .line 131
    const/16 v4, 0x9

    .line 132
    .line 133
    aput-object v9, v10, v4

    .line 134
    .line 135
    sput-object v10, Lcom/transsion/push/helper/PushPermanentShowHelper;->g:[Ljava/lang/Integer;

    .line 136
    .line 137
    sget v4, Lcom/transsion/lib/push/R$id;->title1:I

    .line 138
    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    sget v5, Lcom/transsion/lib/push/R$id;->title2:I

    .line 144
    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    sget v6, Lcom/transsion/lib/push/R$id;->title3:I

    .line 150
    .line 151
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    sget v7, Lcom/transsion/lib/push/R$id;->title4:I

    .line 156
    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    new-array v3, v3, [Ljava/lang/Integer;

    .line 162
    .line 163
    aput-object v4, v3, v11

    .line 164
    .line 165
    aput-object v5, v3, v0

    .line 166
    .line 167
    aput-object v6, v3, v1

    .line 168
    .line 169
    aput-object v7, v3, v2

    .line 170
    .line 171
    sput-object v3, Lcom/transsion/push/helper/PushPermanentShowHelper;->h:[Ljava/lang/Integer;

    .line 172
    .line 173
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

.method public static synthetic a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/helper/PushPermanentShowHelper;->m()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic b()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/helper/PushPermanentShowHelper;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final synthetic c(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/transsion/push/helper/PushPermanentShowHelper;->d:J

    .line 2
    .line 3
    return-void
.end method

.method private final d(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/transsion/push/notification/d;)Landroidx/core/app/NotificationCompat$m;
    .locals 20

    .line 1
    move-object/from16 v8, p1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v9, 0x1

    .line 5
    new-instance v10, Lcom/transsion/push/notification/i$a;

    .line 6
    .line 7
    sget v1, Lcom/transsion/lib/push/R$layout;->push_notification_permanent_small_a:I

    .line 8
    .line 9
    sget v2, Lcom/transsion/lib/push/R$layout;->push_notification_permanent_big_a:I

    .line 10
    .line 11
    move/from16 v11, p2

    .line 12
    .line 13
    invoke-direct {v10, v8, v11, v1, v2}, Lcom/transsion/push/notification/i$a;-><init>(Landroid/content/Context;III)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 17
    .line 18
    invoke-static/range {p3 .. p3}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/transsion/push/bean/PermanentItemBean;

    .line 23
    .line 24
    sget-object v2, Lcom/transsion/push/helper/PushPermanentManager;->a:Lcom/transsion/push/helper/PushPermanentManager;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/push/helper/PushPermanentManager;->s()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/push/bean/PermanentItemBean;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    :cond_0
    move-object v2, v1

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/notification/d;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v10, v1}, Lcom/transsion/push/notification/a;->F(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 54
    .line 55
    .line 56
    sget v1, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 57
    .line 58
    const/16 v12, 0xa

    .line 59
    .line 60
    new-array v3, v9, [C

    .line 61
    .line 62
    aput-char v12, v3, v0

    .line 63
    .line 64
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v10, v1, v3}, Lcom/transsion/push/notification/i$a;->V(ILjava/lang/String;)Lcom/transsion/push/notification/i$a;

    .line 69
    .line 70
    .line 71
    sget v1, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 72
    .line 73
    new-array v3, v9, [C

    .line 74
    .line 75
    aput-char v12, v3, v0

    .line 76
    .line 77
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v10, v1, v2}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    invoke-virtual {v10, v1, v2}, Lcom/transsion/push/notification/i$a;->O(J)Lcom/transsion/push/notification/a;

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/transsion/push/helper/PushPermanentShowHelper;->a:Lcom/transsion/push/helper/PushPermanentShowHelper;

    .line 92
    .line 93
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/notification/d;->d()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v1}, Lcom/transsion/push/helper/PushPermanentShowHelper;->i()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    const/4 v5, 0x1

    .line 102
    const/4 v6, 0x0

    .line 103
    move-object/from16 v2, p1

    .line 104
    .line 105
    move/from16 v4, p2

    .line 106
    .line 107
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/helper/PushPermanentShowHelper;->k(Landroid/content/Context;Ljava/lang/String;IILcom/transsion/push/bean/PermanentItemBean;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v10, v1}, Lcom/transsion/push/notification/a;->z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v9}, Lcom/transsion/push/notification/a;->K(Z)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/transsion/push/utils/NotificationUtil;->I()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v10, v1}, Lcom/transsion/push/notification/a;->y(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    if-eqz v13, :cond_9

    .line 131
    .line 132
    move-object/from16 v1, p4

    .line 133
    .line 134
    check-cast v1, Ljava/lang/Iterable;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    add-int/lit8 v16, v0, 0x1

    .line 151
    .line 152
    if-gez v0, :cond_2

    .line 153
    .line 154
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 155
    .line 156
    .line 157
    :cond_2
    check-cast v1, Landroid/graphics/Bitmap;

    .line 158
    .line 159
    if-ge v0, v12, :cond_6

    .line 160
    .line 161
    if-nez v1, :cond_3

    .line 162
    .line 163
    sget-object v1, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/transsion/push/helper/e;->e()Landroid/graphics/Bitmap;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :cond_3
    move-object v7, v1

    .line 170
    const/16 v1, 0x9

    .line 171
    .line 172
    if-ne v0, v1, :cond_4

    .line 173
    .line 174
    sget-object v1, Lcom/transsion/push/helper/PushPermanentShowHelper;->a:Lcom/transsion/push/helper/PushPermanentShowHelper;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/transsion/push/helper/PushPermanentShowHelper;->i()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    move-object/from16 v17, v1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    const/16 v17, 0x0

    .line 184
    .line 185
    :goto_2
    sget-object v6, Lcom/transsion/push/helper/PushPermanentShowHelper;->a:Lcom/transsion/push/helper/PushPermanentShowHelper;

    .line 186
    .line 187
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/notification/d;->d()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    move-object/from16 v5, p3

    .line 192
    .line 193
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    move-object/from16 v18, v1

    .line 198
    .line 199
    check-cast v18, Lcom/transsion/push/bean/PermanentItemBean;

    .line 200
    .line 201
    const/16 v19, 0x1

    .line 202
    .line 203
    move-object v1, v6

    .line 204
    move-object/from16 v2, p1

    .line 205
    .line 206
    move/from16 v4, p2

    .line 207
    .line 208
    move/from16 v5, v19

    .line 209
    .line 210
    move-object v14, v6

    .line 211
    move-object/from16 v6, v18

    .line 212
    .line 213
    move-object v9, v7

    .line 214
    move-object/from16 v7, v17

    .line 215
    .line 216
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/helper/PushPermanentShowHelper;->k(Landroid/content/Context;Ljava/lang/String;IILcom/transsion/push/bean/PermanentItemBean;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {v14, v8, v9}, Lcom/transsion/push/helper/PushPermanentShowHelper;->q(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    if-nez v7, :cond_5

    .line 225
    .line 226
    move-object v7, v9

    .line 227
    :cond_5
    sget-object v2, Lcom/transsion/push/helper/PushPermanentShowHelper;->g:[Ljava/lang/Integer;

    .line 228
    .line 229
    aget-object v3, v2, v0

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {v10, v3, v7}, Lcom/transsion/push/notification/i$a;->S(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 236
    .line 237
    .line 238
    aget-object v3, v2, v0

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-virtual {v10, v3, v1}, Lcom/transsion/push/notification/i$a;->U(ILandroid/app/PendingIntent;)Lcom/transsion/push/notification/i$a;

    .line 245
    .line 246
    .line 247
    const/4 v3, 0x3

    .line 248
    if-ge v0, v3, :cond_6

    .line 249
    .line 250
    aget-object v3, v2, v0

    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v13, v3, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 257
    .line 258
    .line 259
    aget-object v0, v2, v0

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    invoke-virtual {v10, v0, v1}, Lcom/transsion/push/notification/i$a;->Y(ILandroid/app/PendingIntent;)Lcom/transsion/push/notification/i$a;

    .line 266
    .line 267
    .line 268
    :cond_6
    move/from16 v0, v16

    .line 269
    .line 270
    const/4 v9, 0x1

    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :cond_7
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-ge v0, v12, :cond_8

    .line 278
    .line 279
    invoke-virtual {v10}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-eqz v0, :cond_8

    .line 284
    .line 285
    sget v1, Lcom/transsion/lib/push/R$id;->content_layout_2:I

    .line 286
    .line 287
    const/16 v2, 0x8

    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    .line 291
    .line 292
    :cond_8
    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_9
    const/4 v14, 0x0

    .line 296
    :goto_3
    invoke-static {v14}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    goto :goto_5

    .line 301
    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 302
    .line 303
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :goto_5
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    if-eqz v0, :cond_a

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v2, "buildTypeABuilder-error:"

    .line 327
    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    :cond_a
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->N()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_b

    .line 341
    .line 342
    invoke-virtual {v10}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, v8}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    goto :goto_6

    .line 351
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 352
    .line 353
    .line 354
    move-result-wide v0

    .line 355
    invoke-virtual {v10, v0, v1}, Lcom/transsion/push/notification/i$a;->R(J)Lcom/transsion/push/notification/a;

    .line 356
    .line 357
    .line 358
    const/4 v1, 0x1

    .line 359
    invoke-virtual {v10, v1}, Lcom/transsion/push/notification/a;->N(Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, v8}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    :goto_6
    return-object v0
.end method

.method private final e(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/transsion/push/notification/d;)Landroidx/core/app/NotificationCompat$m;
    .locals 21

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v11, 0x1

    .line 7
    new-instance v12, Lcom/transsion/push/notification/i$a;

    .line 8
    .line 9
    sget v2, Lcom/transsion/lib/push/R$layout;->push_notification_permanent_small_b:I

    .line 10
    .line 11
    sget v3, Lcom/transsion/lib/push/R$layout;->push_notification_permanent_big_b:I

    .line 12
    .line 13
    move/from16 v13, p2

    .line 14
    .line 15
    invoke-direct {v12, v10, v13, v2, v3}, Lcom/transsion/push/notification/i$a;-><init>(Landroid/content/Context;III)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    invoke-static/range {p3 .. p3}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/transsion/push/bean/PermanentItemBean;

    .line 25
    .line 26
    sget-object v3, Lcom/transsion/push/helper/PushPermanentManager;->a:Lcom/transsion/push/helper/PushPermanentManager;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/transsion/push/helper/PushPermanentManager;->s()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/transsion/push/bean/PermanentItemBean;->getTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    const-string v2, ""

    .line 45
    .line 46
    :cond_0
    move-object v3, v2

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/notification/d;->c()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v12, v2}, Lcom/transsion/push/notification/a;->F(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 56
    .line 57
    .line 58
    sget v2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 59
    .line 60
    const/16 v4, 0xa

    .line 61
    .line 62
    new-array v5, v11, [C

    .line 63
    .line 64
    aput-char v4, v5, v1

    .line 65
    .line 66
    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v12, v2, v5}, Lcom/transsion/push/notification/i$a;->V(ILjava/lang/String;)Lcom/transsion/push/notification/i$a;

    .line 71
    .line 72
    .line 73
    sget v2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 74
    .line 75
    new-array v5, v11, [C

    .line 76
    .line 77
    aput-char v4, v5, v1

    .line 78
    .line 79
    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v12, v2, v3}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    if-eqz v14, :cond_7

    .line 91
    .line 92
    move-object/from16 v2, p4

    .line 93
    .line 94
    check-cast v2, Ljava/lang/Iterable;

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    move v9, v1

    .line 101
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    add-int/lit8 v16, v9, 0x1

    .line 112
    .line 113
    if-gez v9, :cond_2

    .line 114
    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 116
    .line 117
    .line 118
    :cond_2
    check-cast v1, Landroid/graphics/Bitmap;

    .line 119
    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    sget-object v1, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/transsion/push/helper/e;->e()Landroid/graphics/Bitmap;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_3
    move-object v8, v1

    .line 129
    sget-object v7, Lcom/transsion/push/helper/PushPermanentShowHelper;->a:Lcom/transsion/push/helper/PushPermanentShowHelper;

    .line 130
    .line 131
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/notification/d;->d()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    move-object v6, v1

    .line 140
    check-cast v6, Lcom/transsion/push/bean/PermanentItemBean;

    .line 141
    .line 142
    const/16 v17, 0x20

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    const/4 v5, 0x2

    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    move-object v1, v7

    .line 150
    move-object/from16 v2, p1

    .line 151
    .line 152
    move/from16 v4, p2

    .line 153
    .line 154
    move-object v11, v7

    .line 155
    move-object/from16 v7, v19

    .line 156
    .line 157
    move-object/from16 v20, v8

    .line 158
    .line 159
    move/from16 v8, v17

    .line 160
    .line 161
    move v13, v9

    .line 162
    move-object/from16 v9, v18

    .line 163
    .line 164
    invoke-static/range {v1 .. v9}, Lcom/transsion/push/helper/PushPermanentShowHelper;->l(Lcom/transsion/push/helper/PushPermanentShowHelper;Landroid/content/Context;Ljava/lang/String;IILcom/transsion/push/bean/PermanentItemBean;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    move-object/from16 v2, v20

    .line 169
    .line 170
    invoke-direct {v11, v10, v2}, Lcom/transsion/push/helper/PushPermanentShowHelper;->q(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    if-nez v8, :cond_4

    .line 175
    .line 176
    move-object v8, v2

    .line 177
    :cond_4
    if-eqz v2, :cond_5

    .line 178
    .line 179
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    goto :goto_2

    .line 188
    :cond_5
    const/4 v2, 0x0

    .line 189
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v4, "bitmap i:"

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v4, ", bitmap:"

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    sget-object v2, Lcom/transsion/push/helper/PushPermanentShowHelper;->g:[Ljava/lang/Integer;

    .line 211
    .line 212
    aget-object v3, v2, v13

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-virtual {v12, v3, v8}, Lcom/transsion/push/notification/i$a;->S(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 219
    .line 220
    .line 221
    const/4 v3, 0x4

    .line 222
    if-ge v13, v3, :cond_6

    .line 223
    .line 224
    sget-object v3, Lcom/transsion/push/helper/PushPermanentShowHelper;->h:[Ljava/lang/Integer;

    .line 225
    .line 226
    aget-object v3, v3, v13

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    check-cast v4, Lcom/transsion/push/bean/PermanentItemBean;

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/transsion/push/bean/PermanentItemBean;->getTitle()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v12, v3, v4}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 243
    .line 244
    .line 245
    if-nez v13, :cond_6

    .line 246
    .line 247
    invoke-virtual {v12, v1}, Lcom/transsion/push/notification/a;->z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 248
    .line 249
    .line 250
    :cond_6
    aget-object v3, v2, v13

    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v14, v3, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 257
    .line 258
    .line 259
    aget-object v2, v2, v13

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    invoke-virtual {v12, v2, v1}, Lcom/transsion/push/notification/i$a;->U(ILandroid/app/PendingIntent;)Lcom/transsion/push/notification/i$a;

    .line 266
    .line 267
    .line 268
    move/from16 v13, p2

    .line 269
    .line 270
    move/from16 v9, v16

    .line 271
    .line 272
    const/4 v11, 0x1

    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 276
    .line 277
    .line 278
    move-result-wide v0

    .line 279
    invoke-virtual {v12, v0, v1}, Lcom/transsion/push/notification/i$a;->O(J)Lcom/transsion/push/notification/a;

    .line 280
    .line 281
    .line 282
    const/4 v1, 0x1

    .line 283
    invoke-virtual {v12, v1}, Lcom/transsion/push/notification/a;->K(Z)V

    .line 284
    .line 285
    .line 286
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->I()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v12, v0}, Lcom/transsion/push/notification/a;->y(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 296
    .line 297
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    goto :goto_4

    .line 302
    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 303
    .line 304
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    if-eqz v0, :cond_8

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v2, "error:"

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    :cond_8
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->N()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_9

    .line 342
    .line 343
    invoke-virtual {v12}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v0, v10}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    goto :goto_5

    .line 352
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 353
    .line 354
    .line 355
    move-result-wide v0

    .line 356
    invoke-virtual {v12, v0, v1}, Lcom/transsion/push/notification/i$a;->R(J)Lcom/transsion/push/notification/a;

    .line 357
    .line 358
    .line 359
    const/4 v1, 0x1

    .line 360
    invoke-virtual {v12, v1}, Lcom/transsion/push/notification/a;->N(Z)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v12}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0, v10}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    :goto_5
    return-object v0
.end method

.method private final g()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final h()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static synthetic l(Lcom/transsion/push/helper/PushPermanentShowHelper;Landroid/content/Context;Ljava/lang/String;IILcom/transsion/push/bean/PermanentItemBean;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p6, 0x0

    .line 6
    :cond_0
    move-object v6, p6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/push/helper/PushPermanentShowHelper;->k(Landroid/content/Context;Ljava/lang/String;IILcom/transsion/push/bean/PermanentItemBean;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static final m()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/transsion/lib/push/R$dimen;->push_permanent_image_height:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    return v0
.end method

.method private static final n()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/transsion/lib/push/R$dimen;->push_permanent_image_width:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    return v0
.end method

.method private final q(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/transsion/push/utils/a;->a:Lcom/transsion/push/utils/a;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/push/helper/PushPermanentShowHelper;->h()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {p0}, Lcom/transsion/push/helper/PushPermanentShowHelper;->g()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-static {v1}, Llj/a;->b(I)I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v1, p1

    .line 22
    move-object v2, p2

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/push/utils/a;->e(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method


# virtual methods
.method public final f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/helper/NotificationShowHelper;->o()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/push/helper/NotificationShowHelper;->g(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "oneroom://com.community.oneroom?type=/main/tab&channel=permanent_push&msgId=111&msg_type=11"

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "msgList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    add-int/lit8 v3, v1, 0x1

    .line 29
    .line 30
    if-gez v1, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 33
    .line 34
    .line 35
    :cond_0
    check-cast v2, Lcom/transsion/push/bean/PermanentItemBean;

    .line 36
    .line 37
    const/16 v4, 0x9

    .line 38
    .line 39
    if-gt v1, v4, :cond_1

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/transsion/push/bean/PermanentItemBean;->getSubjectId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_1
    move v1, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object p1, Lcom/transsion/push/helper/b;->a:Lcom/transsion/push/helper/b;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "toString(...)"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/transsion/push/helper/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method public final k(Landroid/content/Context;Ljava/lang/String;IILcom/transsion/push/bean/PermanentItemBean;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 11

    .line 1
    move-object v9, p1

    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/push/bean/MsgType;->PERMANENT:Lcom/transsion/push/bean/MsgType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    if-eqz p5, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/bean/PermanentItemBean;->getSubjectId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    move-object v7, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :goto_2
    const/4 v10, 0x0

    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/bean/PermanentItemBean;->getDeeplink()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v8, v1

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    move-object v8, v10

    .line 45
    :goto_3
    const-string v4, "push"

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    move-object v2, p2

    .line 49
    move v3, p3

    .line 50
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/push/utils/NotificationUtil;->C(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    if-nez p6, :cond_3

    .line 57
    .line 58
    if-eqz p5, :cond_4

    .line 59
    .line 60
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/push/bean/PermanentItemBean;->getDeeplink()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object v10, v1

    .line 65
    goto :goto_4

    .line 66
    :cond_3
    move-object/from16 v10, p6

    .line 67
    .line 68
    :cond_4
    :goto_4
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    const/high16 v1, 0xc000000

    .line 76
    .line 77
    move v2, p3

    .line 78
    invoke-static {p1, p3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :cond_5
    return-object v10
.end method

.method public final o(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .locals 30

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    move-object/from16 v9, p1

    .line 8
    .line 9
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "msgList"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "bitmapList"

    .line 18
    .line 19
    move-object/from16 v7, p3

    .line 20
    .line 21
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v2, v0

    .line 25
    check-cast v2, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/transsion/push/bean/PermanentItemBean;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/transsion/push/bean/PermanentItemBean;->getSubjectId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 63
    .line 64
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v6, "\u5e38\u9a7b showPermanent msgList:"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, ",abType:"

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, " ids:"

    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v4, "PUSH_SHOW"

    .line 102
    .line 103
    const/4 v10, 0x1

    .line 104
    invoke-virtual {v2, v4, v3, v10}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_1

    .line 112
    .line 113
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    :cond_1
    move-object/from16 v3, p0

    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_2
    check-cast v0, Ljava/util/Collection;

    .line 124
    .line 125
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget-object v0, Lcom/transsion/push/notification/d;->d:Lcom/transsion/push/notification/d$a;

    .line 130
    .line 131
    sget-object v3, Lcom/transsion/push/bean/MsgType;->PERMANENT:Lcom/transsion/push/bean/MsgType;

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v0, v3}, Lcom/transsion/push/notification/d$a;->c(Ljava/lang/String;)Lcom/transsion/push/notification/d;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sget-object v11, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 142
    .line 143
    invoke-virtual {v11}, Lcom/transsion/push/helper/NotificationShowHelper;->o()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-ne v1, v10, :cond_3

    .line 148
    .line 149
    move-object/from16 v3, p0

    .line 150
    .line 151
    move-object/from16 v4, p1

    .line 152
    .line 153
    move v5, v12

    .line 154
    move-object v6, v2

    .line 155
    move-object/from16 v7, p3

    .line 156
    .line 157
    move-object v8, v0

    .line 158
    invoke-direct/range {v3 .. v8}, Lcom/transsion/push/helper/PushPermanentShowHelper;->d(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/transsion/push/notification/d;)Landroidx/core/app/NotificationCompat$m;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    :goto_1
    move-object v5, v3

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    move-object/from16 v3, p0

    .line 165
    .line 166
    move-object/from16 v4, p1

    .line 167
    .line 168
    move v5, v12

    .line 169
    move-object v6, v2

    .line 170
    move-object/from16 v7, p3

    .line 171
    .line 172
    move-object v8, v0

    .line 173
    invoke-direct/range {v3 .. v8}, Lcom/transsion/push/helper/PushPermanentShowHelper;->e(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/transsion/push/notification/d;)Landroidx/core/app/NotificationCompat$m;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    goto :goto_1

    .line 178
    :goto_2
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 179
    .line 180
    const/4 v8, 0x1

    .line 181
    move-object v3, v11

    .line 182
    move-object/from16 v4, p1

    .line 183
    .line 184
    move v6, v12

    .line 185
    move-object v7, v0

    .line 186
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/push/helper/NotificationShowHelper;->p(Landroid/content/Context;Landroidx/core/app/NotificationCompat$m;ILcom/transsion/push/notification/d;Z)Landroid/app/Notification;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    :goto_3
    move-object/from16 v3, p0

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :catchall_0
    move-exception v0

    .line 197
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 198
    .line 199
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :goto_4
    invoke-virtual {v3, v2}, Lcom/transsion/push/helper/PushPermanentShowHelper;->j(Ljava/util/List;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    sget-object v2, Lcom/transsion/push/helper/PushPermanentShowHelper;->b:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_5

    .line 218
    .line 219
    sput-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->b:Ljava/lang/String;

    .line 220
    .line 221
    sget-object v0, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 222
    .line 223
    new-instance v2, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 224
    .line 225
    move-object v11, v2

    .line 226
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v18

    .line 230
    sget-object v1, Lcom/transsion/push/bean/MsgType;->PERMANENT:Lcom/transsion/push/bean/MsgType;

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v20

    .line 236
    const v28, 0xfe9f

    .line 237
    .line 238
    .line 239
    const/16 v29, 0x0

    .line 240
    .line 241
    const/4 v12, 0x0

    .line 242
    const/4 v13, 0x0

    .line 243
    const/4 v14, 0x0

    .line 244
    const/4 v15, 0x0

    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    const-string v17, "push"

    .line 248
    .line 249
    const/16 v19, 0x0

    .line 250
    .line 251
    const/16 v21, 0x0

    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    const/16 v23, 0x0

    .line 256
    .line 257
    const/16 v24, 0x0

    .line 258
    .line 259
    const/16 v25, 0x0

    .line 260
    .line 261
    const/16 v26, 0x0

    .line 262
    .line 263
    const/16 v27, 0x0

    .line 264
    .line 265
    invoke-direct/range {v11 .. v29}, Lcom/transsion/baselib/db/notification/MsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v10}, Lcom/transsion/baselib/db/notification/MsgBean;->setPermanent(Z)V

    .line 269
    .line 270
    .line 271
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/transsion/push/utils/NotificationUtil;->I()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v0}, Lcom/transsion/push/helper/a;->e()Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-nez v4, :cond_4

    .line 282
    .line 283
    const-string v4, "401"

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_4
    const-string v4, "200"

    .line 287
    .line 288
    :goto_5
    invoke-virtual {v0, v2, v1, v4}, Lcom/transsion/push/helper/a;->c(Lcom/transsion/baselib/db/notification/MsgBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_5
    :goto_6
    return-void
.end method

.method public final p(Landroid/content/Context;Ljava/util/List;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msgList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/transsion/push/helper/PushPermanentShowHelper;->j(Ljava/util/List;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    sget-object v2, Lcom/transsion/push/helper/PushPermanentShowHelper;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    sget-wide v5, Lcom/transsion/push/helper/PushPermanentShowHelper;->d:J

    .line 24
    .line 25
    sub-long/2addr v3, v5

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "\u5e38\u9a7bpush show lastMsgId:"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", time:"

    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "PUSH_SHOW"

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    invoke-virtual {v1, v3, v2, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/transsion/push/helper/PushPermanentShowHelper;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    sget-wide v2, Lcom/transsion/push/helper/PushPermanentShowHelper;->d:J

    .line 70
    .line 71
    sub-long/2addr v0, v2

    .line 72
    sget v2, Lcom/transsion/push/helper/PushPermanentShowHelper;->c:I

    .line 73
    .line 74
    int-to-long v2, v2

    .line 75
    cmp-long v0, v0, v2

    .line 76
    .line 77
    if-gez v0, :cond_0

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    sput-wide v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->d:J

    .line 85
    .line 86
    sget-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->i:Lkotlinx/coroutines/t1;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-static {v0, v1, v4, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v5, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1;

    .line 103
    .line 104
    invoke-direct {v5, p2, p1, v1}, Lcom/transsion/push/helper/PushPermanentShowHelper$showPermanentPush$1;-><init>(Ljava/util/List;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 105
    .line 106
    .line 107
    const/4 v6, 0x3

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    sput-object p1, Lcom/transsion/push/helper/PushPermanentShowHelper;->i:Lkotlinx/coroutines/t1;

    .line 116
    .line 117
    return-void
.end method

.class public final Lcom/transsion/push/helper/NotificationShowHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/push/helper/NotificationShowHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/helper/NotificationShowHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/helper/NotificationShowHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

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

.method private final a(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;
    .locals 12

    .line 1
    move-object v7, p1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    new-instance v8, Lcom/transsion/push/notification/c$a;

    .line 5
    .line 6
    sget v2, Lcom/transsion/lib/push/R$layout;->push_notification_normal_small:I

    .line 7
    .line 8
    sget v3, Lcom/transsion/lib/push/R$layout;->push_notification_big_picture:I

    .line 9
    .line 10
    move v4, p2

    .line 11
    invoke-direct {v8, p1, p2, v2, v3}, Lcom/transsion/push/notification/c$a;-><init>(Landroid/content/Context;III)V

    .line 12
    .line 13
    .line 14
    if-nez p5, :cond_0

    .line 15
    .line 16
    sget-object v2, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/transsion/push/helper/e;->e()Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v9, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object/from16 v9, p5

    .line 25
    .line 26
    :goto_0
    sget v2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/16 v4, 0xa

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    new-array v6, v1, [C

    .line 38
    .line 39
    aput-char v4, v6, v0

    .line 40
    .line 41
    invoke-static {v3, v6}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v3, v5

    .line 47
    :goto_1
    invoke-virtual {v8, v2, v3}, Lcom/transsion/push/notification/c$a;->W(ILjava/lang/String;)Lcom/transsion/push/notification/c$a;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget v3, Lcom/transsion/lib/push/R$id;->iv_icon:I

    .line 52
    .line 53
    const/16 v6, 0x8

    .line 54
    .line 55
    invoke-virtual {v2, v3, v6}, Lcom/transsion/push/notification/c$a;->X(II)Lcom/transsion/push/notification/c$a;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    sget v3, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 60
    .line 61
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    if-eqz v10, :cond_2

    .line 66
    .line 67
    new-array v11, v1, [C

    .line 68
    .line 69
    aput-char v4, v11, v0

    .line 70
    .line 71
    invoke-static {v10, v11}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move-object v10, v5

    .line 77
    :goto_2
    invoke-virtual {v2, v3, v10}, Lcom/transsion/push/notification/c$a;->U(ILjava/lang/String;)Lcom/transsion/push/notification/c$a;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    sget v3, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 82
    .line 83
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    if-eqz v10, :cond_3

    .line 88
    .line 89
    new-array v11, v1, [C

    .line 90
    .line 91
    aput-char v4, v11, v0

    .line 92
    .line 93
    invoke-static {v10, v11}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    move-object v4, v5

    .line 99
    :goto_3
    invoke-virtual {v2, v3, v4}, Lcom/transsion/push/notification/c$a;->S(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/c$a;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sget v3, Lcom/transsion/lib/push/R$id;->notification_last:I

    .line 104
    .line 105
    invoke-virtual {v2, v3, v6}, Lcom/transsion/push/notification/c$a;->T(II)Lcom/transsion/push/notification/c$a;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget v3, Lcom/transsion/lib/push/R$id;->notification_next:I

    .line 110
    .line 111
    invoke-virtual {v2, v3, v6}, Lcom/transsion/push/notification/c$a;->T(II)Lcom/transsion/push/notification/c$a;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    sget v3, Lcom/transsion/lib/push/R$id;->page_num:I

    .line 116
    .line 117
    invoke-virtual {v2, v3, v6}, Lcom/transsion/push/notification/c$a;->T(II)Lcom/transsion/push/notification/c$a;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    sget-object v3, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 122
    .line 123
    sget-object v4, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/transsion/baselib/report/k;->q()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_4

    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->isFloat()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_4

    .line 136
    .line 137
    move v0, v1

    .line 138
    :cond_4
    invoke-virtual {v3, v0}, Lcom/transsion/push/utils/NotificationUtil;->x(Z)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Lcom/transsion/push/notification/a;->x(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sget v1, Lcom/transsion/lib/push/R$drawable;->push_small_logo:I

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/transsion/push/notification/a;->L(I)Lcom/transsion/push/notification/a;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/push/notification/d;->c()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/transsion/push/notification/a;->F(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    move-object/from16 v1, p6

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/transsion/push/notification/a;->z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v1

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/notification/a;->O(J)Lcom/transsion/push/notification/a;

    .line 171
    .line 172
    .line 173
    if-eqz v9, :cond_6

    .line 174
    .line 175
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_6

    .line 180
    .line 181
    sget-object v0, Lcom/transsion/push/utils/a;->a:Lcom/transsion/push/utils/a;

    .line 182
    .line 183
    sget-object v1, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/transsion/push/helper/e;->g()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    const/16 v1, 0x38

    .line 190
    .line 191
    invoke-static {v1}, Llj/a;->b(I)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const/4 v1, 0x4

    .line 196
    invoke-static {v1}, Llj/a;->b(I)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    const/4 v5, 0x0

    .line 201
    move-object v1, p1

    .line 202
    move-object v2, v9

    .line 203
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/push/utils/a;->e(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v8}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_5

    .line 212
    .line 213
    sget v2, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 214
    .line 215
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 216
    .line 217
    .line 218
    :cond_5
    sget v0, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 219
    .line 220
    invoke-virtual {v8, v0, v9}, Lcom/transsion/push/notification/c$a;->R(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_6
    sget v0, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 225
    .line 226
    invoke-virtual {v8, v0, v5}, Lcom/transsion/push/notification/c$a;->V(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;

    .line 227
    .line 228
    .line 229
    sget v0, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 230
    .line 231
    invoke-virtual {v8, v0, v5}, Lcom/transsion/push/notification/c$a;->R(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;

    .line 232
    .line 233
    .line 234
    :goto_4
    invoke-virtual {v8}, Lcom/transsion/push/notification/c$a;->P()Lcom/transsion/push/notification/c;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0, p1}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    return-object v0
.end method

.method private final b(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->O()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getStyle()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "3"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getStyle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p7

    .line 26
    const-string v0, "102"

    .line 27
    .line 28
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const-string v0, "101"

    .line 35
    .line 36
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p7

    .line 40
    if-eqz p7, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object p7, Lcom/transsion/push/bean/PushConfigHelper;->INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

    .line 44
    .line 45
    invoke-virtual {p7}, Lcom/transsion/push/bean/PushConfigHelper;->isVerticalType()Z

    .line 46
    .line 47
    .line 48
    move-result p7

    .line 49
    if-eqz p7, :cond_2

    .line 50
    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/transsion/push/helper/NotificationShowHelper;->d(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/transsion/push/helper/NotificationShowHelper;->a(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/push/helper/NotificationShowHelper;->d(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_1
    return-object p1

    .line 66
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p7}, Lcom/transsion/push/helper/NotificationShowHelper;->f(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method private final d(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;
    .locals 13

    .line 1
    move-object v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getStyle()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const-string v4, "101"

    .line 9
    .line 10
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    xor-int/2addr v3, v2

    .line 15
    if-nez p5, :cond_0

    .line 16
    .line 17
    sget-object v4, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/transsion/push/helper/e;->e()Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object/from16 v4, p5

    .line 25
    .line 26
    :goto_0
    sget-object v5, Lcom/transsion/push/tpush/g;->a:Lcom/transsion/push/tpush/g;

    .line 27
    .line 28
    move v6, p2

    .line 29
    invoke-virtual {v5, p1, p2, v3}, Lcom/transsion/push/tpush/g;->b(Landroid/content/Context;IZ)Lcom/transsion/push/notification/c$a;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6, v2}, Lcom/transsion/push/notification/a;->G(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const/16 v8, 0xa

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    new-array v10, v2, [C

    .line 46
    .line 47
    aput-char v8, v10, v1

    .line 48
    .line 49
    invoke-static {v7, v10}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v7, v9

    .line 55
    :goto_1
    sget v10, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 56
    .line 57
    invoke-virtual {v6, v10, v7}, Lcom/transsion/push/notification/c$a;->W(ILjava/lang/String;)Lcom/transsion/push/notification/c$a;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    sget v11, Lcom/transsion/lib/push/R$id;->iv_icon:I

    .line 62
    .line 63
    const/16 v12, 0x8

    .line 64
    .line 65
    invoke-virtual {v10, v11, v12}, Lcom/transsion/push/notification/c$a;->X(II)Lcom/transsion/push/notification/c$a;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    sget v11, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 70
    .line 71
    invoke-virtual {v10, v11, v7}, Lcom/transsion/push/notification/c$a;->U(ILjava/lang/String;)Lcom/transsion/push/notification/c$a;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    sget v11, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 76
    .line 77
    invoke-virtual {v10, v11, v7}, Lcom/transsion/push/notification/c$a;->S(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/c$a;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    sget v10, Lcom/transsion/lib/push/R$id;->notification_content_tv:I

    .line 82
    .line 83
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getDesc()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    if-eqz v11, :cond_2

    .line 88
    .line 89
    new-array v2, v2, [C

    .line 90
    .line 91
    aput-char v8, v2, v1

    .line 92
    .line 93
    invoke-static {v11, v2}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move-object v2, v9

    .line 99
    :goto_2
    invoke-virtual {v7, v10, v2}, Lcom/transsion/push/notification/c$a;->S(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/c$a;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    sget v7, Lcom/transsion/lib/push/R$id;->notification_last:I

    .line 104
    .line 105
    invoke-virtual {v2, v7, v12}, Lcom/transsion/push/notification/c$a;->T(II)Lcom/transsion/push/notification/c$a;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget v7, Lcom/transsion/lib/push/R$id;->notification_next:I

    .line 110
    .line 111
    invoke-virtual {v2, v7, v12}, Lcom/transsion/push/notification/c$a;->T(II)Lcom/transsion/push/notification/c$a;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    sget v7, Lcom/transsion/lib/push/R$id;->page_num:I

    .line 116
    .line 117
    invoke-virtual {v2, v7, v12}, Lcom/transsion/push/notification/c$a;->T(II)Lcom/transsion/push/notification/c$a;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    sget-object v7, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 122
    .line 123
    invoke-virtual {v7, v1}, Lcom/transsion/push/utils/NotificationUtil;->x(Z)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v2, v1}, Lcom/transsion/push/notification/a;->x(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sget v2, Lcom/transsion/lib/push/R$drawable;->push_small_logo:I

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/transsion/push/notification/a;->L(I)Lcom/transsion/push/notification/a;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/push/notification/d;->c()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lcom/transsion/push/notification/a;->F(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    move-object/from16 v2, p6

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/transsion/push/notification/a;->z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v7

    .line 155
    invoke-virtual {v1, v7, v8}, Lcom/transsion/push/notification/a;->O(J)Lcom/transsion/push/notification/a;

    .line 156
    .line 157
    .line 158
    if-eqz v4, :cond_4

    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_4

    .line 165
    .line 166
    invoke-virtual {v5, p1, v4, v3}, Lcom/transsion/push/tpush/g;->c(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v6}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    if-eqz v2, :cond_3

    .line 175
    .line 176
    sget v7, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 177
    .line 178
    invoke-virtual {v2, v7, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    sget v1, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 182
    .line 183
    invoke-virtual {v5, p1, v4, v3}, Lcom/transsion/push/tpush/g;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v6, v1, v2}, Lcom/transsion/push/notification/c$a;->R(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    sget v1, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 192
    .line 193
    invoke-virtual {v6, v1, v9}, Lcom/transsion/push/notification/c$a;->V(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;

    .line 194
    .line 195
    .line 196
    sget v1, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 197
    .line 198
    invoke-virtual {v6, v1, v9}, Lcom/transsion/push/notification/c$a;->R(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;

    .line 199
    .line 200
    .line 201
    :goto_3
    invoke-virtual {v6}, Lcom/transsion/push/notification/c$a;->P()Lcom/transsion/push/notification/c;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1, p1}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0
.end method

.method private final f(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p5, :cond_0

    .line 4
    .line 5
    sget-object p5, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 6
    .line 7
    invoke-virtual {p5}, Lcom/transsion/push/helper/e;->e()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    :cond_0
    move-object v4, p5

    .line 12
    new-instance p5, Lcom/transsion/push/notification/j$a;

    .line 13
    .line 14
    invoke-direct {p5, p1, p2}, Lcom/transsion/push/notification/j$a;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 18
    .line 19
    sget-object v2, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/transsion/baselib/report/k;->q()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    xor-int/2addr v2, v1

    .line 26
    invoke-virtual {p2, v2}, Lcom/transsion/push/utils/NotificationUtil;->x(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p5, p2}, Lcom/transsion/push/notification/a;->x(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 31
    .line 32
    .line 33
    sget p2, Lcom/transsion/lib/push/R$drawable;->push_small_logo:I

    .line 34
    .line 35
    invoke-virtual {p5, p2}, Lcom/transsion/push/notification/a;->L(I)Lcom/transsion/push/notification/a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4}, Lcom/transsion/push/notification/d;->c()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p5, p2}, Lcom/transsion/push/notification/a;->F(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/16 p4, 0xa

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    new-array v3, v1, [C

    .line 55
    .line 56
    aput-char p4, v3, v0

    .line 57
    .line 58
    invoke-static {p2, v3}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object p2, v2

    .line 64
    :goto_0
    invoke-virtual {p5, p2}, Lcom/transsion/push/notification/a;->B(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getDesc()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    new-array p3, v1, [C

    .line 74
    .line 75
    aput-char p4, p3, v0

    .line 76
    .line 77
    invoke-static {p2, p3}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-object p2, v2

    .line 83
    :goto_1
    invoke-virtual {p5, p2}, Lcom/transsion/push/notification/a;->A(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p5, p6}, Lcom/transsion/push/notification/a;->z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p5, p7}, Lcom/transsion/push/notification/a;->E(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 90
    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    sget p3, Lcom/transsion/lib/push/R$dimen;->push_notification_transition_square_img_width:I

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    float-to-int v6, p2

    .line 111
    sget-object v2, Lcom/transsion/push/utils/a;->a:Lcom/transsion/push/utils/a;

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    move-object v3, p1

    .line 115
    move v5, v6

    .line 116
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/push/utils/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p5, p2}, Lcom/transsion/push/notification/a;->H(Landroid/graphics/Bitmap;)Lcom/transsion/push/notification/a;

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p5, v2}, Lcom/transsion/push/notification/a;->H(Landroid/graphics/Bitmap;)Lcom/transsion/push/notification/a;

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {p5}, Lcom/transsion/push/notification/j$a;->P()Lcom/transsion/push/notification/j;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p2, p1}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1
.end method

.method private final h(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    const-string v1, "com.community.oneroom.notification_delete"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/transsion/push/helper/NotificationShowHelper;->n(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final j(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    const-string v1, "com.community.oneroom.last_permanent_msg"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/transsion/push/helper/NotificationShowHelper;->n(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final k(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    const-string v1, "com.community.oneroom.next_permanent_msg"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/transsion/push/helper/NotificationShowHelper;->n(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final n(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/transsion/push/utils/NotificationUtil;->r(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-instance v2, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v3, Lcom/transsion/lib/push/Receiver/NotificationReceiver;

    .line 20
    .line 21
    invoke-direct {v2, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p1, "extra_notification_id"

    .line 35
    .line 36
    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string p1, "extra_notification_group_tag"

    .line 40
    .line 41
    invoke-virtual {p5}, Lcom/transsion/push/notification/d;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string p1, "extra_message_id"

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    const-string p1, "MESSAGE_TYPE"

    .line 58
    .line 59
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string p1, "extra_source"

    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getSource()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const/16 p1, 0x18

    .line 87
    .line 88
    if-lt v0, p1, :cond_0

    .line 89
    .line 90
    const/high16 p1, 0x10000000

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    :cond_0
    const/high16 p1, 0xc000000

    .line 96
    .line 97
    invoke-static {p2, v1, v2, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method

.method private final u(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/push/bean/MsgStatus;->SHOWED:Lcom/transsion/push/bean/MsgStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p2, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setMsgStatus(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setShowTime(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getTriggerSource()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v1, Lcom/transsion/pushapi/TriggerSource;->SCREEN_ON:Lcom/transsion/pushapi/TriggerSource;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Lcom/transsion/baselib/db/notification/MsgBean;->setHasScreenOn(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getTriggerSource()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sget-object v1, Lcom/transsion/pushapi/TriggerSource;->UNLOCK:Lcom/transsion/pushapi/TriggerSource;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v0, v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Lcom/transsion/baselib/db/notification/MsgBean;->setForceShow(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v4, Lcom/transsion/push/helper/NotificationShowHelper$updateShowTime$1;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-direct {v4, p1, p2, v0}, Lcom/transsion/push/helper/NotificationShowHelper$updateShowTime$1;-><init>(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILandroid/graphics/Bitmap;Landroid/app/PendingIntent;Lcom/transsion/push/notification/d;)Landroidx/core/app/NotificationCompat$m;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    move-object/from16 v3, p6

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    const-string v6, "context"

    .line 14
    .line 15
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v6, "msgBean"

    .line 19
    .line 20
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v6, "messageGroup"

    .line 24
    .line 25
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-nez p4, :cond_0

    .line 29
    .line 30
    sget-object v6, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/transsion/push/helper/e;->e()Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v10, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object/from16 v10, p4

    .line 39
    .line 40
    :goto_0
    invoke-direct {p0, v8, v1, v2, v3}, Lcom/transsion/push/helper/NotificationShowHelper;->j(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-direct {p0, v8, v1, v2, v3}, Lcom/transsion/push/helper/NotificationShowHelper;->k(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    new-instance v11, Lcom/transsion/push/notification/i$a;

    .line 49
    .line 50
    sget v12, Lcom/transsion/lib/push/R$layout;->push_notification_normal_small:I

    .line 51
    .line 52
    sget v13, Lcom/transsion/lib/push/R$layout;->push_notification_big_picture:I

    .line 53
    .line 54
    invoke-direct {v11, v8, v2, v12, v13}, Lcom/transsion/push/notification/i$a;-><init>(Landroid/content/Context;III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/push/notification/d;->c()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v11, v2}, Lcom/transsion/push/notification/a;->F(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 62
    .line 63
    .line 64
    sget v2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const/16 v12, 0xa

    .line 71
    .line 72
    const/4 v13, 0x0

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    new-array v14, v9, [C

    .line 76
    .line 77
    aput-char v12, v14, v5

    .line 78
    .line 79
    invoke-static {v3, v14}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object v3, v13

    .line 85
    :goto_1
    invoke-virtual {v11, v2, v3}, Lcom/transsion/push/notification/i$a;->V(ILjava/lang/String;)Lcom/transsion/push/notification/i$a;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    sget v3, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 95
    .line 96
    invoke-virtual {v2, v3, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    sget v2, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 100
    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    new-array v14, v9, [C

    .line 108
    .line 109
    aput-char v12, v14, v5

    .line 110
    .line 111
    invoke-static {v3, v14}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object v3, v13

    .line 117
    :goto_2
    invoke-virtual {v11, v2, v3}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 118
    .line 119
    .line 120
    sget v2, Lcom/transsion/lib/push/R$id;->page_num:I

    .line 121
    .line 122
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 123
    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getPermanentMsgPosition()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getPermanentMsgSize()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-array v12, v4, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object v3, v12, v5

    .line 143
    .line 144
    aput-object v1, v12, v9

    .line 145
    .line 146
    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v3, "%d/%d"

    .line 151
    .line 152
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v3, "format(...)"

    .line 157
    .line 158
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v2, v1}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v1

    .line 168
    invoke-virtual {v11, v1, v2}, Lcom/transsion/push/notification/i$a;->O(J)Lcom/transsion/push/notification/a;

    .line 169
    .line 170
    .line 171
    move-object/from16 v1, p5

    .line 172
    .line 173
    invoke-virtual {v11, v1}, Lcom/transsion/push/notification/a;->z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11, v6}, Lcom/transsion/push/notification/a;->I(Landroid/app/PendingIntent;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11, v7}, Lcom/transsion/push/notification/a;->J(Landroid/app/PendingIntent;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11, v9}, Lcom/transsion/push/notification/a;->K(Z)V

    .line 183
    .line 184
    .line 185
    sget-object v12, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 186
    .line 187
    invoke-virtual {v12}, Lcom/transsion/push/utils/NotificationUtil;->I()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v11, v1}, Lcom/transsion/push/notification/a;->y(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    if-eqz v10, :cond_5

    .line 195
    .line 196
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_5

    .line 201
    .line 202
    sget-object v1, Lcom/transsion/push/utils/a;->a:Lcom/transsion/push/utils/a;

    .line 203
    .line 204
    const/16 v2, 0x3c

    .line 205
    .line 206
    invoke-static {v2}, Llj/a;->b(I)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    const/16 v2, 0x28

    .line 211
    .line 212
    invoke-static {v2}, Llj/a;->b(I)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    const/4 v2, 0x4

    .line 217
    invoke-static {v2}, Llj/a;->b(I)I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    const/4 v6, 0x0

    .line 222
    move-object/from16 v2, p1

    .line 223
    .line 224
    move-object v3, v10

    .line 225
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/utils/a;->e(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v11}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-eqz v2, :cond_4

    .line 234
    .line 235
    sget v3, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 236
    .line 237
    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 238
    .line 239
    .line 240
    :cond_4
    sget v1, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 241
    .line 242
    invoke-virtual {v11, v1, v10}, Lcom/transsion/push/notification/i$a;->S(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_5
    sget v1, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 247
    .line 248
    invoke-virtual {v11, v1, v13}, Lcom/transsion/push/notification/i$a;->W(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 249
    .line 250
    .line 251
    sget v1, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 252
    .line 253
    invoke-virtual {v11, v1, v13}, Lcom/transsion/push/notification/i$a;->S(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 254
    .line 255
    .line 256
    :goto_3
    invoke-virtual {v12}, Lcom/transsion/push/utils/NotificationUtil;->N()Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_6

    .line 261
    .line 262
    invoke-virtual {v11}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1, v8}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    goto :goto_4

    .line 271
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 272
    .line 273
    .line 274
    move-result-wide v1

    .line 275
    invoke-virtual {v11, v1, v2}, Lcom/transsion/push/notification/i$a;->R(J)Lcom/transsion/push/notification/a;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v11, v9}, Lcom/transsion/push/notification/a;->N(Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v11}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1, v8}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    :goto_4
    return-object v1
.end method

.method public final e(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILandroid/graphics/Bitmap;Landroid/app/PendingIntent;Lcom/transsion/push/notification/d;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)Landroidx/core/app/NotificationCompat$m;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p8

    .line 12
    .line 13
    const-string v9, "context"

    .line 14
    .line 15
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v9, "msgBean"

    .line 19
    .line 20
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v9, "messageGroup"

    .line 24
    .line 25
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v9, "matchMapBitmap"

    .line 29
    .line 30
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-nez p4, :cond_0

    .line 34
    .line 35
    sget-object v9, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 36
    .line 37
    invoke-virtual {v9}, Lcom/transsion/push/helper/e;->e()Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object/from16 v9, p4

    .line 43
    .line 44
    :goto_0
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/transsion/push/helper/NotificationShowHelper;->j(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/transsion/push/helper/NotificationShowHelper;->k(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    new-instance v12, Lcom/transsion/push/notification/i$a;

    .line 53
    .line 54
    sget v13, Lcom/transsion/lib/push/R$layout;->push_notification_normal_small_match:I

    .line 55
    .line 56
    sget v14, Lcom/transsion/lib/push/R$layout;->push_notification_match_upcoming:I

    .line 57
    .line 58
    invoke-direct {v12, v2, v3, v13, v14}, Lcom/transsion/push/notification/i$a;-><init>(Landroid/content/Context;III)V

    .line 59
    .line 60
    .line 61
    sget v3, Lcom/transsion/lib/push/R$string;->match_vs:I

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v13, "getString(...)"

    .line 68
    .line 69
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget v14, Lcom/transsion/lib/push/R$string;->match_vs_notification1:I

    .line 73
    .line 74
    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget v15, Lcom/transsion/lib/push/R$string;->match_vs_notification2:I

    .line 82
    .line 83
    invoke-virtual {v2, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    if-eqz p7, :cond_1

    .line 91
    .line 92
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/push/bean/ServerMatchListItemData;->getTeam1()Lcom/transsion/push/bean/TeamInfoMatch;

    .line 93
    .line 94
    .line 95
    move-result-object v16

    .line 96
    if-eqz v16, :cond_1

    .line 97
    .line 98
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/push/bean/TeamInfoMatch;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v16

    .line 102
    move-object/from16 v13, v16

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const/4 v13, 0x0

    .line 106
    :goto_1
    if-eqz p7, :cond_2

    .line 107
    .line 108
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/push/bean/ServerMatchListItemData;->getTeam2()Lcom/transsion/push/bean/TeamInfoMatch;

    .line 109
    .line 110
    .line 111
    move-result-object v16

    .line 112
    if-eqz v16, :cond_2

    .line 113
    .line 114
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/push/bean/TeamInfoMatch;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    move-object/from16 v6, v16

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const/4 v6, 0x0

    .line 122
    :goto_2
    if-eqz v13, :cond_3

    .line 123
    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v13, " "

    .line 133
    .line 134
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_3

    .line 142
    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-eqz v3, :cond_3

    .line 159
    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    goto :goto_3

    .line 176
    :cond_3
    const/4 v3, 0x0

    .line 177
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/push/notification/d;->c()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v12, v4}, Lcom/transsion/push/notification/a;->F(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide v6

    .line 221
    invoke-virtual {v12, v6, v7}, Lcom/transsion/push/notification/i$a;->O(J)Lcom/transsion/push/notification/a;

    .line 222
    .line 223
    .line 224
    sget v4, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 225
    .line 226
    const/16 v6, 0xa

    .line 227
    .line 228
    const/4 v7, 0x1

    .line 229
    if-eqz v3, :cond_4

    .line 230
    .line 231
    new-array v8, v7, [C

    .line 232
    .line 233
    const/4 v13, 0x0

    .line 234
    aput-char v6, v8, v13

    .line 235
    .line 236
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    goto :goto_4

    .line 241
    :cond_4
    const/4 v13, 0x0

    .line 242
    const/4 v8, 0x0

    .line 243
    :goto_4
    invoke-virtual {v12, v4, v8}, Lcom/transsion/push/notification/i$a;->V(ILjava/lang/String;)Lcom/transsion/push/notification/i$a;

    .line 244
    .line 245
    .line 246
    sget v4, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 247
    .line 248
    if-eqz v3, :cond_5

    .line 249
    .line 250
    new-array v8, v7, [C

    .line 251
    .line 252
    aput-char v6, v8, v13

    .line 253
    .line 254
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    goto :goto_5

    .line 259
    :cond_5
    const/4 v8, 0x0

    .line 260
    :goto_5
    invoke-virtual {v12, v4, v8}, Lcom/transsion/push/notification/i$a;->X(ILjava/lang/String;)Lcom/transsion/push/notification/i$a;

    .line 261
    .line 262
    .line 263
    sget v4, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 264
    .line 265
    if-eqz v3, :cond_6

    .line 266
    .line 267
    new-array v8, v7, [C

    .line 268
    .line 269
    aput-char v6, v8, v13

    .line 270
    .line 271
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    goto :goto_6

    .line 276
    :cond_6
    const/4 v7, 0x0

    .line 277
    :goto_6
    invoke-virtual {v12, v4, v7}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    if-eqz v4, :cond_7

    .line 285
    .line 286
    sget v7, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 287
    .line 288
    invoke-virtual {v4, v7, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 289
    .line 290
    .line 291
    :cond_7
    sget v4, Lcom/transsion/lib/push/R$id;->notification_title_tv:I

    .line 292
    .line 293
    if-eqz v3, :cond_8

    .line 294
    .line 295
    const/4 v7, 0x1

    .line 296
    new-array v8, v7, [C

    .line 297
    .line 298
    const/4 v7, 0x0

    .line 299
    aput-char v6, v8, v7

    .line 300
    .line 301
    invoke-static {v3, v8}, Lkotlin/text/StringsKt;->t1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    goto :goto_7

    .line 306
    :cond_8
    const/4 v6, 0x0

    .line 307
    :goto_7
    invoke-virtual {v12, v4, v6}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 308
    .line 309
    .line 310
    sget v4, Lcom/transsion/lib/push/R$id;->page_num:I

    .line 311
    .line 312
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 313
    .line 314
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getPermanentMsgPosition()I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getPermanentMsgSize()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const/4 v7, 0x2

    .line 331
    new-array v8, v7, [Ljava/lang/Object;

    .line 332
    .line 333
    const/4 v13, 0x0

    .line 334
    aput-object v6, v8, v13

    .line 335
    .line 336
    const/4 v6, 0x1

    .line 337
    aput-object v0, v8, v6

    .line 338
    .line 339
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    const-string v6, "%d/%d"

    .line 344
    .line 345
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const-string v6, "format(...)"

    .line 350
    .line 351
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v12, v4, v0}, Lcom/transsion/push/notification/i$a;->T(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/i$a;

    .line 355
    .line 356
    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    invoke-virtual {v12, v6, v7}, Lcom/transsion/push/notification/i$a;->O(J)Lcom/transsion/push/notification/a;

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 373
    .line 374
    const/16 v4, 0x30

    .line 375
    .line 376
    int-to-float v4, v4

    .line 377
    mul-float/2addr v4, v0

    .line 378
    float-to-int v4, v4

    .line 379
    sget-object v6, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 380
    .line 381
    const-string v7, "team1ImgUrl"

    .line 382
    .line 383
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    check-cast v7, Landroid/graphics/Bitmap;

    .line 391
    .line 392
    const/4 v8, 0x1

    .line 393
    int-to-float v13, v8

    .line 394
    mul-float/2addr v13, v0

    .line 395
    const/4 v0, -0x1

    .line 396
    invoke-virtual {v6, v7, v4, v13, v0}, Lcom/transsion/push/utils/NotificationUtil;->s(Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    const-string v8, "team2ImgUrl"

    .line 401
    .line 402
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    check-cast v5, Landroid/graphics/Bitmap;

    .line 410
    .line 411
    invoke-virtual {v6, v5, v4, v13, v0}, Lcom/transsion/push/utils/NotificationUtil;->s(Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    if-eqz v0, :cond_9

    .line 420
    .line 421
    sget v5, Lcom/transsion/lib/push/R$id;->iv_team1_logo:I

    .line 422
    .line 423
    invoke-virtual {v0, v5, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 424
    .line 425
    .line 426
    :cond_9
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    if-eqz v0, :cond_a

    .line 431
    .line 432
    sget v5, Lcom/transsion/lib/push/R$id;->score_match:I

    .line 433
    .line 434
    const/high16 v7, 0x41a00000    # 20.0f

    .line 435
    .line 436
    const/4 v8, 0x2

    .line 437
    invoke-virtual {v0, v5, v8, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 438
    .line 439
    .line 440
    :cond_a
    if-eqz p7, :cond_b

    .line 441
    .line 442
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/push/bean/ServerMatchListItemData;->getStartTime()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    goto :goto_8

    .line 447
    :catch_0
    move-exception v0

    .line 448
    goto :goto_9

    .line 449
    :cond_b
    const/4 v0, 0x0

    .line 450
    :goto_8
    invoke-virtual {v6, v0}, Lcom/transsion/push/utils/NotificationUtil;->e0(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_a

    .line 455
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    const-string v6, "\u65f6\u95f4\u8f6c\u6362\u51fa\u9519\uff1a"

    .line 461
    .line 462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v0, ""

    .line 469
    .line 470
    :goto_a
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    if-eqz v5, :cond_c

    .line 475
    .line 476
    sget v6, Lcom/transsion/lib/push/R$id;->tv_top_title:I

    .line 477
    .line 478
    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 479
    .line 480
    .line 481
    :cond_c
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    if-eqz v3, :cond_e

    .line 486
    .line 487
    sget v5, Lcom/transsion/lib/push/R$id;->match_round:I

    .line 488
    .line 489
    if-eqz p7, :cond_d

    .line 490
    .line 491
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/push/bean/ServerMatchListItemData;->getMatchRound()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v6

    .line 495
    goto :goto_b

    .line 496
    :cond_d
    const/4 v6, 0x0

    .line 497
    :goto_b
    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    :cond_e
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    if-eqz v3, :cond_f

    .line 505
    .line 506
    sget v5, Lcom/transsion/lib/push/R$id;->btn_upcoming:I

    .line 507
    .line 508
    invoke-virtual {v3, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 509
    .line 510
    .line 511
    :cond_f
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    if-eqz v0, :cond_10

    .line 516
    .line 517
    sget v3, Lcom/transsion/lib/push/R$id;->match_push_ly:I

    .line 518
    .line 519
    const-string v5, "setBackgroundResource"

    .line 520
    .line 521
    sget v6, Lcom/transsion/lib/push/R$drawable;->push_layer_match_push_bg:I

    .line 522
    .line 523
    invoke-virtual {v0, v3, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 524
    .line 525
    .line 526
    :cond_10
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    if-eqz v0, :cond_12

    .line 531
    .line 532
    sget v3, Lcom/transsion/lib/push/R$id;->tv_team1_name:I

    .line 533
    .line 534
    if-eqz p7, :cond_11

    .line 535
    .line 536
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/push/bean/ServerMatchListItemData;->getTeam1()Lcom/transsion/push/bean/TeamInfoMatch;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    if-eqz v5, :cond_11

    .line 541
    .line 542
    invoke-virtual {v5}, Lcom/transsion/push/bean/TeamInfoMatch;->getName()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    goto :goto_c

    .line 547
    :cond_11
    const/4 v5, 0x0

    .line 548
    :goto_c
    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 549
    .line 550
    .line 551
    :cond_12
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    if-eqz v0, :cond_13

    .line 556
    .line 557
    sget v3, Lcom/transsion/lib/push/R$id;->iv_team2_logo:I

    .line 558
    .line 559
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 560
    .line 561
    .line 562
    :cond_13
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    if-eqz v0, :cond_15

    .line 567
    .line 568
    sget v3, Lcom/transsion/lib/push/R$id;->tv_team2_name:I

    .line 569
    .line 570
    if-eqz p7, :cond_14

    .line 571
    .line 572
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/push/bean/ServerMatchListItemData;->getTeam2()Lcom/transsion/push/bean/TeamInfoMatch;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    if-eqz v4, :cond_14

    .line 577
    .line 578
    invoke-virtual {v4}, Lcom/transsion/push/bean/TeamInfoMatch;->getName()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    goto :goto_d

    .line 583
    :cond_14
    const/4 v4, 0x0

    .line 584
    :goto_d
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 585
    .line 586
    .line 587
    :cond_15
    move-object/from16 v3, p5

    .line 588
    .line 589
    invoke-virtual {v12, v3}, Lcom/transsion/push/notification/a;->z(Landroid/app/PendingIntent;)Lcom/transsion/push/notification/a;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v12, v10}, Lcom/transsion/push/notification/a;->I(Landroid/app/PendingIntent;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v12, v11}, Lcom/transsion/push/notification/a;->J(Landroid/app/PendingIntent;)V

    .line 596
    .line 597
    .line 598
    const/4 v3, 0x1

    .line 599
    invoke-virtual {v12, v3}, Lcom/transsion/push/notification/a;->K(Z)V

    .line 600
    .line 601
    .line 602
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 603
    .line 604
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->I()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v12, v3}, Lcom/transsion/push/notification/a;->y(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    if-eqz v9, :cond_17

    .line 612
    .line 613
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    if-nez v3, :cond_17

    .line 618
    .line 619
    sget-object v3, Lcom/transsion/push/utils/a;->a:Lcom/transsion/push/utils/a;

    .line 620
    .line 621
    const/16 v4, 0x3c

    .line 622
    .line 623
    invoke-static {v4}, Llj/a;->b(I)I

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    const/16 v5, 0x28

    .line 628
    .line 629
    invoke-static {v5}, Llj/a;->b(I)I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    const/4 v6, 0x4

    .line 634
    invoke-static {v6}, Llj/a;->b(I)I

    .line 635
    .line 636
    .line 637
    move-result v6

    .line 638
    const/4 v7, 0x0

    .line 639
    move-object/from16 p2, v3

    .line 640
    .line 641
    move-object/from16 p3, p1

    .line 642
    .line 643
    move-object/from16 p4, v9

    .line 644
    .line 645
    move/from16 p5, v4

    .line 646
    .line 647
    move/from16 p6, v5

    .line 648
    .line 649
    move/from16 p7, v7

    .line 650
    .line 651
    move/from16 p8, v6

    .line 652
    .line 653
    invoke-virtual/range {p2 .. p8}, Lcom/transsion/push/utils/a;->e(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    invoke-virtual {v12}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    if-eqz v4, :cond_16

    .line 662
    .line 663
    sget v5, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 664
    .line 665
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 666
    .line 667
    .line 668
    :cond_16
    sget v3, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 669
    .line 670
    invoke-virtual {v12, v3, v9}, Lcom/transsion/push/notification/i$a;->S(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 671
    .line 672
    .line 673
    goto :goto_e

    .line 674
    :cond_17
    sget v3, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 675
    .line 676
    const/4 v4, 0x0

    .line 677
    invoke-virtual {v12, v3, v4}, Lcom/transsion/push/notification/i$a;->W(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 678
    .line 679
    .line 680
    sget v3, Lcom/transsion/lib/push/R$id;->notification_content_image:I

    .line 681
    .line 682
    invoke-virtual {v12, v3, v4}, Lcom/transsion/push/notification/i$a;->S(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/i$a;

    .line 683
    .line 684
    .line 685
    :goto_e
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->N()Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-eqz v0, :cond_18

    .line 690
    .line 691
    invoke-virtual {v12}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {v0, v2}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    goto :goto_f

    .line 700
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 701
    .line 702
    .line 703
    move-result-wide v3

    .line 704
    invoke-virtual {v12, v3, v4}, Lcom/transsion/push/notification/i$a;->R(J)Lcom/transsion/push/notification/a;

    .line 705
    .line 706
    .line 707
    const/4 v3, 0x1

    .line 708
    invoke-virtual {v12, v3}, Lcom/transsion/push/notification/a;->N(Z)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v12}, Lcom/transsion/push/notification/i$a;->P()Lcom/transsion/push/notification/i;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v0, v2}, Lcom/transsion/push/notification/b;->a(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$m;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    :goto_f
    return-object v0
.end method

.method public final g(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "notification"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/app/NotificationManager;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/app/NotificationManager;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final i(Lcom/transsion/baselib/db/notification/MsgBean;)Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, "msgBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/baselib/db/notification/MsgBean;->getImageList()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string p1, ","

    .line 18
    .line 19
    filled-new-array {p1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v5, 0x6

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v0
.end method

.method public final l(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    long-to-int p1, v0

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :goto_1
    return p1
.end method

.method public final m(Landroid/content/Context;Ljava/lang/String;ILcom/transsion/baselib/db/notification/MsgBean;)Landroid/app/PendingIntent;
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msgBean"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 12
    .line 13
    invoke-virtual {p4}, Lcom/transsion/baselib/db/notification/MsgBean;->getSource()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p4}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {p4}, Lcom/transsion/baselib/db/notification/MsgBean;->getStyle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p4}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p4}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    move-object v2, p1

    .line 34
    move-object v3, p2

    .line 35
    move v4, p3

    .line 36
    invoke-virtual/range {v1 .. v9}, Lcom/transsion/push/utils/NotificationUtil;->C(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    sget-object p3, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-virtual {p3, p4}, Lcom/transsion/push/helper/NotificationShowHelper;->l(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    const/high16 p4, 0xc000000

    .line 64
    .line 65
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_0
    const/4 p1, 0x0

    .line 71
    return-object p1
.end method

.method public final o()I
    .locals 1

    .line 1
    const/16 v0, 0x6f

    .line 2
    .line 3
    return v0
.end method

.method public final p(Landroid/content/Context;Landroidx/core/app/NotificationCompat$m;ILcom/transsion/push/notification/d;Z)Landroid/app/Notification;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "messageGroup"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p4, "notification"

    .line 17
    .line 18
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of p4, p1, Landroid/app/NotificationManager;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    check-cast p1, Landroid/app/NotificationManager;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p1, v0

    .line 31
    :goto_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string p4, "build(...)"

    .line 39
    .line 40
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz p5, :cond_2

    .line 44
    .line 45
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 p5, 0x1a

    .line 48
    .line 49
    if-ge p4, p5, :cond_2

    .line 50
    .line 51
    const/4 p4, 0x1

    .line 52
    iput p4, p2, Landroid/app/Notification;->visibility:I

    .line 53
    .line 54
    iput p4, p2, Landroid/app/Notification;->priority:I

    .line 55
    .line 56
    const/4 p4, 0x4

    .line 57
    new-array p4, p4, [J

    .line 58
    .line 59
    fill-array-data p4, :array_0

    .line 60
    .line 61
    .line 62
    iput-object p4, p2, Landroid/app/Notification;->vibrate:[J

    .line 63
    .line 64
    const/4 p4, 0x3

    .line 65
    iput p4, p2, Landroid/app/Notification;->defaults:I

    .line 66
    .line 67
    const/16 p4, 0x11

    .line 68
    .line 69
    iput p4, p2, Landroid/app/Notification;->flags:I

    .line 70
    .line 71
    :cond_2
    :try_start_0
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 72
    .line 73
    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :goto_1
    return-object p2

    .line 93
    :array_0
    .array-data 8
        0x0
        0x12c
        0x64
        0x12c
    .end array-data
.end method

.method public final q(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msgBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "ACTION_NEW_MESSAGE"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "newMsg"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lr1/a;->b(Landroid/content/Context;)Lr1/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Lr1/a;->d(Landroid/content/Intent;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final r(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Landroid/graphics/Bitmap;)V
    .locals 21

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    const-string v0, "context"

    .line 8
    .line 9
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "msgBean"

    .line 13
    .line 14
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/transsion/push/notification/d;->d:Lcom/transsion/push/notification/d$a;

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/push/notification/d$a;->c(Ljava/lang/String;)Lcom/transsion/push/notification/d;

    .line 24
    .line 25
    .line 26
    move-result-object v11

    .line 27
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 28
    .line 29
    sget-object v12, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 30
    .line 31
    invoke-virtual {v12}, Lcom/transsion/baselib/report/k;->q()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v13, 0x1

    .line 36
    xor-int/2addr v1, v13

    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/push/utils/NotificationUtil;->x(Z)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v8, v0}, Lcom/transsion/push/helper/NotificationShowHelper;->l(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    if-gez v14, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-virtual {v8, v9, v15, v14, v10}, Lcom/transsion/push/helper/NotificationShowHelper;->m(Landroid/content/Context;Ljava/lang/String;ILcom/transsion/baselib/db/notification/MsgBean;)Landroid/app/PendingIntent;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-direct {v8, v9, v10, v14, v11}, Lcom/transsion/push/helper/NotificationShowHelper;->h(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILcom/transsion/push/notification/d;)Landroid/app/PendingIntent;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    move-object/from16 v0, p0

    .line 61
    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    move v2, v14

    .line 65
    move-object/from16 v3, p2

    .line 66
    .line 67
    move-object v4, v11

    .line 68
    move-object/from16 v5, p3

    .line 69
    .line 70
    invoke-direct/range {v0 .. v7}, Lcom/transsion/push/helper/NotificationShowHelper;->b(Landroid/content/Context;ILcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/notification/d;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v12}, Lcom/transsion/baselib/report/k;->q()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    xor-int/lit8 v5, v0, 0x1

    .line 79
    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v1, Lcom/transsion/push/bean/MsgType;->SUBJECT_SEEKING:Lcom/transsion/push/bean/MsgType;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-virtual {v2, v13}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "seeking_msg_show_time"

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    .line 113
    .line 114
    :cond_1
    move-object/from16 v0, p0

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    move v3, v14

    .line 119
    move-object v4, v11

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/push/helper/NotificationShowHelper;->p(Landroid/content/Context;Landroidx/core/app/NotificationCompat$m;ILcom/transsion/push/notification/d;Z)Landroid/app/Notification;

    .line 121
    .line 122
    .line 123
    invoke-direct/range {p0 .. p2}, Lcom/transsion/push/helper/NotificationShowHelper;->u(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->isRefresh()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_5

    .line 131
    .line 132
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 133
    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getTitle()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v4, "send local push:"

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v1, "-"

    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const-string v2, "PUSH_SHOW"

    .line 168
    .line 169
    invoke-virtual {v0, v2, v1, v13}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    sget-object v14, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 173
    .line 174
    invoke-virtual {v14}, Lcom/transsion/push/helper/a;->e()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_2

    .line 179
    .line 180
    const-string v0, "401"

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    if-nez p3, :cond_3

    .line 184
    .line 185
    const-string v0, "201"

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_3
    const-string v0, "200"

    .line 189
    .line 190
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    sget-object v2, Lcom/transsion/push/bean/MsgType;->ONLINE_JSON_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_4

    .line 205
    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v16

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getStyle()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v18

    .line 222
    const-string v20, "2"

    .line 223
    .line 224
    move-object v2, v15

    .line 225
    move-object v15, v1

    .line 226
    move-object/from16 v17, v2

    .line 227
    .line 228
    move-object/from16 v19, v0

    .line 229
    .line 230
    invoke-virtual/range {v14 .. v20}, Lcom/transsion/push/helper/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_4
    move-object v2, v15

    .line 235
    invoke-virtual {v14, v10, v2, v0}, Lcom/transsion/push/helper/a;->c(Lcom/transsion/baselib/db/notification/MsgBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/transsion/push/helper/NotificationShowHelper;->q(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 239
    .line 240
    .line 241
    :cond_5
    return-void
.end method

.method public final s(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msgBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/push/notification/d;->d:Lcom/transsion/push/notification/d$a;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/transsion/push/notification/d$a;->c(Ljava/lang/String;)Lcom/transsion/push/notification/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/transsion/push/helper/NotificationShowHelper;->o()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-object v2, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/transsion/push/utils/NotificationUtil;->I()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-virtual {p0, p1, v9, v1, p2}, Lcom/transsion/push/helper/NotificationShowHelper;->m(Landroid/content/Context;Ljava/lang/String;ILcom/transsion/baselib/db/notification/MsgBean;)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    move-object v2, p0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, p2

    .line 38
    move v5, v1

    .line 39
    move-object v6, p3

    .line 40
    move-object v8, v0

    .line 41
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/push/helper/NotificationShowHelper;->c(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILandroid/graphics/Bitmap;Landroid/app/PendingIntent;Lcom/transsion/push/notification/d;)Landroidx/core/app/NotificationCompat$m;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v7, 0x1

    .line 46
    move-object v6, v0

    .line 47
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/push/helper/NotificationShowHelper;->p(Landroid/content/Context;Landroidx/core/app/NotificationCompat$m;ILcom/transsion/push/notification/d;Z)Landroid/app/Notification;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->isRefresh()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/push/helper/a;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    const-string p3, "401"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    if-nez p3, :cond_1

    .line 68
    .line 69
    const-string p3, "201"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string p3, "200"

    .line 73
    .line 74
    :goto_0
    invoke-virtual {v0, p2, v9, p3}, Lcom/transsion/push/helper/a;->c(Lcom/transsion/baselib/db/notification/MsgBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/helper/NotificationShowHelper;->q(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final t(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)V
    .locals 15

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v10, p1

    .line 3
    .line 4
    move-object/from16 v11, p2

    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "msgBean"

    .line 12
    .line 13
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "matchMapBitmap"

    .line 17
    .line 18
    move-object/from16 v8, p4

    .line 19
    .line 20
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/transsion/push/notification/d;->d:Lcom/transsion/push/notification/d$a;

    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/transsion/push/notification/d$a;->c(Ljava/lang/String;)Lcom/transsion/push/notification/d;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/transsion/push/helper/NotificationShowHelper;->l(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/transsion/push/utils/NotificationUtil;->I()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v14

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0, v10, v14, v13, v11}, Lcom/transsion/push/helper/NotificationShowHelper;->m(Landroid/content/Context;Ljava/lang/String;ILcom/transsion/baselib/db/notification/MsgBean;)Landroid/app/PendingIntent;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v0, p0

    .line 53
    move-object/from16 v1, p1

    .line 54
    .line 55
    move-object/from16 v2, p2

    .line 56
    .line 57
    move v3, v13

    .line 58
    move-object v6, v12

    .line 59
    move-object/from16 v7, p3

    .line 60
    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/push/helper/NotificationShowHelper;->e(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;ILandroid/graphics/Bitmap;Landroid/app/PendingIntent;Lcom/transsion/push/notification/d;Lcom/transsion/push/bean/ServerMatchListItemData;Ljava/util/Map;)Landroidx/core/app/NotificationCompat$m;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->q()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x1

    .line 72
    xor-int/2addr v0, v1

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "isAppForeground  is "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, " "

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "seeking_msg_show_time"

    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    .line 108
    .line 109
    const/4 v5, 0x1

    .line 110
    move-object v0, p0

    .line 111
    move-object/from16 v1, p1

    .line 112
    .line 113
    move v3, v13

    .line 114
    move-object v4, v12

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/push/helper/NotificationShowHelper;->p(Landroid/content/Context;Landroidx/core/app/NotificationCompat$m;ILcom/transsion/push/notification/d;Z)Landroid/app/Notification;

    .line 116
    .line 117
    .line 118
    invoke-direct/range {p0 .. p2}, Lcom/transsion/push/helper/NotificationShowHelper;->u(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/notification/MsgBean;->isRefresh()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_1

    .line 126
    .line 127
    sget-object v0, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/transsion/push/helper/a;->e()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_0

    .line 134
    .line 135
    const-string v1, "401"

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    const-string v1, "201"

    .line 139
    .line 140
    :goto_0
    invoke-virtual {v0, v11, v14, v1}, Lcom/transsion/push/helper/a;->c(Lcom/transsion/baselib/db/notification/MsgBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p2}, Lcom/transsion/push/helper/NotificationShowHelper;->q(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 144
    .line 145
    .line 146
    :cond_1
    return-void
.end method

.class public final Lcom/transsion/push/utils/j;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/utils/j;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/transsion/push/bean/PushNotification;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/push/utils/j;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushNotification;->getType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushNotification;->getStyleId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Lcom/transsion/push/utils/j;->c(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    iget p3, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p3, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p3, Landroid/widget/RemoteViews;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget v0, Lcom/transsion/push/R$layout;->tpush_notification_expand_31:I

    .line 15
    .line 16
    invoke-direct {p3, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget v0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    .line 31
    .line 32
    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {p3, v0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    sget p2, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    .line 44
    .line 45
    invoke-virtual {p3, p2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget p2, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    .line 50
    .line 51
    invoke-virtual {p3, p2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    .line 53
    .line 54
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v0, 0x1f

    .line 57
    .line 58
    if-lt p2, v0, :cond_2

    .line 59
    .line 60
    sget p2, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    .line 61
    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-static {p3, p2, v0, v1}, Lcom/transsion/mbwidget/e;->a(Landroid/widget/RemoteViews;IFI)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    sget p2, Lcom/transsion/push/R$id;->tpush_titleTv:I

    .line 69
    .line 70
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p3, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    sget p2, Lcom/transsion/push/R$id;->tpush_descriptionTv:I

    .line 76
    .line 77
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p3, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_3

    .line 89
    .line 90
    sget p2, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 91
    .line 92
    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p3, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    sget p1, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 98
    .line 99
    invoke-virtual {p3, p1, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 104
    .line 105
    const/16 p1, 0x8

    .line 106
    .line 107
    invoke-virtual {p3, p0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    .line 109
    .line 110
    :goto_1
    return-object p3
.end method

.method public static c(II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "#"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static d(II)Lcom/transsion/push/bean/PushNotification;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/utils/j;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/transsion/push/utils/j;->c(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/transsion/push/bean/PushNotification;

    .line 12
    .line 13
    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;
    .locals 6

    .line 1
    iget p3, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p3, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v0, 0x1f

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-lt p3, v0, :cond_2

    .line 16
    .line 17
    new-instance p2, Landroid/widget/RemoteViews;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget p3, Lcom/transsion/push/R$layout;->tpush_notification_31:I

    .line 24
    .line 25
    invoke-direct {p2, p0, p3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sget p0, Lcom/transsion/push/R$id;->tpush_titleTv:I

    .line 29
    .line 30
    iget-object p3, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2, p0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    sget p0, Lcom/transsion/push/R$id;->tpush_descriptionTv:I

    .line 36
    .line 37
    iget-object p3, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2, p0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 51
    .line 52
    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2, p0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 58
    .line 59
    invoke-virtual {p2, p0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 64
    .line 65
    invoke-virtual {p2, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-object p2

    .line 69
    :cond_2
    new-instance p3, Landroid/widget/RemoteViews;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget v3, Lcom/transsion/push/R$layout;->tpush_custom_button_style:I

    .line 76
    .line 77
    invoke-direct {p3, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    .line 94
    .line 95
    :goto_1
    :try_start_0
    sget v3, Lcom/transsion/push/R$id;->tpush_smallIconImg:I

    .line 96
    .line 97
    invoke-static {p0, v0}, Lcom/transsion/push/utils/PushUtils;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lcom/transsion/push/utils/b;->d(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p3, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v3, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v5, "set imageview Exception"

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v3, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-static {p0, p1}, Lcom/transsion/push/utils/PushUtils;->h(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_4

    .line 146
    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_4
    :try_start_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 151
    .line 152
    const-string v3, "h:mm a"

    .line 153
    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-direct {p0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 159
    .line 160
    .line 161
    new-instance v3, Ljava/util/Date;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    const-string v3, " \u00b7 "

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catch_1
    move-exception p0

    .line 180
    sget-object v3, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 181
    .line 182
    invoke-virtual {v3, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :goto_3
    sget p0, Lcom/transsion/push/R$id;->tpush_smallTitleTv:I

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p3, p0, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    if-eqz p2, :cond_5

    .line 195
    .line 196
    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    if-eqz p0, :cond_5

    .line 203
    .line 204
    invoke-static {}, Lcom/transsion/push/utils/j;->f()Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_5

    .line 209
    .line 210
    sget p0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    .line 211
    .line 212
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    check-cast p2, Landroid/graphics/Bitmap;

    .line 219
    .line 220
    invoke-virtual {p3, p0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 221
    .line 222
    .line 223
    sget p0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    .line 224
    .line 225
    invoke-virtual {p3, p0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_5
    sget p0, Lcom/transsion/push/R$id;->tpush_largeIconImg:I

    .line 230
    .line 231
    invoke-virtual {p3, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 232
    .line 233
    .line 234
    :goto_4
    sget p0, Lcom/transsion/push/R$id;->tpush_titleTv:I

    .line 235
    .line 236
    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p3, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    sget p0, Lcom/transsion/push/R$id;->tpush_descriptionTv:I

    .line 242
    .line 243
    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p3, p0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-nez p0, :cond_6

    .line 255
    .line 256
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 257
    .line 258
    iget-object p1, p1, Lcom/transsion/push/bean/PushMessage;->notiBtn:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {p3, p0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 264
    .line 265
    invoke-virtual {p3, p0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_6
    sget p0, Lcom/transsion/push/R$id;->tpush_actionBtn:I

    .line 270
    .line 271
    invoke-virtual {p3, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    .line 273
    .line 274
    :goto_5
    return-object p3
.end method

.method public static f()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const/16 v2, 0x1f

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :catch_0
    :cond_0
    return v0
.end method

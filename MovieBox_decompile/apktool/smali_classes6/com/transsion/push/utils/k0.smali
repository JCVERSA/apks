.class public Lcom/transsion/push/utils/k0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/transsion/push/bean/PushMessage;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 5
    .line 6
    iget v1, p0, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/transsion/push/utils/j;->d(II)Lcom/transsion/push/bean/PushNotification;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    .line 13
    .line 14
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/push/bean/PushNotification;->getChannelId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_2
    iput-object v1, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/pushui/activity/TransparentActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "message"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p1, "extra_noti_click"

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/high16 v1, 0x4000000

    .line 39
    .line 40
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static c()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getTestEnv()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "https://test-api.twibida.com/tcm/v2/instance/"

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getDebug()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "https://devtest-api.twibida.com/tcm/v2/instance/"

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    :try_start_0
    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "gslb domain is"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 64
    .line 65
    const-string v1, "gslb domain is empty"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    const-string v0, ""

    .line 71
    .line 72
    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static f([Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public static g(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    .locals 12

    .line 1
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 14
    .line 15
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 16
    .line 17
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    const/4 v7, 0x2

    .line 21
    move-object v8, p0

    .line 22
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {v0}, Lcom/transsion/push/utils/NotificationAssistUtils;->isOpenNotification(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    const-string v1, "notification"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/app/NotificationManager;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 45
    .line 46
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 47
    .line 48
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    move v6, v9

    .line 52
    move-object v8, p0

    .line 53
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/transsion/push/utils/k0;->a(Lcom/transsion/push/bean/PushMessage;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p0}, Lcom/transsion/push/utils/s;->e(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Landroid/app/Notification$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 71
    .line 72
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 73
    .line 74
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v7, 0x4

    .line 77
    move v6, v9

    .line 78
    move-object v8, p0

    .line 79
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    invoke-static {v0, p0, p1, v2}, Lcom/transsion/push/utils/k0;->j(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 94
    .line 95
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 96
    .line 97
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 98
    .line 99
    const/4 v7, 0x5

    .line 100
    move v6, v9

    .line 101
    move-object v8, p0

    .line 102
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    const-string v3, "twibida"

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_4
    iget-object v3, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    .line 121
    .line 122
    :goto_1
    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    const-string v4, "cloud messaging"

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    .line 134
    .line 135
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    const/16 v6, 0x1a

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    if-lt v5, v6, :cond_9

    .line 141
    .line 142
    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    const-string v8, "1"

    .line 149
    .line 150
    const/4 v10, 0x1

    .line 151
    if-nez v6, :cond_6

    .line 152
    .line 153
    :try_start_2
    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_6

    .line 160
    .line 161
    const-string v3, "headup"

    .line 162
    .line 163
    const-string v4, "head up messaging"

    .line 164
    .line 165
    sget-object v6, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 166
    .line 167
    const-string v11, "float notice"

    .line 168
    .line 169
    invoke-virtual {v6, v11}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    move v6, v10

    .line 173
    goto :goto_3

    .line 174
    :cond_6
    move v6, v7

    .line 175
    :goto_3
    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    .line 176
    .line 177
    .line 178
    if-eqz v6, :cond_7

    .line 179
    .line 180
    const/4 v11, 0x4

    .line 181
    goto :goto_4

    .line 182
    :cond_7
    const/4 v11, 0x3

    .line 183
    :goto_4
    invoke-static {v3, v4, v11}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-eqz v6, :cond_8

    .line 188
    .line 189
    invoke-static {v3, v10}, Lcom/transsion/push/utils/w;->a(Landroid/app/NotificationChannel;Z)V

    .line 190
    .line 191
    .line 192
    invoke-static {v3, v10}, Lcom/transsion/push/utils/a0;->a(Landroid/app/NotificationChannel;I)V

    .line 193
    .line 194
    .line 195
    const/16 v4, 0x24

    .line 196
    .line 197
    if-lt v5, v4, :cond_8

    .line 198
    .line 199
    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_8

    .line 206
    .line 207
    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->floatNotice:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_8

    .line 214
    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v5, "float_"

    .line 221
    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-wide v5, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 226
    .line 227
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 235
    .line 236
    .line 237
    :cond_8
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 238
    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v5, "message.channelId"

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->channelId:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->channelName:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v2, v4}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v1, v3}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 267
    .line 268
    .line 269
    :cond_9
    invoke-static {p0, v1}, Lcom/transsion/push/service/PushServiceHelper;->c(Lcom/transsion/push/bean/PushMessage;Landroid/app/NotificationManager;)V

    .line 270
    .line 271
    .line 272
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 273
    .line 274
    long-to-int v2, v2

    .line 275
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 283
    .line 284
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 285
    .line 286
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 287
    .line 288
    if-eqz v9, :cond_a

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_a
    const/4 v0, 0x6

    .line 292
    move v7, v0

    .line 293
    :goto_5
    move v6, v9

    .line 294
    move-object v8, p0

    .line 295
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-eqz v0, :cond_b

    .line 307
    .line 308
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 317
    .line 318
    iget-object v3, p0, Lcom/transsion/push/bean/PushMessage;->notiOpenContent:Ljava/lang/String;

    .line 319
    .line 320
    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/push/TPushListener;->onNotificationShow(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :goto_6
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 325
    .line 326
    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 334
    .line 335
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 336
    .line 337
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 338
    .line 339
    const/4 v7, 0x7

    .line 340
    move v6, v9

    .line 341
    move-object v8, p0

    .line 342
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZILcom/transsion/push/bean/PushMessage;)V

    .line 343
    .line 344
    .line 345
    :cond_b
    :goto_7
    return-void
.end method

.method public static h(Lcom/transsion/push/bean/PushRequest$ReportContentData;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static i(Landroid/app/Notification$Builder;Lcom/transsion/push/bean/PushMessage;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->iconColor:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Lcom/transsion/push/bean/PushMessage;->iconColor:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v0, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 24
    .line 25
    iget p1, p1, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/transsion/push/utils/j;->d(II)Lcom/transsion/push/bean/PushNotification;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/push/bean/PushNotification;->getIconColor()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/transsion/push/bean/PushNotification;->getIconColor()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    :catch_1
    :cond_1
    return-void
.end method

.method public static j(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iget v1, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 9
    .line 10
    iget v2, p1, Lcom/transsion/push/bean/PushMessage;->layoutStyleId:I

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/transsion/push/utils/j;->d(II)Lcom/transsion/push/bean/PushNotification;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget-object v2, p1, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/graphics/Bitmap;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsion/push/bean/PushNotification;->getSmallIcon()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-lez v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/transsion/push/bean/PushNotification;->getSmallIcon()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget v1, Lcom/transsion/push/R$drawable;->tpush_notify_icon:I

    .line 59
    .line 60
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 61
    .line 62
    .line 63
    :goto_0
    if-eqz p2, :cond_3

    .line 64
    .line 65
    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/graphics/Bitmap;

    .line 80
    .line 81
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-static {p3, p1}, Lcom/transsion/push/utils/k0;->i(Landroid/app/Notification$Builder;Lcom/transsion/push/bean/PushMessage;)V

    .line 89
    .line 90
    .line 91
    iget v1, p1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    if-ne v1, v2, :cond_6

    .line 95
    .line 96
    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 105
    .line 106
    .line 107
    iget p0, p1, Lcom/transsion/push/bean/PushMessage;->notiExType:I

    .line 108
    .line 109
    const/4 v1, 0x2

    .line 110
    if-ne p0, v1, :cond_4

    .line 111
    .line 112
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    .line 113
    .line 114
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object p2, p1, Lcom/transsion/push/bean/PushMessage;->notiTxtEx:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/4 v1, 0x3

    .line 128
    if-ne p0, v1, :cond_5

    .line 129
    .line 130
    if-eqz p2, :cond_5

    .line 131
    .line 132
    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    if-eqz p0, :cond_5

    .line 139
    .line 140
    iget-object p0, p1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Landroid/graphics/Bitmap;

    .line 147
    .line 148
    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 149
    .line 150
    .line 151
    new-instance p0, Landroid/app/Notification$BigPictureStyle;

    .line 152
    .line 153
    invoke-direct {p0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v1, p1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    check-cast p2, Landroid/graphics/Bitmap;

    .line 163
    .line 164
    invoke-virtual {p0, p2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    :cond_5
    :goto_1
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {p0, p1}, Lcom/transsion/push/utils/k0;->b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;)Landroid/app/PendingIntent;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :cond_6
    const/4 v0, 0x0

    .line 192
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/push/utils/j;->e(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    if-nez v1, :cond_7

    .line 197
    .line 198
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :cond_7
    iget-object v2, p1, Lcom/transsion/push/bean/PushMessage;->notiTitle:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 206
    .line 207
    .line 208
    iget-object v2, p1, Lcom/transsion/push/bean/PushMessage;->notiDes:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 211
    .line 212
    .line 213
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 214
    .line 215
    const/16 v3, 0x18

    .line 216
    .line 217
    if-lt v2, v3, :cond_8

    .line 218
    .line 219
    invoke-static {p3, v1}, Lcom/transsion/push/utils/i0;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_8
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 224
    .line 225
    .line 226
    :goto_2
    const/16 v1, 0x1f

    .line 227
    .line 228
    if-lt v2, v1, :cond_9

    .line 229
    .line 230
    invoke-static {}, Lcom/transsion/push/utils/h0;->a()Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 235
    .line 236
    .line 237
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/push/utils/j;->b(Landroid/content/Context;Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;Z)Landroid/widget/RemoteViews;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {p3, p0}, Lcom/transsion/push/utils/j0;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 242
    .line 243
    .line 244
    :cond_9
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    return-object p0

    .line 249
    :cond_a
    :goto_3
    return-object v0
.end method

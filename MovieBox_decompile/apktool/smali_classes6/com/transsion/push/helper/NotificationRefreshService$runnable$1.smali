.class public final Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/helper/NotificationRefreshService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/push/helper/NotificationRefreshService$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/helper/NotificationRefreshService;


# direct methods
.method constructor <init>(Lcom/transsion/push/helper/NotificationRefreshService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;->this$0:Lcom/transsion/push/helper/NotificationRefreshService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Ljava/lang/ref/SoftReference;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;->run$lambda$0(Ljava/lang/ref/SoftReference;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final run$lambda$0(Ljava/lang/ref/SoftReference;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;->this$0:Lcom/transsion/push/helper/NotificationRefreshService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/push/helper/NotificationRefreshService;->c(Lcom/transsion/push/helper/NotificationRefreshService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/transsion/push/helper/c;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/transsion/push/helper/c;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;->this$0:Lcom/transsion/push/helper/NotificationRefreshService;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/transsion/push/helper/NotificationRefreshService;->b(Lcom/transsion/push/helper/NotificationRefreshService;)Landroid/app/NotificationManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    move-object v1, v0

    .line 34
    :goto_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    array-length v3, v1

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v3, v0

    .line 45
    :goto_1
    iget-object v4, p0, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;->this$0:Lcom/transsion/push/helper/NotificationRefreshService;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/transsion/push/helper/NotificationRefreshService;->c(Lcom/transsion/push/helper/NotificationRefreshService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "onRepeat, currentNotifications: "

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, " msgList: "

    .line 69
    .line 70
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const/4 v6, 0x4

    .line 81
    const/4 v7, 0x0

    .line 82
    const-string v3, "NoticeRefreshHelper"

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    array-length v3, v1

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    move v3, v2

    .line 94
    :goto_2
    if-ge v2, v3, :cond_a

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    aget-object v4, v1, v2

    .line 99
    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    move-object v4, v0

    .line 112
    :goto_3
    iget-object v5, p0, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;->this$0:Lcom/transsion/push/helper/NotificationRefreshService;

    .line 113
    .line 114
    invoke-static {v5}, Lcom/transsion/push/helper/NotificationRefreshService;->c(Lcom/transsion/push/helper/NotificationRefreshService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const-string v6, "iterator(...)"

    .line 123
    .line 124
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object v6, v0

    .line 128
    :cond_4
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    const/4 v8, 0x1

    .line 133
    if-eqz v7, :cond_8

    .line 134
    .line 135
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    check-cast v7, Ljava/lang/ref/SoftReference;

    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 146
    .line 147
    if-eqz v7, :cond_6

    .line 148
    .line 149
    sget-object v9, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 150
    .line 151
    invoke-virtual {v7}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v9, v10}, Lcom/transsion/push/helper/NotificationShowHelper;->l(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-nez v4, :cond_5

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-ne v9, v10, :cond_6

    .line 167
    .line 168
    invoke-virtual {v7, v8}, Lcom/transsion/baselib/db/notification/MsgBean;->setRefresh(Z)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    if-eqz v9, :cond_6

    .line 176
    .line 177
    sget-object v10, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 178
    .line 179
    invoke-virtual {v10, v9, v7}, Lcom/transsion/push/helper/e;->j(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_5
    if-eqz v7, :cond_4

    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent()Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    if-ne v9, v8, :cond_4

    .line 189
    .line 190
    sget-object v8, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 191
    .line 192
    invoke-virtual {v8}, Lcom/transsion/push/helper/NotificationShowHelper;->o()I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-nez v4, :cond_7

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-ne v8, v9, :cond_4

    .line 204
    .line 205
    move-object v6, v7

    .line 206
    goto :goto_4

    .line 207
    :cond_8
    if-eqz v6, :cond_9

    .line 208
    .line 209
    invoke-virtual {v6, v8}, Lcom/transsion/baselib/db/notification/MsgBean;->setRefresh(Z)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    if-eqz v4, :cond_9

    .line 217
    .line 218
    sget-object v5, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 219
    .line 220
    invoke-virtual {v5, v4, v6}, Lcom/transsion/push/helper/e;->j(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_a
    iget-object v0, p0, Lcom/transsion/push/helper/NotificationRefreshService$runnable$1;->this$0:Lcom/transsion/push/helper/NotificationRefreshService;

    .line 228
    .line 229
    invoke-static {v0}, Lcom/transsion/push/helper/NotificationRefreshService;->a(Lcom/transsion/push/helper/NotificationRefreshService;)Landroid/os/Handler;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-eqz v0, :cond_b

    .line 234
    .line 235
    const-wide/16 v1, 0x7530

    .line 236
    .line 237
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    .line 239
    .line 240
    :cond_b
    return-void
.end method

.class public final Lcom/transsion/push/service/PushServiceHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/service/PushServiceHelper;->a:Ljava/lang/Object;

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

.method static synthetic a(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/service/PushServiceHelper;->k(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/app/NotificationManager;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, p1, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    const-string v6, "extra_from_tpush_noti"

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-object v0
.end method

.method public static c(Lcom/transsion/push/bean/PushMessage;Landroid/app/NotificationManager;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->groupMaxCount:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move v1, v0

    .line 15
    :goto_0
    if-lez v1, :cond_2

    .line 16
    .line 17
    iget-object p0, p0, Lcom/transsion/push/bean/PushMessage;->groupId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/transsion/push/service/PushServiceHelper;->b(Ljava/lang/String;Landroid/app/NotificationManager;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ge v2, v1, :cond_1

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v2, v1

    .line 37
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->l(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    if-gt v0, v2, :cond_2

    .line 41
    .line 42
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    sub-int/2addr v1, v0

    .line 49
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_1
    move-exception v1

    .line 64
    sget-object v3, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v5, "handle max limit message fail, e:"

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v3, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_3
    return-void
.end method

.method public static d()Z
    .locals 3

    .line 1
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "auto_time"

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    move v1, v2

    .line 27
    :cond_1
    return v1
.end method

.method private static e()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->isReported()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->syncActive()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 20
    .line 21
    const-string v1, " active reporting"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "handle sync active exception,e:"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "service_type"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "PushJobIntentService ---> onHandleWork, type:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const/4 v1, -0x1

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sparse-switch v2, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :sswitch_0
    const-string v2, "message"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, 0x4

    .line 54
    goto :goto_0

    .line 55
    :sswitch_1
    const-string v2, "force_update"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v1, 0x3

    .line 65
    goto :goto_0

    .line 66
    :sswitch_2
    const-string v2, "token"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v1, 0x2

    .line 76
    goto :goto_0

    .line 77
    :sswitch_3
    const-string v2, "init"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 v1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :sswitch_4
    const-string v2, "sync_config"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    const/4 v1, 0x0

    .line 98
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 102
    .line 103
    const-string v0, "service type error"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_0
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->i(Landroid/content/Intent;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_1
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->e()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_2
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->j(Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_3
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->h(Landroid/content/Intent;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    :pswitch_4
    return-void

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x7461ae9a -> :sswitch_4
        0x316510 -> :sswitch_3
        0x696b9f9 -> :sswitch_2
        0x2a639c9d -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackActiveSyncProcess()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 9
    .line 10
    const-string v1, "onHandleSyncActive"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->p()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 22
    .line 23
    const-string v1, "onHandleSyncActive force update"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->e()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->r()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 39
    .line 40
    const-string v1, "tpms sync"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/transsion/push/utils/d0;->b(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/transsion/push/utils/d0;->c(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    const-wide/32 v3, 0x5265c00

    .line 71
    .line 72
    .line 73
    add-long/2addr v1, v3

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->saveTpmsReportTime(J)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->q()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/transsion/push/utils/d0;->b(Landroid/content/Context;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/transsion/push/config/PushRepository;->syncActive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :goto_1
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v3, "handle sync active exception,e:"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_2
    return-void
.end method

.method private static h(Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->g()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static i(Landroid/content/Intent;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    const-string v1, "onHandleTargetMessage--->"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v2, "intent_null"

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 22
    .line 23
    const-string v0, "onHandleTargetMessage---> intent is null"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/transsion/push/utils/PushUtils;->i(Landroid/content/Intent;)Lcom/transsion/push/bean/PushMessage;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v2, "msg_null"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 45
    .line 46
    const-string v0, "onHandleTargetMessage---> message is null"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/transsion/push/utils/g0;->h()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 63
    .line 64
    const-string p0, "self_destroy"

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 70
    .line 71
    const-string v0, "push self-destroying"

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const/4 v0, 0x1

    .line 78
    invoke-static {p0, v0}, Lcom/transsion/push/utils/PushUtils;->a(Lcom/transsion/push/bean/PushMessage;I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 89
    .line 90
    const-string p0, "check_fail"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 96
    .line 97
    const-string v0, "onHandleTargetMessage---> checkMessage return "

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    invoke-static {p0}, Lcom/transsion/push/utils/PushUtils;->u(Lcom/transsion/push/bean/PushMessage;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 114
    .line 115
    const-string v3, "msg_retreat"

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "onHandleTargetMessage---> retraceMessage return, retrace msgId:"

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->retraceMsgId:J

    .line 133
    .line 134
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    invoke-static {p0}, Lcom/transsion/push/utils/PushUtils;->z(Lcom/transsion/push/bean/PushMessage;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 153
    .line 154
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 155
    .line 156
    iget-object v5, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->rpkg:Ljava/lang/String;

    .line 159
    .line 160
    const-string v7, "success"

    .line 161
    .line 162
    move-object v8, p0

    .line 163
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackTarget(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/PushMessage;)V

    .line 164
    .line 165
    .line 166
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 167
    .line 168
    invoke-static {v1, v2}, Lcom/transsion/push/utils/PushUtils;->y(J)V

    .line 169
    .line 170
    .line 171
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v3, "onHandleTargetMessage---> type:"

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v3, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget v1, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 196
    .line 197
    if-eq v1, v0, :cond_6

    .line 198
    .line 199
    const/4 v0, 0x2

    .line 200
    if-eq v1, v0, :cond_5

    .line 201
    .line 202
    const/4 v0, 0x5

    .line 203
    if-eq v1, v0, :cond_6

    .line 204
    .line 205
    const/4 v0, 0x6

    .line 206
    if-eq v1, v0, :cond_6

    .line 207
    .line 208
    const/4 p0, 0x7

    .line 209
    if-eq v1, p0, :cond_c

    .line 210
    .line 211
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 212
    .line 213
    const-string v0, "Display message, message type is not supported"

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_5
    invoke-static {p0}, Lcom/transsion/push/service/PushServiceHelper;->m(Lcom/transsion/push/bean/PushMessage;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_6
    iget v0, p0, Lcom/transsion/push/bean/PushMessage;->sdkShow:I

    .line 226
    .line 227
    if-nez v0, :cond_8

    .line 228
    .line 229
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 230
    .line 231
    const-string v1, "sdkShow no show"

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_7

    .line 245
    .line 246
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 255
    .line 256
    iget v3, p0, Lcom/transsion/push/bean/PushMessage;->priority:I

    .line 257
    .line 258
    invoke-interface {v0, v1, v2, p0, v3}, Lcom/transsion/push/TPushListener;->onPushReceive(JLcom/transsion/push/bean/PushMessage;I)V

    .line 259
    .line 260
    .line 261
    :cond_7
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 266
    .line 267
    const-string p0, "sdk_show_fail"

    .line 268
    .line 269
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 274
    .line 275
    .line 276
    move-result-wide v0

    .line 277
    :try_start_0
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 278
    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v4, "message ignoreExpire? "

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget v4, p0, Lcom/transsion/push/bean/PushMessage;->ignoreExpire:I

    .line 290
    .line 291
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 302
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    const-string v4, "isTimeAutomatic: "

    .line 309
    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->d()Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 328
    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v4, "message schedule time: "

    .line 335
    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getTimeStamp()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 354
    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v4, "message delay: "

    .line 361
    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getTimeStamp()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v4

    .line 373
    sub-long v4, v0, v4

    .line 374
    .line 375
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 386
    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v4, "message ttl: "

    .line 393
    .line 394
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getMsgTtl()I

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    int-to-long v4, v4

    .line 402
    const-wide/16 v6, 0x3e8

    .line 403
    .line 404
    mul-long/2addr v4, v6

    .line 405
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    iget v2, p0, Lcom/transsion/push/bean/PushMessage;->ignoreExpire:I

    .line 416
    .line 417
    if-nez v2, :cond_9

    .line 418
    .line 419
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 420
    .line 421
    const-string v3, "message expiration check"

    .line 422
    .line 423
    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->d()Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eqz v2, :cond_9

    .line 431
    .line 432
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getTimeStamp()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 437
    .line 438
    .line 439
    move-result-wide v2

    .line 440
    sub-long/2addr v0, v2

    .line 441
    invoke-virtual {p0}, Lcom/transsion/push/bean/PushMessage;->getMsgTtl()I

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    int-to-long v2, v2

    .line 446
    mul-long/2addr v2, v6

    .line 447
    cmp-long v0, v0, v2

    .line 448
    .line 449
    if-lez v0, :cond_9

    .line 450
    .line 451
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 452
    .line 453
    const-string v1, "message expired, no show"

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    iget-wide v3, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 463
    .line 464
    iget v5, p0, Lcom/transsion/push/bean/PushMessage;->type:I

    .line 465
    .line 466
    iget-object v6, p0, Lcom/transsion/push/bean/PushMessage;->timeStamp:Ljava/lang/String;

    .line 467
    .line 468
    const/4 v7, 0x1

    .line 469
    const/16 v8, 0x3e7

    .line 470
    .line 471
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/push/tracker/Tracker;->trackShow(JILjava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :catch_0
    :cond_9
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getNotificationSwitch()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-nez v0, :cond_a

    .line 484
    .line 485
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    iget-wide v1, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 490
    .line 491
    const-string p0, "noti_off"

    .line 492
    .line 493
    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/push/tracker/Tracker;->trackHandleMsgErrorInfoeye(JLjava/lang/String;)V

    .line 494
    .line 495
    .line 496
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 497
    .line 498
    const-string v0, "notification switch is off, do not show noti"

    .line 499
    .line 500
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    :cond_a
    invoke-static {p0}, Lcom/transsion/push/utils/BitmapDownloadUtils;->a(Lcom/transsion/push/bean/PushMessage;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-eqz v0, :cond_b

    .line 509
    .line 510
    new-instance v0, Lcom/transsion/push/service/PushServiceHelper$a;

    .line 511
    .line 512
    invoke-direct {v0}, Lcom/transsion/push/service/PushServiceHelper$a;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-static {p0, v0}, Lcom/transsion/push/utils/BitmapDownloadUtils;->b(Lcom/transsion/push/bean/PushMessage;Lcom/transsion/push/utils/BitmapDownloadUtils$a;)V

    .line 516
    .line 517
    .line 518
    goto :goto_0

    .line 519
    :cond_b
    const/4 v0, 0x0

    .line 520
    invoke-static {p0, v0}, Lcom/transsion/push/service/PushServiceHelper;->k(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V

    .line 521
    .line 522
    .line 523
    :cond_c
    :goto_0
    return-void
.end method

.method private static j(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "start"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/transsion/push/tracker/Tracker;->trackTokenUpdateProcess(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "TOKEN"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 26
    .line 27
    const-string v0, "Initialize token to empty"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    sget-object v0, Lcom/transsion/push/service/PushServiceHelper;->a:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "Initialize push_token\uff0c packageName:"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/transsion/push/utils/k;->f()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", token\uff1a"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "push_token"

    .line 73
    .line 74
    const-string v3, ""

    .line 75
    .line 76
    invoke-virtual {v1, v2, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "push_client_id"

    .line 93
    .line 94
    const-string v3, ""

    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/CharSequence;

    .line 101
    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string v1, "same"

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Lcom/transsion/push/tracker/Tracker;->trackTokenUpdateProcess(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 118
    .line 119
    const-string v1, "token does not need to report without modification"

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->w()V

    .line 125
    .line 126
    .line 127
    const-string p0, "sp_push"

    .line 128
    .line 129
    invoke-static {p0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string v1, "update_token_time"

    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v2, "update"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/transsion/push/tracker/Tracker;->trackTokenUpdateProcess(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 156
    .line 157
    const-string v2, "token updated, do network request"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    .line 162
    :try_start_2
    const-string v1, "sp_push"

    .line 163
    .line 164
    invoke-static {v1}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v2, "update_token_time"

    .line 169
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .line 176
    .line 177
    :catch_0
    :try_start_3
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1, p0}, Lcom/transsion/push/config/PushRepository;->updateNewToken(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/transsion/push/service/PushServiceHelper;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .line 186
    .line 187
    :try_start_4
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {p0}, Lcom/transsion/push/utils/d0;->b(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    .line 193
    .line 194
    :catch_1
    :try_start_5
    monitor-exit v0

    .line 195
    return-void

    .line 196
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    throw p0

    .line 198
    :catch_2
    return-void
.end method

.method private static k(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "display messages\uff0cmessage\uff1a"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/transsion/push/utils/k0;->g(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "Notification show exception:"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method private static l(Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/service/PushServiceHelper$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/service/PushServiceHelper$2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static declared-synchronized m(Lcom/transsion/push/bean/PushMessage;)V
    .locals 5

    .line 1
    const-class v0, Lcom/transsion/push/service/PushServiceHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/transsion/core/utils/a;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_3

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/transsion/push/bean/PushMessage;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Lcom/transsion/core/utils/a;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/transsion/push/PushManager;->getPushListener()Lcom/transsion/push/TPushListener;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-wide v2, p0, Lcom/transsion/push/bean/PushMessage;->messageId:J

    .line 56
    .line 57
    iget-object v4, p0, Lcom/transsion/push/bean/PushMessage;->transData:Ljava/lang/String;

    .line 58
    .line 59
    iget p0, p0, Lcom/transsion/push/bean/PushMessage;->priority:I

    .line 60
    .line 61
    invoke-interface {v1, v2, v3, v4, p0}, Lcom/transsion/push/TPushListener;->onMessageReceive(JLjava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string p0, "PUSH_"

    .line 66
    .line 67
    const-string v1, "tpush listener is not registered"

    .line 68
    .line 69
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :goto_1
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_2
    :try_start_2
    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "transmitMessage---> e:"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    throw p0
.end method

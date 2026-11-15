.class public final Lcom/transsion/push/notification/ToolbarNotificationUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/notification/ToolbarNotificationUtils$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

.field private static final b:I

.field private static final c:Ljava/util/Map;

.field private static final d:Landroid/app/NotificationManager;

.field private static e:Lcom/transsion/push/bean/ToolbarNoticeConfig;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 7
    .line 8
    const v0, 0x2f1bb01e

    .line 9
    .line 10
    .line 11
    sput v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->b:I

    .line 12
    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->c:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "notification"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v0, Landroid/app/NotificationManager;

    .line 36
    .line 37
    sput-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->d:Landroid/app/NotificationManager;

    .line 38
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v2, 0x1a

    .line 42
    .line 43
    if-lt v1, v2, :cond_0

    .line 44
    .line 45
    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget v2, Lcom/transsion/lib/push/R$string;->tool_notice_name:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x2

    .line 59
    const-string v3, "mbx_tool_notice"

    .line 60
    .line 61
    invoke-static {v3, v1, v2}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 66
    .line 67
    .line 68
    :cond_0
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

.method private final A()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 7
    .line 8
    const-string v2, "toolbar_notice"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final B(Landroid/widget/RemoteViews;Lkotlin/Pair;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/push/bean/ToolbarNoticeItem;->isDefault()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v2, "ToolbarNo"

    .line 18
    .line 19
    const-string v3, "setButtonText \u9ed8\u8ba4\u672c\u5730\u6587\u6848"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget p2, Lcom/transsion/lib/push/R$id;->notice_tv_left:I

    .line 26
    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Lcom/transsion/lib/push/R$string;->tool_notice_top_10:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    sget p2, Lcom/transsion/lib/push/R$id;->notice_tv_right:I

    .line 41
    .line 42
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget v1, Lcom/transsion/lib/push/R$string;->tool_notice_search:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 57
    .line 58
    const/4 v5, 0x4

    .line 59
    const/4 v6, 0x0

    .line 60
    const-string v2, "ToolbarNo"

    .line 61
    .line 62
    const-string v3, "setButtonText \u914d\u7f6e\u6587\u6848"

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/push/bean/ToolbarNoticeItem;->getText()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    sget v1, Lcom/transsion/lib/push/R$id;->notice_tv_left:I

    .line 81
    .line 82
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/transsion/push/bean/ToolbarNoticeItem;->getText()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p2, :cond_2

    .line 96
    .line 97
    sget v0, Lcom/transsion/lib/push/R$id;->notice_tv_right:I

    .line 98
    .line 99
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    return-void
.end method

.method private final C(Landroid/widget/RemoteViews;Lkotlin/Pair;)V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/lib/push/R$id;->notice_ll_left:I

    .line 2
    .line 3
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/push/bean/ToolbarNoticeItem;->getDeeplink()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/transsion/push/notification/NoticeIntentType;->TOP_10:Lcom/transsion/push/notification/NoticeIntentType;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->k(Lcom/transsion/push/notification/NoticeIntentType;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    const-string v2, "left"

    .line 22
    .line 23
    invoke-direct {p0, v1, v2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 28
    .line 29
    .line 30
    sget v0, Lcom/transsion/lib/push/R$id;->notice_ll_right:I

    .line 31
    .line 32
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/transsion/push/bean/ToolbarNoticeItem;->getDeeplink()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    sget-object p2, Lcom/transsion/push/notification/NoticeIntentType;->SEARCH:Lcom/transsion/push/notification/NoticeIntentType;

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->k(Lcom/transsion/push/notification/NoticeIntentType;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_1
    const-string v1, "right"

    .line 51
    .line 52
    invoke-direct {p0, p2, v1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 57
    .line 58
    .line 59
    sget p2, Lcom/transsion/lib/push/R$id;->notice_v_setting:I

    .line 60
    .line 61
    sget-object v0, Lcom/transsion/push/notification/NoticeIntentType;->SETTING:Lcom/transsion/push/notification/NoticeIntentType;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->k(Lcom/transsion/push/notification/NoticeIntentType;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "setting"

    .line 68
    .line 69
    invoke-direct {p0, v0, v1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private final D(Landroid/widget/RemoteViews;Lkotlin/Pair;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v1, "ToolbarNo"

    .line 8
    .line 9
    const-string v2, "setIconCover \u914d\u7f6e\u56fe"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget v1, Lcom/transsion/lib/push/R$id;->notice_iv_left:I

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    sget v0, Lcom/transsion/lib/push/R$id;->notice_iv_right:I

    .line 37
    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    const/4 v6, 0x0

    .line 46
    const-string v2, "ToolbarNo"

    .line 47
    .line 48
    const-string v3, "setIconCover \u9ed8\u8ba4\u672c\u5730\u56fe"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget p2, Lcom/transsion/lib/push/R$id;->notice_iv_left:I

    .line 55
    .line 56
    sget v0, Lcom/transsion/lib/push/R$mipmap;->ic_notification_top_10:I

    .line 57
    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    .line 60
    .line 61
    sget p2, Lcom/transsion/lib/push/R$id;->notice_iv_right:I

    .line 62
    .line 63
    sget v0, Lcom/transsion/lib/push/R$mipmap;->ic_notification_search:I

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method private final E()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->o()Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->r()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v3, "ToolbarNo"

    .line 16
    .line 17
    const-string v4, "showNotice, \u672c\u5730\u9ed8\u8ba4\u6570\u636e"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 24
    .line 25
    sget-object v1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->d:Landroid/app/NotificationManager;

    .line 26
    .line 27
    sget v2, Lcom/transsion/push/notification/ToolbarNotificationUtils;->b:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, v0, v3}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->q(Lkotlin/Pair;Lkotlin/Pair;)Landroidx/core/app/NotificationCompat$m;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->A()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 62
    .line 63
    const/4 v5, 0x4

    .line 64
    const/4 v6, 0x0

    .line 65
    const-string v2, "ToolbarNo"

    .line 66
    .line 67
    const-string v3, "showNotice, \u914d\u7f6e\u6570\u636e\uff0c\u52a0\u8f7d\u56fe\u7247"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/transsion/push/notification/l;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcom/transsion/push/notification/l;-><init>(Lkotlin/Pair;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v0, v1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->u(Lkotlin/Pair;Lkotlin/jvm/functions/Function2;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void
.end method

.method private static final F(Lkotlin/Pair;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    move v1, v2

    .line 13
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "showNotice, \u52a0\u8f7d\u56fe\u7247\u6210\u529f\uff0c "

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ",  "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v4, 0x4

    .line 39
    const/4 v5, 0x0

    .line 40
    const-string v1, "ToolbarNo"

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 47
    .line 48
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 49
    .line 50
    sget-object v1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->d:Landroid/app/NotificationManager;

    .line 51
    .line 52
    sget v2, Lcom/transsion/push/notification/ToolbarNotificationUtils;->b:I

    .line 53
    .line 54
    new-instance v3, Lkotlin/Pair;

    .line 55
    .line 56
    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, v3}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->q(Lkotlin/Pair;Lkotlin/Pair;)Landroidx/core/app/NotificationCompat$m;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 78
    .line 79
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :goto_1
    sget-object p0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->A()V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p0
.end method

.method public static synthetic a(Lkotlin/Pair;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->F(Lkotlin/Pair;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->x(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/push/notification/ToolbarNotificationUtils;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->s(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/push/notification/ToolbarNotificationUtils;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->t(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/push/notification/ToolbarNotificationUtils;Lcom/transsion/push/bean/ToolbarNoticeConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->w(Lcom/transsion/push/bean/ToolbarNoticeConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/push/bean/ToolbarNoticeConfig;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->e:Lcom/transsion/push/bean/ToolbarNoticeConfig;

    .line 2
    .line 3
    return-void
.end method

.method private final h(Landroid/widget/RemoteViews;Z)V
    .locals 3

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
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget v1, Lcom/tn/lib/widget/R$color;->gray_light_70:I

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget v1, Lcom/transsion/lib/push/R$id;->notice_tv_left:I

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/transsion/lib/push/R$id;->notice_tv_right:I

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    sget p2, Lcom/transsion/lib/push/R$drawable;->shape_toolbar_btn_bg_dark:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget p2, Lcom/transsion/lib/push/R$drawable;->shape_toolbar_btn_bg_light:I

    .line 36
    .line 37
    :goto_1
    sget v1, Lcom/transsion/lib/push/R$id;->notice_ll_left:I

    .line 38
    .line 39
    const-string v2, "setBackgroundResource"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sget v1, Lcom/transsion/lib/push/R$id;->notice_ll_right:I

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sget p2, Lcom/transsion/lib/push/R$id;->notice_iv_left:I

    .line 50
    .line 51
    const-string v1, "setColorFilter"

    .line 52
    .line 53
    invoke-virtual {p1, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    sget p2, Lcom/transsion/lib/push/R$id;->notice_iv_right:I

    .line 57
    .line 58
    invoke-virtual {p1, p2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final j(JI)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0xb

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 16
    .line 17
    .line 18
    const/16 p1, 0xc

    .line 19
    .line 20
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0xd

    .line 24
    .line 25
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 26
    .line 27
    .line 28
    const/16 p1, 0xe

    .line 29
    .line 30
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    invoke-virtual {v2, p1, p3}, Ljava/util/Calendar;->add(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 42
    .line 43
    new-instance p3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "isNeedShowNotice, currentTimeMillis:"

    .line 49
    .line 50
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, ", daysAgo:"

    .line 57
    .line 58
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const-string v4, "ToolbarNo"

    .line 69
    .line 70
    const/4 v5, 0x1

    .line 71
    invoke-virtual {p1, v4, p3, v5}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    cmp-long p1, v0, v2

    .line 75
    .line 76
    if-lez p1, :cond_0

    .line 77
    .line 78
    move p2, v5

    .line 79
    :cond_0
    return p2
.end method

.method private final l()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x4000000

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v0, 0x8000000

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method private final m(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v2, Lto/a;

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lto/a;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "getApp(...)"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Lto/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    sget v2, Lcom/transsion/push/notification/ToolbarNotificationUtils;->b:I

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "extra_notification_id"

    .line 36
    .line 37
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string v3, "extra_source"

    .line 41
    .line 42
    const-string v4, "push"

    .line 43
    .line 44
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    sget-object v3, Lcom/transsion/push/bean/MsgType;->TOP10_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "MESSAGE_TYPE"

    .line 54
    .line 55
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v3, "extra_message_id"

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    const-string v2, "extra_toolbar_notice_name"

    .line 68
    .line 69
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    const/high16 p2, 0x24000000

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 p2, 0x18

    .line 87
    .line 88
    if-lt p1, p2, :cond_1

    .line 89
    .line 90
    const/high16 p1, 0x10000000

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const/4 v1, 0x0

    .line 97
    :cond_1
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->l()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-static {p1, v0, v1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "getActivity(...)"

    .line 110
    .line 111
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object p1
.end method

.method private final n()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/transsion/lib/push/R$layout;->layout_ongoing_notification:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/transsion/lib/push/R$layout;->layout_ongoing_notification_expend_s:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method private final o()Lkotlin/Pair;
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 9
    .line 10
    sget-object v2, Lcom/transsion/push/notification/NoticeIntentType;->TOP_10:Lcom/transsion/push/notification/NoticeIntentType;

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->k(Lcom/transsion/push/notification/NoticeIntentType;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const/4 v6, 0x3

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/transsion/push/bean/ToolbarNoticeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/push/bean/ToolbarNoticeItem;->setDefault(Z)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 28
    .line 29
    sget-object v3, Lcom/transsion/push/notification/NoticeIntentType;->SEARCH:Lcom/transsion/push/notification/NoticeIntentType;

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->k(Lcom/transsion/push/notification/NoticeIntentType;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    const/4 v12, 0x3

    .line 36
    const/4 v13, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v8, v2

    .line 40
    invoke-direct/range {v8 .. v13}, Lcom/transsion/push/bean/ToolbarNoticeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/transsion/push/bean/ToolbarNoticeItem;->setDefault(Z)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lkotlin/Pair;

    .line 47
    .line 48
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->e:Lcom/transsion/push/bean/ToolbarNoticeConfig;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/transsion/push/bean/ToolbarNoticeConfig;->getList()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 70
    .line 71
    sget-object v2, Lcom/transsion/push/notification/ToolbarNotificationUtils;->e:Lcom/transsion/push/bean/ToolbarNoticeConfig;

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/transsion/push/bean/ToolbarNoticeConfig;->getList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 88
    .line 89
    new-instance v2, Lkotlin/Pair;

    .line 90
    .line 91
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object v1, v2

    .line 95
    :goto_0
    return-object v1
.end method

.method private final p()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/transsion/lib/push/R$layout;->layout_ongoing_notification:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/transsion/lib/push/R$layout;->layout_ongoing_notification_s:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method private final q(Lkotlin/Pair;Lkotlin/Pair;)Landroidx/core/app/NotificationCompat$m;
    .locals 10

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
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x30

    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    move v0, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    .line 27
    .line 28
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->p()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-direct {v1, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 44
    .line 45
    invoke-direct {v4, v1, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->C(Landroid/widget/RemoteViews;Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v1, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->D(Landroid/widget/RemoteViews;Lkotlin/Pair;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v1, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->B(Landroid/widget/RemoteViews;Lkotlin/Pair;)V

    .line 52
    .line 53
    .line 54
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v6, 0x1f

    .line 57
    .line 58
    if-lt v5, v6, :cond_1

    .line 59
    .line 60
    invoke-direct {v4, v1, v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->h(Landroid/widget/RemoteViews;Z)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance v7, Landroid/widget/RemoteViews;

    .line 64
    .line 65
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-direct {p0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->n()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v4, v7, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->C(Landroid/widget/RemoteViews;Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v7, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->D(Landroid/widget/RemoteViews;Lkotlin/Pair;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, v7, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->B(Landroid/widget/RemoteViews;Lkotlin/Pair;)V

    .line 87
    .line 88
    .line 89
    if-lt v5, v6, :cond_2

    .line 90
    .line 91
    invoke-direct {v4, v7, v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->h(Landroid/widget/RemoteViews;Z)V

    .line 92
    .line 93
    .line 94
    :cond_2
    new-instance p1, Landroidx/core/app/NotificationCompat$m;

    .line 95
    .line 96
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const-string v0, "mbx_tool_notice"

    .line 101
    .line 102
    invoke-direct {p1, p2, v0}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget p2, Lcom/transsion/lib/push/R$drawable;->push_small_logo:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$m;->J(I)Landroidx/core/app/NotificationCompat$m;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$m;->t(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    sget-object p2, Lcom/transsion/push/notification/NoticeIntentType;->CONTENT:Lcom/transsion/push/notification/NoticeIntentType;

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->k(Lcom/transsion/push/notification/NoticeIntentType;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    const-string v0, "content"

    .line 122
    .line 123
    invoke-direct {p0, p2, v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$m;->p(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$m;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$m;->E(Z)Landroidx/core/app/NotificationCompat$m;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$m;->l(Z)Landroidx/core/app/NotificationCompat$m;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$m;->F(Z)Landroidx/core/app/NotificationCompat$m;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, v7}, Landroidx/core/app/NotificationCompat$m;->s(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$m;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string p2, "setCustomBigContentView(...)"

    .line 148
    .line 149
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object p1
.end method

.method private final r()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->e:Lcom/transsion/push/bean/ToolbarNoticeConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/push/bean/ToolbarNoticeConfig;->getList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    const/4 v2, 0x2

    .line 21
    if-ge v0, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    :cond_2
    return v1
.end method

.method private final s(I)Z
    .locals 13

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 11
    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x0

    .line 14
    const-string v3, "ToolbarNo"

    .line 15
    .line 16
    const-string v4, "isNeedShowNotice,\u5f53\u524d\u5728\u524d\u53f0\uff0c\u65e0\u9700\u5904\u7406"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "k_is_show_ongoing_tool_notice"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 39
    .line 40
    const/4 v9, 0x4

    .line 41
    const/4 v10, 0x0

    .line 42
    const-string v6, "ToolbarNo"

    .line 43
    .line 44
    const-string v7, "isNeedShowNotice,\u8bbe\u7f6e\u9875\u5df2\u4e3b\u52a8\u5173\u95ed"

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "k_last_open_time"

    .line 56
    .line 57
    const-string v3, ""

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move-wide v5, v2

    .line 79
    :goto_0
    cmp-long v0, v5, v2

    .line 80
    .line 81
    if-lez v0, :cond_4

    .line 82
    .line 83
    invoke-direct {p0, v5, v6, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->j(JI)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const-string v2, " "

    .line 88
    .line 89
    const-string v3, ", "

    .line 90
    .line 91
    const-string v7, ", appOpenTime:"

    .line 92
    .line 93
    const-string v8, "ToolbarNo"

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v9

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v11, "isNeedShowNotice, true currentDayKey:"

    .line 109
    .line 110
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, v8, p1, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    return v4

    .line 139
    :cond_3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 140
    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v9

    .line 145
    new-instance v11, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v12, "isNeedShowNotice, false currentDayKey:"

    .line 151
    .line 152
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v0, v8, p1, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    :cond_4
    return v1
.end method

.method private final t(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v0, v2}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x1388

    .line 14
    .line 15
    invoke-static {v2, v3, v1, p2}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method private final u(Lkotlin/Pair;Lkotlin/jvm/functions/Function2;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImages$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final w(Lcom/transsion/push/bean/ToolbarNoticeConfig;)V
    .locals 16

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/push/bean/ToolbarNoticeConfig;->getList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/push/bean/ToolbarNoticeConfig;->getList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x2

    .line 28
    if-ge v0, v1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/high16 v0, 0x41a00000    # 20.0f

    .line 32
    .line 33
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/push/bean/ToolbarNoticeConfig;->getList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/transsion/push/bean/ToolbarNoticeItem;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/transsion/push/bean/ToolbarNoticeItem;->getCover()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    if-eqz v9, :cond_3

    .line 64
    .line 65
    sget-object v1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->c:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "preloadImage, url :"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const/4 v14, 0x4

    .line 93
    const/4 v15, 0x0

    .line 94
    const-string v11, "ToolbarNo"

    .line 95
    .line 96
    const/4 v13, 0x0

    .line 97
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const-string v2, ""

    .line 101
    .line 102
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    sget-object v10, Lni/f;->a:Lni/f$a;

    .line 106
    .line 107
    const/4 v6, 0x4

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v5, 0x1

    .line 111
    move-object v1, v10

    .line 112
    move-object v2, v9

    .line 113
    move v3, v0

    .line 114
    invoke-static/range {v1 .. v7}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v2, Lcom/transsion/push/notification/k;

    .line 119
    .line 120
    invoke-direct {v2}, Lcom/transsion/push/notification/k;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v1, v9, v0, v2}, Lni/f$a;->i(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    :goto_1
    return-void
.end method

.method private static final x(Z)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "preloadImage, result:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "ToolbarNo"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final z(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 12
    .line 13
    const-string v1, "toolbar_notice"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final G()V
    .locals 7

    .line 1
    sget-object v0, Lcf/c;->a:Lcf/c;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcf/c;->b(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v2, "ToolbarNo"

    .line 23
    .line 24
    const-string v3, "showToolbarNotification \u6ca1\u6709\u901a\u77e5\u6743\u9650"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    sget-boolean v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->f:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v2, "ToolbarNo"

    .line 40
    .line 41
    const-string v3, "showToolbarNotification\uff0c\u5f53\u524d\u4e0d\u9700\u8981\u5c55\u793a\u901a\u77e5"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 49
    .line 50
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->d:Landroid/app/NotificationManager;

    .line 51
    .line 52
    sget v1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->b:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->E()V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 63
    .line 64
    const-string v2, "ToolbarNo"

    .line 65
    .line 66
    const-string v3, "showToolbarNotification"

    .line 67
    .line 68
    const/4 v5, 0x4

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v3, "showToolbarNotification error:"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const/4 v5, 0x4

    .line 118
    const/4 v6, 0x0

    .line 119
    const-string v2, "ToolbarNo"

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method public final i()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/push/notification/ToolbarNotificationUtils$checkNotice$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils$checkNotice$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final k(Lcom/transsion/push/notification/NoticeIntentType;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils$a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    const-string p1, "oneroom://com.community.oneroom?type=/main/tab"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 30
    .line 31
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    const-string p1, "oneroom://com.community.oneroom?type=/profile/setting_notice"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p1, "oneroom://com.community.oneroom?type=/rank/all"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string p1, "oneroom://com.community.oneroom?type=/search/activity/search_manager&channel=os_search&type=3"

    .line 42
    .line 43
    :goto_0
    return-object p1
.end method

.method public final v(Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-string v0, "extra_notification_id"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget v1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->b:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string v0, "extra_toolbar_notice_name"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->z(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->d:Landroid/app/NotificationManager;

    .line 4
    .line 5
    sget v1, Lcom/transsion/push/notification/ToolbarNotificationUtils;->b:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "removeOngoingToolNotification error:"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x0

    .line 55
    const-string v2, "ToolbarNo"

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

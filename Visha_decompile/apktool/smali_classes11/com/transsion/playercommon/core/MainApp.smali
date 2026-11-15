.class public Lcom/transsion/playercommon/core/MainApp;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Llu4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/core/MainApp$b;,
        Lcom/transsion/playercommon/core/MainApp$c;
    }
.end annotation


# static fields
.field public static A:Z = false

.field public static B:Lcom/transsion/dbdata/beans/DownloadVideoRecommend; = null

.field public static C:Lcom/transsion/dbdata/beans/appconfig/JumpBean; = null

.field public static D:Z = false

.field public static E:Ljava/lang/ref/WeakReference; = null

.field public static c:Z = false

.field public static d:Lcom/transsion/playercommon/core/MainApp$b; = null

.field public static volatile e:I = 0x3

.field public static volatile f:I = 0x2

.field public static volatile g:Z = false

.field public static volatile h:Z = false

.field public static volatile i:Z = false

.field public static volatile j:Z = false

.field public static volatile k:Z = true

.field public static volatile l:Z = false

.field public static volatile m:Z = true

.field public static volatile n:Z = false

.field public static volatile o:Z = false

.field public static volatile p:Z = false

.field public static volatile q:Z = false

.field public static volatile r:Z = false

.field public static volatile s:Z = false

.field public static volatile t:Z = false

.field public static volatile u:I

.field public static v:Ljava/util/concurrent/ConcurrentHashMap;

.field public static w:I

.field public static x:I

.field public static y:Landroid/app/Application;

.field public static z:Z


# instance fields
.field public final b:Lvz6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/core/MainApp;->v:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    sput v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    sput v0, Lcom/transsion/playercommon/core/MainApp;->x:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->z:Z

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->A:Z

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->D:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/core/MainApp$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/core/MainApp$a;-><init>(Lcom/transsion/playercommon/core/MainApp;)V

    iput-object v0, p0, Lcom/transsion/playercommon/core/MainApp;->b:Lvz6;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/core/MainApp;->q(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic c(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/core/MainApp;->t(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Lvz6;)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/core/MainApp;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "rx2.purge-enabled"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixedRxJavaBackgroundCpuLoad-PURGE_ENABLED::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/core/MainApp;->y:Landroid/app/Application;

    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "MainApp"

    :try_start_0
    const-string v1, "com.transsion.hubsdk.foldable.TranFoldingScreen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getHoverModeStateForPackage"

    const-class v3, Landroid/content/Context;

    const-class v4, Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "testGetHoverModeState-result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHoverModeState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static h(Landroid/app/Application;Z)V
    .locals 0

    new-instance p0, Lqx5;

    invoke-direct {p0}, Lqx5;-><init>()V

    invoke-static {p0}, Lyw8;->C(Lzf1;)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 5

    const-string v0, "simultaneous_download_mode"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/playercommon/core/MainApp;->e:I

    const-string v0, "allow_mobile_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    const-string v0, "allow_mobile_data_play"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "allow_mobile_data_play_show"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->j:Z

    :try_start_0
    const-string v0, "break_point_mode_switch"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "break_point_mode"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBreakPointMode failed, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MainApp"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v0, "allow_show_history"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->l:Z

    const-string v0, "allow_stream_auto_play"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->m:Z

    const-string v0, "private_browsing"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->p:Z

    const-string v0, "show_lyric_search_mode"

    const/4 v3, 0x2

    invoke-static {p0, v0, v3}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/transsion/playercommon/core/MainApp;->u:I

    const-string v0, "show_lock_screen_player_mode"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/transsion/playercommon/core/MainApp;->q:Z

    const-string v0, "need_dolby_splash_show"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/playercommon/core/MainApp;->r:Z

    return-void
.end method

.method public static k()V
    .locals 3

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->t:Z

    if-eqz v0, :cond_0

    const-string v0, "MainApp"

    const-string v1, "initNewAudioNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/core/MainApp;->w(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->t:Z

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "new_audio_notify_need_init"

    invoke-static {v1, v2, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static l(Z)V
    .locals 0

    invoke-static {p0}, Lydc;->c(Z)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->F(Landroid/content/Context;J)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lw6c;->G(Landroid/content/Context;I)V

    const-string v3, "video_pref_sort_by"

    invoke-static {p0, v3, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "video_pref_sort_name"

    invoke-static {p0, v4, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3}, Lcom/transsion/dbdata/utils/SortUtil;->r(Z)V

    invoke-static {v4}, Lcom/transsion/dbdata/utils/SortUtil;->s(I)V

    const-string v3, "audio_pref_sort_by"

    invoke-static {p0, v3, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "audio_pref_sort_name"

    invoke-static {p0, v4, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3}, Lcom/transsion/dbdata/utils/SortUtil;->p(Z)V

    invoke-static {v4}, Lcom/transsion/dbdata/utils/SortUtil;->q(I)V

    const-string v3, "start_record_launch_review_time"

    invoke-static {p0, v3, v0, v1}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v3, v0, v1}, Lw6c;->v(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    sget-boolean v0, Lpp3;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "new_audio_notify_need_init"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->t:Z

    sget-boolean v0, Lpp3;->x:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    const-string v3, "audio_new_find_notification"

    invoke-static {p0, v3, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/transsion/playercommon/core/MainApp;->g:Z

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->g:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/transsion/playercommon/core/MainApp;->w(Landroid/content/Context;)V

    :cond_3
    const-string v0, "is_first_enter_main_activity"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/playercommon/core/MainApp;->o:Z

    return-void
.end method

.method public static n(Z)V
    .locals 0

    invoke-static {p0}, Lydc;->d(Z)V

    return-void
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p()Z
    .locals 1

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic q(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRxJavaErrorHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MainApp"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/core/MainApp;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static t(Landroid/app/Activity;Z)V
    .locals 0

    sget-object p1, Lcom/transsion/playercommon/core/MainApp;->d:Lcom/transsion/playercommon/core/MainApp$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/core/MainApp$b;->a(Landroid/app/Activity;)V

    :cond_0
    instance-of p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->afterGpdrPermission()V

    :cond_1
    return-void
.end method

.method public static u(Lcom/transsion/playercommon/core/MainApp$b;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/core/MainApp;->d:Lcom/transsion/playercommon/core/MainApp$b;

    return-void
.end method

.method public static v(I)V
    .locals 0

    sput p0, Lcom/transsion/playercommon/core/MainApp;->u:I

    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lt08;->i(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->g:Z

    const-string v0, "audio_new_find_notification"

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->g:Z

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static x(I)V
    .locals 0

    sput p0, Lcom/transsion/playercommon/core/MainApp;->e:I

    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/playercommon/core/MainApp;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/playercommon/core/MainApp;->D:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateHoverMode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->D:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MainApp"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/core/MainApp;->r()V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/TransferNotificationHelper;->q(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainApp"

    const-string v1, "Error init isIsolated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void

    :cond_0
    invoke-static {p0}, Lvha;->u(Landroid/content/Context;)V

    sput-object p0, Lcom/transsion/playercommon/core/MainApp;->y:Landroid/app/Application;

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/playercommon/core/MainApp;->h(Landroid/app/Application;Z)V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/storage/MountReceiver;->a(Landroid/content/Context;)Lcom/transsion/playercommon/utils/storage/MountReceiver;

    invoke-virtual {p0}, Lcom/transsion/playercommon/core/MainApp;->j()V

    new-instance v0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;

    invoke-direct {v0}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {p0}, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->b(Landroid/app/Application;)V

    return-void
.end method

.method public final r()V
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Lpz6;

    iget-object v2, p0, Lcom/transsion/playercommon/core/MainApp;->b:Lvz6;

    invoke-direct {v1, p0, v2}, Lpz6;-><init>(Landroid/content/Context;Lvz6;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lxb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public z()V
    .locals 0

    return-void
.end method

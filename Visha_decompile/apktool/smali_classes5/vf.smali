.class public abstract Lvf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x12

    const-string v2, "com.transsion.magicmovie.video_player_main_activity"

    invoke-static {p0, v2, v0, v1}, Lvf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1d

    const-string v2, "com.transsion.magicmovie.video_player_main_activity"

    invoke-static {p0, v2, v0, v1}, Lvf;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPendingIntent:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/high16 p0, 0x24000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance p0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    const-string p1, "from_router"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "router_data"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "appWidget"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "turn"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const/high16 p1, 0xc000000

    invoke-static {p0, p3, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.magicmovie.video_player_main_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    const-string v2, "widget_audio_tab"

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setFrom_page(Ljava/lang/String;)V

    const-string v2, "from_router"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "router_data"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.transsion.magicshow.OPEN_AUDIO"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v1, 0x1e

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    const-class v0, Lcom/transsion/audio/appwidgt/AppWidgetMusicSecondProvider;

    const-class v1, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

    const-class v2, Lcom/transsion/audio/appwidgt/AppWidgetMusicProvider;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v3, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v3
.end method

.method public static f(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/transsion/audio/appwidgt/AppWidgetMusicSecondProvider;

    const-class v1, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

    const-class v2, Lcom/transsion/audio/appwidgt/AppWidgetMusicProvider;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "appWidgetIds"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static g(Landroid/content/Context;I)V
    .locals 4

    const-class v0, Lcom/transsion/audio/appwidgt/AppWidgetMusicSecondProvider;

    const-class v1, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

    const-class v2, Lcom/transsion/audio/appwidgt/AppWidgetMusicProvider;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/content/ComponentName;

    aget-object p1, v0, p1

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->isRequestPinAppWidgetSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "add_widget_success"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/transsion/audio/service/MusicService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p0, v0, p1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1, p0}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    :cond_0
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    new-instance v4, Lcom/transsion/audio/appwidgt/AppWidgetMusicProvider;

    invoke-direct {v4}, Lcom/transsion/audio/appwidgt/AppWidgetMusicProvider;-><init>()V

    new-instance v5, Lcom/transsion/audio/appwidgt/AppWidgetMusicSecondProvider;

    invoke-direct {v5}, Lcom/transsion/audio/appwidgt/AppWidgetMusicSecondProvider;-><init>()V

    new-instance v6, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

    invoke-direct {v6}, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;-><init>()V

    new-array v7, v1, [Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;

    aput-object v4, v7, v0

    aput-object v5, v7, v2

    const/4 v4, 0x2

    aput-object v6, v7, v4

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v7, v4

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v5}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v8, v6

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    array-length v8, v6

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_2

    aget v10, v6, v9

    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->j()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v12, Lcom/transsion/audio/R$id;->iv_play:I

    sget v13, Lcom/transsion/audio/R$drawable;->ic_music_widget_pause:I

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v3, v10, v11}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/2addr v9, v2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.class public Lcom/transsion/playercommon/router/RouterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FROM_ROUTER:Ljava/lang/String; = "from_router"

.field public static final ROUTER_DATA:Ljava/lang/String; = "router_data"

.field public static final ROUTER_DATA_BOTTOM_POSITION:Ljava/lang/String; = "router_data_bottom_position"

.field public static final ROUTER_DATA_TOP_POSITION:Ljava/lang/String; = "router_data_top_position"

.field private static final ROUTER_FROM_SOURCE_LAUNCH_AD:Ljava/lang/String; = "launch_ad_"

.field private static final TAG:Ljava/lang/String;

.field public static final TARGET_ID_APPLINK:I = 0x4

.field public static final TARGET_ID_BOTTOM_TAB:I = -0x1

.field public static final TARGET_ID_COLLECT_ACTIVITY:I = 0x8

.field public static final TARGET_ID_COMMON_WEBVIEW_ACTIVITY:I = 0xa

.field public static final TARGET_ID_DEFAULT:I = 0x0

.field public static final TARGET_ID_FULL_SCREEN_WEBCAST_ACTIVITY:I = 0x7

.field public static final TARGET_ID_HISTORY_ACTIVITY:I = 0x6

.field public static final TARGET_ID_PLAYER_DETAIL_ACTIVITY:I = 0x1

.field public static final TARGET_ID_REQUEST_SERVER:I = 0x5

.field public static final TARGET_ID_SETTING_ACTIVITY:I = 0x9

.field public static final TARGET_ID_SNIFF_WEB_ACTIVITY:I = 0x3

.field public static final TARGET_ID_TOPIC_DETAIL_ACTIVITY:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/playercommon/router/RouterUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrom(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "more"

    return-object p0

    :cond_1
    const-string p0, "download"

    return-object p0

    :cond_2
    const-string p0, "audio"

    return-object p0

    :cond_3
    const-string p0, "video"

    return-object p0
.end method

.method public static jumpFromAdViewResult(Landroid/content/Context;ZLcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z
    .locals 4

    sget-object v0, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpFromAdViewResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isSupportJump()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch_ad_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setFrom_page(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-static {p1, p0, v2}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setForActivityResult(ZI)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setType(I)V

    invoke-static {v0, p0, v2}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setType(I)V

    invoke-static {v0, p0, v2}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    :goto_0
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, p2, v0, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V

    return-void
.end method

.method private static jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 4
    const-string p1, "from_router"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    const-string p1, "router_data"

    if-eqz p4, :cond_0

    .line 6
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/high16 p1, 0x10000000

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    :cond_2
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private static jumpToActivityForResult(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZI)V
    .locals 2

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p1, "from_router"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "router_data"

    if-eqz p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p5, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    const-string p1, "jumpToActivityForResult: context is null or not instance of Activity"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static jumpToCloudDriveFileShareActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.cloud.share.CloudDriveBottomShareActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "file_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "file_name"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private static jumpToCommonWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.sniffer_load.open_html_url"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static jumpToDeeplink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumpToDeeplink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static jumpToMediaLibraryShareActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.mimedia.activity.MediaLibraryVideoActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mediaLibraryId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static jumpToPasswordSettingActivity(Landroid/content/Context;II)V
    .locals 2

    sget-boolean v0, Lpp3;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.tools.activities.PasswordSettingActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "privacy_from_page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "privacy_setting_mode"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jumpToPasswordSettingActivity "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static jumpToPrivacyFileActivity(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lpp3;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.tools.activities.PrivacyFileActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpToPasswordSettingActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static jumpToPrivacyRoom(Landroid/content/Context;II)V
    .locals 1

    sget-boolean v0, Lpp3;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    invoke-virtual {v0}, Ltg8;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyFileActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPasswordSettingActivity(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method public static jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z
    .locals 1

    sget-boolean v0, Lpp3;->p:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean v0, Lzdc;->l:Z

    if-nez v0, :cond_2

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    invoke-virtual {v0}, Ltg8;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyFileActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPasswordSettingActivity(Landroid/content/Context;II)V

    :cond_2
    :goto_0
    sget-boolean p0, Lzdc;->l:Z

    return p0
.end method

.method public static jumpToSettingActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "com.transsion.tools.activities.SettingActivity"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static jumpToSniffWebViewInApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.sniffer_load.web_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static jumpToVishaWebViewInApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p4, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static jumpToWebViewSystem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumpToWebViewSystem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static onDefaultTarget(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V
    .locals 7
    .param p0    # Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->isForActivityResult()Z

    move-result v0

    const-string v2, "com.transsion.magicmovie.video_player_main_activity"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getRequestCode()I

    move-result v6

    move-object v1, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivityForResult(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, v2, p0, v0, p2}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V

    :goto_0
    return-void
.end method

.method public static route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V
    .locals 1
    .param p0    # Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    return-void
.end method

.method public static route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V
    .locals 4
    .param p0    # Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/router/RouterUtils;->onDefaultTarget(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->isForActivityResult()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getRequestCode()I

    move-result p0

    .line 7
    invoke-static {p1, p2, v0, v1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToVishaWebViewInApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    const-string p2, "com.transsion.tools.activities.SettingActivity"

    .line 9
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V

    goto/16 :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/playercommon/router/RouterUtils;->shouldAddNewTaskForOnlineVideo(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "com.transsion.onlinevideo.collect.OnlineVideoCollectActivity"

    invoke-static {p1, v0, p0, p2, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V

    goto/16 :goto_1

    .line 11
    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/playercommon/router/RouterUtils;->shouldAddNewTaskForOnlineVideo(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "com.transsion.onlinevideo.webcast.WebcastActivity"

    invoke-static {p1, v0, p0, p2, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V

    goto :goto_1

    .line 12
    :pswitch_5
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/playercommon/router/RouterUtils;->shouldAddNewTaskForOnlineVideo(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "com.transsion.onlinevideo.history.OnlineVideoHistoryActivity"

    invoke-static {p1, v0, p0, p2, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V

    goto :goto_1

    .line 13
    :pswitch_6
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToDeeplink(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :pswitch_7
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToSniffWebViewInApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :pswitch_8
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/playercommon/router/RouterUtils;->shouldAddNewTaskForOnlineVideo(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "com.transsion.onlinevideo.topic.TopicDetailActivity"

    invoke-static {p1, v0, p0, p2, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V

    goto :goto_1

    .line 16
    :pswitch_9
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->isShortVideo()Z

    move-result p2

    .line 17
    sget-object v0, Lcom/transsion/playercommon/router/RouterUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "route: jump to player detail activity, isShortVideo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 18
    const-string p2, "com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailActivity"

    goto :goto_0

    .line 19
    :cond_0
    const-string p2, "com.transsion.onlinevideo.mangotv.PlayerDetailActivity"

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p0

    invoke-static {p1}, Lcom/transsion/playercommon/router/RouterUtils;->shouldAddNewTaskForOnlineVideo(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToActivity(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;ZZ)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static routeDefaultTarget(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method private static shouldAddNewTaskForOnlineVideo(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p0, p0, Landroid/app/Activity;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

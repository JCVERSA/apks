.class public abstract Lcom/transsion/playercommon/utils/UpdateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/UpdateUtils$PostJson;,
        Lcom/transsion/playercommon/utils/UpdateUtils$FeatureInfo;
    }
.end annotation


# static fields
.field public static volatile a:J = 0x0L

.field public static b:I = -0x1

.field public static volatile c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->s(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->q(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->r(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_experience"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c(Landroid/content/Context;)Lcom/transsion/playercommon/data/PopLogic;
    .locals 2

    const-string v0, "update_dialog_logic"

    invoke-static {p0, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/data/PopLogic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPopLogic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_UpdateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 3

    const-string v0, "last_query_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)Lcom/transsion/playercommon/data/CloudVersionControl;
    .locals 2

    const-string v0, "update_dialog_info"

    invoke-static {p0, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/data/CloudVersionControl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpDateInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_UpdateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static f(Landroid/content/Context;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method

.method public static g(Landroid/content/Context;ZZ)Lcom/transsion/playercommon/data/CloudVersionControl;
    .locals 7

    const-string v0, "visha_UpdateUtils"

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->f(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    move-result-object v3

    const-class v4, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-virtual {v3, v4}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlService;->checkNewVersions(Ljava/lang/String;)Ljq0;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Ljq0;->execute()Lgu8;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersionControlByCms exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/transsion/playercommon/utils/UpdateUtils;->a:J

    const/4 v3, 0x2

    if-nez v1, :cond_1

    const-string v1, " Cannot get cloud feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/R$string;->update_check_error:I

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->o(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    invoke-static {v3}, Lp06;->O(I)V

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lgu8;->e()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/retrofit/reponse/BaseResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response body exception:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    const-string v1, "CloudVersionControl convert to been error control is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/R$string;->update_is_newest:I

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->o(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_3

    invoke-static {v3}, Lp06;->O(I)V

    :cond_3
    invoke-static {p0, v5}, Lcom/transsion/playercommon/utils/UpdateUtils;->a(Landroid/content/Context;I)V

    return-object v2

    :cond_4
    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CloudVersionControl convert to been error "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/R$string;->update_is_newest:I

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->o(Landroid/content/Context;ZI)V

    invoke-static {p0, v5}, Lcom/transsion/playercommon/utils/UpdateUtils;->a(Landroid/content/Context;I)V

    if-eqz p2, :cond_5

    invoke-static {v3}, Lp06;->O(I)V

    :cond_5
    return-object v2

    :cond_6
    invoke-virtual {v1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/data/CloudVersionControl;

    if-nez v1, :cond_8

    const-string v1, "CloudVersionControl convert to been data is empty "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/R$string;->update_is_newest:I

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->o(Landroid/content/Context;ZI)V

    invoke-static {p0, v5}, Lcom/transsion/playercommon/utils/UpdateUtils;->a(Landroid/content/Context;I)V

    if-eqz p2, :cond_7

    invoke-static {v3}, Lp06;->O(I)V

    :cond_7
    return-object v2

    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/playercommon/utils/UpdateUtils;->t(Landroid/content/Context;ILcom/transsion/playercommon/data/CloudVersionControl;)V

    invoke-virtual {v1, p0}, Lcom/transsion/playercommon/data/CloudVersionControl;->hasNewVersionCode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {p0, v5}, Lcom/transsion/playercommon/utils/UpdateUtils;->a(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/playercommon/R$string;->update_is_newest:I

    invoke-static {p0, p1, v1}, Lcom/transsion/playercommon/utils/UpdateUtils;->o(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_9

    invoke-static {v0}, Lp06;->O(I)V

    :cond_9
    return-object v2

    :cond_a
    return-object v1

    :cond_b
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get cloud feature is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lgu8;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/R$string;->update_is_newest:I

    invoke-static {p0, p1, v0}, Lcom/transsion/playercommon/utils/UpdateUtils;->o(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_c

    invoke-static {v3}, Lp06;->O(I)V

    :cond_c
    invoke-static {p0, v5}, Lcom/transsion/playercommon/utils/UpdateUtils;->s(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->q(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->r(Landroid/content/Context;)V

    return-object v2
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static i(I)Z
    .locals 0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-static {p0, v1}, Lcom/transsion/playercommon/utils/UpdateUtils;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "visha_UpdateUtils"

    const/high16 v4, 0x10000000

    const-string v5, "android.intent.action.VIEW"

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Https://play.google.com/store/app/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intentToGP exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsnet.store"

    invoke-static {p0, v1}, Lcom/transsion/playercommon/utils/UpdateUtils;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "visha_UpdateUtils"

    const/high16 v4, 0x10000000

    const-string v5, "android.intent.action.VIEW"

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "palmplay://thirdlauncher.com/?entryType=AppDetail&name=d.light&_source=Visha&_mediatype=Install&packageName=com.transsion.magicshow"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "http://m.palmplaystore.com/app/soft_detail?size=5.09MB&itemID=s_a9a756f29217451dbb4844313de4a7dd&term=visha&search_flag=1#category=HOME#subCategory="

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intentToPS exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static m(J)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p0

    return p0
.end method

.method public static n(Landroid/content/Context;Z)Z
    .locals 7

    sget-object v0, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->c(Landroid/content/Context;)Lcom/transsion/playercommon/data/PopLogic;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "popLogic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visha_UpdateUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    new-instance v2, Lcom/transsion/playercommon/data/PopLogic;

    invoke-direct {v2}, Lcom/transsion/playercommon/data/PopLogic;-><init>()V

    iget v3, v0, Lcom/transsion/playercommon/data/CloudVersionControl;->popCycle:I

    iput v3, v2, Lcom/transsion/playercommon/data/PopLogic;->popCycle:I

    iget v3, v0, Lcom/transsion/playercommon/data/CloudVersionControl;->popTimes:I

    iput v3, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/playercommon/data/CloudVersionControl;->getPopCycle()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    iget-wide v5, v2, Lcom/transsion/playercommon/data/PopLogic;->lastPopTime:J

    invoke-static {v5, v6}, Lcom/transsion/playercommon/utils/UpdateUtils;->m(J)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    iget p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->i(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    sub-int/2addr p1, v4

    iput p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p0, v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->u(Landroid/content/Context;Lcom/transsion/playercommon/data/PopLogic;)V

    return v4

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_5

    iget p1, v0, Lcom/transsion/playercommon/data/CloudVersionControl;->popTimes:I

    iput p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->i(I)Z

    move-result p1

    iget v0, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    if-eqz p1, :cond_4

    sub-int/2addr v0, v4

    :cond_4
    iput v0, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p0, v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->u(Landroid/content/Context;Lcom/transsion/playercommon/data/PopLogic;)V

    return p1

    :cond_5
    return v1

    :cond_6
    if-ne v3, v4, :cond_a

    if-eqz p1, :cond_8

    iget p1, v0, Lcom/transsion/playercommon/data/CloudVersionControl;->popTimes:I

    iput p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->i(I)Z

    move-result p1

    iget v0, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    if-eqz p1, :cond_7

    sub-int/2addr v0, v4

    :cond_7
    iput v0, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p0, v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->u(Landroid/content/Context;Lcom/transsion/playercommon/data/PopLogic;)V

    return p1

    :cond_8
    iget p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->i(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    sub-int/2addr p1, v4

    iput p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p0, v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->u(Landroid/content/Context;Lcom/transsion/playercommon/data/PopLogic;)V

    return v4

    :cond_9
    return v1

    :cond_a
    if-eqz p1, :cond_b

    iget p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->i(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    sub-int/2addr p1, v4

    iput p1, v2, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p0, v2}, Lcom/transsion/playercommon/utils/UpdateUtils;->u(Landroid/content/Context;Lcom/transsion/playercommon/data/PopLogic;)V

    return v4

    :cond_b
    return v1
.end method

.method public static o(Landroid/content/Context;ZI)V
    .locals 0

    sput p2, Lcom/transsion/playercommon/utils/UpdateUtils;->b:I

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/transsion/playercommon/utils/UpdateUtils;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lge;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "plamplay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->k(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/playercommon/utils/UpdateUtils;->j(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .locals 2

    const-string v0, "update_dialog_logic"

    invoke-static {p0, v0}, Lw6c;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removePopLogic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "visha_UpdateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .locals 2

    const-string v0, "update_dialog_info"

    invoke-static {p0, v0}, Lw6c;->z(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUpdateInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "visha_UpdateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static s(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveDataVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_UpdateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "update_data_version"

    invoke-static {p0, v0, p1}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static t(Landroid/content/Context;ILcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->s(Landroid/content/Context;I)V

    invoke-static {p0, p2}, Lcom/transsion/playercommon/utils/UpdateUtils;->w(Landroid/content/Context;Lcom/transsion/playercommon/data/CloudVersionControl;)V

    new-instance p1, Lcom/transsion/playercommon/data/PopLogic;

    invoke-direct {p1}, Lcom/transsion/playercommon/data/PopLogic;-><init>()V

    iget v0, p2, Lcom/transsion/playercommon/data/CloudVersionControl;->popCycle:I

    iput v0, p1, Lcom/transsion/playercommon/data/PopLogic;->popCycle:I

    iget p2, p2, Lcom/transsion/playercommon/data/CloudVersionControl;->popTimes:I

    iput p2, p1, Lcom/transsion/playercommon/data/PopLogic;->popTimes:I

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->u(Landroid/content/Context;Lcom/transsion/playercommon/data/PopLogic;)V

    return-void
.end method

.method public static u(Landroid/content/Context;Lcom/transsion/playercommon/data/PopLogic;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/transsion/playercommon/data/PopLogic;->lastPopTime:J

    const-string v0, "update_dialog_logic"

    invoke-static {p0, v0, p1}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "savePopLogic:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_UpdateUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Landroid/content/Context;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveLastPopTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_UpdateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "last_query_time"

    invoke-static {p0, v0, p1, p2}, Lw6c;->v(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static w(Landroid/content/Context;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 1

    const-string v0, "update_dialog_info"

    invoke-static {p0, v0, p1}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveUpdateInfo:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_UpdateUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static x(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/playercommon/utils/UpdateUtils;->c:Z

    return-void
.end method

.method public static y()V
    .locals 2

    sget v0, Lcom/transsion/playercommon/utils/UpdateUtils;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

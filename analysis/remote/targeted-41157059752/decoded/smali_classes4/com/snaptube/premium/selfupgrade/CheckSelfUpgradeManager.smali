.class public Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;,
        Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$f;,
        Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;
    }
.end annotation


# static fields
.field public static c:Landroid/app/ProgressDialog;

.field public static d:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

.field public static e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

.field public static f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;


# instance fields
.field public a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

.field public b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->P(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v3

    invoke-static {v3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lo/an5;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p0, p4, v0

    const p0, 0x7f110765

    invoke-virtual {p2, p0, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->i0(Landroid/widget/TextView;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getBigVersion()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const v0, 0x7f110735

    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->h0(Landroid/widget/TextView;)V

    invoke-static {p2}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v4, p2

    check-cast v4, Landroid/app/Activity;

    const p1, 0x7f11072d

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$c;

    move-object v2, p3

    move-object v5, p0

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$c;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Landroid/app/Activity;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p2, 0x0

    const/4 p5, -0x1

    invoke-virtual {p4, p5, p1, p3, p2}, Lcom/wandoujia/base/view/c;->s(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    invoke-virtual {p4}, Lcom/wandoujia/base/view/c;->show()V

    invoke-static {p0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->u(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Z)V

    :cond_1
    return-void
.end method

.method public static E(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;-><init>()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->setVersionCode(I)V

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->setConfig(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    new-instance p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$7;

    invoke-direct {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$7;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0}, Lo/j23;->i(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 2

    const-string v0, "last_apk_downloaded_upgrade_config"

    sget-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->N(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static G()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    sput-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    :cond_0
    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "ConfigIsNull"

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->update:Z

    const-string v1, "CannotUpgrade"

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->usePatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canPatchUpdate()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v1, "CanPathUpgrade"

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v1, "CanFullUpgrade"

    :cond_4
    return-object v1
.end method

.method public static I()J
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firset_get_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static J()Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;
    .locals 2

    const-class v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->d:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    invoke-direct {v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;-><init>()V

    sput-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->d:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->d:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static K()J
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_check_self_upgrade_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static L()J
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_get_fresh_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->O()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->N(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static N(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 2

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance p1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$6;

    invoke-direct {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$6;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lo/j23;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->getVersionCode()I

    move-result p1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v1

    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$LocalUpdateConfig;->getConfig()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object p0

    return-object p0

    :catchall_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static O()Ljava/lang/String;
    .locals 1

    const-string v0, "last_self_upgrade_result"

    return-object v0
.end method

.method public static P(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static Q(Landroid/content/Context;Ljava/lang/String;)Lrx/c;
    .locals 2

    invoke-static {p0}, Lo/wl8;->f(Landroid/content/Context;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e;

    invoke-direct {v1, p1, p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p0

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$d;

    invoke-direct {v0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static R(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->j(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {p0}, Lo/rh8;->a(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static S(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "arg1"

    invoke-interface {p0, v0, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public static T(Ljava/lang/String;ZI)V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "success"

    invoke-interface {p0, v0, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "arg2"

    invoke-interface {p0, p2, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public static U(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "intent_upgrade_dialog_exposure"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "arg1"

    invoke-interface {v0, v1, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public static V(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_apk_downloaded_upgrade_config"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    sput-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->w(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    return-void
.end method

.method public static W(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_apk_downloaded_upgrade_config"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isStop()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->E(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x0

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p0
.end method

.method public static X(J)V
    .locals 6

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firset_get_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public static Y()V
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_get_fresh_config_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static Z(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isStop()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->f0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->E(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->O()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->w(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->X(J)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->V(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->O()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p0, 0x0

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p0
.end method

.method public static a0()V
    .locals 6

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->K()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x1808580

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "phoenix.intent.action.CHECK_SELF_UPGRADE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x20000000

    invoke-static {v2, v1, v0, v3}, Lo/bq5;->f(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v1, v0, v3}, Lo/bq5;->f(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static bridge synthetic b()V
    .locals 0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->x()V

    return-void
.end method

.method public static b0(J)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_check_self_upgrade_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->z(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    return-void
.end method

.method public static c0(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_show_me_tab_point_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "last_show_me_tab_point_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->A(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V

    return-void
.end method

.method public static d0(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_show_popup_self_upgrade_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "last_show_popup_self_upgrade_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static bridge synthetic e(Landroid/content/Context;Ljava/lang/String;)Lrx/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->Q(Landroid/content/Context;Ljava/lang/String;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->APP:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/wandoujia/download/utils/StorageUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->setFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic f(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->h0(Landroid/widget/TextView;)V

    return-void
.end method

.method public static f0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 1

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->R(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static g(ZLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->AUTOMATIC:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLandroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static g0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPopupInterval()J

    move-result-wide v1

    const-string p0, "last_show_popup_self_upgrade_version"

    const-string v3, "last_show_popup_self_upgrade_time"

    invoke-static {v0, v1, v2, p0, v3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->l(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static h0(Landroid/widget/TextView;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/an5;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v1, 0x7f1101df

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static i(Landroid/app/Activity;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->r(Landroid/app/Activity;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkMd5Correct()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->deleteApk()Z

    invoke-static {p0, p2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->r(Landroid/app/Activity;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static i0(Landroid/widget/TextView;)V
    .locals 1

    const v0, 0x7f110599

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public static j(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static j0(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f11059b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p0, v3, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p0

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lo/rh8;->b(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->update:Z

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->usePatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canPatchUpdate()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result p0

    return p0
.end method

.method public static k0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkMd5Correct()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->deleteApk()Z

    :cond_1
    return-void
.end method

.method public static l(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p3, 0x1

    if-nez p0, :cond_0

    return p3

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    cmp-long p0, v2, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public static m(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lo/hn1;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f110444

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/b88;->m(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static n(Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZLjava/lang/String;)Lrx/c;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->y(Lrx/c;Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public static o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLandroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    invoke-virtual {v0, p1, p4}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZLjava/lang/String;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$f;

    invoke-direct {v0, p2, p0, p3, p4}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$f;-><init>(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Lrx/c;
    .locals 1

    sget-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->UPGRADE:Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$ConfigFetcher;->fetchUpgradeConfig(ZLjava/lang/String;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->j0(Landroid/content/Context;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, v1, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;ZLandroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static r(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->g(ZLjava/lang/String;)V

    return-void
.end method

.method public static s(Landroid/content/Context;Landroid/view/View;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f09093c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09093b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p0, p2, v0, p1, p3}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->n(Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->g(ZLjava/lang/String;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;Lo/me7;)V
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lo/s5;->d()Landroid/app/Activity;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/snaptube/permission/a$a;

    invoke-direct {v0}, Lcom/snaptube/permission/a$a;-><init>()V

    invoke-static {}, Lo/sq5;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/permission/a$a;->h(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/permission/a$a;->i(Lo/qq5;)Lcom/snaptube/permission/a$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->e(I)Lcom/snaptube/permission/a$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->c(Z)Lcom/snaptube/permission/a$a;

    move-result-object p1

    const-string v0, "app_upgrade"

    invoke-virtual {p1, v0}, Lcom/snaptube/permission/a$a;->j(Ljava/lang/String;)Lcom/snaptube/permission/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/permission/a$a;->a()Lcom/snaptube/permission/a;

    move-result-object p1

    invoke-static {}, Lo/pq5;->a()Lo/pq5;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lo/pq5;->e(Landroid/app/Activity;Lcom/snaptube/permission/a;)V

    return-void
.end method

.method public static w(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->deleteApk()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOldDownloadedApk1:result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result p0

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v1

    if-ne p0, v1, :cond_3

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isApkExist()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->deleteApk()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOldDownloadedApk2:result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static x()V
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public static y(Lrx/c;Landroid/content/Context;Lcom/wandoujia/base/view/c;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p0

    new-instance v0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$b;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$b;-><init>()V

    invoke-virtual {p0, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p0

    new-instance v6, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$a;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$a;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/wandoujia/base/view/c;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    return-void
.end method

.method public static z(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->b0(J)V

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->j(Ljava/lang/String;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->e0(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->Z(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->Y()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->M()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "phoenix.intent.action.NEW_VERSION_AVIABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public B(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;
    .locals 2

    invoke-static {p1, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->A(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->y(Z)V

    invoke-virtual {v1, p4}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->z(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->B(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1, p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->D(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V

    return-object v1
.end method

.method public C(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->A(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->D(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V

    return-void
.end method

.method public final D(ZLcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Ljava/lang/String;Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 0

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne p2, p1, :cond_2

    const-string p1, "upgrade_self"

    invoke-static {p4, p1}, Lo/dp3;->d(Lo/cm3;Ljava/lang/String;)Lcom/snaptube/premium/utils/install/InstallParams;

    move-result-object p1

    invoke-static {p1}, Lo/ap3;->f(Lcom/snaptube/premium/utils/install/InstallParams;)Z

    invoke-static {p4, p5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->s(Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    :cond_2
    invoke-virtual {p4}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->setFilePath(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->W(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a(ZLcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Ljava/lang/String;Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->D(ZLcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Ljava/lang/String;Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    return-void
.end method

.method public final h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v0, p1, :cond_0

    new-instance p1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    invoke-direct {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    return-object p1

    :cond_0
    new-instance p1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    invoke-direct {p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    return-object p1
.end method

.method public v(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)V
    .locals 2

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;

    :goto_0
    return-void
.end method

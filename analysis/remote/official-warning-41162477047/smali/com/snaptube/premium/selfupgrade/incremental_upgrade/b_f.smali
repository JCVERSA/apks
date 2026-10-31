.class public Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->x(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    iput-object p2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    new-instance v1, Lo/cm3;

    invoke-direct {v1}, Lo/cm3;-><init>()V

    invoke-static {v0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lo/cm3;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->R0(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    instance-of v1, v0, Lo/cm3;

    if-eqz v1, :cond_0

    check-cast v0, Lo/cm3;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-virtual {v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->f(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->e()Lo/ah3;

    move-result-object v3

    const-string v4, "Upgrade"

    invoke-interface {v3, v4}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    :goto_2
    const-string v5, "trigger_campaign"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->v()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lo/cm3;->W()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string v5, "trigger_tag"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o1()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->b(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "previous_upgrade_time"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->p1()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "previous_version_code"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v4}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->g(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lo/cm3;->Y()Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-string v5, "config_type"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo/az7;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "arg3"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v4}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->h(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "arg4"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v4}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_result"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v4}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->e(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "file_size"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    invoke-static {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->a(Lo/cm3;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "time_cost"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    iget-boolean v4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "is_downloaded"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    const-string v4, "scene"

    iget-object v5, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    if-nez v0, :cond_5

    const-wide/16 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lo/cm3;->Z()J

    move-result-wide v4

    :goto_5
    invoke-static {v4, v5}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->b(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "download_time"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b$f;->a:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-static {v4}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->f(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "upgrade_md5"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v2}, Lo/vg4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "md5"

    invoke-interface {v3, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const/16 v2, 0xbba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "card_id"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "signature"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/xi7;->c(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_not_an_official_version"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    return-void
.end method

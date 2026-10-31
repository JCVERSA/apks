.class public Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;
.super Lcom/snaptube/taskManager/TaskMessageCenter$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;
    }
.end annotation


# static fields
.field public static m:I


# instance fields
.field public b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:I

.field public g:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;

.field public h:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/snaptube/taskManager/TaskMessageCenter$d;-><init>(Landroid/os/Handler;)V

    sget-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->UNKNOWN:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    return-void
.end method

.method public static bridge synthetic k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->r(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->x(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-void
.end method

.method public static synthetic n(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/TaskMessageCenter$d;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public static o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lo/cm3;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/cm3;->j0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/cm3;->m0(Ljava/lang/String;)V

    invoke-static {}, Lo/az7;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/cm3;->v0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getUpdateTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canPatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPatchUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPatchMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/cm3;->y0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/cm3;->z0:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->usePatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    iput p0, p1, Lo/cm3;->A0:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->canFullUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p1, Lo/cm3;->A0:I

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_3
    :goto_0
    invoke-static {p1}, Lo/cm3;->c0(Lo/cm3;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;ZLjava/lang/String;Ljava/lang/String;)Lo/cm3;
    .locals 2

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->k(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/cm3;

    invoke-direct {v0}, Lo/cm3;-><init>()V

    invoke-static {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lo/cm3;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->PATCH:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput-boolean p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/cm3;->e0(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->g(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/cm3;->g0(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/cm3;->f0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullFileSize()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lo/cm3;->i0(J)V

    invoke-virtual {v0, p2}, Lo/cm3;->k0(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lo/cm3;->l0(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "upgradeConfig not ready for download"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->l:Ljava/lang/String;

    return-void
.end method

.method public final C(Z)Z
    .locals 3

    invoke-static {}, Lo/x87;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->v()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->a4()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->s()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_3
    xor-int/lit8 v2, v0, 0x1

    :goto_1
    return v2
.end method

.method public D(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V
    .locals 2

    iput-object p2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->h:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    iget-object v0, p0, Lcom/snaptube/taskManager/TaskMessageCenter$d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$a;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(J)V
    .locals 0

    return-void
.end method

.method public h(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 0

    return-void
.end method

.method public i(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lo/cm3;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lo/cm3;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iput-wide v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$c;->a:[I

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v5, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->AUTOMATIC:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne p1, v5, :cond_3

    iget p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    if-ge p1, v2, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->p(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    sget-object p1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-virtual {p1, v1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->q(Z)V

    :goto_0
    return-void
.end method

.method public j(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 0

    return-void
.end method

.method public final p(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->C()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$b;

    invoke-direct {v1, p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$b;-><init>(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;)V
    .locals 4

    const-string v0, "download_start_cancel"

    const-string v1, "build_taskinfo_error"

    sget-object v2, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->UNKNOWN:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-eq p1, v2, :cond_0

    sget-object v3, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-eq v2, v3, :cond_4

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->g:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isEnableAppUpgradeDownloadWithMobile()Z

    move-result p1

    :try_start_0
    iget-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->l:Ljava/lang/String;

    invoke-static {p2, p1, p3, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->q(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;ZLjava/lang/String;Ljava/lang/String;)Lo/cm3;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "IncrementalDownloader"

    const-string v0, "taskInfo not valid"

    invoke-static {p3, v0}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lo/cm3;

    invoke-direct {p3}, Lo/cm3;-><init>()V

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lo/cm3;

    invoke-direct {p1}, Lo/cm3;-><init>()V

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f110533

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->p(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-void

    :cond_4
    :goto_1
    new-instance p1, Lo/cm3;

    invoke-direct {p1}, Lo/cm3;-><init>()V

    iget-object p3, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    iput-object p3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->g(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/cm3;->g0(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->H(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/cm3;->f0(Ljava/lang/String;)V

    if-nez p2, :cond_5

    const-string p3, ""

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {p1, p3}, Lo/cm3;->m0(Ljava/lang/String;)V

    if-nez p2, :cond_6

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullFileSize()J

    move-result-wide v1

    :goto_3
    invoke-virtual {p1, v1, v2}, Lo/cm3;->i0(J)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_7
    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final s()Z
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->h:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPriority()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;->STRONG:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->L()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final u(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->a4()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->s()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final v()Z
    .locals 2

    invoke-static {}, Lo/q55;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final declared-synchronized w(ZLo/cm3;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->y(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->UNKNOWN:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    iput-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    invoke-static {v1, p1, v2}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->T(Ljava/lang/String;ZI)V

    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->g:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->i:Ljava/lang/String;

    iput-object p1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->g:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;

    iget-object v5, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->h:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-object v4, v0

    move-object v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$d;->a(ZLcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;Ljava/lang/String;Lo/cm3;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;)V

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->J()Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->v(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final x(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 6

    iget-boolean v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    instance-of v1, p2, Lo/cm3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    check-cast p2, Lo/cm3;

    iget-object v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->FINISH:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v0, p1, Lo/cm3;

    if-eqz v0, :cond_0

    check-cast p1, Lo/cm3;

    invoke-virtual {p1}, Lo/cm3;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/cm3;->l0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/cm3;->b0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/cm3;->k0(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->r(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    return-void

    :cond_1
    iget-boolean v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-eqz v1, :cond_2

    iget-wide v4, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v4, v5, v2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->x(JZ)V

    :cond_2
    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v4, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->MANUALLY:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v1, v4, :cond_7

    iget-boolean v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->j:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PENDING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v1, v4, :cond_7

    :cond_4
    iget-wide p1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PAUSED:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-static {p1, p2, v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->v(JLcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V

    return-void

    :cond_5
    iget-boolean v1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    if-eqz v1, :cond_7

    iget-wide v4, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->DELETED:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-static {v4, v5, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->v(JLcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V

    goto :goto_0

    :cond_6
    move-object p2, v3

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v4, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->AUTOMATIC:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne v1, v4, :cond_d

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->C(Z)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    if-nez p2, :cond_8

    instance-of v0, p1, Lo/cm3;

    if-eqz v0, :cond_8

    move-object p2, p1

    check-cast p2, Lo/cm3;

    goto :goto_1

    :cond_8
    if-nez p2, :cond_9

    new-instance p2, Lo/cm3;

    invoke-direct {p2}, Lo/cm3;-><init>()V

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    iput-object p1, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_9
    :goto_1
    invoke-static {}, Lo/x87;->i()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "IsNotWifi"

    goto :goto_2

    :cond_a
    const-string p1, "ConfigNotAllow"

    :goto_2
    invoke-static {p2, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    return-void

    :cond_b
    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->u(Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    if-eqz p2, :cond_d

    iget-object v0, p2, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->ERROR:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v0, v1, :cond_d

    sget v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->m:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c

    const-string p1, "retry_time_more_than_four_times"

    invoke-static {p2, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    return-void

    :cond_c
    add-int/2addr v0, v2

    sput v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->m:I

    :cond_d
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/snaptube/taskManager/TaskMessageCenter;->x(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    invoke-static {p1, v3}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->l(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    return-void
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->j:Z

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->k:Ljava/lang/String;

    return-void
.end method

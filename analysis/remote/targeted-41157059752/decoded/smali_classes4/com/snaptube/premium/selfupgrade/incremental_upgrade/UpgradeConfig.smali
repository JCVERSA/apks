.class public Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;,
        Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;,
        Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;,
        Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;
    }
.end annotation


# static fields
.field public static final NEWEST:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

.field public static final STATUS_PENDING:Ljava/lang/String; = "pending"

.field public static final STATUS_READY:Ljava/lang/String; = "ready"

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private filePath:Ljava/lang/String;

.field private fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

.field private meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

.field private patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

.field private stop:Z

.field public update:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    invoke-direct {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;-><init>()V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->NEWEST:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFileExist()Z
    .locals 2

    const/4 v0, 0x0

    return v0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canFullUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canPatchUpdate()Z
    .locals 3

    const/4 v0, 0x0

    return v0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "ready"

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->status:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public deleteApk()Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public getBackOffTime()I
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->usePatchUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->status:Ljava/lang/String;

    const-string v1, "pending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->backoff:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBigVersion()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->version:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getChangeLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->changeLog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->changeLog:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->F()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFullFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->size:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFullMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->md5:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFullUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->fullInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNotifyInterval()J
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->notifyInterval:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getPatchMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->md5:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPatchUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;->packageInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;

    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$PackageInfo;->url:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPopupBanner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->popupBannerUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPopupInterval()J
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->popupInterval:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getPriority()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->priority:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    :goto_0
    return-object v0
.end method

.method public getUpdateLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->changeLog:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUpdateTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->title:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->version:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getVersionCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Lo/de5;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isApkExist()Z
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->isFileExist()Z

    move-result v0

    return v0
.end method

.method public isApkMd5Correct()Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFullMd5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/vg4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNormalUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPriority()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;->NORMAL:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->stop:Z

    return v0
.end method

.method public isStrictForceUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->meta:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeMeta;->isForceUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStrongUpdate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->getPriority()Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;->STRONG:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpdatePriority;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->filePath:Ljava/lang/String;

    return-void
.end method

.method public usePatchUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->patchInfo:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig$UpgradeInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

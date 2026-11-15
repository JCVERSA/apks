.class public Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;


# static fields
.field private static sInstance:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;


# instance fields
.field private final mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getInstance()Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    return-void
.end method

.method private convertPackageInfo(Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 14

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_1
    move-object v9, p0

    new-instance p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    iget-object v2, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mAuthor:Ljava/lang/String;

    iget v4, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mVersion:I

    iget v5, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mType:I

    iget-object v6, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mAppDir:Ljava/lang/String;

    iget-object v7, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->getRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mRunning:Z

    iget v11, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mTargetUserId:I

    iget v12, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mTypeFlags:I

    iget v13, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mEnabledOrder:I

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZIII)V

    return-object p0
.end method

.method private convertResourceItem(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;->getType()Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;->valueOf(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;

    move-result-object p0

    new-instance v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;->getRelativePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;-><init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertResourcesInfo(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;->getThemeId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;->getWallpaperResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourceItem(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->addWallpaperResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;->getPreviewResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourceItem(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->addPreviewResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;->getI18nResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourceItem(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->addI18nResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;->getPersonalizeResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourceItem(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->addPersonalizeResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;->getWidgetResources()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourceItem(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo$ResourceItem;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->addWidgetResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V

    goto :goto_4

    :cond_5
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;
    .locals 2

    const-class v0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->sInstance:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    invoke-direct {v1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;-><init>()V

    sput-object v1, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->sInstance:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->sInstance:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentAppIcon(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentAppIcon(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentDraggableIcons(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentDraggableIcons(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFontDescription()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentFontDescription()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFontPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentFontPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconBackground()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconBackground()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconBackground(I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconBackground(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconForeground()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconForeground()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconForeground(I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconForeground(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconMask()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconMask()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconMask(I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconMask(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconSaturationLevel()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconSaturationLevel()F

    move-result p0

    return p0
.end method

.method public getCurrentIconSaturationLevel(I)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconSaturationLevel(I)F

    move-result p0

    return p0
.end method

.method public getCurrentIconTransformMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconTransformMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconTransformMatrix(I)Landroid/graphics/Matrix;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentIconTransformMatrix(I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentRunningTheme(I)Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertPackageInfo(Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentThemeResources()Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentThemeResources()Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourcesInfo(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentThemeRootFile(I)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentThemeRootFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentThemeRootFile(II)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentThemeRootFile(II)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFontDescription(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getFontDescription(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getFontDescription(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getFontDescription(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getFontPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFonts(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getFonts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFonts(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getFonts(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIconBackground(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconBackground(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconBackground(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconBackground(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconForeground(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconForeground(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconForeground(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconForeground(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconMask(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconMask(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconMask(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconMask(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconSaturationLevel(Ljava/lang/String;)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconSaturationLevel(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getIconSaturationLevel(Ljava/lang/String;I)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconSaturationLevel(Ljava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public getIconTransformMatrix(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconTransformMatrix(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getIconTransformMatrix(Ljava/lang/String;I)Landroid/graphics/Matrix;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getIconTransformMatrix(Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategories()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeCategories()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategories(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeCategories(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryDescs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeCategoryDescs()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryDescs(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeCategoryDescs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryTitles()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeCategoryTitles()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryTitles(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeCategoryTitles(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeLockPreview(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeLockPreview(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemeLockPreview(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeLockPreview(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemePreview(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemePreview(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemePreview(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemePreview(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemeResources(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeResources(Ljava/lang/String;)Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourcesInfo(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getThemeResources(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeResources(Ljava/lang/String;I)Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->convertResourcesInfo(Lcom/transsion/hubsdk/resource/theme/TranThemeResourceInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getThemeThumbPreview(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeThumbPreview(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemeThumbPreview(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getThemeThumbPreview(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaper(ILjava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaper(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaper(ILjava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaper(ILjava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategories()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaperCategories()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategories(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaperCategories(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryDescs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaperCategoryDescs()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryDescs(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaperCategoryDescs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryTitles()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaperCategoryTitles()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryTitles(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getWallpaperCategoryTitles(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider$1;-><init>(Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->registerListener(Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider$Listener;)V

    return-void
.end method

.class public Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;,
        Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;
    }
.end annotation


# instance fields
.field private final mI18nResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersonalizeResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mThemeId:Ljava/lang/String;

.field private final mWallpaperResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPreviewResources:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mI18nResources:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPersonalizeResources:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWidgetResources:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mThemeId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addI18nResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mI18nResources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPersonalizeResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPersonalizeResources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPreviewResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPreviewResources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWallpaperResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWidgetResource(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWidgetResources:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAllResources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPreviewResources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mI18nResources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPersonalizeResources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWidgetResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getI18nResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mI18nResources:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPersonalizeResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPersonalizeResources:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPreviewResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPreviewResources:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getResourcesByExtension(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->getAllResources()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getResourcesByType(Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->getAllResources()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->getType()Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getThemeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mThemeId:Ljava/lang/String;

    return-object p0
.end method

.method public getWallpaperConfigs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->isJson()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->isXml()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getWallpaperDirectories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getWallpaperImages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getWallpaperResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWallpaperResourcesByExtension(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getWallpaperVideos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;

    invoke-virtual {v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getWidgetResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo$ResourceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWidgetResources:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranThemeResourceInfo{themeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mThemeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaperCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWallpaperResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPreviewResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", i18nCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mI18nResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", personalizeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mPersonalizeResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", widgetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;->mWidgetResources:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

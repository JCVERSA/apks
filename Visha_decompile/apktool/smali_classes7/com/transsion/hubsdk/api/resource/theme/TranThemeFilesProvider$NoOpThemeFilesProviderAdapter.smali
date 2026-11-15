.class final Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$NoOpThemeFilesProviderAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoOpThemeFilesProviderAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$NoOpThemeFilesProviderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 4
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentFontDescription()Ljava/io/File;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentFontPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconBackground()Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconBackground(I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconForeground()Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconForeground(I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconMask()Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconMask(I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconSaturationLevel()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentIconSaturationLevel(I)F
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentIconTransformMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentIconTransformMatrix(I)Landroid/graphics/Matrix;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentThemeResources()Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentThemeRootFile(I)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentThemeRootFile(II)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontDescription(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontDescription(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconBackground(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconBackground(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconForeground(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconForeground(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconMask(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconMask(Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconSaturationLevel(Ljava/lang/String;)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public getIconSaturationLevel(Ljava/lang/String;I)F
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public getIconTransformMatrix(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconTransformMatrix(Ljava/lang/String;I)Landroid/graphics/Matrix;
    .locals 0

    .line 2
    const/4 p0, 0x0

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeResources(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeResources(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 0

    .line 2
    const/4 p0, 0x0

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
    const/4 p0, 0x0

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
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaper(ILjava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaper(ILjava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 2
    const/4 p0, 0x0

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

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
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V
    .locals 0

    return-void
.end method

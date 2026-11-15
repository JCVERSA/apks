.class public interface abstract Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getCurrentAppIcon(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getCurrentAppIcon(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getCurrentDraggableIcons(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getCurrentDraggableIcons(Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getCurrentFontDescription()Ljava/io/File;
.end method

.method public abstract getCurrentFontPath()Ljava/lang/String;
.end method

.method public abstract getCurrentIconBackground()Ljava/io/File;
.end method

.method public abstract getCurrentIconBackground(I)Ljava/io/File;
.end method

.method public abstract getCurrentIconForeground()Ljava/io/File;
.end method

.method public abstract getCurrentIconForeground(I)Ljava/io/File;
.end method

.method public abstract getCurrentIconMask()Ljava/io/File;
.end method

.method public abstract getCurrentIconMask(I)Ljava/io/File;
.end method

.method public abstract getCurrentIconSaturationLevel()F
.end method

.method public abstract getCurrentIconSaturationLevel(I)F
.end method

.method public abstract getCurrentIconTransformMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getCurrentIconTransformMatrix(I)Landroid/graphics/Matrix;
.end method

.method public abstract getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
.end method

.method public abstract getCurrentThemeResources()Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
.end method

.method public abstract getCurrentThemeRootFile(I)Ljava/io/File;
.end method

.method public abstract getCurrentThemeRootFile(II)Ljava/io/File;
.end method

.method public abstract getDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getFontDescription(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFontDescription(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getFontPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFontPath(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getFonts(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getFonts(Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getIconBackground(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getIconBackground(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getIconForeground(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getIconForeground(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getIconMask(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getIconMask(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getIconSaturationLevel(Ljava/lang/String;)F
.end method

.method public abstract getIconSaturationLevel(Ljava/lang/String;I)F
.end method

.method public abstract getIconTransformMatrix(Ljava/lang/String;)Landroid/graphics/Matrix;
.end method

.method public abstract getIconTransformMatrix(Ljava/lang/String;I)Landroid/graphics/Matrix;
.end method

.method public abstract getThemeCategories()Ljava/util/Map;
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
.end method

.method public abstract getThemeCategories(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract getThemeCategoryDescs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThemeCategoryDescs(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract getThemeCategoryTitles()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThemeCategoryTitles(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract getThemeLockPreview(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getThemeLockPreview(Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getThemePreview(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getThemePreview(Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getThemeResources(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
.end method

.method public abstract getThemeResources(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
.end method

.method public abstract getThemeThumbPreview(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getThemeThumbPreview(Ljava/lang/String;I)Ljava/util/List;
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
.end method

.method public abstract getWallpaper(ILjava/lang/String;)Ljava/io/File;
.end method

.method public abstract getWallpaper(ILjava/lang/String;I)Ljava/io/File;
.end method

.method public abstract getWallpaperCategories()Ljava/util/Map;
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
.end method

.method public abstract getWallpaperCategories(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract getWallpaperCategoryDescs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWallpaperCategoryDescs(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract getWallpaperCategoryTitles()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWallpaperCategoryTitles(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract registerListener(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V
.end method

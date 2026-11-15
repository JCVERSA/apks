package com.transsion.hubsdk.interfaces.resource.theme;

import android.graphics.Matrix;
import com.transsion.hubsdk.api.resource.theme.TranThemeFilesProvider;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.hubsdk.api.resource.theme.TranThemeResourceInfo;
import java.io.File;
import java.util.List;
import java.util.Map;

public interface ITranThemeFilesProviderAdapter {
    File getAppIcon(String str, String str2);

    File getAppIcon(String str, String str2, int i);

    File getAppIcon(String str, String str2, String str3);

    File getAppIcon(String str, String str2, String str3, int i);

    File getCurrentAppIcon(String str);

    File getCurrentAppIcon(String str, int i);

    File getCurrentAppIcon(String str, String str2);

    File getCurrentAppIcon(String str, String str2, int i);

    List<File> getCurrentDraggableIcons(String str);

    List<File> getCurrentDraggableIcons(String str, int i);

    List<File> getCurrentDraggableIcons(String str, String str2);

    List<File> getCurrentDraggableIcons(String str, String str2, int i);

    File getCurrentFontDescription();

    String getCurrentFontPath();

    File getCurrentIconBackground();

    File getCurrentIconBackground(int i);

    File getCurrentIconForeground();

    File getCurrentIconForeground(int i);

    File getCurrentIconMask();

    File getCurrentIconMask(int i);

    float getCurrentIconSaturationLevel();

    float getCurrentIconSaturationLevel(int i);

    Matrix getCurrentIconTransformMatrix();

    Matrix getCurrentIconTransformMatrix(int i);

    TranThemePackageInfo getCurrentRunningTheme(int i);

    TranThemeResourceInfo getCurrentThemeResources();

    File getCurrentThemeRootFile(int i);

    File getCurrentThemeRootFile(int i, int i2);

    List<File> getDraggableIcons(String str, String str2);

    List<File> getDraggableIcons(String str, String str2, int i);

    List<File> getDraggableIcons(String str, String str2, String str3);

    List<File> getDraggableIcons(String str, String str2, String str3, int i);

    File getFontDescription(String str);

    File getFontDescription(String str, int i);

    String getFontPath(String str);

    String getFontPath(String str, int i);

    List<File> getFonts(String str);

    List<File> getFonts(String str, int i);

    File getIconBackground(String str);

    File getIconBackground(String str, int i);

    File getIconForeground(String str);

    File getIconForeground(String str, int i);

    File getIconMask(String str);

    File getIconMask(String str, int i);

    float getIconSaturationLevel(String str);

    float getIconSaturationLevel(String str, int i);

    Matrix getIconTransformMatrix(String str);

    Matrix getIconTransformMatrix(String str, int i);

    Map<String, List<String>> getThemeCategories();

    Map<String, List<String>> getThemeCategories(String str);

    Map<String, String> getThemeCategoryDescs();

    Map<String, String> getThemeCategoryDescs(String str);

    Map<String, String> getThemeCategoryTitles();

    Map<String, String> getThemeCategoryTitles(String str);

    List<File> getThemeLockPreview(String str);

    List<File> getThemeLockPreview(String str, int i);

    List<File> getThemePreview(String str);

    List<File> getThemePreview(String str, int i);

    TranThemeResourceInfo getThemeResources(String str);

    TranThemeResourceInfo getThemeResources(String str, int i);

    List<File> getThemeThumbPreview(String str);

    List<File> getThemeThumbPreview(String str, int i);

    File getWallpaper(int i, String str);

    File getWallpaper(int i, String str, int i2);

    Map<String, List<String>> getWallpaperCategories();

    Map<String, List<String>> getWallpaperCategories(String str);

    Map<String, String> getWallpaperCategoryDescs();

    Map<String, String> getWallpaperCategoryDescs(String str);

    Map<String, String> getWallpaperCategoryTitles();

    Map<String, String> getWallpaperCategoryTitles(String str);

    void registerListener(TranThemeFilesProvider.Listener listener);
}

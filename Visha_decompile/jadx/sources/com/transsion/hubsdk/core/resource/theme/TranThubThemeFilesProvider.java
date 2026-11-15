package com.transsion.hubsdk.core.resource.theme;

import android.graphics.Matrix;
import android.os.Bundle;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.hubsdk.api.resource.theme.TranThemeResourceInfo;
import com.transsion.hubsdk.interfaces.resource.theme.ITranThemeFilesProviderAdapter;
import com.transsion.hubsdk.resource.theme.TranThemeFilesProvider;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TranThubThemeFilesProvider implements ITranThemeFilesProviderAdapter {
    private static TranThubThemeFilesProvider sInstance;
    private final TranThemeFilesProvider mTranThemeFilesProvider = TranThemeFilesProvider.getInstance();

    private TranThemePackageInfo convertPackageInfo(com.transsion.hubsdk.resource.theme.TranThemePackageInfo tranThemePackageInfo) {
        if (tranThemePackageInfo == null) {
            return null;
        }
        return new TranThemePackageInfo(tranThemePackageInfo.mId, tranThemePackageInfo.mAuthor, tranThemePackageInfo.mVersion, tranThemePackageInfo.mType, tranThemePackageInfo.mAppDir, tranThemePackageInfo.mDescription, tranThemePackageInfo.getRootDir().getPath(), tranThemePackageInfo.getBundle() != null ? new Bundle(tranThemePackageInfo.getBundle()) : null, tranThemePackageInfo.mRunning, tranThemePackageInfo.mTargetUserId, tranThemePackageInfo.mTypeFlags, tranThemePackageInfo.mEnabledOrder);
    }

    private TranThemeResourceInfo.ResourceItem convertResourceItem(com.transsion.hubsdk.resource.theme.TranThemeResourceInfo.ResourceItem resourceItem) {
        if (resourceItem == null) {
            return null;
        }
        return new TranThemeResourceInfo.ResourceItem(TranThemeResourceInfo.ResourceType.valueOf(resourceItem.getType().name()), resourceItem.getFile(), resourceItem.getRelativePath());
    }

    private TranThemeResourceInfo convertResourcesInfo(com.transsion.hubsdk.resource.theme.TranThemeResourceInfo tranThemeResourceInfo) {
        if (tranThemeResourceInfo == null) {
            return null;
        }
        TranThemeResourceInfo tranThemeResourceInfo2 = new TranThemeResourceInfo(tranThemeResourceInfo.getThemeId());
        Iterator it = tranThemeResourceInfo.getWallpaperResources().iterator();
        while (it.hasNext()) {
            tranThemeResourceInfo2.addWallpaperResource(convertResourceItem((com.transsion.hubsdk.resource.theme.TranThemeResourceInfo.ResourceItem) it.next()));
        }
        Iterator it2 = tranThemeResourceInfo.getPreviewResources().iterator();
        while (it2.hasNext()) {
            tranThemeResourceInfo2.addPreviewResource(convertResourceItem((com.transsion.hubsdk.resource.theme.TranThemeResourceInfo.ResourceItem) it2.next()));
        }
        Iterator it3 = tranThemeResourceInfo.getI18nResources().iterator();
        while (it3.hasNext()) {
            tranThemeResourceInfo2.addI18nResource(convertResourceItem((com.transsion.hubsdk.resource.theme.TranThemeResourceInfo.ResourceItem) it3.next()));
        }
        Iterator it4 = tranThemeResourceInfo.getPersonalizeResources().iterator();
        while (it4.hasNext()) {
            tranThemeResourceInfo2.addPersonalizeResource(convertResourceItem((com.transsion.hubsdk.resource.theme.TranThemeResourceInfo.ResourceItem) it4.next()));
        }
        Iterator it5 = tranThemeResourceInfo.getWidgetResources().iterator();
        while (it5.hasNext()) {
            tranThemeResourceInfo2.addWidgetResource(convertResourceItem((com.transsion.hubsdk.resource.theme.TranThemeResourceInfo.ResourceItem) it5.next()));
        }
        return tranThemeResourceInfo2;
    }

    public static synchronized TranThubThemeFilesProvider getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new TranThubThemeFilesProvider();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    @Override
    public File getAppIcon(String str, String str2) {
        return this.mTranThemeFilesProvider.getAppIcon(str, str2);
    }

    @Override
    public File getCurrentAppIcon(String str) {
        return this.mTranThemeFilesProvider.getCurrentAppIcon(str);
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str) {
        return this.mTranThemeFilesProvider.getCurrentDraggableIcons(str);
    }

    @Override
    public File getCurrentFontDescription() {
        return this.mTranThemeFilesProvider.getCurrentFontDescription();
    }

    @Override
    public String getCurrentFontPath() {
        return this.mTranThemeFilesProvider.getCurrentFontPath();
    }

    @Override
    public File getCurrentIconBackground() {
        return this.mTranThemeFilesProvider.getCurrentIconBackground();
    }

    @Override
    public File getCurrentIconForeground() {
        return this.mTranThemeFilesProvider.getCurrentIconForeground();
    }

    @Override
    public File getCurrentIconMask() {
        return this.mTranThemeFilesProvider.getCurrentIconMask();
    }

    @Override
    public float getCurrentIconSaturationLevel() {
        return this.mTranThemeFilesProvider.getCurrentIconSaturationLevel();
    }

    @Override
    public Matrix getCurrentIconTransformMatrix() {
        return this.mTranThemeFilesProvider.getCurrentIconTransformMatrix();
    }

    @Override
    public TranThemePackageInfo getCurrentRunningTheme(int i) {
        return convertPackageInfo(this.mTranThemeFilesProvider.getCurrentRunningTheme(i));
    }

    @Override
    public TranThemeResourceInfo getCurrentThemeResources() {
        return convertResourcesInfo(this.mTranThemeFilesProvider.getCurrentThemeResources());
    }

    @Override
    public File getCurrentThemeRootFile(int i) {
        return this.mTranThemeFilesProvider.getCurrentThemeRootFile(i);
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2) {
        return this.mTranThemeFilesProvider.getDraggableIcons(str, str2);
    }

    @Override
    public File getFontDescription(String str) {
        return this.mTranThemeFilesProvider.getFontDescription(str);
    }

    @Override
    public String getFontPath(String str) {
        return this.mTranThemeFilesProvider.getFontPath(str);
    }

    @Override
    public List<File> getFonts(String str) {
        return this.mTranThemeFilesProvider.getFonts(str);
    }

    @Override
    public File getIconBackground(String str) {
        return this.mTranThemeFilesProvider.getIconBackground(str);
    }

    @Override
    public File getIconForeground(String str) {
        return this.mTranThemeFilesProvider.getIconForeground(str);
    }

    @Override
    public File getIconMask(String str) {
        return this.mTranThemeFilesProvider.getIconMask(str);
    }

    @Override
    public float getIconSaturationLevel(String str) {
        return this.mTranThemeFilesProvider.getIconSaturationLevel(str);
    }

    @Override
    public Matrix getIconTransformMatrix(String str) {
        return this.mTranThemeFilesProvider.getIconTransformMatrix(str);
    }

    @Override
    public Map<String, List<String>> getThemeCategories() {
        return this.mTranThemeFilesProvider.getThemeCategories();
    }

    @Override
    public Map<String, String> getThemeCategoryDescs() {
        return this.mTranThemeFilesProvider.getThemeCategoryDescs();
    }

    @Override
    public Map<String, String> getThemeCategoryTitles() {
        return this.mTranThemeFilesProvider.getThemeCategoryTitles();
    }

    @Override
    public List<File> getThemeLockPreview(String str) {
        return this.mTranThemeFilesProvider.getThemeLockPreview(str);
    }

    @Override
    public List<File> getThemePreview(String str) {
        return this.mTranThemeFilesProvider.getThemePreview(str);
    }

    @Override
    public TranThemeResourceInfo getThemeResources(String str) {
        return convertResourcesInfo(this.mTranThemeFilesProvider.getThemeResources(str));
    }

    @Override
    public List<File> getThemeThumbPreview(String str) {
        return this.mTranThemeFilesProvider.getThemeThumbPreview(str);
    }

    @Override
    public File getWallpaper(int i, String str) {
        return this.mTranThemeFilesProvider.getWallpaper(i, str);
    }

    @Override
    public Map<String, List<String>> getWallpaperCategories() {
        return this.mTranThemeFilesProvider.getWallpaperCategories();
    }

    @Override
    public Map<String, String> getWallpaperCategoryDescs() {
        return this.mTranThemeFilesProvider.getWallpaperCategoryDescs();
    }

    @Override
    public Map<String, String> getWallpaperCategoryTitles() {
        return this.mTranThemeFilesProvider.getWallpaperCategoryTitles();
    }

    @Override
    public void registerListener(final com.transsion.hubsdk.api.resource.theme.TranThemeFilesProvider.Listener listener) {
        if (listener == null) {
            return;
        }
        this.mTranThemeFilesProvider.registerListener(new TranThemeFilesProvider.Listener() {
            public void onThemeUpdated() {
                listener.onThemeUpdated();
            }
        });
    }

    @Override
    public File getAppIcon(String str, String str2, int i) {
        return this.mTranThemeFilesProvider.getAppIcon(str, str2, i);
    }

    @Override
    public File getCurrentAppIcon(String str, int i) {
        return this.mTranThemeFilesProvider.getCurrentAppIcon(str, i);
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str, int i) {
        return this.mTranThemeFilesProvider.getCurrentDraggableIcons(str, i);
    }

    @Override
    public File getCurrentIconBackground(int i) {
        return this.mTranThemeFilesProvider.getCurrentIconBackground(i);
    }

    @Override
    public File getCurrentIconForeground(int i) {
        return this.mTranThemeFilesProvider.getCurrentIconForeground(i);
    }

    @Override
    public File getCurrentIconMask(int i) {
        return this.mTranThemeFilesProvider.getCurrentIconMask(i);
    }

    @Override
    public float getCurrentIconSaturationLevel(int i) {
        return this.mTranThemeFilesProvider.getCurrentIconSaturationLevel(i);
    }

    @Override
    public Matrix getCurrentIconTransformMatrix(int i) {
        return this.mTranThemeFilesProvider.getCurrentIconTransformMatrix(i);
    }

    @Override
    public File getCurrentThemeRootFile(int i, int i2) {
        return this.mTranThemeFilesProvider.getCurrentThemeRootFile(i, i2);
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2, int i) {
        return this.mTranThemeFilesProvider.getDraggableIcons(str, str2, i);
    }

    @Override
    public File getFontDescription(String str, int i) {
        return this.mTranThemeFilesProvider.getFontDescription(str, i);
    }

    @Override
    public String getFontPath(String str, int i) {
        return this.mTranThemeFilesProvider.getFontPath(str, i);
    }

    @Override
    public List<File> getFonts(String str, int i) {
        return this.mTranThemeFilesProvider.getFonts(str, i);
    }

    @Override
    public File getIconBackground(String str, int i) {
        return this.mTranThemeFilesProvider.getIconBackground(str, i);
    }

    @Override
    public File getIconForeground(String str, int i) {
        return this.mTranThemeFilesProvider.getIconForeground(str, i);
    }

    @Override
    public File getIconMask(String str, int i) {
        return this.mTranThemeFilesProvider.getIconMask(str, i);
    }

    @Override
    public float getIconSaturationLevel(String str, int i) {
        return this.mTranThemeFilesProvider.getIconSaturationLevel(str, i);
    }

    @Override
    public Matrix getIconTransformMatrix(String str, int i) {
        return this.mTranThemeFilesProvider.getIconTransformMatrix(str, i);
    }

    @Override
    public Map<String, List<String>> getThemeCategories(String str) {
        return this.mTranThemeFilesProvider.getThemeCategories(str);
    }

    @Override
    public Map<String, String> getThemeCategoryDescs(String str) {
        return this.mTranThemeFilesProvider.getThemeCategoryDescs(str);
    }

    @Override
    public Map<String, String> getThemeCategoryTitles(String str) {
        return this.mTranThemeFilesProvider.getThemeCategoryTitles(str);
    }

    @Override
    public List<File> getThemeLockPreview(String str, int i) {
        return this.mTranThemeFilesProvider.getThemeLockPreview(str, i);
    }

    @Override
    public List<File> getThemePreview(String str, int i) {
        return this.mTranThemeFilesProvider.getThemePreview(str, i);
    }

    @Override
    public TranThemeResourceInfo getThemeResources(String str, int i) {
        return convertResourcesInfo(this.mTranThemeFilesProvider.getThemeResources(str, i));
    }

    @Override
    public List<File> getThemeThumbPreview(String str, int i) {
        return this.mTranThemeFilesProvider.getThemeThumbPreview(str, i);
    }

    @Override
    public File getWallpaper(int i, String str, int i2) {
        return this.mTranThemeFilesProvider.getWallpaper(i, str, i2);
    }

    @Override
    public Map<String, List<String>> getWallpaperCategories(String str) {
        return this.mTranThemeFilesProvider.getWallpaperCategories(str);
    }

    @Override
    public Map<String, String> getWallpaperCategoryDescs(String str) {
        return this.mTranThemeFilesProvider.getWallpaperCategoryDescs(str);
    }

    @Override
    public Map<String, String> getWallpaperCategoryTitles(String str) {
        return this.mTranThemeFilesProvider.getWallpaperCategoryTitles(str);
    }

    @Override
    public File getAppIcon(String str, String str2, String str3) {
        return this.mTranThemeFilesProvider.getAppIcon(str, str2, str3);
    }

    @Override
    public File getCurrentAppIcon(String str, String str2) {
        return this.mTranThemeFilesProvider.getCurrentAppIcon(str, str2);
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str, String str2) {
        return this.mTranThemeFilesProvider.getCurrentDraggableIcons(str, str2);
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2, String str3) {
        return this.mTranThemeFilesProvider.getDraggableIcons(str, str2, str3);
    }

    @Override
    public File getAppIcon(String str, String str2, String str3, int i) {
        return this.mTranThemeFilesProvider.getAppIcon(str, str2, str3, i);
    }

    @Override
    public File getCurrentAppIcon(String str, String str2, int i) {
        return this.mTranThemeFilesProvider.getCurrentAppIcon(str, str2, i);
    }

    @Override
    public List<File> getCurrentDraggableIcons(String str, String str2, int i) {
        return this.mTranThemeFilesProvider.getCurrentDraggableIcons(str, str2, i);
    }

    @Override
    public List<File> getDraggableIcons(String str, String str2, String str3, int i) {
        return this.mTranThemeFilesProvider.getDraggableIcons(str, str2, str3, i);
    }
}

package com.transsion.hubsdk.api.resource.theme;

import android.graphics.Matrix;
import com.transsion.hubsdk.aosp.resource.theme.TranAospThemeFilesProvider;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.resource.theme.TranThubThemeFilesProvider;
import com.transsion.hubsdk.interfaces.resource.theme.ITranThemeFilesProviderAdapter;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class TranThemeFilesProvider {
    private static final ITranThemeFilesProviderAdapter NO_OP_SERVICE = new NoOpThemeFilesProviderAdapter();
    private static final String TAG = "TranThemeFilesProvider";
    public static final int WALLPAPER_HOME = 0;
    public static final int WALLPAPER_LOCK = 1;
    private TranAospThemeFilesProvider mAospService;
    private TranThubThemeFilesProvider mThubService;

    public interface Listener {
        void onThemeUpdated();
    }

    public static final class NoOpThemeFilesProviderAdapter implements ITranThemeFilesProviderAdapter {
        private NoOpThemeFilesProviderAdapter() {
        }

        @Override
        public File getAppIcon(String str, String str2) {
            return null;
        }

        @Override
        public File getCurrentAppIcon(String str) {
            return null;
        }

        @Override
        public List<File> getCurrentDraggableIcons(String str) {
            return null;
        }

        @Override
        public File getCurrentFontDescription() {
            return null;
        }

        @Override
        public String getCurrentFontPath() {
            return null;
        }

        @Override
        public File getCurrentIconBackground() {
            return null;
        }

        @Override
        public File getCurrentIconForeground() {
            return null;
        }

        @Override
        public File getCurrentIconMask() {
            return null;
        }

        @Override
        public float getCurrentIconSaturationLevel() {
            return 0.0f;
        }

        @Override
        public Matrix getCurrentIconTransformMatrix() {
            return null;
        }

        @Override
        public TranThemePackageInfo getCurrentRunningTheme(int i) {
            return null;
        }

        @Override
        public TranThemeResourceInfo getCurrentThemeResources() {
            return null;
        }

        @Override
        public File getCurrentThemeRootFile(int i) {
            return null;
        }

        @Override
        public List<File> getDraggableIcons(String str, String str2) {
            return null;
        }

        @Override
        public File getFontDescription(String str) {
            return null;
        }

        @Override
        public String getFontPath(String str) {
            return null;
        }

        @Override
        public List<File> getFonts(String str) {
            return null;
        }

        @Override
        public File getIconBackground(String str) {
            return null;
        }

        @Override
        public File getIconForeground(String str) {
            return null;
        }

        @Override
        public File getIconMask(String str) {
            return null;
        }

        @Override
        public float getIconSaturationLevel(String str) {
            return 0.0f;
        }

        @Override
        public Matrix getIconTransformMatrix(String str) {
            return null;
        }

        @Override
        public Map<String, List<String>> getThemeCategories() {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getThemeCategoryDescs() {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getThemeCategoryTitles() {
            return Collections.emptyMap();
        }

        @Override
        public List<File> getThemeLockPreview(String str) {
            return null;
        }

        @Override
        public List<File> getThemePreview(String str) {
            return null;
        }

        @Override
        public TranThemeResourceInfo getThemeResources(String str) {
            return null;
        }

        @Override
        public List<File> getThemeThumbPreview(String str) {
            return null;
        }

        @Override
        public File getWallpaper(int i, String str) {
            return null;
        }

        @Override
        public Map<String, List<String>> getWallpaperCategories() {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getWallpaperCategoryDescs() {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getWallpaperCategoryTitles() {
            return Collections.emptyMap();
        }

        @Override
        public void registerListener(Listener listener) {
        }

        @Override
        public File getAppIcon(String str, String str2, int i) {
            return null;
        }

        @Override
        public File getCurrentAppIcon(String str, int i) {
            return null;
        }

        @Override
        public List<File> getCurrentDraggableIcons(String str, int i) {
            return null;
        }

        @Override
        public File getCurrentIconBackground(int i) {
            return null;
        }

        @Override
        public File getCurrentIconForeground(int i) {
            return null;
        }

        @Override
        public File getCurrentIconMask(int i) {
            return null;
        }

        @Override
        public float getCurrentIconSaturationLevel(int i) {
            return 0.0f;
        }

        @Override
        public Matrix getCurrentIconTransformMatrix(int i) {
            return null;
        }

        @Override
        public File getCurrentThemeRootFile(int i, int i2) {
            return null;
        }

        @Override
        public List<File> getDraggableIcons(String str, String str2, int i) {
            return null;
        }

        @Override
        public File getFontDescription(String str, int i) {
            return null;
        }

        @Override
        public String getFontPath(String str, int i) {
            return null;
        }

        @Override
        public List<File> getFonts(String str, int i) {
            return null;
        }

        @Override
        public File getIconBackground(String str, int i) {
            return null;
        }

        @Override
        public File getIconForeground(String str, int i) {
            return null;
        }

        @Override
        public File getIconMask(String str, int i) {
            return null;
        }

        @Override
        public float getIconSaturationLevel(String str, int i) {
            return 0.0f;
        }

        @Override
        public Matrix getIconTransformMatrix(String str, int i) {
            return null;
        }

        @Override
        public Map<String, List<String>> getThemeCategories(String str) {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getThemeCategoryDescs(String str) {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getThemeCategoryTitles(String str) {
            return Collections.emptyMap();
        }

        @Override
        public List<File> getThemeLockPreview(String str, int i) {
            return null;
        }

        @Override
        public List<File> getThemePreview(String str, int i) {
            return null;
        }

        @Override
        public TranThemeResourceInfo getThemeResources(String str, int i) {
            return null;
        }

        @Override
        public List<File> getThemeThumbPreview(String str, int i) {
            return null;
        }

        @Override
        public File getWallpaper(int i, String str, int i2) {
            return null;
        }

        @Override
        public Map<String, List<String>> getWallpaperCategories(String str) {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getWallpaperCategoryDescs(String str) {
            return Collections.emptyMap();
        }

        @Override
        public Map<String, String> getWallpaperCategoryTitles(String str) {
            return Collections.emptyMap();
        }

        @Override
        public File getAppIcon(String str, String str2, String str3) {
            return null;
        }

        @Override
        public File getCurrentAppIcon(String str, String str2) {
            return null;
        }

        @Override
        public List<File> getCurrentDraggableIcons(String str, String str2) {
            return null;
        }

        @Override
        public List<File> getDraggableIcons(String str, String str2, String str3) {
            return null;
        }

        @Override
        public File getAppIcon(String str, String str2, String str3, int i) {
            return null;
        }

        @Override
        public File getCurrentAppIcon(String str, String str2, int i) {
            return null;
        }

        @Override
        public List<File> getCurrentDraggableIcons(String str, String str2, int i) {
            return null;
        }

        @Override
        public List<File> getDraggableIcons(String str, String str2, String str3, int i) {
            return null;
        }
    }

    private boolean hasAospThemeFilesProvider() {
        try {
            Class.forName("com.transsion.resource.theme.TranThemeFilesProvider", false, TranThemeFilesProvider.class.getClassLoader());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public File getAppIcon(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33501).getAppIcon(str, str2);
    }

    public File getCurrentAppIcon(String str) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentAppIcon(str);
    }

    public List<File> getCurrentDraggableIcons(String str) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentDraggableIcons(str);
    }

    public File getCurrentFontDescription() {
        return getService(TranVersion.Core.VERSION_33501).getCurrentFontDescription();
    }

    public String getCurrentFontPath() {
        return getService(TranVersion.Core.VERSION_33501).getCurrentFontPath();
    }

    public File getCurrentIconBackground() {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconBackground();
    }

    public File getCurrentIconForeground() {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconForeground();
    }

    public File getCurrentIconMask() {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconMask();
    }

    public float getCurrentIconSaturationLevel() {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconSaturationLevel();
    }

    public Matrix getCurrentIconTransformMatrix() {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconTransformMatrix();
    }

    public TranThemePackageInfo getCurrentRunningTheme(int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentRunningTheme(i);
    }

    public TranThemeResourceInfo getCurrentThemeResources() {
        return getService(TranVersion.Core.VERSION_33511).getCurrentThemeResources();
    }

    public File getCurrentThemeRootFile(int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentThemeRootFile(i);
    }

    public List<File> getDraggableIcons(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33501).getDraggableIcons(str, str2);
    }

    public File getFontDescription(String str) {
        return getService(TranVersion.Core.VERSION_33501).getFontDescription(str);
    }

    public String getFontPath(String str) {
        return getService(TranVersion.Core.VERSION_33501).getFontPath(str);
    }

    public List<File> getFonts(String str) {
        return getService(TranVersion.Core.VERSION_33501).getFonts(str);
    }

    public File getIconBackground(String str) {
        return getService(TranVersion.Core.VERSION_33501).getIconBackground(str);
    }

    public File getIconForeground(String str) {
        return getService(TranVersion.Core.VERSION_33501).getIconForeground(str);
    }

    public File getIconMask(String str) {
        return getService(TranVersion.Core.VERSION_33501).getIconMask(str);
    }

    public float getIconSaturationLevel(String str) {
        return getService(TranVersion.Core.VERSION_33501).getIconSaturationLevel(str);
    }

    public Matrix getIconTransformMatrix(String str) {
        return getService(TranVersion.Core.VERSION_33501).getIconTransformMatrix(str);
    }

    public ITranThemeFilesProviderAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str) && TranThubVersionUtil.isRecentAndroidC()) {
            TranThubThemeFilesProvider tranThubThemeFilesProvider = this.mThubService;
            if (tranThubThemeFilesProvider != null) {
                return tranThubThemeFilesProvider;
            }
            TranThubThemeFilesProvider tranThubThemeFilesProvider2 = TranThubThemeFilesProvider.getInstance();
            this.mThubService = tranThubThemeFilesProvider2;
            return tranThubThemeFilesProvider2;
        }
        if (!hasAospThemeFilesProvider()) {
            TranSdkLog.i(TAG, "No TranAospThemeFilesProvider");
            return NO_OP_SERVICE;
        }
        TranSdkLog.i(TAG, "TranAospThemeFilesProvider");
        TranAospThemeFilesProvider tranAospThemeFilesProvider = this.mAospService;
        if (tranAospThemeFilesProvider != null) {
            return tranAospThemeFilesProvider;
        }
        TranAospThemeFilesProvider tranAospThemeFilesProvider2 = new TranAospThemeFilesProvider();
        this.mAospService = tranAospThemeFilesProvider2;
        return tranAospThemeFilesProvider2;
    }

    public Map<String, List<String>> getThemeCategories() {
        return getService(TranVersion.Core.VERSION_33511).getThemeCategories();
    }

    public Map<String, String> getThemeCategoryDescs() {
        return getService(TranVersion.Core.VERSION_33511).getThemeCategoryDescs();
    }

    public Map<String, String> getThemeCategoryTitles() {
        return getService(TranVersion.Core.VERSION_33511).getThemeCategoryTitles();
    }

    public List<File> getThemeLockPreview(String str) {
        return getService(TranVersion.Core.VERSION_33501).getThemeLockPreview(str);
    }

    public List<File> getThemePreview(String str) {
        return getService(TranVersion.Core.VERSION_33501).getThemePreview(str);
    }

    public TranThemeResourceInfo getThemeResources(String str) {
        return getService(TranVersion.Core.VERSION_33511).getThemeResources(str);
    }

    public List<File> getThemeThumbPreview(String str) {
        return getService(TranVersion.Core.VERSION_33501).getThemeThumbPreview(str);
    }

    public File getWallpaper(int i, String str) {
        return getService(TranVersion.Core.VERSION_33501).getWallpaper(i, str);
    }

    public Map<String, List<String>> getWallpaperCategories() {
        return getService(TranVersion.Core.VERSION_33511).getWallpaperCategories();
    }

    public Map<String, String> getWallpaperCategoryDescs() {
        return getService(TranVersion.Core.VERSION_33511).getWallpaperCategoryDescs();
    }

    public Map<String, String> getWallpaperCategoryTitles() {
        return getService(TranVersion.Core.VERSION_33511).getWallpaperCategoryTitles();
    }

    public void registerListener(Listener listener) {
        getService(TranVersion.Core.VERSION_33501).registerListener(listener);
    }

    public File getAppIcon(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33501).getAppIcon(str, str2, i);
    }

    public File getCurrentAppIcon(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentAppIcon(str, i);
    }

    public List<File> getCurrentDraggableIcons(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentDraggableIcons(str, i);
    }

    public File getCurrentIconBackground(int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconBackground(i);
    }

    public File getCurrentIconForeground(int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconForeground(i);
    }

    public File getCurrentIconMask(int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconMask(i);
    }

    public float getCurrentIconSaturationLevel(int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconSaturationLevel(i);
    }

    public Matrix getCurrentIconTransformMatrix(int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentIconTransformMatrix(i);
    }

    public File getCurrentThemeRootFile(int i, int i2) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentThemeRootFile(i, i2);
    }

    public List<File> getDraggableIcons(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33501).getDraggableIcons(str, str2, i);
    }

    public File getFontDescription(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getFontDescription(str, i);
    }

    public String getFontPath(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getFontPath(str, i);
    }

    public List<File> getFonts(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getFonts(str, i);
    }

    public File getIconBackground(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getIconBackground(str, i);
    }

    public File getIconForeground(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getIconForeground(str, i);
    }

    public File getIconMask(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getIconMask(str, i);
    }

    public float getIconSaturationLevel(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getIconSaturationLevel(str, i);
    }

    public Matrix getIconTransformMatrix(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getIconTransformMatrix(str, i);
    }

    public Map<String, List<String>> getThemeCategories(String str) {
        return getService(TranVersion.Core.VERSION_33511).getThemeCategories(str);
    }

    public Map<String, String> getThemeCategoryDescs(String str) {
        return getService(TranVersion.Core.VERSION_33511).getThemeCategoryDescs(str);
    }

    public Map<String, String> getThemeCategoryTitles(String str) {
        return getService(TranVersion.Core.VERSION_33511).getThemeCategoryTitles(str);
    }

    public List<File> getThemeLockPreview(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getThemeLockPreview(str, i);
    }

    public List<File> getThemePreview(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getThemePreview(str, i);
    }

    public TranThemeResourceInfo getThemeResources(String str, int i) {
        return getService(TranVersion.Core.VERSION_33511).getThemeResources(str, i);
    }

    public List<File> getThemeThumbPreview(String str, int i) {
        return getService(TranVersion.Core.VERSION_33501).getThemeThumbPreview(str, i);
    }

    public File getWallpaper(int i, String str, int i2) {
        return getService(TranVersion.Core.VERSION_33501).getWallpaper(i, str, i2);
    }

    public Map<String, List<String>> getWallpaperCategories(String str) {
        return getService(TranVersion.Core.VERSION_33511).getWallpaperCategories(str);
    }

    public Map<String, String> getWallpaperCategoryDescs(String str) {
        return getService(TranVersion.Core.VERSION_33511).getWallpaperCategoryDescs(str);
    }

    public Map<String, String> getWallpaperCategoryTitles(String str) {
        return getService(TranVersion.Core.VERSION_33511).getWallpaperCategoryTitles(str);
    }

    public File getAppIcon(String str, String str2, String str3) {
        return getService(TranVersion.Core.VERSION_33501).getAppIcon(str, str2, str3);
    }

    public File getCurrentAppIcon(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentAppIcon(str, str2);
    }

    public List<File> getCurrentDraggableIcons(String str, String str2) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentDraggableIcons(str, str2);
    }

    public List<File> getDraggableIcons(String str, String str2, String str3) {
        return getService(TranVersion.Core.VERSION_33501).getDraggableIcons(str, str2, str3);
    }

    public File getAppIcon(String str, String str2, String str3, int i) {
        return getService(TranVersion.Core.VERSION_33501).getAppIcon(str, str2, str3, i);
    }

    public File getCurrentAppIcon(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentAppIcon(str, str2, i);
    }

    public List<File> getCurrentDraggableIcons(String str, String str2, int i) {
        return getService(TranVersion.Core.VERSION_33501).getCurrentDraggableIcons(str, str2, i);
    }

    public List<File> getDraggableIcons(String str, String str2, String str3, int i) {
        return getService(TranVersion.Core.VERSION_33501).getDraggableIcons(str, str2, str3, i);
    }
}

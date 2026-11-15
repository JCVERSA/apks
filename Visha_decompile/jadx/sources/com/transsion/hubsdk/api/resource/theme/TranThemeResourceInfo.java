package com.transsion.hubsdk.api.resource.theme;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.text.lookup.StringLookupFactory;

public class TranThemeResourceInfo {
    private final String mThemeId;
    private final List<ResourceItem> mWallpaperResources = new ArrayList();
    private final List<ResourceItem> mPreviewResources = new ArrayList();
    private final List<ResourceItem> mI18nResources = new ArrayList();
    private final List<ResourceItem> mPersonalizeResources = new ArrayList();
    private final List<ResourceItem> mWidgetResources = new ArrayList();

    public static class ResourceItem {
        private final File mFile;
        private final String mFileExtension;
        private final boolean mIsDirectory;
        private final String mRelativePath;
        private final ResourceType mType;

        public ResourceItem(ResourceType resourceType, File file, String str) {
            this.mType = resourceType;
            this.mFile = file;
            this.mRelativePath = str;
            boolean z = file != null && file.isDirectory();
            this.mIsDirectory = z;
            this.mFileExtension = z ? "" : extractFileExtension(file);
        }

        private String extractFileExtension(File file) {
            String name;
            int iLastIndexOf;
            return (file != null && (iLastIndexOf = (name = file.getName()).lastIndexOf(46)) > 0 && iLastIndexOf < name.length() + (-1)) ? name.substring(iLastIndexOf + 1).toLowerCase() : "";
        }

        public String getAbsolutePath() {
            File file = this.mFile;
            if (file != null) {
                return file.getAbsolutePath();
            }
            return null;
        }

        public File getFile() {
            return this.mFile;
        }

        public String getFileExtension() {
            return this.mFileExtension;
        }

        public String getFileName() {
            File file = this.mFile;
            if (file != null) {
                return file.getName();
            }
            return null;
        }

        public String getRelativePath() {
            return this.mRelativePath;
        }

        public ResourceType getType() {
            return this.mType;
        }

        public boolean isDirectory() {
            return this.mIsDirectory;
        }

        public boolean isImage() {
            return "png".equals(this.mFileExtension) || "jpg".equals(this.mFileExtension) || "jpeg".equals(this.mFileExtension) || "webp".equals(this.mFileExtension);
        }

        public boolean isJson() {
            return "json".equals(this.mFileExtension);
        }

        public boolean isVideo() {
            return "mp4".equals(this.mFileExtension) || "avi".equals(this.mFileExtension) || "mov".equals(this.mFileExtension) || "mkv".equals(this.mFileExtension);
        }

        public boolean isXml() {
            return StringLookupFactory.KEY_XML.equals(this.mFileExtension);
        }

        public String toString() {
            return "ResourceItem{type=" + this.mType.getKey() + ", path=" + getAbsolutePath() + ", relativePath=" + this.mRelativePath + ", extension=" + this.mFileExtension + ", isDirectory=" + this.mIsDirectory + '}';
        }
    }

    public enum ResourceType {
        WALLPAPER_COMMON_IMAGE("wallpaper_common_image", "Shared wallpaper image", "wallpaper.png"),
        WALLPAPER_COMMON_VIDEO("wallpaper_common_video", "Shared wallpaper video", "wallpaper.mp4"),
        WALLPAPER_COMMON_DYNAMIC_DIR("wallpaper_common_dynamic_dir", "Shared dynamic wallpaper dir", "wallpaper/"),
        WALLPAPER_COMMON_DYNAMIC_CONFIG("wallpaper_common_dynamic_config", "Shared dynamic wallpaper config", "wallpaper.json"),
        WALLPAPER_COMMON_FRONT_IMAGE("wallpaper_common_front_image", "Shared front wallpaper image", "wallpaper-front.png"),
        WALLPAPER_COMMON_FRONT_VIDEO("wallpaper_common_front_video", "Shared front wallpaper video", "wallpaper-front.mp4"),
        WALLPAPER_COMMON_FRONT_DIR("wallpaper_common_front_dir", "Shared front wallpaper dir", "wallpaper-front/"),
        WALLPAPER_COMMON_FRONT_CONFIG("wallpaper_common_front_config", "Shared front wallpaper config", "wallpaper-front.json"),
        WALLPAPER_HOME_IMAGE("wallpaper_home_image", "Home wallpaper image", "wallpaper-home.png"),
        WALLPAPER_HOME_VIDEO("wallpaper_home_video", "Home wallpaper video", "wallpaper-home.mp4"),
        WALLPAPER_HOME_DYNAMIC_DIR("wallpaper_home_dynamic_dir", "Home dynamic wallpaper dir", "wallpaper-home/"),
        WALLPAPER_HOME_DYNAMIC_CONFIG("wallpaper_home_dynamic_config", "Home dynamic wallpaper config", "wallpaper-home.json"),
        WALLPAPER_HOME_FRONT_IMAGE("wallpaper_home_front_image", "Home front wallpaper image", "wallpaper-home-front.png"),
        WALLPAPER_HOME_FRONT_VIDEO("wallpaper_home_front_video", "Home front wallpaper video", "wallpaper-home-front.mp4"),
        WALLPAPER_HOME_FRONT_DIR("wallpaper_home_front_dir", "Home front wallpaper dir", "wallpaper-home-front/"),
        WALLPAPER_HOME_FRONT_CONFIG("wallpaper_home_front_config", "Home front wallpaper config", "wallpaper-home-front.json"),
        WALLPAPER_LOCK_IMAGE("wallpaper_lock_image", "Lock wallpaper image", "wallpaper-lock.png"),
        WALLPAPER_LOCK_VIDEO("wallpaper_lock_video", "Lock wallpaper video", "wallpaper-lock.mp4"),
        WALLPAPER_LOCK_DYNAMIC_DIR("wallpaper_lock_dynamic_dir", "Lock dynamic wallpaper dir", "wallpaper-lock/"),
        WALLPAPER_LOCK_DYNAMIC_CONFIG("wallpaper_lock_dynamic_config", "Lock dynamic wallpaper config", "wallpaper-lock.json"),
        WALLPAPER_LOCK_FRONT_IMAGE("wallpaper_lock_front_image", "Lock front wallpaper image", "wallpaper-lock-front.png"),
        WALLPAPER_LOCK_FRONT_VIDEO("wallpaper_lock_front_video", "Lock front wallpaper video", "wallpaper-lock-front.mp4"),
        WALLPAPER_LOCK_FRONT_DIR("wallpaper_lock_front_dir", "Lock front wallpaper dir", "wallpaper-lock-front/"),
        WALLPAPER_LOCK_FRONT_CONFIG("wallpaper_lock_front_config", "Lock front wallpaper config", "wallpaper-lock-front.json"),
        WALLPAPER_AOD_IMAGE("wallpaper_aod_image", "AOD wallpaper image", "wallpaper-aod.png"),
        WALLPAPER_AOD_VIDEO("wallpaper_aod_video", "AOD wallpaper video", "wallpaper-aod.mp4"),
        WALLPAPER_AOD_DYNAMIC_DIR("wallpaper_aod_dynamic_dir", "AOD dynamic wallpaper dir", "wallpaper-aod/"),
        WALLPAPER_AOD_CONFIG("wallpaper_aod_config", "AOD wallpaper config", "wallpaper-aod.json"),
        LOCK_SCREEN_DIR("lock_screen_dir", "Lock screen dir", "lock-screen/"),
        LOCK_SCREEN_CONFIG("lock_screen_config", "Lock screen config", "lock-screen.json"),
        WALLPAPER_LONGTAKE("wallpaper_longtake", "Wallpaper longtake config", "wallpaper_longtake.json"),
        WALLPAPER_LONGTAKE_DIR("wallpaper_longtake_dir", "Wallpaper longtake dir", "wallpaper_longtake/"),
        PREVIEW_THUMBNAIL("preview_thumbnail", "Thumbnail", "thumbnail.png"),
        PREVIEW_UNLOCK("preview_unlock", "Unlock preview", "preview-unlock.png"),
        PREVIEW_LOCK("preview_lock", "Lock preview", "preview-lock.png"),
        PREVIEW_AOD("preview_aod", "AOD preview", "preview-aod.png"),
        PREVIEW_VIDEO("preview_video", "Preview video", "preview.mp4"),
        PREVIEW_GUIDE_DIR("preview_guide_dir", "Guide resources", "guide-resources/"),
        PREVIEW_GUIDE_CONFIG("preview_guide_config", "Guide config", "guide-config.json"),
        I18N_DEFAULT("i18n_default", "Default i18n", "default.json"),
        I18N_LANGUAGE("i18n_language", "Localized strings", "*.json"),
        PERSONALIZE_RESOURCES_DIR("personalize_resources_dir", "Personalize resources", "resources/"),
        PERSONALIZE_CONFIG("personalize_config", "Personalize config", "config.json"),
        WIDGET_QUICK_ENTER("widget_quick_enter", "Quick enter config", "quick_enter.json"),
        UNKNOWN("unknown", "Unknown type", "");

        private final String mDescription;
        private final String mExpectedFileName;
        private final String mKey;

        ResourceType(String str, String str2, String str3) {
            this.mKey = str;
            this.mDescription = str2;
            this.mExpectedFileName = str3;
        }

        public String getDescription() {
            return this.mDescription;
        }

        public String getExpectedFileName() {
            return this.mExpectedFileName;
        }

        public String getKey() {
            return this.mKey;
        }
    }

    public TranThemeResourceInfo(String str) {
        this.mThemeId = str;
    }

    public void addI18nResource(ResourceItem resourceItem) {
        this.mI18nResources.add(resourceItem);
    }

    public void addPersonalizeResource(ResourceItem resourceItem) {
        this.mPersonalizeResources.add(resourceItem);
    }

    public void addPreviewResource(ResourceItem resourceItem) {
        this.mPreviewResources.add(resourceItem);
    }

    public void addWallpaperResource(ResourceItem resourceItem) {
        this.mWallpaperResources.add(resourceItem);
    }

    public void addWidgetResource(ResourceItem resourceItem) {
        this.mWidgetResources.add(resourceItem);
    }

    public List<ResourceItem> getAllResources() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.mWallpaperResources);
        arrayList.addAll(this.mPreviewResources);
        arrayList.addAll(this.mI18nResources);
        arrayList.addAll(this.mPersonalizeResources);
        arrayList.addAll(this.mWidgetResources);
        return arrayList;
    }

    public List<ResourceItem> getI18nResources() {
        return new ArrayList(this.mI18nResources);
    }

    public List<ResourceItem> getPersonalizeResources() {
        return new ArrayList(this.mPersonalizeResources);
    }

    public List<ResourceItem> getPreviewResources() {
        return new ArrayList(this.mPreviewResources);
    }

    public List<ResourceItem> getResourcesByExtension(String str) {
        ArrayList arrayList = new ArrayList();
        String lowerCase = str != null ? str.toLowerCase() : "";
        for (ResourceItem resourceItem : getAllResources()) {
            if (lowerCase.equals(resourceItem.getFileExtension())) {
                arrayList.add(resourceItem);
            }
        }
        return arrayList;
    }

    public List<ResourceItem> getResourcesByType(ResourceType resourceType) {
        ArrayList arrayList = new ArrayList();
        for (ResourceItem resourceItem : getAllResources()) {
            if (resourceItem.getType() == resourceType) {
                arrayList.add(resourceItem);
            }
        }
        return arrayList;
    }

    public String getThemeId() {
        return this.mThemeId;
    }

    public List<ResourceItem> getWallpaperConfigs() {
        ArrayList arrayList = new ArrayList();
        for (ResourceItem resourceItem : this.mWallpaperResources) {
            if (resourceItem.isJson() || resourceItem.isXml()) {
                arrayList.add(resourceItem);
            }
        }
        return arrayList;
    }

    public List<ResourceItem> getWallpaperDirectories() {
        ArrayList arrayList = new ArrayList();
        for (ResourceItem resourceItem : this.mWallpaperResources) {
            if (resourceItem.isDirectory()) {
                arrayList.add(resourceItem);
            }
        }
        return arrayList;
    }

    public List<ResourceItem> getWallpaperImages() {
        ArrayList arrayList = new ArrayList();
        for (ResourceItem resourceItem : this.mWallpaperResources) {
            if (resourceItem.isImage()) {
                arrayList.add(resourceItem);
            }
        }
        return arrayList;
    }

    public List<ResourceItem> getWallpaperResources() {
        return new ArrayList(this.mWallpaperResources);
    }

    public List<ResourceItem> getWallpaperResourcesByExtension(String str) {
        ArrayList arrayList = new ArrayList();
        String lowerCase = str != null ? str.toLowerCase() : "";
        for (ResourceItem resourceItem : this.mWallpaperResources) {
            if (lowerCase.equals(resourceItem.getFileExtension())) {
                arrayList.add(resourceItem);
            }
        }
        return arrayList;
    }

    public List<ResourceItem> getWallpaperVideos() {
        ArrayList arrayList = new ArrayList();
        for (ResourceItem resourceItem : this.mWallpaperResources) {
            if (resourceItem.isVideo()) {
                arrayList.add(resourceItem);
            }
        }
        return arrayList;
    }

    public List<ResourceItem> getWidgetResources() {
        return new ArrayList(this.mWidgetResources);
    }

    public String toString() {
        return "TranThemeResourceInfo{themeId='" + this.mThemeId + "', wallpaperCount=" + this.mWallpaperResources.size() + ", previewCount=" + this.mPreviewResources.size() + ", i18nCount=" + this.mI18nResources.size() + ", personalizeCount=" + this.mPersonalizeResources.size() + ", widgetCount=" + this.mWidgetResources.size() + '}';
    }
}

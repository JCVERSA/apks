package com.hisavana.common.bean;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.BitmapUtil;
import defpackage.ja1;
import java.util.List;

public class AdNativeInfo extends TAdNativeInfo {
    private String adCallToAction;
    private String adCreateId;
    private int adFormat;
    private String adId;
    private int adSource;
    private String appInfo;
    private String brand;
    private String cId;
    private String deepLink;
    private String description;
    private String description2;
    private String display;
    private double ecpmPrice;
    private String ext;
    private Image icon;
    private Drawable iconDrawable;
    private List<TAdNativeInfo.Image> imageList;
    private boolean isFromLocal;
    private boolean isIconAd;
    private boolean isInternalAd;
    private boolean isOfflineAd;
    private boolean mIsRelease;
    private String materialStyle;
    private double maxPrice;
    private String mediatorSourceName;
    private String mediatorSourceUnitId;
    public int mime;
    private NativeAdWrapper nativeAdWrapper;
    private String packageName;
    private String pkgs;
    private String price;
    private String rating;
    private String requestId;
    private String saleprice;
    private String sceneId;
    private String sceneToken;
    private int sdkTypeSetStoreMark;
    private double secondPrice;
    private String showId;
    private String socialContext;
    private String sourceSize;
    private String sponsoredTranslation;
    private int storeMarkTextColor;
    private int storeMarkTextSize;
    private String title;
    private String triggerId;
    private Long triggerTs;
    private int ttl;
    private int hisavanaSource = 0;
    private int FillSource = 0;
    private int adType = 1;
    private boolean useRecommendStatus = false;
    private List<SSPWebRecommendInfo> sspWebRecommendInfos = null;
    private int pullNewestLive = -1;
    private long startCacheTime = System.currentTimeMillis();

    public static class Image extends TAdNativeInfo.Image {
        private boolean cached;
        private Drawable drawable;
        private int height;
        private float ratio;
        private String url;
        private int width;

        @Override
        public boolean canUse() {
            try {
                Drawable drawable = this.drawable;
                if (drawable == null) {
                    return false;
                }
                Bitmap bitmap = drawable instanceof BitmapDrawable ? ((BitmapDrawable) drawable).getBitmap() : null;
                return bitmap == null || !bitmap.isRecycled();
            } catch (Throwable th) {
                AdLogUtil.Log().e(Log.getStackTraceString(th));
                return false;
            }
        }

        @Override
        public Drawable getDrawable() {
            return this.drawable;
        }

        @Override
        public int getHeight() {
            return this.height;
        }

        @Override
        public float getRatio() {
            return this.ratio;
        }

        @Override
        public String getUrl() {
            return this.url;
        }

        @Override
        public int getWidth() {
            return this.width;
        }

        @Override
        public boolean isCached() {
            return this.cached;
        }

        @Override
        public void release() {
            try {
                Drawable drawable = this.drawable;
                if (drawable == null || !(drawable instanceof BitmapDrawable)) {
                    return;
                }
                BitmapUtil.recycle(((BitmapDrawable) drawable).getBitmap());
                this.drawable = null;
            } catch (Throwable th) {
                AdLogUtil.Log().e(Log.getStackTraceString(th));
            }
        }

        public void setCached(boolean z) {
            this.cached = z;
        }

        @Override
        public void setDrawable(Drawable drawable) {
            this.drawable = drawable;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setRatio(float f) {
            this.ratio = f;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setWidth(int i) {
            this.width = i;
        }

        public String toString() {
            return "Image{url='" + this.url + "', drawable=" + this.drawable + ", width=" + this.width + ", height=" + this.height + ", ratio=" + this.ratio + '}';
        }
    }

    @Override
    public void destroyAd() {
        release();
        this.icon = null;
        List<TAdNativeInfo.Image> list = this.imageList;
        if (list != null) {
            list.clear();
        }
    }

    @Override
    public void detachContext() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        if (nativeAdWrapper != null) {
            nativeAdWrapper.detachContext();
        }
    }

    @Override
    public String getAdCallToAction() {
        return this.adCallToAction;
    }

    @Override
    public String getAdCreateId() {
        return this.adCreateId;
    }

    @Override
    public String getAdData() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        return nativeAdWrapper == null ? "" : nativeAdWrapper.getAdData();
    }

    @Override
    public int getAdFormat() {
        return this.adFormat;
    }

    @Override
    public String getAdId() {
        return this.adId;
    }

    @Override
    public int getAdSource() {
        return this.adSource;
    }

    @Override
    public int getAdType() {
        return this.adType;
    }

    @Override
    public String getAppInfo() {
        return this.appInfo;
    }

    @Override
    public String getBrand() {
        return this.brand;
    }

    @Override
    public String getDeepLink() {
        return this.deepLink;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public String getDescription2() {
        return this.description2;
    }

    @Override
    public String getDisplay() {
        return this.display;
    }

    @Override
    public double getEcpmPrice() {
        return this.ecpmPrice;
    }

    @Override
    public int getExpireReason() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        if (nativeAdWrapper != null) {
            return nativeAdWrapper.getExpireReason();
        }
        return 0;
    }

    @Override
    public String getExt() {
        return this.ext;
    }

    @Override
    public int getFillSource() {
        return this.FillSource;
    }

    @Override
    public String getFilterSource() {
        if (!isIconAd()) {
            return "";
        }
        if (!TextUtils.isEmpty(this.packageName)) {
            return this.packageName;
        }
        Image image = this.icon;
        return image == null ? "" : image.getUrl();
    }

    @Override
    public Drawable getIconDrawable() {
        return this.iconDrawable;
    }

    @Override
    public List<TAdNativeInfo.Image> getImageList() {
        return this.imageList;
    }

    public String getMaterialStyle() {
        return this.materialStyle;
    }

    @Override
    public double getMaxPrice() {
        return this.maxPrice;
    }

    @Override
    public String getMediatorSourceName() {
        return this.mediatorSourceName;
    }

    @Override
    public String getMediatorSourceUnitId() {
        return this.mediatorSourceUnitId;
    }

    @Override
    public int getMime() {
        return this.mime;
    }

    @Override
    public NativeAdWrapper getNativeAdWrapper() {
        return this.nativeAdWrapper;
    }

    @Override
    public Network getNetwork() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        if (nativeAdWrapper == null || nativeAdWrapper.getAdImpl() == null) {
            return null;
        }
        return this.nativeAdWrapper.getAdImpl().getNetwork();
    }

    @Override
    public String getPackageName() {
        return this.packageName;
    }

    @Override
    public String getPkgs() {
        return this.pkgs;
    }

    @Override
    public String getPlacementId() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        if (nativeAdWrapper == null || nativeAdWrapper.getAdImpl() == null) {
            return null;
        }
        return this.nativeAdWrapper.getAdImpl().getPlacementId();
    }

    @Override
    public int getPullNewestLive() {
        return this.pullNewestLive;
    }

    @Override
    public String getRating() {
        return this.rating;
    }

    @Override
    public List<SSPWebRecommendInfo> getRecommendInfoList() {
        return this.sspWebRecommendInfos;
    }

    public String getRequestId() {
        return this.requestId;
    }

    @Override
    public String getSaleprice() {
        return this.saleprice;
    }

    @Override
    public String getSceneId() {
        return this.sceneId;
    }

    @Override
    public String getSceneToken() {
        return this.sceneToken;
    }

    public int getSdkTypeSetStoreMark() {
        return this.sdkTypeSetStoreMark;
    }

    public double getSecondPrice() {
        return this.secondPrice;
    }

    @Override
    public String getShowId() {
        return this.showId;
    }

    @Override
    public String getSocialContext() {
        return this.socialContext;
    }

    @Override
    public String getSourceSize() {
        return this.sourceSize;
    }

    @Override
    public String getSponsoredTranslation() {
        return this.sponsoredTranslation;
    }

    public int getStoreMarkTextColor() {
        return this.storeMarkTextColor;
    }

    public int getStoreMarkTextSize() {
        return this.storeMarkTextSize;
    }

    @Override
    public String getTitle() {
        return this.title;
    }

    @Override
    public String getTriggerId() {
        return this.triggerId;
    }

    @Override
    public Long getTriggerTs() {
        Long l = this.triggerTs;
        return Long.valueOf(l == null ? 0L : l.longValue());
    }

    @Override
    public int getTtl() {
        return this.ttl;
    }

    @Override
    public long getValidTimeLimit() {
        int i = this.ttl;
        if (i <= 0) {
            return Long.MAX_VALUE;
        }
        return (((long) i) * 60000) - Math.abs(System.currentTimeMillis() - this.startCacheTime);
    }

    @Override
    public boolean isAdxAd() {
        return this.hisavanaSource == 2;
    }

    @Override
    public boolean isEwAd() {
        return this.hisavanaSource == 1;
    }

    @Override
    public boolean isExpired() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        boolean z = true;
        if (nativeAdWrapper != null) {
            if (nativeAdWrapper.isExpired()) {
                setExpireReason(this.nativeAdWrapper.getExpireReason());
                return true;
            }
            z = getValidTimeLimit() <= 0;
            if (z) {
                setExpireReason(2);
            }
        }
        return z;
    }

    @Override
    public boolean isFromLocal() {
        return this.isFromLocal;
    }

    @Override
    public boolean isIconAd() {
        return this.adType == 6;
    }

    @Override
    public boolean isIconValid() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        return nativeAdWrapper != null && nativeAdWrapper.isIconValid();
    }

    @Override
    public boolean isImageValid() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        return nativeAdWrapper != null && nativeAdWrapper.isImageValid();
    }

    @Override
    public boolean isInternalAd() {
        return this.isInternalAd;
    }

    @Override
    public boolean isMatchVulgarBrand() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        return nativeAdWrapper != null && nativeAdWrapper.isMatchVulgarBrand();
    }

    @Override
    public boolean isMaterielValid() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        return nativeAdWrapper != null && nativeAdWrapper.isMaterielValid();
    }

    @Override
    public boolean isOfflineAd() {
        return this.isOfflineAd;
    }

    @Override
    public boolean isRelease() {
        return this.mIsRelease;
    }

    @Override
    public boolean isUseRecommend() {
        return this.useRecommendStatus;
    }

    @Override
    public void registerView(ViewGroup viewGroup, List<View> list) {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        if (nativeAdWrapper != null) {
            nativeAdWrapper.registerViewForInteraction(viewGroup, list, this);
        }
    }

    @Override
    public void release() {
        try {
            if (this.mIsRelease) {
                return;
            }
            NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
            if (nativeAdWrapper != null) {
                nativeAdWrapper.unregisterView(this);
                this.nativeAdWrapper.destroy();
            }
            if (getIcon() != null) {
                getIcon().release();
            }
            List<TAdNativeInfo.Image> imageList = getImageList();
            if (imageList != null && imageList.size() > 0) {
                for (TAdNativeInfo.Image image : imageList) {
                    if (image != null) {
                        image.release();
                    }
                }
            }
            Drawable drawable = this.iconDrawable;
            if (drawable != null && (drawable instanceof BitmapDrawable)) {
                BitmapUtil.recycle(((BitmapDrawable) drawable).getBitmap());
                this.iconDrawable = null;
            }
            this.mIsRelease = true;
        } catch (Throwable th) {
            AdLogUtil.Log().e(Log.getStackTraceString(th));
        }
    }

    public void setAdCallToAction(String str) {
        this.adCallToAction = str;
    }

    public void setAdCreateId(String str) {
        this.adCreateId = str;
    }

    public void setAdFormat(int i) {
        this.adFormat = i;
    }

    public void setAdId(String str) {
        this.adId = str;
    }

    @Override
    public void setAdSource(int i) {
        this.adSource = i;
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public void setAppInfo(String str) {
        this.appInfo = str;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setDeepLink(String str) {
        this.deepLink = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDescription2(String str) {
        this.description2 = str;
    }

    public void setDisplay(String str) {
        this.display = str;
    }

    @Override
    public void setEcpmPrice(double d) {
        this.ecpmPrice = d;
    }

    @Override
    public void setExpireReason(int i) {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        if (nativeAdWrapper != null) {
            nativeAdWrapper.setExpireReason(i);
        }
    }

    @Override
    public void setExt(String str) {
        this.ext = str;
    }

    @Override
    public void setFillSource(int i) {
        this.FillSource = i;
    }

    public void setFromLocal(boolean z) {
        this.isFromLocal = z;
    }

    public void setHisavanaSource(int i) {
        this.hisavanaSource = i;
    }

    public void setIcon(Image image) {
        this.icon = image;
    }

    public void setIconAd(boolean z) {
        this.isIconAd = z;
    }

    @Override
    public void setIconDrawable(Drawable drawable) {
        this.iconDrawable = drawable;
    }

    public void setImageList(List<TAdNativeInfo.Image> list) {
        this.imageList = list;
    }

    public void setInternalAd(boolean z) {
        this.isInternalAd = z;
    }

    public void setMaterialStyle(String str) {
        this.materialStyle = str;
    }

    @Override
    public void setMaxPrice(double d) {
        this.maxPrice = d;
    }

    public void setMediatorSourceName(String str) {
        this.mediatorSourceName = str;
    }

    public void setMediatorSourceUnitId(String str) {
        this.mediatorSourceUnitId = str;
    }

    public void setMime(int i) {
        this.mime = i;
    }

    @Override
    public void setNativeAdWrapper(NativeAdWrapper nativeAdWrapper) {
        this.nativeAdWrapper = nativeAdWrapper;
    }

    public void setOfflineAd(boolean z) {
        this.isOfflineAd = z;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPkgs(String str) {
        this.pkgs = str;
    }

    @Override
    public void setPreload(boolean z) {
    }

    public void setPullNewestLive(int i) {
        this.pullNewestLive = i;
    }

    public void setRating(String str) {
        this.rating = str;
    }

    @Override
    public void setRequestType(int i) {
    }

    public void setSaleprice(String str) {
        this.saleprice = str;
    }

    @Override
    public void setSceneId(String str) {
        this.sceneId = str;
    }

    @Override
    public void setSceneToken(String str) {
        this.sceneToken = str;
    }

    public void setSdkTypeSetStoreMark(int i) {
        this.sdkTypeSetStoreMark = i;
    }

    @Override
    public void setSecondPrice(double d) {
        AdLogUtil.Log().d(ja1.SECOND_PRICE_TAG, "*----> AdNativeInfo setSecondPrice price" + d);
        this.secondPrice = d;
    }

    @Override
    public void setShowId(String str) {
        this.showId = str;
    }

    public void setSocialContext(String str) {
        this.socialContext = str;
    }

    public void setSourceSize(String str) {
        this.sourceSize = str;
    }

    public void setSponsoredTranslation(String str) {
        this.sponsoredTranslation = str;
    }

    public void setSspWebRecommendInfos(List<SSPWebRecommendInfo> list) {
        this.sspWebRecommendInfos = list;
    }

    public void setStoreMarkTextColor(int i) {
        this.storeMarkTextColor = i;
    }

    public void setStoreMarkTextSize(int i) {
        this.storeMarkTextSize = i;
    }

    @Override
    public void setTimeOut(boolean z) {
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override
    public void setTriggerId(String str) {
        this.triggerId = str;
    }

    @Override
    public void setTriggerTs(Long l) {
        this.triggerTs = l;
    }

    public void setTtl(int i) {
        this.ttl = i;
    }

    public void setUseRecommend(boolean z) {
        this.useRecommendStatus = z;
    }

    public void setcId(String str) {
        this.cId = str;
    }

    public String toString() {
        return "TAdNativeInfo{adId='" + this.adId + "', cId='" + this.cId + "', title='" + this.title + "', description='" + this.description + "', description2='" + this.description2 + "', imageList=" + this.imageList + ", icon=" + this.icon + ", nativeAdWrapper=" + this.nativeAdWrapper + ", adCallToAction='" + this.adCallToAction + "', rating='" + this.rating + "', pkgs='" + this.pkgs + "', adSource=" + this.adSource + ", socialContext='" + this.socialContext + "', sponsoredTranslation='" + this.sponsoredTranslation + "', price='" + this.price + "', saleprice='" + this.saleprice + "', display='" + this.display + "', brand='" + this.brand + "', adType=" + this.adType + ", ttl=" + this.ttl + ", mIsRelease=" + this.mIsRelease + ", adCreateId=" + this.adCreateId + ", isDefaultAd=" + this.isInternalAd + ", mediatorSourceName=" + this.mediatorSourceName + ", mediatorSourceUnitId=" + this.mediatorSourceUnitId + '}';
    }

    @Override
    public void unregisterView() {
        NativeAdWrapper nativeAdWrapper = this.nativeAdWrapper;
        if (nativeAdWrapper != null) {
            nativeAdWrapper.unregisterView(this);
        }
    }

    @Override
    public Image getIcon() {
        return this.icon;
    }
}

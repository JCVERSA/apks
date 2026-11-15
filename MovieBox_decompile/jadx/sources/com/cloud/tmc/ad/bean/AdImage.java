package com.cloud.tmc.ad.bean;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.kernel.utils.TraceLog;
import java.io.Serializable;

public class AdImage implements Serializable {
    public AdsDTO adsDTO;
    private String bgPath;
    private Drawable drawable;
    private String filePath;

    private int f22583h;
    private String imgUrl;
    private boolean isCached;
    private int mType;
    private int mime;

    private int f22584w;

    public AdImage(int i10, Drawable drawable, String str) {
        this.isCached = false;
        this.mType = 2;
        this.mime = i10;
        this.drawable = drawable;
        this.filePath = str;
    }

    private Bitmap getBitmap() {
        Drawable drawable = this.drawable;
        if (drawable == null) {
            return null;
        }
        try {
            return ((BitmapDrawable) drawable).getBitmap();
        } catch (Throwable th2) {
            TraceLog.e(CommonLogUtil.TAG_AD, Log.getStackTraceString(th2));
            return null;
        }
    }

    public boolean attachView(ImageView imageView) {
        Drawable drawable;
        if (imageView == null || (drawable = this.drawable) == null) {
            return false;
        }
        imageView.setImageDrawable(drawable);
        return true;
    }

    public String getBgPath() {
        return this.bgPath;
    }

    public int getByteSize() {
        Bitmap bitmap = getBitmap();
        if (bitmap != null) {
            return bitmap.getByteCount();
        }
        return 0;
    }

    public Drawable getDrawable() {
        return this.drawable;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public int getH() {
        return this.f22583h;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public int getMime() {
        return this.mime;
    }

    public int getW() {
        return this.f22584w;
    }

    public int getmType() {
        return this.mType;
    }

    public boolean isAdImageRecycled() {
        Bitmap bitmap = getBitmap();
        return this.drawable == null || (bitmap != null && bitmap.isRecycled());
    }

    public boolean isCached() {
        return this.isCached;
    }

    public void setBgPath(String str) {
        this.bgPath = str;
    }

    public void setCached(boolean z10) {
        this.isCached = z10;
    }

    public void setDrawable(Drawable drawable) {
        this.drawable = drawable;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setH(int i10) {
        this.f22583h = i10;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setMime(int i10) {
        this.mime = i10;
    }

    public void setW(int i10) {
        this.f22584w = i10;
    }

    public void setmType(int i10) {
        this.mType = i10;
    }

    public AdImage(Drawable drawable, String str) {
        this.isCached = false;
        this.mType = 2;
        this.mime = 1;
        this.drawable = drawable;
        this.filePath = str;
    }

    public AdImage() {
        this.isCached = false;
        this.mType = 2;
    }
}

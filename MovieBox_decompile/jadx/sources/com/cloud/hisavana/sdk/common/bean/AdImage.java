package com.cloud.hisavana.sdk.common.bean;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.util.f;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import n7.c;

public class AdImage {
    private static boolean allowBlurBackground = false;
    private String bgPath;
    private Bitmap blurBgBitmap;
    private Drawable drawable;
    private String filePath;

    private int f21450h;
    private String imgUrl;
    private boolean isCached;
    private int mType;
    private int mime;
    private boolean needBlurBackground;
    public int preCache;

    private int f21451w;

    public AdImage(int i10, Drawable drawable, String str) {
        this.isCached = false;
        this.needBlurBackground = false;
        this.blurBgBitmap = null;
        this.preCache = 1;
        this.mType = 2;
        this.mime = i10;
        this.drawable = drawable;
        this.filePath = str;
    }

    public Bitmap getBitmap() {
        Drawable drawable = this.drawable;
        if (drawable == null) {
            return null;
        }
        try {
            return ((BitmapDrawable) drawable).getBitmap();
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
            return null;
        }
    }

    public static void setAllowBlurBackground(boolean z10) {
        allowBlurBackground = z10;
    }

    public boolean attachView(final ImageView imageView) {
        Drawable drawable;
        if (imageView == null || (drawable = this.drawable) == null) {
            return false;
        }
        imageView.setImageDrawable(c.a(drawable));
        if (!allowBlurBackground || !this.needBlurBackground) {
            return true;
        }
        HSScopeHelper.f22503a.g(new Runnable() {
            @Override
            public void run() {
                try {
                    final long jCurrentTimeMillis = System.currentTimeMillis();
                    AdImage adImage = AdImage.this;
                    adImage.blurBgBitmap = f.a(adImage.getBitmap(), 9, false);
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(imageView.getResources(), AdImage.this.blurBgBitmap);
                    Preconditions.d(new Preconditions.a() {
                        @Override
                        public void onRun() {
                            imageView.setBackground(bitmapDrawable);
                            b4.b().d(AdImage.class.getName(), "blur costs" + (System.currentTimeMillis() - jCurrentTimeMillis));
                        }
                    });
                } catch (Throwable th2) {
                    b4.b().e(Log.getStackTraceString(th2));
                }
            }
        });
        return true;
    }

    public void destroy() {
        Bitmap bitmap = this.blurBgBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.blurBgBitmap = null;
        }
    }

    public String getBgPath() {
        return this.bgPath;
    }

    public int getByteSize() {
        try {
            Bitmap bitmap = getBitmap();
            if (bitmap != null) {
                return bitmap.getByteCount();
            }
            return 0;
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
            return 0;
        }
    }

    public Drawable getDrawable() {
        return this.drawable;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public int getH() {
        return this.f21450h;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public int getMime() {
        return this.mime;
    }

    public int getW() {
        return this.f21451w;
    }

    public int getmType() {
        return this.mType;
    }

    public boolean isAdImageRecycled() {
        try {
            Bitmap bitmap = getBitmap();
            return this.drawable == null || (bitmap != null && bitmap.isRecycled());
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
            return false;
        }
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
        this.f21450h = i10;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setMime(int i10) {
        this.mime = i10;
    }

    public void setNeedBlurBackground(boolean z10) {
        this.needBlurBackground = z10;
    }

    public void setW(int i10) {
        this.f21451w = i10;
    }

    public void setmType(int i10) {
        this.mType = i10;
    }

    public AdImage(Drawable drawable, String str) {
        this.isCached = false;
        this.needBlurBackground = false;
        this.blurBgBitmap = null;
        this.preCache = 1;
        this.mType = 2;
        this.mime = 1;
        this.drawable = drawable;
        this.filePath = str;
    }

    public AdImage() {
        this.isCached = false;
        this.needBlurBackground = false;
        this.blurBgBitmap = null;
        this.preCache = 1;
        this.mType = 2;
    }
}

package com.transsion.hubsdk.core.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.interfaces.util.ITranIconDrawableFactoryAdapter;
import com.transsion.hubsdk.util.TranIconDrawableFactory;

public class TranThubIconDrawableFactory implements ITranIconDrawableFactoryAdapter {
    private Context mContext;
    private TranIconDrawableFactory mIconDrawableFactory;

    public TranThubIconDrawableFactory() {
        this.mIconDrawableFactory = null;
        this.mContext = null;
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        if (context == null) {
            return;
        }
        this.mIconDrawableFactory = new TranIconDrawableFactory(this.mContext);
    }

    @Override
    public Drawable getBadgedIcon(ApplicationInfo applicationInfo) {
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null) {
            return null;
        }
        return tranIconDrawableFactory.getBadgedIcon(applicationInfo);
    }

    @Override
    public Drawable getGlobalThemedIcon(Bitmap bitmap) {
        Context context;
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null || (context = this.mContext) == null) {
            return null;
        }
        return tranIconDrawableFactory.getGlobalThemedIcon(context, bitmap);
    }

    @Override
    public Drawable getUnbadgedIcon(boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        Context context;
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null || (context = this.mContext) == null) {
            return null;
        }
        return tranIconDrawableFactory.getUnbadgedIcon(context, z, packageItemInfo, applicationInfo);
    }

    @Override
    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i) {
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null) {
            return null;
        }
        return tranIconDrawableFactory.getBadgedIcon(packageItemInfo, applicationInfo, i);
    }

    @Override
    public Drawable getGlobalThemedIcon(Bitmap bitmap, String str) {
        Context context;
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null || (context = this.mContext) == null) {
            return null;
        }
        return tranIconDrawableFactory.getGlobalThemedIcon(context, bitmap, str);
    }

    @Override
    public Drawable getUnbadgedIcon(Context context, boolean z, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        TranIconDrawableFactory tranIconDrawableFactory = new TranIconDrawableFactory(context);
        this.mIconDrawableFactory = tranIconDrawableFactory;
        return tranIconDrawableFactory.getUnbadgedIcon(context, z, packageItemInfo, applicationInfo);
    }

    @Override
    public Drawable getBadgedIcon(ApplicationInfo applicationInfo, boolean z) {
        Context context;
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null || (context = this.mContext) == null) {
            return null;
        }
        return tranIconDrawableFactory.getBadgedIcon(context, applicationInfo, z);
    }

    @Override
    public Drawable getGlobalThemedIcon(Drawable drawable) {
        Context context;
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null || (context = this.mContext) == null) {
            return null;
        }
        return tranIconDrawableFactory.getGlobalThemedIcon(context, drawable);
    }

    @Override
    public Drawable getBadgedIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z) {
        Context context;
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null || (context = this.mContext) == null) {
            return null;
        }
        return tranIconDrawableFactory.getBadgedIcon(context, packageItemInfo, applicationInfo, i, z);
    }

    @Override
    public Drawable getGlobalThemedIcon(Drawable drawable, String str) {
        Context context;
        TranIconDrawableFactory tranIconDrawableFactory = this.mIconDrawableFactory;
        if (tranIconDrawableFactory == null || (context = this.mContext) == null) {
            return null;
        }
        return tranIconDrawableFactory.getGlobalThemedIcon(context, drawable, str);
    }

    @Override
    public Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo) {
        TranIconDrawableFactory tranIconDrawableFactory = new TranIconDrawableFactory(context);
        this.mIconDrawableFactory = tranIconDrawableFactory;
        return tranIconDrawableFactory.getBadgedIcon(applicationInfo);
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Bitmap bitmap) {
        if (this.mIconDrawableFactory == null) {
            this.mIconDrawableFactory = new TranIconDrawableFactory(context);
        }
        return this.mIconDrawableFactory.getGlobalThemedIcon(context, bitmap);
    }

    @Override
    public Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i) {
        TranIconDrawableFactory tranIconDrawableFactory = new TranIconDrawableFactory(context);
        this.mIconDrawableFactory = tranIconDrawableFactory;
        return tranIconDrawableFactory.getBadgedIcon(packageItemInfo, applicationInfo, i);
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Bitmap bitmap, String str) {
        if (this.mIconDrawableFactory == null) {
            this.mIconDrawableFactory = new TranIconDrawableFactory(context);
        }
        return this.mIconDrawableFactory.getGlobalThemedIcon(context, bitmap, str);
    }

    @Override
    public Drawable getBadgedIcon(Context context, ApplicationInfo applicationInfo, boolean z) {
        TranIconDrawableFactory tranIconDrawableFactory = new TranIconDrawableFactory(context);
        this.mIconDrawableFactory = tranIconDrawableFactory;
        return tranIconDrawableFactory.getBadgedIcon(context, applicationInfo, z);
    }

    @Override
    public Drawable getBadgedIcon(Context context, PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo, int i, boolean z) {
        TranIconDrawableFactory tranIconDrawableFactory = new TranIconDrawableFactory(context);
        this.mIconDrawableFactory = tranIconDrawableFactory;
        return tranIconDrawableFactory.getBadgedIcon(context, packageItemInfo, applicationInfo, i, z);
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Drawable drawable) {
        if (this.mIconDrawableFactory == null) {
            this.mIconDrawableFactory = new TranIconDrawableFactory(context);
        }
        return this.mIconDrawableFactory.getGlobalThemedIcon(context, drawable);
    }

    @Override
    public Drawable getGlobalThemedIcon(Context context, Drawable drawable, String str) {
        if (this.mIconDrawableFactory == null) {
            this.mIconDrawableFactory = new TranIconDrawableFactory(context);
        }
        return this.mIconDrawableFactory.getGlobalThemedIcon(context, drawable, str);
    }
}

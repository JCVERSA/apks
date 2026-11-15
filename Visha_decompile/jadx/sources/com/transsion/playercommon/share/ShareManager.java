package com.transsion.playercommon.share;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.LruCache;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.share.model.ShareContent;
import com.transsion.playercommon.share.model.ShareOption;
import com.transsion.playercommon.share.model.SharePlatformInfo;
import defpackage.fw4;
import defpackage.i81;
import defpackage.ilc;
import defpackage.kf;
import defpackage.oea;
import defpackage.rkc;
import defpackage.vn6;
import defpackage.y45;
import defpackage.yn6;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.comparisons.a;

public final class ShareManager {
    public static final ShareManager a = new ShareManager();
    public static final Map b = new LinkedHashMap();
    public static final LruCache c = new LruCache(10485760);

    public final Drawable a(Context context, String str) {
        LruCache lruCache = c;
        Drawable drawableA = (Drawable) lruCache.get(str);
        if (drawableA == null && (drawableA = kf.a.a(context, str)) != null) {
            lruCache.put(str, drawableA);
        }
        return drawableA;
    }

    public final List b(Context context) {
        y45.j(context, "context");
        Collection collectionValues = b.values();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            SharePlatformInfo sharePlatformInfoA = ((fw4) it.next()).a();
            if (kf.a.c(context, sharePlatformInfoA.getPackageName())) {
                sharePlatformInfoA.setIcon(a.a(context, sharePlatformInfoA.getPackageName()));
            } else {
                sharePlatformInfoA = null;
            }
            if (sharePlatformInfoA != null) {
                arrayList.add(sharePlatformInfoA);
            }
        }
        return i81.T0(arrayList, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d(((SharePlatformInfo) t).getName(), ((SharePlatformInfo) t2).getName());
            }
        });
    }

    public final void c() {
        d(ShareOption.WHATSAPP, new rkc());
        d(ShareOption.TELEGRAM, new oea());
        d(ShareOption.MESSAGES, new vn6());
        d(ShareOption.MESSENGER, new yn6());
        d(ShareOption.WHATSAPP_BUSINESS, new ilc());
    }

    public final void d(ShareOption shareOption, fw4 fw4Var) {
        Log.d("ShareManager", "registerShareProvider: " + shareOption);
        b.put(shareOption, fw4Var);
    }

    public final void e(Context context, ShareContent shareContent, ShareOption shareOption) {
        y45.j(context, "context");
        y45.j(shareContent, ICode.CALL.CALL_KEY_CONTENT);
        y45.j(shareOption, "option");
        fw4 fw4Var = (fw4) b.get(shareOption);
        if (fw4Var != null) {
            fw4Var.b(context, shareContent, shareOption);
        }
    }
}

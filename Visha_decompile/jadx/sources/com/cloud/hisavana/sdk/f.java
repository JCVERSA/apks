package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastIcon;
import com.cloud.hisavana.sdk.common.bean.VideoMask;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.f;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.bl4;
import defpackage.d45;
import defpackage.fx8;
import defpackage.h24;
import defpackage.ikd;
import defpackage.ui5;
import defpackage.x93;
import defpackage.yu3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class f extends bl4 {
    public List d;
    public b e;
    public int g;
    public boolean f = false;
    public boolean h = false;

    public class a implements DownLoadRequest.c {
        public final List a;

        public a(List list) {
            this.a = list;
        }

        @Override
        public void a(boolean z) {
            if (z) {
                f.this.h = true;
            }
        }

        @Override
        public void onSuccess() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (TaNativeInfo taNativeInfo : this.a) {
                if (taNativeInfo != null && (taNativeInfo.getAdItem().getExt() == null || taNativeInfo.getAdItem().getExt().getStoreFlag().intValue() <= 0 || taNativeInfo.getAdType() == 6 || f.this.p(taNativeInfo.getStore()))) {
                    if (taNativeInfo.getAdType() == 6) {
                        if (f.this.p(taNativeInfo.getIconImage())) {
                            arrayList.add(taNativeInfo);
                            arrayList2.add(taNativeInfo.getAdItem());
                        }
                    } else if (f.this.p(taNativeInfo.getImage())) {
                        arrayList.add(taNativeInfo);
                        arrayList2.add(taNativeInfo.getAdItem());
                    }
                    if (taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().getPslinkInfoStatus() && taNativeInfo.getIconImage() != null && taNativeInfo.getIconImage().isCached()) {
                        taNativeInfo.getAdItem().getPslinkInfo().setIconUri(yu3.e(taNativeInfo.getIconImage().getFilePath()));
                        ikd.b().d("ssp", "pslink half set icon uri");
                    }
                    if (taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().getVideoInfo() != null) {
                        AdsDTO adItem = taNativeInfo.getAdItem();
                        VastData videoInfo = adItem.getVideoInfo();
                        if (adItem.getDspType().intValue() == 2) {
                            if (videoInfo != null && videoInfo.checkVast()) {
                                arrayList.add(taNativeInfo);
                                arrayList2.add(taNativeInfo.getAdItem());
                            }
                        } else if (videoInfo != null && videoInfo.checkVast()) {
                            arrayList.add(taNativeInfo);
                            arrayList2.add(taNativeInfo.getAdItem());
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                f.this.j(TaErrorCode.ERROR_AD_MATERIAL_TAKE_FAILED);
                return;
            }
            U0.q(arrayList);
            f fVar = f.this;
            fVar.c(fVar.h);
            f.this.l(arrayList, arrayList2);
        }
    }

    public interface b {
        void a(TaErrorCode taErrorCode, Bundle bundle);

        void b(List list, List list2, Bundle bundle);
    }

    public static class c {
        public c a;
        public final TaNativeInfo b;
        public final DownLoadRequest.c c;
        public AtomicInteger d = new AtomicInteger(0);

        public class a extends DrawableResponseListener {
            public a() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i, AdImage adImage) {
                if (i == 250) {
                    if (c.this.c != null) {
                        c.this.c.a(false);
                    }
                } else if (c.this.c != null) {
                    c.this.c.a(true);
                }
                c.this.b.getImage().setCached(true);
                c.this.d();
            }
        }

        public class b extends DrawableResponseListener {
            public final AdsDTO b;

            public b(AdsDTO adsDTO) {
                this.b = adsDTO;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
                AthenaTracker.X(this.b, 1);
            }

            @Override
            public void g(int i, AdImage adImage) {
                AthenaTracker.X(this.b, 0);
                if (i == 250) {
                    if (c.this.c != null) {
                        c.this.c.a(false);
                    }
                } else if (c.this.c != null) {
                    c.this.c.a(true);
                }
                c.this.h(this.b, adImage);
            }
        }

        public class C0047c extends DrawableResponseListener {
            public C0047c() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i, AdImage adImage) {
                if (i == 250) {
                    if (c.this.c != null) {
                        c.this.c.a(false);
                    }
                } else if (c.this.c != null) {
                    c.this.c.a(true);
                }
                AdImage iconImage = c.this.b.getIconImage();
                iconImage.setCached(true);
                if (ui5.a()) {
                    iconImage.setDrawable(adImage != null ? adImage.getDrawable() : null);
                } else {
                    iconImage.setFilePath(adImage != null ? adImage.getFilePath() : "");
                }
                c.this.d();
            }
        }

        public class d extends DrawableResponseListener {
            public d() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                if (c.this.b == null || c.this.b.getAdItem() == null) {
                    return;
                }
                c.this.b.getAdItem().setACReady(Boolean.FALSE);
            }

            @Override
            public void g(int i, AdImage adImage) {
                if (c.this.b == null || c.this.b.getAdItem() == null) {
                    return;
                }
                c.this.b.getAdItem().setACReady(Boolean.TRUE);
            }
        }

        public class e extends DrawableResponseListener {
            public e() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i, AdImage adImage) {
                c.this.b.getStore().setCached(true);
                c.this.d();
            }
        }

        public class C0048f extends DrawableResponseListener {
            public C0048f() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i, AdImage adImage) {
                if (i == 250) {
                    if (c.this.c != null) {
                        c.this.c.a(false);
                    }
                } else if (c.this.c != null) {
                    c.this.c.a(true);
                }
                c.this.d();
            }
        }

        public class g extends DrawableResponseListener {
            public final VastData b;

            public g(VastData vastData) {
                this.b = vastData;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i, AdImage adImage) {
                if (i == 250) {
                    if (c.this.c != null) {
                        c.this.c.a(false);
                    }
                } else if (c.this.c != null) {
                    c.this.c.a(true);
                }
                this.b.setVideoCached(Boolean.TRUE);
                c.this.d();
            }
        }

        public c(TaNativeInfo taNativeInfo, DownLoadRequest.c cVar) {
            this.b = taNativeInfo;
            this.c = cVar;
        }

        public final void d() {
            AtomicInteger atomicInteger = this.d;
            if (atomicInteger == null || atomicInteger.decrementAndGet() > 0) {
                return;
            }
            p();
        }

        public final void f(AdImage adImage, AdsDTO adsDTO, int i, boolean z, DrawableResponseListener drawableResponseListener) {
            if (adImage != null && !TextUtils.isEmpty(adImage.getImgUrl())) {
                DownLoadRequest.k(adImage.getImgUrl(), adsDTO, i, z, drawableResponseListener);
                return;
            }
            ikd.b().d("NativeLoadManager", "image url is null");
            if (drawableResponseListener != null) {
                drawableResponseListener.a(TaErrorCode.ERROR_PRE_CACHE_IMG_URL_IS_EMPTY);
            }
        }

        public final void g(AdsDTO adsDTO) {
            DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, 8, true, new b(adsDTO));
        }

        public final void h(AdsDTO adsDTO, AdImage adImage) {
            if (adImage == null) {
                d();
            } else {
                d45.a.h(adsDTO, adImage.getFilePath(), new h24() {
                    @Override
                    public final void a(boolean z) {
                        this.a.i(z);
                    }
                });
            }
        }

        public final void i(boolean z) {
            AdImage image;
            if (z && (image = this.b.getImage()) != null) {
                image.setCached(true);
            }
            d();
        }

        public final boolean k() {
            TaNativeInfo taNativeInfo = this.b;
            if (taNativeInfo == null || TextUtils.isEmpty(taNativeInfo.getAcImageUrl())) {
                return false;
            }
            if (!DownLoadRequest.q) {
                DownLoadRequest.k(this.b.getAcImageUrl(), this.b.getAdItem(), 3, false, new d());
                return true;
            }
            TaNativeInfo taNativeInfo2 = this.b;
            if (taNativeInfo2 == null || taNativeInfo2.getAdItem() == null) {
                return true;
            }
            this.b.getAdItem().setACReady(Boolean.TRUE);
            return true;
        }

        public final boolean m() {
            TaNativeInfo taNativeInfo = this.b;
            if (taNativeInfo == null) {
                return false;
            }
            AdsDTO adItem = taNativeInfo.getAdItem();
            if (adItem == null || !adItem.isInteractiveAd()) {
                f(this.b.getImage(), this.b.getAdItem(), 2, false, new a());
                return true;
            }
            g(adItem);
            return true;
        }

        public final boolean o() {
            TaNativeInfo taNativeInfo = this.b;
            if (taNativeInfo == null) {
                return false;
            }
            f(taNativeInfo.getIconImage(), this.b.getAdItem(), 1, true, new C0047c());
            return true;
        }

        public final void p() {
            c cVar = this.a;
            if (cVar != null) {
                cVar.u();
                return;
            }
            DownLoadRequest.c cVar2 = this.c;
            if (cVar2 != null) {
                cVar2.onSuccess();
            }
        }

        public final boolean r() {
            TaNativeInfo taNativeInfo = this.b;
            if (taNativeInfo == null || taNativeInfo.getAdItem() == null) {
                ikd.b().d("NativeLoadManager", "downloadStoreIcon nativeInfo of adItem is null");
                return false;
            }
            f(this.b.getStore(), this.b.getAdItem(), 2, false, new e());
            return true;
        }

        public final boolean s() {
            VastData videoInfo;
            VastIcon icon;
            AdsDTO adItem = this.b.getAdItem();
            if (adItem == null || (videoInfo = adItem.getVideoInfo()) == null || (icon = videoInfo.getIcon()) == null || icon.getIconResource() == null || TextUtils.isEmpty(icon.getIconResource())) {
                return false;
            }
            DownLoadRequest.k(icon.getIconResource(), adItem, 11, true, new C0048f());
            return true;
        }

        public final boolean t() {
            VastData videoInfo;
            VideoMask videoMask;
            AdsDTO adItem = this.b.getAdItem();
            if (adItem == null || (videoInfo = adItem.getVideoInfo()) == null || (videoMask = videoInfo.getVideoMask()) == null || videoMask.getResource() == null || TextUtils.isEmpty(videoMask.getResource())) {
                return false;
            }
            DownLoadRequest.k(videoMask.getResource(), adItem, 12, true, new g(videoInfo));
            return true;
        }

        public final void u() {
            boolean z;
            TaNativeInfo taNativeInfo = this.b;
            if (taNativeInfo == null) {
                p();
                return;
            }
            AdsDTO adItem = taNativeInfo.getAdItem();
            if (adItem == null) {
                p();
                return;
            }
            if (adItem.getExt() == null || adItem.getExt().getStoreFlag().intValue() <= 0 || adItem.getAdType() == 6) {
                z = false;
            } else {
                String storeImageurl = adItem.getExt().getStoreImageurl();
                AdImage store = this.b.getStore();
                if (store != null) {
                    store.setImgUrl(storeImageurl);
                }
                z = true;
            }
            if (z) {
                this.d.addAndGet(1);
            }
            if (this.b.getAdType() == 1) {
                VastData videoInfo = adItem.getVideoInfo();
                this.d.addAndGet(2);
                if (videoInfo == null || !videoInfo.checkVast()) {
                    if (!m()) {
                        d();
                    }
                    if (!o()) {
                        d();
                    }
                } else {
                    if (!s()) {
                        d();
                    }
                    if (!t()) {
                        d();
                    }
                }
                if (z && !r()) {
                    d();
                }
            } else {
                this.d.addAndGet(1);
                if (!o()) {
                    d();
                }
                if (z && !r()) {
                    d();
                }
            }
            k();
        }
    }

    public f(List list, int i, b bVar) {
        this.d = list;
        this.g = i;
        this.e = bVar;
    }

    public void j(TaErrorCode taErrorCode) {
        this.f = false;
        b bVar = this.e;
        if (bVar != null) {
            bVar.a(taErrorCode, this.a);
        }
    }

    private void k(List list) {
        ikd.b().d("NativeLoadManager", "downloadMaterial start");
        List list2 = this.d;
        if (list2 == null || list2.isEmpty()) {
            ikd.b().d("NativeLoadManager", "downloadMaterial ads is null");
            j(TaErrorCode.ERROR_DOWNLOAD_MATERIAL_ADS_IS_NULL);
            return;
        }
        a aVar = new a(list);
        Iterator it = list.iterator();
        c cVar = null;
        c cVar2 = null;
        while (it.hasNext()) {
            TaNativeInfo taNativeInfo = (TaNativeInfo) it.next();
            if (cVar == null) {
                cVar2 = new c(taNativeInfo, aVar);
                cVar = cVar2;
            } else {
                cVar2.a = new c(taNativeInfo, aVar);
                cVar2 = cVar2.a;
            }
        }
        if (cVar != null) {
            cVar.u();
        }
    }

    public static void r(List list) {
        fx8.a.b(list);
    }

    public final void l(List list, final List list2) {
        this.f = false;
        if (this.d == null) {
            j(TaErrorCode.ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL);
            return;
        }
        b bVar = this.e;
        if (bVar != null) {
            bVar.b(list, list2, this.a);
        }
        if (this.g == 1) {
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() {
                    f.r(list2);
                }
            });
        }
    }

    public final boolean p(AdImage adImage) {
        return adImage != null && adImage.isCached();
    }

    public void s() {
        if (this.f) {
            return;
        }
        this.f = true;
        if (!x93.a(this.d)) {
            j(TaErrorCode.ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL);
            return;
        }
        List listH = U0.H(this.d);
        int i = this.g;
        if (i != 3 && i != 2) {
            k(listH);
        } else {
            a();
            l(listH, this.d);
        }
    }
}

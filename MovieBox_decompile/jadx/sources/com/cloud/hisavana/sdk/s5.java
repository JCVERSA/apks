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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class s5 extends h0 {

    private List f22271d;

    private b f22272e;

    private int f22274g;

    private boolean f22273f = false;

    private boolean f22275h = false;

    class a implements DownLoadRequest.c {

        final List f22276a;

        a(List list) {
            this.f22276a = list;
        }

        @Override
        public void a(boolean z10) {
            if (z10) {
                s5.this.f22275h = true;
            }
        }

        @Override
        public void onSuccess() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (TaNativeInfo taNativeInfo : this.f22276a) {
                if (taNativeInfo != null && (taNativeInfo.getAdItem().getExt() == null || taNativeInfo.getAdItem().getExt().getStoreFlag().intValue() <= 0 || taNativeInfo.getAdType() == 6 || s5.this.l(taNativeInfo.getStore()))) {
                    if (taNativeInfo.getAdType() == 6) {
                        if (s5.this.l(taNativeInfo.getIconImage())) {
                            arrayList.add(taNativeInfo);
                            arrayList2.add(taNativeInfo.getAdItem());
                        }
                    } else if (s5.this.l(taNativeInfo.getImage())) {
                        arrayList.add(taNativeInfo);
                        arrayList2.add(taNativeInfo.getAdItem());
                    }
                    if (taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().getPslinkInfoStatus() && taNativeInfo.getIconImage() != null && taNativeInfo.getIconImage().isCached()) {
                        taNativeInfo.getAdItem().getPslinkInfo().setIconUri(com.cloud.hisavana.sdk.common.util.m.e(taNativeInfo.getIconImage().getFilePath()));
                        b4.b().d("ssp", "pslink half set icon uri");
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
                s5.this.g(TaErrorCode.ERROR_AD_MATERIAL_TAKE_FAILED);
                return;
            }
            J0.q(arrayList);
            s5 s5Var = s5.this;
            s5Var.c(s5Var.f22275h);
            s5.this.k(arrayList, arrayList2);
        }
    }

    public interface b {
        void a(TaErrorCode taErrorCode, Bundle bundle);

        void b(List list, List list2, Bundle bundle);
    }

    static class c {

        private c f22278a;

        private final TaNativeInfo f22279b;

        private final DownLoadRequest.c f22280c;

        private AtomicInteger f22281d = new AtomicInteger(0);

        class a extends DrawableResponseListener {
            a() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i10, AdImage adImage) {
                if (i10 == 250) {
                    if (c.this.f22280c != null) {
                        c.this.f22280c.a(false);
                    }
                } else if (c.this.f22280c != null) {
                    c.this.f22280c.a(true);
                }
                c.this.f22279b.getImage().setCached(true);
                c.this.d();
            }
        }

        class b extends DrawableResponseListener {

            final AdsDTO f22283b;

            b(AdsDTO adsDTO) {
                this.f22283b = adsDTO;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
                AthenaTracker.S(this.f22283b, 1);
            }

            @Override
            public void g(int i10, AdImage adImage) {
                AthenaTracker.S(this.f22283b, 0);
                if (i10 == 250) {
                    if (c.this.f22280c != null) {
                        c.this.f22280c.a(false);
                    }
                } else if (c.this.f22280c != null) {
                    c.this.f22280c.a(true);
                }
                c.this.g(this.f22283b, adImage);
            }
        }

        class C0286c extends DrawableResponseListener {
            C0286c() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i10, AdImage adImage) {
                if (i10 == 250) {
                    if (c.this.f22280c != null) {
                        c.this.f22280c.a(false);
                    }
                } else if (c.this.f22280c != null) {
                    c.this.f22280c.a(true);
                }
                AdImage iconImage = c.this.f22279b.getIconImage();
                iconImage.setCached(true);
                if (com.cloud.sdk.commonutil.util.l.a()) {
                    iconImage.setDrawable(adImage != null ? adImage.getDrawable() : null);
                } else {
                    iconImage.setFilePath(adImage != null ? adImage.getFilePath() : "");
                }
                c.this.d();
            }
        }

        class d extends DrawableResponseListener {
            d() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                if (c.this.f22279b == null || c.this.f22279b.getAdItem() == null) {
                    return;
                }
                c.this.f22279b.getAdItem().setACReady(Boolean.FALSE);
            }

            @Override
            public void g(int i10, AdImage adImage) {
                if (c.this.f22279b == null || c.this.f22279b.getAdItem() == null) {
                    return;
                }
                c.this.f22279b.getAdItem().setACReady(Boolean.TRUE);
            }
        }

        class e extends DrawableResponseListener {
            e() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i10, AdImage adImage) {
                c.this.f22279b.getStore().setCached(true);
                c.this.d();
            }
        }

        class f extends DrawableResponseListener {
            f() {
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i10, AdImage adImage) {
                if (i10 == 250) {
                    if (c.this.f22280c != null) {
                        c.this.f22280c.a(false);
                    }
                } else if (c.this.f22280c != null) {
                    c.this.f22280c.a(true);
                }
                c.this.d();
            }
        }

        class g extends DrawableResponseListener {

            final VastData f22289b;

            g(VastData vastData) {
                this.f22289b = vastData;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                c.this.d();
            }

            @Override
            public void g(int i10, AdImage adImage) {
                if (i10 == 250) {
                    if (c.this.f22280c != null) {
                        c.this.f22280c.a(false);
                    }
                } else if (c.this.f22280c != null) {
                    c.this.f22280c.a(true);
                }
                this.f22289b.setVideoCached(Boolean.TRUE);
                c.this.d();
            }
        }

        public c(TaNativeInfo taNativeInfo, DownLoadRequest.c cVar) {
            this.f22279b = taNativeInfo;
            this.f22280c = cVar;
        }

        public void d() {
            AtomicInteger atomicInteger = this.f22281d;
            if (atomicInteger == null || atomicInteger.decrementAndGet() > 0) {
                return;
            }
            p();
        }

        private void e(AdImage adImage, AdsDTO adsDTO, int i10, boolean z10, DrawableResponseListener drawableResponseListener) {
            if (adImage != null && !TextUtils.isEmpty(adImage.getImgUrl())) {
                DownLoadRequest.k(adImage.getImgUrl(), adsDTO, i10, z10, drawableResponseListener);
                return;
            }
            b4.b().d("NativeLoadManager", "image url is null");
            if (drawableResponseListener != null) {
                drawableResponseListener.a(TaErrorCode.ERROR_PRE_CACHE_IMG_URL_IS_EMPTY);
            }
        }

        private void f(AdsDTO adsDTO) {
            DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, 8, true, new b(adsDTO));
        }

        public void g(AdsDTO adsDTO, AdImage adImage) {
            if (adImage == null) {
                d();
            } else {
                com.cloud.hisavana.sdk.common.util.z.f21622a.h(adsDTO, adImage.getFilePath(), new com.cloud.hisavana.sdk.common.util.n() {
                    @Override
                    public final void a(boolean z10) {
                        this.f22338a.i(z10);
                    }
                });
            }
        }

        public void i(boolean z10) {
            AdImage image;
            if (z10 && (image = this.f22279b.getImage()) != null) {
                image.setCached(true);
            }
            d();
        }

        private boolean k() {
            TaNativeInfo taNativeInfo = this.f22279b;
            if (taNativeInfo == null || TextUtils.isEmpty(taNativeInfo.getAcImageUrl())) {
                return false;
            }
            if (!DownLoadRequest.f21459q) {
                DownLoadRequest.k(this.f22279b.getAcImageUrl(), this.f22279b.getAdItem(), 3, false, new d());
                return true;
            }
            TaNativeInfo taNativeInfo2 = this.f22279b;
            if (taNativeInfo2 == null || taNativeInfo2.getAdItem() == null) {
                return true;
            }
            this.f22279b.getAdItem().setACReady(Boolean.TRUE);
            return true;
        }

        private boolean m() {
            TaNativeInfo taNativeInfo = this.f22279b;
            if (taNativeInfo == null) {
                return false;
            }
            AdsDTO adItem = taNativeInfo.getAdItem();
            if (adItem == null || !adItem.isInteractiveAd()) {
                e(this.f22279b.getImage(), this.f22279b.getAdItem(), 2, false, new a());
                return true;
            }
            f(adItem);
            return true;
        }

        private boolean o() {
            TaNativeInfo taNativeInfo = this.f22279b;
            if (taNativeInfo == null) {
                return false;
            }
            e(taNativeInfo.getIconImage(), this.f22279b.getAdItem(), 1, true, new C0286c());
            return true;
        }

        private void p() {
            c cVar = this.f22278a;
            if (cVar != null) {
                cVar.u();
                return;
            }
            DownLoadRequest.c cVar2 = this.f22280c;
            if (cVar2 != null) {
                cVar2.onSuccess();
            }
        }

        private boolean r() {
            TaNativeInfo taNativeInfo = this.f22279b;
            if (taNativeInfo == null || taNativeInfo.getAdItem() == null) {
                b4.b().d("NativeLoadManager", "downloadStoreIcon nativeInfo of adItem is null");
                return false;
            }
            e(this.f22279b.getStore(), this.f22279b.getAdItem(), 2, false, new e());
            return true;
        }

        private boolean s() {
            VastData videoInfo;
            VastIcon icon;
            AdsDTO adItem = this.f22279b.getAdItem();
            if (adItem == null || (videoInfo = adItem.getVideoInfo()) == null || (icon = videoInfo.getIcon()) == null || icon.getIconResource() == null || TextUtils.isEmpty(icon.getIconResource())) {
                return false;
            }
            DownLoadRequest.k(icon.getIconResource(), adItem, 11, true, new f());
            return true;
        }

        private boolean t() {
            VastData videoInfo;
            VideoMask videoMask;
            AdsDTO adItem = this.f22279b.getAdItem();
            if (adItem == null || (videoInfo = adItem.getVideoInfo()) == null || (videoMask = videoInfo.getVideoMask()) == null || videoMask.getResource() == null || TextUtils.isEmpty(videoMask.getResource())) {
                return false;
            }
            DownLoadRequest.k(videoMask.getResource(), adItem, 12, true, new g(videoInfo));
            return true;
        }

        public void u() {
            boolean z10;
            TaNativeInfo taNativeInfo = this.f22279b;
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
                z10 = false;
            } else {
                String storeImageurl = adItem.getExt().getStoreImageurl();
                AdImage store = this.f22279b.getStore();
                if (store != null) {
                    store.setImgUrl(storeImageurl);
                }
                z10 = true;
            }
            if (z10) {
                this.f22281d.addAndGet(1);
            }
            if (this.f22279b.getAdType() == 1) {
                VastData videoInfo = adItem.getVideoInfo();
                this.f22281d.addAndGet(2);
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
                if (z10 && !r()) {
                    d();
                }
            } else {
                this.f22281d.addAndGet(1);
                if (!o()) {
                    d();
                }
                if (z10 && !r()) {
                    d();
                }
            }
            k();
        }
    }

    public s5(List list, int i10, b bVar) {
        this.f22271d = list;
        this.f22274g = i10;
        this.f22272e = bVar;
    }

    public void g(TaErrorCode taErrorCode) {
        this.f22273f = false;
        b bVar = this.f22272e;
        if (bVar != null) {
            bVar.a(taErrorCode, this.f21879a);
        }
    }

    private void j(List list) {
        b4.b().d("NativeLoadManager", "downloadMaterial start");
        List list2 = this.f22271d;
        if (list2 == null || list2.isEmpty()) {
            b4.b().d("NativeLoadManager", "downloadMaterial ads is null");
            g(TaErrorCode.ERROR_DOWNLOAD_MATERIAL_ADS_IS_NULL);
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
                cVar2.f22278a = new c(taNativeInfo, aVar);
                cVar2 = cVar2.f22278a;
            }
        }
        if (cVar != null) {
            cVar.u();
        }
    }

    public void k(List list, List list2) {
        this.f22273f = false;
        if (this.f22271d == null) {
            g(TaErrorCode.ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL);
            return;
        }
        b bVar = this.f22272e;
        if (bVar != null) {
            bVar.b(list, list2, this.f21879a);
        }
        if (this.f22274g == 1) {
            i0.f21895a.b(list2);
        }
    }

    public boolean l(AdImage adImage) {
        return adImage != null && adImage.isCached();
    }

    public void q() {
        if (this.f22273f) {
            return;
        }
        this.f22273f = true;
        if (!com.cloud.hisavana.sdk.common.util.i.a(this.f22271d)) {
            g(TaErrorCode.ERROR_AD_NATIVE_MATERIAL_DOWNLOAD_IS_NULL);
            return;
        }
        List listG = J0.G(this.f22271d);
        int i10 = this.f22274g;
        if (i10 != 3 && i10 != 2) {
            j(listG);
        } else {
            a();
            k(listG, this.f22271d);
        }
    }
}

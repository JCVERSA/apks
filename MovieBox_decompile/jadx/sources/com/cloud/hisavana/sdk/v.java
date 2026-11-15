package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.ImgListDTO;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class v {

    private c f22367a;

    class a implements com.cloud.hisavana.sdk.common.util.p0.b {

        final AtomicInteger f22368a;

        final h4 f22369b;

        final d f22370c;

        a(AtomicInteger atomicInteger, h4 h4Var, d dVar) {
            this.f22368a = atomicInteger;
            this.f22369b = h4Var;
            this.f22370c = dVar;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            v.this.k(this.f22368a, this.f22369b, this.f22370c);
        }

        @Override
        public void b(int i10) {
            v.this.k(this.f22368a, this.f22369b, this.f22370c);
        }
    }

    class b extends DrawableResponseListener {

        final boolean f22372b;

        final String f22373c;

        final AtomicInteger f22374d;

        final h4 f22375e;

        final d f22376f;

        b(boolean z10, String str, AtomicInteger atomicInteger, h4 h4Var, d dVar) {
            this.f22372b = z10;
            this.f22373c = str;
            this.f22374d = atomicInteger;
            this.f22375e = h4Var;
            this.f22376f = dVar;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            v.this.k(this.f22374d, this.f22375e, this.f22376f);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (this.f22372b && adImage != null) {
                v.this.h(adImage.getFilePath(), this.f22373c);
            }
            v.this.k(this.f22374d, this.f22375e, this.f22376f);
        }
    }

    public interface c {
        void a(AdxImpBean adxImpBean, List list, TaErrorCode taErrorCode);

        void a(List list);
    }

    interface d {
        void a();
    }

    private static class e {

        private static final v f22378a = new v(null);
    }

    v(a aVar) {
        this();
    }

    public static v b() {
        return e.f22378a;
    }

    private void e(AdsDTO adsDTO, String str, int i10, boolean z10, h4 h4Var, AtomicInteger atomicInteger, d dVar) {
        if (TextUtils.isEmpty(str)) {
            k(atomicInteger, h4Var, dVar);
        } else {
            DownLoadRequest.k(str, adsDTO, i10, z10, new b(z10, str, atomicInteger, h4Var, dVar));
        }
    }

    private void f(h4 h4Var, d dVar) {
        if (h4Var == null) {
            dVar.a();
            return;
        }
        AdsDTO adsDTOA = h4Var.a();
        if (adsDTOA == null) {
            f(h4Var.c(), dVar);
            return;
        }
        if (TextUtils.isEmpty(w2.f(adsDTOA))) {
            f(h4Var.c(), dVar);
            return;
        }
        AtomicInteger atomicInteger = new AtomicInteger(3);
        l(h4Var, adsDTOA, atomicInteger, dVar);
        n(h4Var, adsDTOA, atomicInteger, dVar);
        p(h4Var, adsDTOA, atomicInteger, dVar);
        g(h4Var, adsDTOA, atomicInteger, dVar);
    }

    private void g(h4 h4Var, AdsDTO adsDTO, AtomicInteger atomicInteger, d dVar) {
        String offlineH5Url = adsDTO.getOfflineH5Url();
        if (TextUtils.isEmpty(offlineH5Url)) {
            k(atomicInteger, h4Var, dVar);
        } else {
            e(adsDTO, offlineH5Url, 5, adsDTO.isH5Zip(), h4Var, atomicInteger, dVar);
        }
    }

    public void h(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()));
        String str3 = File.separator;
        sb2.append(str3);
        sb2.append("offline_zip");
        sb2.append(str3);
        sb2.append(com.cloud.hisavana.sdk.common.util.a0.c(str2));
        String string = sb2.toString();
        if (new File(string).exists()) {
            return;
        }
        com.cloud.hisavana.sdk.common.util.r0.b(str, string);
    }

    public void i(List list) {
        m(list);
        o(list);
    }

    public void k(AtomicInteger atomicInteger, h4 h4Var, d dVar) {
        if (atomicInteger != null) {
            atomicInteger.decrementAndGet();
        }
        if (atomicInteger == null || atomicInteger.get() <= 0) {
            f(h4Var == null ? null : h4Var.c(), dVar);
        }
    }

    private void l(h4 h4Var, AdsDTO adsDTO, AtomicInteger atomicInteger, d dVar) {
        if (adsDTO.isVastTypeAd()) {
            com.cloud.hisavana.sdk.common.util.p0.f21581a.c(new a(atomicInteger, h4Var, dVar), adsDTO);
        } else {
            e(adsDTO, w2.e(adsDTO), w2.o(adsDTO) ? 1 : 2, false, h4Var, atomicInteger, dVar);
        }
    }

    private void m(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                if (!DownLoadRequest.f21459q && adsDTO.getAdChoiceImageUrl() != null) {
                    DownLoadRequest.k(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, false, null);
                }
                String logoUrl = adsDTO.getLogoUrl();
                String materialStyle = adsDTO.getMaterialStyle();
                if (adsDTO.getImpBeanRequest() != null && adsDTO.getImpBeanRequest().adt == 2 && (TextUtils.equals(materialStyle, "B20301") || TextUtils.equals(materialStyle, "B20302") || TextUtils.equals(materialStyle, "B20303"))) {
                    return;
                } else {
                    DownLoadRequest.k(logoUrl, adsDTO, 1, false, null);
                }
            }
        }
    }

    private void n(h4 h4Var, AdsDTO adsDTO, AtomicInteger atomicInteger, d dVar) {
        if (adsDTO.getPslinkInfoStatus()) {
            String iconUrl = adsDTO.getPslinkInfo().getIconUrl();
            List<ImgListDTO> imgList = adsDTO.getPslinkInfo().getImgList();
            if (TextUtils.isEmpty(iconUrl)) {
                return;
            }
            atomicInteger.set(atomicInteger.get() + 1 + imgList.size());
            b4.b().d("OfflineDownload", "开始下载Pslink Half素材 ==" + iconUrl + " ,psImgUrl.size() == " + imgList.size());
            e(adsDTO, iconUrl, 4, false, h4Var, atomicInteger, dVar);
            for (ImgListDTO imgListDTO : imgList) {
                if (imgListDTO != null && !TextUtils.isEmpty(imgListDTO.getUrl())) {
                    e(adsDTO, imgListDTO.getUrl(), 4, false, h4Var, atomicInteger, dVar);
                }
            }
        }
    }

    private void o(List list) {
        c cVar = this.f22367a;
        if (cVar != null) {
            cVar.a(list);
        }
    }

    private void p(h4 h4Var, AdsDTO adsDTO, AtomicInteger atomicInteger, d dVar) {
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            k(atomicInteger, h4Var, dVar);
        } else if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            k(atomicInteger, h4Var, dVar);
        } else {
            e(adsDTO, ext.getStoreImageurl(), 6, false, h4Var, atomicInteger, dVar);
        }
    }

    public void j(final List list, c cVar) {
        this.f22367a = cVar;
        if (list == null || list.isEmpty()) {
            b4.b().d("OfflineDownload", "广告list为空");
            o(null);
            return;
        }
        Iterator it = list.iterator();
        h4 h4Var = null;
        h4 h4Var2 = null;
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                h4 h4Var3 = new h4(adsDTO);
                if (h4Var2 == null) {
                    h4Var = h4Var3;
                } else {
                    h4Var2.b(h4Var3);
                }
                h4Var2 = h4Var3;
            }
        }
        if (h4Var != null) {
            f(h4Var, new d() {
                @Override
                public final void a() {
                    this.f22339a.i(list);
                }
            });
        } else {
            b4.b().d("OfflineDownload", "下载失败");
            o(null);
        }
    }

    private v() {
    }
}

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
import defpackage.dnd;
import defpackage.gob;
import defpackage.gw5;
import defpackage.ikd;
import defpackage.ul4;
import defpackage.vl4;
import defpackage.wzc;
import defpackage.yu3;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class l {
    public d a;

    public class a extends DrawableResponseListener {
        public final AdsDTO b;
        public final AtomicInteger c;
        public final dnd d;
        public final e e;

        public a(AdsDTO adsDTO, AtomicInteger atomicInteger, dnd dndVar, e eVar) {
            this.b = adsDTO;
            this.c = atomicInteger;
            this.d = dndVar;
            this.e = eVar;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd ikdVarB = ikd.b();
            StringBuilder sb = new StringBuilder();
            sb.append("template html download failed, fallback to normal ad. error=");
            sb.append(taErrorCode != null ? Integer.valueOf(taErrorCode.getErrorCode()) : "null");
            ikdVarB.w("OfflineDownload", sb.toString());
            this.b.setTemplateHtmlFilePath(null);
            l.this.i(this.c, this.d, this.e);
        }

        @Override
        public void g(int i, AdImage adImage) {
            String filePath = adImage == null ? null : adImage.getFilePath();
            if (!TextUtils.isEmpty(filePath)) {
                this.b.setTemplateHtmlFilePath(filePath);
            }
            l.this.i(this.c, this.d, this.e);
        }
    }

    public class b implements gob.b {
        public final AtomicInteger a;
        public final dnd b;
        public final e c;

        public b(AtomicInteger atomicInteger, dnd dndVar, e eVar) {
            this.a = atomicInteger;
            this.b = dndVar;
            this.c = eVar;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            l.this.i(this.a, this.b, this.c);
        }

        @Override
        public void onSuccess(int i) {
            l.this.i(this.a, this.b, this.c);
        }
    }

    public class c extends DrawableResponseListener {
        public final boolean b;
        public final String c;
        public final AtomicInteger d;
        public final dnd e;
        public final e f;

        public c(boolean z, String str, AtomicInteger atomicInteger, dnd dndVar, e eVar) {
            this.b = z;
            this.c = str;
            this.d = atomicInteger;
            this.e = dndVar;
            this.f = eVar;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            l.this.i(this.d, this.e, this.f);
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (this.b && adImage != null) {
                l.this.f(adImage.getFilePath(), this.c);
            }
            l.this.i(this.d, this.e, this.f);
        }
    }

    public interface d {
        void a(AdxImpBean adxImpBean, List list, TaErrorCode taErrorCode);

        void a(List list);
    }

    public interface e {
        void a();
    }

    public static class f {
        public static final l a = new l(null);
    }

    public l(a aVar) {
        this();
    }

    public static String b() {
        return vl4.a("offline_zip");
    }

    public static l l() {
        return f.a;
    }

    public final void e(AdsDTO adsDTO, String str, int i, boolean z, dnd dndVar, AtomicInteger atomicInteger, e eVar) {
        if (TextUtils.isEmpty(str)) {
            i(atomicInteger, dndVar, eVar);
        } else {
            DownLoadRequest.k(str, adsDTO, i, z, new c(z, str, atomicInteger, dndVar, eVar));
        }
    }

    public final void f(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(yu3.b(ul4.a()));
        String str3 = File.separator;
        sb.append(str3);
        sb.append(b());
        sb.append(str3);
        sb.append(gw5.c(str2));
        String string = sb.toString();
        if (new File(string).exists()) {
            return;
        }
        wzc.b(str, string);
    }

    public final void g(List list) {
        m(list);
        o(list);
    }

    public void h(final List list, d dVar) {
        this.a = dVar;
        if (list == null || list.isEmpty()) {
            ikd.b().d("OfflineDownload", "广告list为空");
            o(null);
            return;
        }
        Iterator it = list.iterator();
        dnd dndVar = null;
        dnd dndVar2 = null;
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                dnd dndVar3 = new dnd(adsDTO);
                if (dndVar2 == null) {
                    dndVar = dndVar3;
                } else {
                    dndVar2.b(dndVar3);
                }
                dndVar2 = dndVar3;
            }
        }
        if (dndVar != null) {
            j(dndVar, new e() {
                @Override
                public final void a() {
                    this.a.g(list);
                }
            });
        } else {
            ikd.b().d("OfflineDownload", "下载失败");
            o(null);
        }
    }

    public final void i(AtomicInteger atomicInteger, dnd dndVar, e eVar) {
        if (atomicInteger != null) {
            atomicInteger.decrementAndGet();
        }
        if (atomicInteger == null || atomicInteger.get() <= 0) {
            j(dndVar == null ? null : dndVar.c(), eVar);
        }
    }

    public final void j(dnd dndVar, e eVar) {
        if (dndVar == null) {
            eVar.a();
            return;
        }
        AdsDTO adsDTOA = dndVar.a();
        if (adsDTOA == null) {
            j(dndVar.c(), eVar);
            return;
        }
        if (TextUtils.isEmpty(w.g(adsDTOA))) {
            j(dndVar.c(), eVar);
            return;
        }
        AtomicInteger atomicInteger = new AtomicInteger(4);
        n(dndVar, adsDTOA, atomicInteger, eVar);
        p(dndVar, adsDTOA, atomicInteger, eVar);
        q(dndVar, adsDTOA, atomicInteger, eVar);
        k(dndVar, adsDTOA, atomicInteger, eVar);
        r(dndVar, adsDTOA, atomicInteger, eVar);
    }

    public final void k(dnd dndVar, AdsDTO adsDTO, AtomicInteger atomicInteger, e eVar) {
        String offlineH5Url = adsDTO.getOfflineH5Url();
        if (TextUtils.isEmpty(offlineH5Url)) {
            i(atomicInteger, dndVar, eVar);
        } else {
            e(adsDTO, offlineH5Url, 5, adsDTO.isH5Zip(), dndVar, atomicInteger, eVar);
        }
    }

    public final void m(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                if (!DownLoadRequest.q && adsDTO.getAdChoiceImageUrl() != null) {
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

    public final void n(dnd dndVar, AdsDTO adsDTO, AtomicInteger atomicInteger, e eVar) {
        if (adsDTO.isVastTypeAd()) {
            gob.a.c(new b(atomicInteger, dndVar, eVar), adsDTO);
        } else {
            e(adsDTO, w.f(adsDTO), w.p(adsDTO) ? 1 : 2, false, dndVar, atomicInteger, eVar);
        }
    }

    public final void o(List list) {
        d dVar = this.a;
        if (dVar != null) {
            dVar.a(list);
        }
    }

    public final void p(dnd dndVar, AdsDTO adsDTO, AtomicInteger atomicInteger, e eVar) {
        if (adsDTO.getPslinkInfoStatus()) {
            String iconUrl = adsDTO.getPslinkInfo().getIconUrl();
            List<ImgListDTO> imgList = adsDTO.getPslinkInfo().getImgList();
            if (TextUtils.isEmpty(iconUrl)) {
                return;
            }
            atomicInteger.set(atomicInteger.get() + 1 + imgList.size());
            ikd.b().d("OfflineDownload", "开始下载Pslink Half素材 ==" + iconUrl + " ,psImgUrl.size() == " + imgList.size());
            e(adsDTO, iconUrl, 4, false, dndVar, atomicInteger, eVar);
            for (ImgListDTO imgListDTO : imgList) {
                if (imgListDTO != null && !TextUtils.isEmpty(imgListDTO.getUrl())) {
                    e(adsDTO, imgListDTO.getUrl(), 4, false, dndVar, atomicInteger, eVar);
                }
            }
        }
    }

    public final void q(dnd dndVar, AdsDTO adsDTO, AtomicInteger atomicInteger, e eVar) {
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            i(atomicInteger, dndVar, eVar);
        } else if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            i(atomicInteger, dndVar, eVar);
        } else {
            e(adsDTO, ext.getStoreImageurl(), 6, false, dndVar, atomicInteger, eVar);
        }
    }

    public final void r(dnd dndVar, AdsDTO adsDTO, AtomicInteger atomicInteger, e eVar) {
        if (adsDTO == null || adsDTO.isInteractiveAd() || !TextUtils.isEmpty(adsDTO.getAdm()) || TextUtils.isEmpty(adsDTO.getTemplateHtmlUrl())) {
            i(atomicInteger, dndVar, eVar);
        } else {
            DownLoadRequest.k(adsDTO.getTemplateHtmlUrl(), adsDTO, 14, true, new a(adsDTO, atomicInteger, dndVar, eVar));
        }
    }

    public l() {
    }
}

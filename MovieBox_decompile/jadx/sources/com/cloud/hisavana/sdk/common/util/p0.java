package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastIcon;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.bean.VideoMask;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class p0 {

    public static final a f21581a = new a(null);

    public static final class a {

        public static final class C0280a extends DrawableResponseListener {

            final String f21582b;

            final Ref.BooleanRef f21583c;

            final Ref.BooleanRef f21584d;

            final Ref.BooleanRef f21585e;

            final Ref.BooleanRef f21586f;

            final b f21587g;

            final Ref.BooleanRef f21588h;

            C0280a(String str, Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, Ref.BooleanRef booleanRef3, Ref.BooleanRef booleanRef4, b bVar, Ref.BooleanRef booleanRef5) {
                this.f21582b = str;
                this.f21583c = booleanRef;
                this.f21584d = booleanRef2;
                this.f21585e = booleanRef3;
                this.f21586f = booleanRef4;
                this.f21587g = bVar;
                this.f21588h = booleanRef5;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                b4 b4VarB = b4.b();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onRequestError ");
                sb2.append(taErrorCode);
                sb2.append(' ');
                sb2.append(taErrorCode != null ? Integer.valueOf(taErrorCode.getErrorCode()) : null);
                sb2.append(' ');
                sb2.append(taErrorCode != null ? taErrorCode.getErrorMessage() : null);
                sb2.append(" url ");
                sb2.append(this.f21582b);
                sb2.append(')');
                b4VarB.e("VastMaterialDownloadUtil", sb2.toString());
                this.f21583c.element = true;
                p0.f21581a.b(true, this.f21584d.element, this.f21585e.element, this.f21586f.element, this.f21587g, this.f21588h.element);
            }

            @Override
            public void g(int i10, AdImage adImage) {
                b4.b().d("VastMaterialDownloadUtil", "onRequestSuccess " + i10);
                if (i10 == 250) {
                    this.f21588h.element = false;
                } else {
                    this.f21588h.element = true;
                }
                Ref.BooleanRef booleanRef = this.f21583c;
                booleanRef.element = true;
                this.f21586f.element = true;
                p0.f21581a.b(booleanRef.element, this.f21584d.element, this.f21585e.element, true, this.f21587g, this.f21588h.element);
            }
        }

        public static final class b extends DrawableResponseListener {

            final Ref.BooleanRef f21589b;

            final Ref.BooleanRef f21590c;

            final Ref.BooleanRef f21591d;

            final Ref.BooleanRef f21592e;

            final b f21593f;

            final Ref.BooleanRef f21594g;

            b(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, Ref.BooleanRef booleanRef3, Ref.BooleanRef booleanRef4, b bVar, Ref.BooleanRef booleanRef5) {
                this.f21589b = booleanRef;
                this.f21590c = booleanRef2;
                this.f21591d = booleanRef3;
                this.f21592e = booleanRef4;
                this.f21593f = bVar;
                this.f21594g = booleanRef5;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                this.f21589b.element = true;
                p0.f21581a.b(this.f21590c.element, true, this.f21591d.element, this.f21592e.element, this.f21593f, this.f21594g.element);
            }

            @Override
            public void g(int i10, AdImage adImage) {
                this.f21589b.element = true;
                p0.f21581a.b(this.f21590c.element, true, this.f21591d.element, this.f21592e.element, this.f21593f, this.f21594g.element);
            }
        }

        public static final class c extends DrawableResponseListener {

            final Ref.BooleanRef f21595b;

            final Ref.BooleanRef f21596c;

            final Ref.BooleanRef f21597d;

            final Ref.BooleanRef f21598e;

            final b f21599f;

            final Ref.BooleanRef f21600g;

            c(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, Ref.BooleanRef booleanRef3, Ref.BooleanRef booleanRef4, b bVar, Ref.BooleanRef booleanRef5) {
                this.f21595b = booleanRef;
                this.f21596c = booleanRef2;
                this.f21597d = booleanRef3;
                this.f21598e = booleanRef4;
                this.f21599f = bVar;
                this.f21600g = booleanRef5;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                this.f21595b.element = true;
                p0.f21581a.b(this.f21596c.element, this.f21597d.element, true, this.f21598e.element, this.f21599f, this.f21600g.element);
            }

            @Override
            public void g(int i10, AdImage adImage) {
                this.f21595b.element = true;
                p0.f21581a.b(this.f21596c.element, this.f21597d.element, true, this.f21598e.element, this.f21599f, this.f21600g.element);
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void b(boolean z10, boolean z11, boolean z12, boolean z13, b bVar, boolean z14) {
            if (z12 && z11 && z10) {
                if (z13) {
                    int i10 = z14 ? 0 : 250;
                    if (bVar != null) {
                        bVar.b(i10);
                        return;
                    }
                    return;
                }
                if (bVar != null) {
                    TaErrorCode MAIN_VIDEO_DOWNLOAD_FAIL_ERROR = TaErrorCode.MAIN_VIDEO_DOWNLOAD_FAIL_ERROR;
                    Intrinsics.g(MAIN_VIDEO_DOWNLOAD_FAIL_ERROR, "MAIN_VIDEO_DOWNLOAD_FAIL_ERROR");
                    bVar.a(MAIN_VIDEO_DOWNLOAD_FAIL_ERROR);
                }
            }
        }

        public final void c(b bVar, AdsDTO adsDTO) {
            boolean z10;
            Ref.BooleanRef booleanRef;
            VideoMask videoMask;
            VastIcon icon;
            VastMedia mainAd;
            if (adsDTO == null) {
                if (bVar != null) {
                    TaErrorCode ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL = TaErrorCode.ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL;
                    Intrinsics.g(ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL, "ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL");
                    bVar.a(ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL);
                    return;
                }
                return;
            }
            VastData videoInfo = adsDTO.getVideoInfo();
            String resource = null;
            String mediaResource = (videoInfo == null || (mainAd = videoInfo.getMainAd()) == null) ? null : mainAd.getMediaResource();
            String iconResource = (videoInfo == null || (icon = videoInfo.getIcon()) == null) ? null : icon.getIconResource();
            if (videoInfo != null && (videoMask = videoInfo.getVideoMask()) != null) {
                resource = videoMask.getResource();
            }
            String str = resource;
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef3 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef4 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef5 = new Ref.BooleanRef();
            Ref.BooleanRef booleanRef6 = new Ref.BooleanRef();
            if (TextUtils.isEmpty(mediaResource)) {
                if (bVar != null) {
                    TaErrorCode NO_MAIN_VIDEO_DATA_ERROR = TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR;
                    Intrinsics.g(NO_MAIN_VIDEO_DATA_ERROR, "NO_MAIN_VIDEO_DATA_ERROR");
                    bVar.a(NO_MAIN_VIDEO_DATA_ERROR);
                    return;
                }
                return;
            }
            if (mediaResource == null) {
                z10 = true;
                booleanRef3.element = true;
                booleanRef = booleanRef6;
                booleanRef.element = false;
            } else if (adsDTO.getSource() == 1 && Constants.a(adsDTO.getAdType())) {
                booleanRef3.element = true;
                booleanRef5.element = true;
                booleanRef6.element = false;
                b4.b().d("VastMaterialDownloadUtil", "jump for real-time ad, do not download video, adId=" + adsDTO.getAdCreativeId() + ", url=" + mediaResource);
                z10 = true;
                booleanRef = booleanRef6;
            } else {
                z10 = true;
                booleanRef = booleanRef6;
                DownLoadRequest.l(mediaResource, adsDTO, true, new C0280a(mediaResource, booleanRef3, booleanRef2, booleanRef4, booleanRef5, bVar, booleanRef));
            }
            if (iconResource != null) {
                DownLoadRequest.k(iconResource, adsDTO, 11, z10, new b(booleanRef2, booleanRef3, booleanRef4, booleanRef5, bVar, booleanRef));
            } else {
                booleanRef2.element = z10;
            }
            if (str != 0) {
                DownLoadRequest.k(str, adsDTO, 12, z10, new c(booleanRef4, booleanRef3, booleanRef2, booleanRef5, bVar, booleanRef));
            } else {
                booleanRef4.element = z10;
                b(booleanRef3.element, booleanRef2.element, true, booleanRef5.element, bVar, booleanRef.element);
            }
        }

        private a() {
        }
    }

    public interface b {
        void a(TaErrorCode taErrorCode);

        void b(int i10);
    }
}

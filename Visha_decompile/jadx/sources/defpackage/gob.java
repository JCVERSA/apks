package defpackage;

import android.text.TextUtils;
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
import kotlin.jvm.internal.Ref$BooleanRef;

public abstract class gob {
    public static final a a = new a(null);

    public static final class a {

        public static final class C0348a extends DrawableResponseListener {
            public final String b;
            public final Ref$BooleanRef c;
            public final Ref$BooleanRef d;
            public final Ref$BooleanRef e;
            public final Ref$BooleanRef f;
            public final b g;
            public final Ref$BooleanRef h;

            public C0348a(String str, Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, Ref$BooleanRef ref$BooleanRef3, Ref$BooleanRef ref$BooleanRef4, b bVar, Ref$BooleanRef ref$BooleanRef5) {
                this.b = str;
                this.c = ref$BooleanRef;
                this.d = ref$BooleanRef2;
                this.e = ref$BooleanRef3;
                this.f = ref$BooleanRef4;
                this.g = bVar;
                this.h = ref$BooleanRef5;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                ikd ikdVarB = ikd.b();
                StringBuilder sb = new StringBuilder();
                sb.append("onRequestError ");
                sb.append(taErrorCode);
                sb.append(' ');
                sb.append(taErrorCode != null ? Integer.valueOf(taErrorCode.getErrorCode()) : null);
                sb.append(' ');
                sb.append(taErrorCode != null ? taErrorCode.getErrorMessage() : null);
                sb.append(" url ");
                sb.append(this.b);
                sb.append(')');
                ikdVarB.e("VastMaterialDownloadUtil", sb.toString());
                this.c.element = true;
                gob.a.b(true, this.d.element, this.e.element, this.f.element, this.g, this.h.element);
            }

            @Override
            public void g(int i, AdImage adImage) {
                ikd.b().d("VastMaterialDownloadUtil", "onRequestSuccess " + i);
                if (i == 250) {
                    this.h.element = false;
                } else {
                    this.h.element = true;
                }
                Ref$BooleanRef ref$BooleanRef = this.c;
                ref$BooleanRef.element = true;
                this.f.element = true;
                gob.a.b(ref$BooleanRef.element, this.d.element, this.e.element, true, this.g, this.h.element);
            }
        }

        public static final class b extends DrawableResponseListener {
            public final Ref$BooleanRef b;
            public final Ref$BooleanRef c;
            public final Ref$BooleanRef d;
            public final Ref$BooleanRef e;
            public final b f;
            public final Ref$BooleanRef g;

            public b(Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, Ref$BooleanRef ref$BooleanRef3, Ref$BooleanRef ref$BooleanRef4, b bVar, Ref$BooleanRef ref$BooleanRef5) {
                this.b = ref$BooleanRef;
                this.c = ref$BooleanRef2;
                this.d = ref$BooleanRef3;
                this.e = ref$BooleanRef4;
                this.f = bVar;
                this.g = ref$BooleanRef5;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                this.b.element = true;
                gob.a.b(this.c.element, true, this.d.element, this.e.element, this.f, this.g.element);
            }

            @Override
            public void g(int i, AdImage adImage) {
                this.b.element = true;
                gob.a.b(this.c.element, true, this.d.element, this.e.element, this.f, this.g.element);
            }
        }

        public static final class c extends DrawableResponseListener {
            public final Ref$BooleanRef b;
            public final Ref$BooleanRef c;
            public final Ref$BooleanRef d;
            public final Ref$BooleanRef e;
            public final b f;
            public final Ref$BooleanRef g;

            public c(Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, Ref$BooleanRef ref$BooleanRef3, Ref$BooleanRef ref$BooleanRef4, b bVar, Ref$BooleanRef ref$BooleanRef5) {
                this.b = ref$BooleanRef;
                this.c = ref$BooleanRef2;
                this.d = ref$BooleanRef3;
                this.e = ref$BooleanRef4;
                this.f = bVar;
                this.g = ref$BooleanRef5;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                this.b.element = true;
                gob.a.b(this.c.element, this.d.element, true, this.e.element, this.f, this.g.element);
            }

            @Override
            public void g(int i, AdImage adImage) {
                this.b.element = true;
                gob.a.b(this.c.element, this.d.element, true, this.e.element, this.f, this.g.element);
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void b(boolean z, boolean z2, boolean z3, boolean z4, b bVar, boolean z5) {
            if (z3 && z2 && z) {
                if (z4) {
                    int i = z5 ? 0 : 250;
                    if (bVar != null) {
                        bVar.onSuccess(i);
                        return;
                    }
                    return;
                }
                if (bVar != null) {
                    TaErrorCode taErrorCode = TaErrorCode.MAIN_VIDEO_DOWNLOAD_FAIL_ERROR;
                    y45.i(taErrorCode, "MAIN_VIDEO_DOWNLOAD_FAIL_ERROR");
                    bVar.a(taErrorCode);
                }
            }
        }

        public final void c(b bVar, AdsDTO adsDTO) {
            boolean z;
            Ref$BooleanRef ref$BooleanRef;
            VideoMask videoMask;
            VastIcon icon;
            VastMedia mainAd;
            if (adsDTO == null) {
                if (bVar != null) {
                    TaErrorCode taErrorCode = TaErrorCode.ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL;
                    y45.i(taErrorCode, "ERROR_AD_VAST_MATERIAL_DOWNLOAD_IS_NULL");
                    bVar.a(taErrorCode);
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
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            Ref$BooleanRef ref$BooleanRef3 = new Ref$BooleanRef();
            Ref$BooleanRef ref$BooleanRef4 = new Ref$BooleanRef();
            Ref$BooleanRef ref$BooleanRef5 = new Ref$BooleanRef();
            Ref$BooleanRef ref$BooleanRef6 = new Ref$BooleanRef();
            if (TextUtils.isEmpty(mediaResource)) {
                if (bVar != null) {
                    TaErrorCode taErrorCode2 = TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR;
                    y45.i(taErrorCode2, "NO_MAIN_VIDEO_DATA_ERROR");
                    bVar.a(taErrorCode2);
                    return;
                }
                return;
            }
            if (mediaResource == null) {
                z = true;
                ref$BooleanRef3.element = true;
                ref$BooleanRef = ref$BooleanRef6;
                ref$BooleanRef.element = false;
            } else if (adsDTO.getSource() == 1 && Constants.a(adsDTO.getAdType())) {
                ref$BooleanRef3.element = true;
                ref$BooleanRef5.element = true;
                ref$BooleanRef6.element = false;
                ikd.b().d("VastMaterialDownloadUtil", "jump for real-time ad, do not download video, adId=" + adsDTO.getAdCreativeId() + ", url=" + mediaResource);
                z = true;
                ref$BooleanRef = ref$BooleanRef6;
            } else {
                z = true;
                ref$BooleanRef = ref$BooleanRef6;
                DownLoadRequest.l(mediaResource, adsDTO, true, new C0348a(mediaResource, ref$BooleanRef3, ref$BooleanRef2, ref$BooleanRef4, ref$BooleanRef5, bVar, ref$BooleanRef));
            }
            if (iconResource != null) {
                DownLoadRequest.k(iconResource, adsDTO, 11, z, new b(ref$BooleanRef2, ref$BooleanRef3, ref$BooleanRef4, ref$BooleanRef5, bVar, ref$BooleanRef));
            } else {
                ref$BooleanRef2.element = z;
            }
            if (str != 0) {
                DownLoadRequest.k(str, adsDTO, 12, z, new c(ref$BooleanRef4, ref$BooleanRef3, ref$BooleanRef2, ref$BooleanRef5, bVar, ref$BooleanRef));
            } else {
                ref$BooleanRef4.element = z;
                b(ref$BooleanRef3.element, ref$BooleanRef2.element, true, ref$BooleanRef5.element, bVar, ref$BooleanRef.element);
            }
        }

        public a() {
        }
    }

    public interface b {
        void a(TaErrorCode taErrorCode);

        void onSuccess(int i);
    }
}

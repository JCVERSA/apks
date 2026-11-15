package com.cloud.hisavana.sdk;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.common.activity.MiniAppPopUpActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.MiniAppInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.lzy.okgo.model.Progress;
import defpackage.e74;
import defpackage.g1a;
import defpackage.ikd;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;

public abstract class E0 {
    public static final a a = new a(null);

    public static final class a {

        public static final class C0037a extends DrawableResponseListener {
            public final e74 b;

            public C0037a(e74 e74Var) {
                this.b = e74Var;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                ikd.b().w("MiniApp", "Failed to load mini app icon.");
            }

            @Override
            public void g(int i, AdImage adImage) {
                this.b.invoke(adImage != null ? adImage.getFilePath() : null);
            }
        }

        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", Progress.FILE_PATH, "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ljava/lang/String;)V"}, k = 3, mv = {1, 9, 0})
        public static final class b extends Lambda implements e74 {
            final Ref$ObjectRef<String> a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Ref$ObjectRef<String> ref$ObjectRef) {
                super(1);
                this.a = ref$ObjectRef;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void a(String str) {
                this.a.element = str;
            }

            @Override
            public Object invoke(Object obj) {
                a((String) obj);
                return zfb.a;
            }
        }

        public static final class c implements MiniAppPopUpActivity.a {
            public final AdsDTO a;
            public final Ref$ObjectRef b;
            public final MiniAppInfo c;
            public final Context d;
            public final String e;

            @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "result", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(I)V"}, k = 3, mv = {1, 9, 0})
            public static final class C0038a extends Lambda implements e74 {
                final AdsDTO a;
                final Context b;
                final String c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0038a(AdsDTO adsDTO, Context context, String str) {
                    super(1);
                    this.a = adsDTO;
                    this.b = context;
                    this.c = str;
                }

                public final void a(int i) {
                    E0.a.b(i, this.a);
                    U0.S(this.b, this.c);
                }

                @Override
                public Object invoke(Object obj) {
                    a(((Number) obj).intValue());
                    return zfb.a;
                }
            }

            public c(AdsDTO adsDTO, Ref$ObjectRef ref$ObjectRef, MiniAppInfo miniAppInfo, Context context, String str) {
                this.a = adsDTO;
                this.b = ref$ObjectRef;
                this.c = miniAppInfo;
                this.d = context;
                this.e = str;
            }

            @Override
            public void a() {
                ikd.b().d("MiniApp", "On click miniapp guide's skip button.");
                AthenaTracker.Z(this.a, 4);
                U0.S(this.d, this.e);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void b() {
                ikd.b().d("MiniApp", "On click miniapp guide's sure button and show system add homescreen.");
                AthenaTracker.Z(this.a, 2);
                F0.a.h((String) this.b.element, this.c, new C0038a(this.a, this.d, this.e));
            }

            @Override
            public void c() {
                ikd.b().d("MiniApp", "On click miniapp guide's cancel button.");
                AthenaTracker.Z(this.a, 3);
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int i, Context context, AdsDTO adsDTO, MiniAppInfo miniAppInfo, String str) {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            String iconUrl = miniAppInfo.getIconUrl();
            y45.i(iconUrl, "getIconUrl(...)");
            d(iconUrl, new b(ref$ObjectRef));
            ikd.b().d("MiniApp", "Popup mini app guide.");
            AthenaTracker.Z(adsDTO, 1);
            MiniAppPopUpActivity.E(context, miniAppInfo, i, new c(adsDTO, ref$ObjectRef, miniAppInfo, context, str));
        }

        public final void b(int i, AdsDTO adsDTO) {
            if (i == -1) {
                ikd.b().d("MiniApp", "Failed to add to homescreen.");
                HSToastUtil.e(R.string.failed_to_get);
                return;
            }
            if (i == 0) {
                ikd.b().d("MiniApp", "Cancel to add to homescreen.");
                AthenaTracker.a0(adsDTO, 1);
                AthenaTracker.a0(adsDTO, 3);
            } else {
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    ikd.b().d("MiniApp", "Existed in homescreen.");
                    HSToastUtil.e(R.string.already_exists);
                    return;
                }
                ikd.b().d("MiniApp", "Succeed to add to homescreen.");
                AthenaTracker.a0(adsDTO, 1);
                AthenaTracker.a0(adsDTO, 2);
                HSToastUtil.e(R.string.got_successfully);
            }
        }

        public final void d(String str, e74 e74Var) {
            DownLoadRequest.k(str, null, 13, true, new C0037a(e74Var));
        }

        public final boolean e(String str, Context context, AdsDTO adsDTO) {
            if (str != null && context != null && adsDTO != null) {
                if (g1a.R(str, "launcherdlt://", false, 2, null)) {
                    return U0.S(context, str);
                }
                if (!g1a.R(str, "{\"", false, 2, null)) {
                    return false;
                }
                try {
                    MiniAppInfo miniAppInfo = (MiniAppInfo) GsonUtil.a(str, MiniAppInfo.class);
                    if (miniAppInfo != null) {
                        String deepLinkUrl = miniAppInfo.getDeepLinkUrl();
                        y45.i(deepLinkUrl, "getDeepLinkUrl(...)");
                        if (g1a.R(deepLinkUrl, "launcherdlt://", false, 2, null)) {
                            String deepLinkUrl2 = miniAppInfo.getDeepLinkUrl();
                            int intGuideMode = miniAppInfo.getIntGuideMode();
                            if (intGuideMode == 0) {
                                return U0.S(context, deepLinkUrl2);
                            }
                            if (intGuideMode == 1) {
                                y45.g(deepLinkUrl2);
                                a(1, context, adsDTO, miniAppInfo, deepLinkUrl2);
                            } else if (intGuideMode == 2) {
                                y45.g(deepLinkUrl2);
                                a(2, context, adsDTO, miniAppInfo, deepLinkUrl2);
                            }
                            return true;
                        }
                    }
                    return false;
                } catch (Exception unused) {
                    ikd.b().e("MiniApp", "Parse mini app info failed.");
                }
            }
            return false;
        }

        public a() {
        }
    }
}

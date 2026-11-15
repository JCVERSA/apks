package com.cloud.hisavana.sdk;

import android.content.Context;
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
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

public abstract class u0 {

    public static final a f22341a = new a(null);

    public static final class a {

        public static final class C0287a extends DrawableResponseListener {

            final Function1 f22342b;

            C0287a(Function1 function1) {
                this.f22342b = function1;
            }

            @Override
            public void a(TaErrorCode taErrorCode) {
                b4.b().w(TmcConstants.DIR_BYTEAPP, "Failed to load mini app icon.");
            }

            @Override
            public void g(int i10, AdImage adImage) {
                this.f22342b.invoke(adImage != null ? adImage.getFilePath() : null);
            }
        }

        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", NativeRequestBridge.KEY_FILE_PATH, "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 9, 0})
        static final class b extends Lambda implements Function1<String, Unit> {

            final Ref.ObjectRef<String> f22343a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Ref.ObjectRef<String> objectRef) {
                super(1);
                this.f22343a = objectRef;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void a(String str) {
                this.f22343a.element = str;
            }

            @Override
            public Object invoke(Object obj) {
                a((String) obj);
                return Unit.f64096a;
            }
        }

        public static final class c implements MiniAppPopUpActivity.a {

            final AdsDTO f22344a;

            final Ref.ObjectRef f22345b;

            final MiniAppInfo f22346c;

            final Context f22347d;

            final String f22348e;

            @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "result", "", "a", "(I)V"}, k = 3, mv = {1, 9, 0})
            static final class C0288a extends Lambda implements Function1<Integer, Unit> {

                final AdsDTO f22349a;

                final Context f22350b;

                final String f22351c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0288a(AdsDTO adsDTO, Context context, String str) {
                    super(1);
                    this.f22349a = adsDTO;
                    this.f22350b = context;
                    this.f22351c = str;
                }

                public final void a(int i10) {
                    u0.f22341a.b(i10, this.f22349a);
                    J0.R(this.f22350b, this.f22351c);
                }

                @Override
                public Object invoke(Object obj) {
                    a(((Number) obj).intValue());
                    return Unit.f64096a;
                }
            }

            c(AdsDTO adsDTO, Ref.ObjectRef objectRef, MiniAppInfo miniAppInfo, Context context, String str) {
                this.f22344a = adsDTO;
                this.f22345b = objectRef;
                this.f22346c = miniAppInfo;
                this.f22347d = context;
                this.f22348e = str;
            }

            @Override
            public void a() {
                b4.b().d(TmcConstants.DIR_BYTEAPP, "On click miniapp guide's skip button.");
                AthenaTracker.U(this.f22344a, 4);
                J0.R(this.f22347d, this.f22348e);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void b() {
                b4.b().d(TmcConstants.DIR_BYTEAPP, "On click miniapp guide's sure button and show system add homescreen.");
                AthenaTracker.U(this.f22344a, 2);
                v0.f22379a.g((String) this.f22345b.element, this.f22346c, new C0288a(this.f22344a, this.f22347d, this.f22348e));
            }

            @Override
            public void c() {
                b4.b().d(TmcConstants.DIR_BYTEAPP, "On click miniapp guide's cancel button.");
                AthenaTracker.U(this.f22344a, 3);
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(int i10, Context context, AdsDTO adsDTO, MiniAppInfo miniAppInfo, String str) {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            String iconUrl = miniAppInfo.getIconUrl();
            Intrinsics.g(iconUrl, "getIconUrl(...)");
            d(iconUrl, new b(objectRef));
            b4.b().d(TmcConstants.DIR_BYTEAPP, "Popup mini app guide.");
            AthenaTracker.U(adsDTO, 1);
            MiniAppPopUpActivity.V(context, miniAppInfo, i10, new c(adsDTO, objectRef, miniAppInfo, context, str));
        }

        public final void b(int i10, AdsDTO adsDTO) {
            if (i10 == -1) {
                b4.b().d(TmcConstants.DIR_BYTEAPP, "Failed to add to homescreen.");
                HSToastUtil.e(R$string.failed_to_get);
                return;
            }
            if (i10 == 0) {
                b4.b().d(TmcConstants.DIR_BYTEAPP, "Cancel to add to homescreen.");
                AthenaTracker.V(adsDTO, 1);
                AthenaTracker.V(adsDTO, 3);
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return;
                    }
                    b4.b().d(TmcConstants.DIR_BYTEAPP, "Existed in homescreen.");
                    HSToastUtil.e(R$string.already_exists);
                    return;
                }
                b4.b().d(TmcConstants.DIR_BYTEAPP, "Succeed to add to homescreen.");
                AthenaTracker.V(adsDTO, 1);
                AthenaTracker.V(adsDTO, 2);
                HSToastUtil.e(R$string.got_successfully);
            }
        }

        private final void d(String str, Function1 function1) {
            DownLoadRequest.k(str, null, 13, true, new C0287a(function1));
        }

        public final boolean e(String str, Context context, AdsDTO adsDTO) {
            if (str != null && context != null && adsDTO != null) {
                if (StringsKt.W(str, "launcherdlt://", false, 2, null)) {
                    return J0.R(context, str);
                }
                if (!StringsKt.W(str, "{\"", false, 2, null)) {
                    return false;
                }
                try {
                    MiniAppInfo miniAppInfo = (MiniAppInfo) GsonUtil.a(str, MiniAppInfo.class);
                    if (miniAppInfo != null) {
                        String deepLinkUrl = miniAppInfo.getDeepLinkUrl();
                        Intrinsics.g(deepLinkUrl, "getDeepLinkUrl(...)");
                        if (StringsKt.W(deepLinkUrl, "launcherdlt://", false, 2, null)) {
                            String deepLinkUrl2 = miniAppInfo.getDeepLinkUrl();
                            int intGuideMode = miniAppInfo.getIntGuideMode();
                            if (intGuideMode == 0) {
                                return J0.R(context, deepLinkUrl2);
                            }
                            if (intGuideMode == 1) {
                                Intrinsics.e(deepLinkUrl2);
                                a(1, context, adsDTO, miniAppInfo, deepLinkUrl2);
                            } else if (intGuideMode == 2) {
                                Intrinsics.e(deepLinkUrl2);
                                a(2, context, adsDTO, miniAppInfo, deepLinkUrl2);
                            }
                            return true;
                        }
                    }
                    return false;
                } catch (Exception unused) {
                    b4.b().e(TmcConstants.DIR_BYTEAPP, "Parse mini app info failed.");
                }
            }
            return false;
        }

        private a() {
        }
    }
}

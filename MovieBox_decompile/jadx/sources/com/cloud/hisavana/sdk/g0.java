package com.cloud.hisavana.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.ImpressionType;
import com.iab.omid.library.hisavana.adsession.Owner;
import com.iab.omid.library.hisavana.adsession.f;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class g0 {

    public static final a f21836a = new a(null);

    private static volatile String f21837b = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0064  */
        private final List c(AdsDTO adsDTO) {
            List<AdsProtocolBean.OmIdData> omIdVerifications;
            com.iab.omid.library.hisavana.adsession.g gVarA;
            String str;
            ArrayList arrayList = new ArrayList();
            if (adsDTO != null && (omIdVerifications = adsDTO.getOmIdVerifications()) != null) {
                Intrinsics.e(omIdVerifications);
                Iterator<AdsProtocolBean.OmIdData> it = omIdVerifications.iterator();
                while (it.hasNext()) {
                    AdsProtocolBean.OmIdData next = it.next();
                    if (!com.cloud.hisavana.sdk.common.util.o0.f(next != null ? next.url : null)) {
                        b4.b().w("OmSdk", "omid data.vendorUrl is not valid");
                    } else {
                        if (arrayList.size() >= 5) {
                            b4.b().w("OmSdk", "omid verification scripts num is bigger than 5");
                            break;
                        }
                        if (next == null || (str = next.verification_parameters) == null) {
                            gVarA = com.iab.omid.library.hisavana.adsession.g.a(next.vendorKey, new URL(next.url), next.verification_parameters);
                        } else {
                            Intrinsics.e(str);
                            if (str.length() == 0) {
                                gVarA = com.iab.omid.library.hisavana.adsession.g.b(new URL(next.url));
                            } else {
                                gVarA = com.iab.omid.library.hisavana.adsession.g.a(next.vendorKey, new URL(next.url), next.verification_parameters);
                            }
                        }
                        Intrinsics.e(gVarA);
                        arrayList.add(gVarA);
                    }
                }
            }
            return arrayList;
        }

        private final void d(Context context) {
            if (ie.a.c()) {
                return;
            }
            ie.a.a(context.getApplicationContext());
        }

        public static final void g(Context context) {
            Intrinsics.h(context, "$context");
            try {
                InputStream inputStreamOpenRawResource = context.getResources().openRawResource(R$raw.omsdk_v1);
                try {
                    byte[] bArr = new byte[inputStreamOpenRawResource.available()];
                    int i10 = inputStreamOpenRawResource.read(bArr);
                    a aVar = g0.f21836a;
                    Charset charsetForName = Charset.forName("UTF-8");
                    Intrinsics.g(charsetForName, "forName(...)");
                    g0.f21837b = new String(bArr, 0, i10, charsetForName);
                    Unit unit = Unit.f64096a;
                    CloseableKt.a(inputStreamOpenRawResource, null);
                    b4.b().d("OmSdk", "omid js loaded");
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(inputStreamOpenRawResource, th2);
                        throw th3;
                    }
                }
            } catch (IOException e10) {
                b4.b().e("OmSdk", "Omid resource not found: " + e10.getMessage());
            }
        }

        public final com.iab.omid.library.hisavana.adsession.b b(Context context, CreativeType creativeType, AdsDTO adsDTO) {
            List<AdsProtocolBean.OmIdData> omIdVerifications;
            if (g1.o().r() && context != null && creativeType != null) {
                if (TextUtils.isEmpty(g0.f21837b)) {
                    b4.b().w("OmSdk", "omid js is not ready");
                    f(context);
                    return null;
                }
                if (adsDTO != null && ((omIdVerifications = adsDTO.getOmIdVerifications()) == null || !omIdVerifications.isEmpty())) {
                    try {
                        List listC = c(adsDTO);
                        if (listC.isEmpty()) {
                            return null;
                        }
                        b4.b().d("OmSdk", "omid valid resource count : " + listC.size());
                        d(context);
                        ImpressionType impressionType = creativeType == CreativeType.AUDIO ? ImpressionType.AUDIBLE : ImpressionType.VIEWABLE;
                        Owner owner = Owner.NATIVE;
                        return com.iab.omid.library.hisavana.adsession.b.b(com.iab.omid.library.hisavana.adsession.c.a(creativeType, impressionType, owner, (creativeType == CreativeType.HTML_DISPLAY || creativeType == CreativeType.NATIVE_DISPLAY) ? Owner.NONE : owner, false), com.iab.omid.library.hisavana.adsession.d.a(f.a("hisavana", "3.3.8.0"), g0.f21837b, listC, null, "{\"partner\":\"hisavana\"}"));
                    } catch (Throwable th2) {
                        b4.b().e("OmSdk", "get adSession error: " + th2.getMessage());
                    }
                }
            }
            return null;
        }

        public final void e(final Context context, boolean z10) {
            Intrinsics.h(context, "context");
            if (z10 && TextUtils.isEmpty(g0.f21837b)) {
                HSScopeHelper.f22503a.i(new Runnable() {
                    @Override
                    public final void run() {
                        g0.a.g(context);
                    }
                });
            }
        }

        public final void f(Context context) {
            Intrinsics.h(context, "context");
            e(context, g1.o().r());
        }

        private a() {
        }
    }

    public static final void b(Context context) {
        f21836a.f(context);
    }

    public static final void c(Context context, boolean z10) {
        f21836a.e(context, z10);
    }
}

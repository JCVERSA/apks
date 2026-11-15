package com.cloud.hisavana.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.n;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.ImpressionType;
import com.iab.omid.library.hisavana.adsession.Owner;
import defpackage.cgc;
import defpackage.cjb;
import defpackage.ikd;
import defpackage.ke7;
import defpackage.lob;
import defpackage.ly0;
import defpackage.qx7;
import defpackage.s7;
import defpackage.t7;
import defpackage.u7;
import defpackage.y45;
import defpackage.zfb;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class n {
    public static final a a = new a(null);
    public static volatile String b = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void g(Context context) {
            y45.j(context, "$context");
            try {
                InputStream inputStreamOpenRawResource = context.getResources().openRawResource(R.raw.omsdk_v1);
                try {
                    byte[] bArr = new byte[inputStreamOpenRawResource.available()];
                    int i = inputStreamOpenRawResource.read(bArr);
                    a aVar = n.a;
                    Charset charsetForName = Charset.forName("UTF-8");
                    y45.i(charsetForName, "forName(...)");
                    n.b = new String(bArr, 0, i, charsetForName);
                    zfb zfbVar = zfb.a;
                    ly0.a(inputStreamOpenRawResource, null);
                    ikd.b().d("OmSdk", "omid js loaded");
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(inputStreamOpenRawResource, th);
                        throw th2;
                    }
                }
            } catch (IOException e) {
                ikd.b().e("OmSdk", "Omid resource not found: " + e.getMessage());
            }
        }

        public final s7 b(Context context, CreativeType creativeType, AdsDTO adsDTO) {
            List<AdsProtocolBean.OmIdData> omIdVerifications;
            if (cgc.n().r() && context != null && creativeType != null) {
                if (TextUtils.isEmpty(n.b)) {
                    ikd.b().w("OmSdk", "omid js is not ready");
                    f(context);
                    return null;
                }
                if (adsDTO != null && ((omIdVerifications = adsDTO.getOmIdVerifications()) == null || !omIdVerifications.isEmpty())) {
                    try {
                        List listC = c(adsDTO);
                        if (listC.isEmpty()) {
                            return null;
                        }
                        ikd.b().d("OmSdk", "omid valid resource count : " + listC.size());
                        d(context);
                        ImpressionType impressionType = creativeType == CreativeType.AUDIO ? ImpressionType.AUDIBLE : ImpressionType.VIEWABLE;
                        Owner owner = Owner.NATIVE;
                        return s7.b(t7.a(creativeType, impressionType, owner, (creativeType == CreativeType.HTML_DISPLAY || creativeType == CreativeType.NATIVE_DISPLAY) ? Owner.NONE : owner, false), u7.a(qx7.a("hisavana", "3.3.8.0"), n.b, listC, null, "{\"partner\":\"hisavana\"}"));
                    } catch (Throwable th) {
                        ikd.b().e("OmSdk", "get adSession error: " + th.getMessage());
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0064  */
        public final List c(AdsDTO adsDTO) {
            List<AdsProtocolBean.OmIdData> omIdVerifications;
            lob lobVarA;
            String str;
            ArrayList arrayList = new ArrayList();
            if (adsDTO != null && (omIdVerifications = adsDTO.getOmIdVerifications()) != null) {
                y45.g(omIdVerifications);
                Iterator<AdsProtocolBean.OmIdData> it = omIdVerifications.iterator();
                while (it.hasNext()) {
                    AdsProtocolBean.OmIdData next = it.next();
                    if (!cjb.f(next != null ? next.url : null)) {
                        ikd.b().w("OmSdk", "omid data.vendorUrl is not valid");
                    } else {
                        if (arrayList.size() >= 5) {
                            ikd.b().w("OmSdk", "omid verification scripts num is bigger than 5");
                            break;
                        }
                        if (next == null || (str = next.verification_parameters) == null) {
                            lobVarA = lob.a(next.vendorKey, new URL(next.url), next.verification_parameters);
                        } else {
                            y45.g(str);
                            if (str.length() == 0) {
                                lobVarA = lob.b(new URL(next.url));
                            } else {
                                lobVarA = lob.a(next.vendorKey, new URL(next.url), next.verification_parameters);
                            }
                        }
                        y45.g(lobVarA);
                        arrayList.add(lobVarA);
                    }
                }
            }
            return arrayList;
        }

        public final void d(Context context) {
            if (ke7.c()) {
                return;
            }
            ke7.a(context.getApplicationContext());
        }

        public final void e(final Context context, boolean z) {
            y45.j(context, "context");
            if (z && TextUtils.isEmpty(n.b)) {
                HSScopeHelper.a.l(new Runnable() {
                    @Override
                    public final void run() {
                        n.a.g(context);
                    }
                });
            }
        }

        public final void f(Context context) {
            y45.j(context, "context");
            e(context, cgc.n().r());
        }

        public a() {
        }
    }

    public static final void b(Context context) {
        a.f(context);
    }

    public static final void c(Context context, boolean z) {
        a.e(context, z);
    }
}

package com.cloud.hisavana.sdk;

import android.view.ViewGroup;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class m {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Q0 q0, AdsDTO adsDTO, ViewGroup viewGroup, List list) {
            if (q0 != null) {
                q0.b(adsDTO, viewGroup, list);
            }
        }

        public a() {
        }
    }

    public static final void a(Q0 q0, AdsDTO adsDTO, ViewGroup viewGroup, List list) {
        a.a(q0, adsDTO, viewGroup, list);
    }
}

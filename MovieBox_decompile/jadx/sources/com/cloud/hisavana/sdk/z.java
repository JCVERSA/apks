package com.cloud.hisavana.sdk;

import android.view.ViewGroup;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class z {

    public static final a f22464a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(F0 f10, AdsDTO adsDTO, ViewGroup viewGroup, List list) {
            if (f10 != null) {
                f10.b(adsDTO, viewGroup, list);
            }
        }

        private a() {
        }
    }

    public static final void a(F0 f10, AdsDTO adsDTO, ViewGroup viewGroup, List list) {
        f22464a.a(f10, adsDTO, viewGroup, list);
    }
}

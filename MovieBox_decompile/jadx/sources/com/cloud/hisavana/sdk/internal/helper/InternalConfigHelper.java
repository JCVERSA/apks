package com.cloud.hisavana.sdk.internal.helper;

import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.g1;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/cloud/hisavana/sdk/internal/helper/InternalConfigHelper;", "", "<init>", "()V", "Companion", "a", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InternalConfigHelper {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ConfigTotalDTO.ExtInfo a() {
            try {
                g1 g1VarO = g1.o();
                if (g1VarO != null) {
                    return g1VarO.m();
                }
            } catch (Exception unused) {
            }
            return null;
        }

        private Companion() {
        }
    }

    @JvmStatic
    public static final ConfigTotalDTO.ExtInfo getExtInfo() {
        return INSTANCE.a();
    }
}

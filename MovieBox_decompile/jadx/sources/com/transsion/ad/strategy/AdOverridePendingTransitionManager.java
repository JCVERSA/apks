package com.transsion.ad.strategy;

import com.transsion.ad.R$anim;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

public final class AdOverridePendingTransitionManager {

    public static final AdOverridePendingTransitionManager f41160a = new AdOverridePendingTransitionManager();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;", "", "<init>", "(Ljava/lang/String;I)V", "OVERRIDE_PENDING_TRANSITION_1", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum AdOverridePendingTransitionEnum {
        OVERRIDE_PENDING_TRANSITION_1;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<AdOverridePendingTransitionEnum> getEntries() {
            return $ENTRIES;
        }
    }

    public class a {

        public static final int[] f41161a;

        static {
            int[] iArr = new int[AdOverridePendingTransitionEnum.values().length];
            try {
                iArr[AdOverridePendingTransitionEnum.OVERRIDE_PENDING_TRANSITION_1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f41161a = iArr;
        }
    }

    private AdOverridePendingTransitionManager() {
    }

    public final Pair a(AdOverridePendingTransitionEnum adOverridePendingTransitionEnum) {
        int i10 = adOverridePendingTransitionEnum == null ? -1 : a.f41161a[adOverridePendingTransitionEnum.ordinal()];
        if (i10 == -1) {
            return null;
        }
        if (i10 == 1) {
            return new Pair(Integer.valueOf(R$anim.slide_in_from_top), Integer.valueOf(R$anim.no_anim));
        }
        throw new NoWhenBranchMatchedException();
    }
}

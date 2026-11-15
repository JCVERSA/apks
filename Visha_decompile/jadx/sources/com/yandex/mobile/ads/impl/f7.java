package com.yandex.mobile.ads.impl;

import com.monetization.ads.quality.base.model.AdQualityVerificationError;
import com.monetization.ads.quality.base.model.AdQualityVerificationMode;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import com.monetization.ads.quality.base.state.AdQualityVerificationState;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class f7 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[AdQualityVerificationMode.values().length];
            try {
                iArr[AdQualityVerificationMode.FAST_VERIFICATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdQualityVerificationMode.LONG_VERIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    private static String a(AdQualityVerificationState adQualityVerificationState) {
        String str;
        if (adQualityVerificationState instanceof AdQualityVerificationState.Blocked) {
            str = "Blocked: " + ((AdQualityVerificationState.Blocked) adQualityVerificationState).getReason().getBlockReasons();
        } else if (adQualityVerificationState instanceof AdQualityVerificationState.Error) {
            str = "Error occurred during verification: " + ((AdQualityVerificationState.Error) adQualityVerificationState).getError().getDescription();
        } else if (adQualityVerificationState instanceof AdQualityVerificationState.NotStarted) {
            str = "Not verification started for the ad object";
        } else if (adQualityVerificationState instanceof AdQualityVerificationState.ShouldBeBlockedOnDisplay) {
            str = "Should be blocked on display: " + ((AdQualityVerificationState.ShouldBeBlockedOnDisplay) adQualityVerificationState).getReason().getBlockReasons();
        } else {
            if (!(adQualityVerificationState instanceof AdQualityVerificationState.Verified)) {
                throw new NoWhenBranchMatchedException();
            }
            str = "Verified";
        }
        return "Verification Completed. With result: " + str;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0068  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0081  */
    public static pp1 b(AdQualityVerificationResult adQualityVerificationResult) {
        String str;
        String str2;
        AdQualityVerificationError reason;
        y45.j(adQualityVerificationResult, "verificationResult");
        pp1 pp1Var = new pp1(kotlin.collections.a.l(), 2);
        pp1Var.b(a(adQualityVerificationResult), "verification_status");
        boolean z = adQualityVerificationResult instanceof AdQualityVerificationResult.Verified;
        if (z) {
            int i = a.a[((AdQualityVerificationResult.Verified) adQualityVerificationResult).getVerifiedAd().getVerificationMode().ordinal()];
            if (i == 1) {
                str = "fastVerification";
            } else {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                str = "longVerification";
            }
        } else {
            str = null;
        }
        pp1Var.b(str, "verification_flow");
        if (z) {
            AdQualityVerificationState adQualityVerificationState = (AdQualityVerificationState) ((AdQualityVerificationResult.Verified) adQualityVerificationResult).getVerifiedAd().getVerificationResultStateFlow().getValue();
            if ((adQualityVerificationState instanceof AdQualityVerificationState.Verified) || (adQualityVerificationState instanceof AdQualityVerificationState.Blocked) || (adQualityVerificationState instanceof AdQualityVerificationState.ShouldBeBlockedOnDisplay)) {
                str2 = "success";
            } else if (adQualityVerificationResult instanceof AdQualityVerificationResult.NotVerified) {
                reason = ((AdQualityVerificationResult.NotVerified) adQualityVerificationResult).getReason();
                if (!(reason instanceof AdQualityVerificationError.DisabledError) || (reason instanceof AdQualityVerificationError.LowUsagePercent) || (reason instanceof AdQualityVerificationError.UnsupportedNetwork)) {
                    str2 = "verification not enabled";
                } else {
                    str2 = "error";
                }
            } else {
                str2 = "error";
            }
        } else if (adQualityVerificationResult instanceof AdQualityVerificationResult.NotVerified) {
            reason = ((AdQualityVerificationResult.NotVerified) adQualityVerificationResult).getReason();
            if (reason instanceof AdQualityVerificationError.DisabledError) {
            }
            str2 = "verification not enabled";
        } else {
            str2 = "error";
        }
        pp1Var.b(str2, "status");
        return pp1Var;
    }

    private static String a(AdQualityVerificationResult adQualityVerificationResult) {
        if (adQualityVerificationResult instanceof AdQualityVerificationResult.NotImplemented) {
            return "Not implemented by design";
        }
        if (adQualityVerificationResult instanceof AdQualityVerificationResult.WaitingForVerification) {
            return "Verification not started";
        }
        if (!(adQualityVerificationResult instanceof AdQualityVerificationResult.NotVerified)) {
            if (adQualityVerificationResult instanceof AdQualityVerificationResult.Verified) {
                return a((AdQualityVerificationState) ((AdQualityVerificationResult.Verified) adQualityVerificationResult).getVerifiedAd().getVerificationResultStateFlow().getValue());
            }
            throw new NoWhenBranchMatchedException();
        }
        return "Not verified by reason: " + ((AdQualityVerificationResult.NotVerified) adQualityVerificationResult).getReason().getDescription();
    }
}

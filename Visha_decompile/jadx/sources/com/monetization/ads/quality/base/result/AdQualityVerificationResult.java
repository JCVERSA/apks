package com.monetization.ads.quality.base.result;

import com.monetization.ads.quality.base.AdQualityVerificationStateFlow;
import com.monetization.ads.quality.base.model.AdQualityVerificationError;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;", "", "NotImplemented", "NotVerified", "Verified", "WaitingForVerification", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotImplemented;", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AdQualityVerificationResult {

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotImplemented;", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NotImplemented implements AdQualityVerificationResult {
        public static final NotImplemented INSTANCE = new NotImplemented();

        private NotImplemented() {
        }

        public boolean equals(Object other) {
            return this == other || (other instanceof NotImplemented);
        }

        public int hashCode() {
            return -293539646;
        }

        public String toString() {
            return "NotImplemented";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotVerified;", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;", "reason", "Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;", "(Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;)V", "getReason", "()Lcom/monetization/ads/quality/base/model/AdQualityVerificationError;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NotVerified implements AdQualityVerificationResult {
        private final AdQualityVerificationError reason;

        public NotVerified(AdQualityVerificationError adQualityVerificationError) {
            y45.j(adQualityVerificationError, "reason");
            this.reason = adQualityVerificationError;
        }

        public static NotVerified copy$default(NotVerified notVerified, AdQualityVerificationError adQualityVerificationError, int i, Object obj) {
            if ((i & 1) != 0) {
                adQualityVerificationError = notVerified.reason;
            }
            return notVerified.copy(adQualityVerificationError);
        }

        public final AdQualityVerificationError getReason() {
            return this.reason;
        }

        public final NotVerified copy(AdQualityVerificationError reason) {
            y45.j(reason, "reason");
            return new NotVerified(reason);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof NotVerified) && y45.e(this.reason, ((NotVerified) other).reason);
        }

        public final AdQualityVerificationError getReason() {
            return this.reason;
        }

        public int hashCode() {
            return this.reason.hashCode();
        }

        public String toString() {
            return "NotVerified(reason=" + this.reason + ")";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;", "verifiedAd", "Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;", "(Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;)V", "getVerifiedAd", "()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Verified implements AdQualityVerificationResult {
        private final AdQualityVerificationStateFlow verifiedAd;

        public Verified(AdQualityVerificationStateFlow adQualityVerificationStateFlow) {
            y45.j(adQualityVerificationStateFlow, "verifiedAd");
            this.verifiedAd = adQualityVerificationStateFlow;
        }

        public static Verified copy$default(Verified verified, AdQualityVerificationStateFlow adQualityVerificationStateFlow, int i, Object obj) {
            if ((i & 1) != 0) {
                adQualityVerificationStateFlow = verified.verifiedAd;
            }
            return verified.copy(adQualityVerificationStateFlow);
        }

        public final AdQualityVerificationStateFlow getVerifiedAd() {
            return this.verifiedAd;
        }

        public final Verified copy(AdQualityVerificationStateFlow verifiedAd) {
            y45.j(verifiedAd, "verifiedAd");
            return new Verified(verifiedAd);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Verified) && y45.e(this.verifiedAd, ((Verified) other).verifiedAd);
        }

        public final AdQualityVerificationStateFlow getVerifiedAd() {
            return this.verifiedAd;
        }

        public int hashCode() {
            return this.verifiedAd.hashCode();
        }

        public String toString() {
            return "Verified(verifiedAd=" + this.verifiedAd + ")";
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;", "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class WaitingForVerification implements AdQualityVerificationResult {
        public static final WaitingForVerification INSTANCE = new WaitingForVerification();

        private WaitingForVerification() {
        }

        public boolean equals(Object other) {
            return this == other || (other instanceof WaitingForVerification);
        }

        public int hashCode() {
            return 393213194;
        }

        public String toString() {
            return "WaitingForVerification";
        }
    }
}

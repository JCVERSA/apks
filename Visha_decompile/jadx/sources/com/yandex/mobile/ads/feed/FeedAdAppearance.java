package com.yandex.mobile.ads.feed;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0016B\u001b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAdAppearance;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/Integer;", "getCardWidth", "()Ljava/lang/Integer;", "cardWidth", "", "b", "Ljava/lang/Double;", "getCardCornerRadius", "()Ljava/lang/Double;", "cardCornerRadius", MethodDecl.initName, "(Ljava/lang/Integer;Ljava/lang/Double;)V", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class FeedAdAppearance {

    private final Integer cardWidth;

    private final Double cardCornerRadius;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/yandex/mobile/ads/feed/FeedAdAppearance$Builder;", "", "Lcom/yandex/mobile/ads/feed/FeedAdAppearance;", "build", "()Lcom/yandex/mobile/ads/feed/FeedAdAppearance;", "", "radius", "setCardCornerRadius", "(Ljava/lang/Double;)Lcom/yandex/mobile/ads/feed/FeedAdAppearance$Builder;", "", "cardWidth", MethodDecl.initName, "(I)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private final int a;
        private Double b;

        public Builder(int i) {
            this.a = i;
        }

        public final FeedAdAppearance build() {
            return new FeedAdAppearance(Integer.valueOf(this.a), this.b);
        }

        public final Builder setCardCornerRadius(Double radius) {
            this.b = radius;
            return this;
        }
    }

    public FeedAdAppearance(Integer num, Double d) {
        this.cardWidth = num;
        this.cardCornerRadius = d;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !y45.e(FeedAdAppearance.class, other.getClass())) {
            return false;
        }
        FeedAdAppearance feedAdAppearance = (FeedAdAppearance) other;
        if (y45.e(this.cardWidth, feedAdAppearance.cardWidth)) {
            return y45.b(this.cardCornerRadius, feedAdAppearance.cardCornerRadius);
        }
        return false;
    }

    public final Double getCardCornerRadius() {
        return this.cardCornerRadius;
    }

    public final Integer getCardWidth() {
        return this.cardWidth;
    }

    public int hashCode() {
        Integer num = this.cardWidth;
        int iHashCode = (num != null ? num.hashCode() : 0) * 31;
        Double d = this.cardCornerRadius;
        return iHashCode + (d != null ? d.hashCode() : 0);
    }
}

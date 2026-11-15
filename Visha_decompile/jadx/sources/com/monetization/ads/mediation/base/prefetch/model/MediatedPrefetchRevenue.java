package com.monetization.ads.mediation.base.prefetch.model;

import androidx.media3.exoplayer.upstream.CmcdData;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;", "", "", "component1", "()D", ES6Iterator.VALUE_PROPERTY, "copy", "(D)Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "D", "getValue", MethodDecl.initName, "(D)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class MediatedPrefetchRevenue {

    private final double value;

    public MediatedPrefetchRevenue(double d) {
        this.value = d;
    }

    public static MediatedPrefetchRevenue copy$default(MediatedPrefetchRevenue mediatedPrefetchRevenue, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = mediatedPrefetchRevenue.value;
        }
        return mediatedPrefetchRevenue.copy(d);
    }

    public final double getValue() {
        return this.value;
    }

    public final MediatedPrefetchRevenue copy(double value) {
        return new MediatedPrefetchRevenue(value);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MediatedPrefetchRevenue) && Double.compare(this.value, ((MediatedPrefetchRevenue) other).value) == 0;
    }

    public final double getValue() {
        return this.value;
    }

    public int hashCode() {
        return Double.hashCode(this.value);
    }

    public String toString() {
        return "MediatedPrefetchRevenue(value=" + this.value + ")";
    }
}

package defpackage;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.internal.ads.j8;

public final class ixg {
    public final Context a;

    public ixg(Context context) {
        this.a = context;
    }

    public final im5 a(boolean z) {
        try {
            GetTopicsRequest getTopicsRequestBuild = new GetTopicsRequest.Builder().setAdsSdkName(MobileAds.ERROR_DOMAIN).setShouldRecordObservation(z).build();
            TopicsManagerFutures topicsManagerFuturesFrom = TopicsManagerFutures.from(this.a);
            return topicsManagerFuturesFrom != null ? topicsManagerFuturesFrom.getTopicsAsync(getTopicsRequestBuild) : j8.g(new IllegalStateException());
        } catch (Exception e) {
            return j8.g(e);
        }
    }
}

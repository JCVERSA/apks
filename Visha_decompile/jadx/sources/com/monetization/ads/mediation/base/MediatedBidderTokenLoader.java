package com.monetization.ads.mediation.base;

import android.content.Context;
import androidx.annotation.WorkerThread;
import java.util.Map;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J5\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u0006\u0010\b\u001a\u00020\u0007H'¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;", "", "Landroid/content/Context;", "context", "", "", "extras", "Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoadListener;", "listener", "Lzfb;", "loadBidderToken", "(Landroid/content/Context;Ljava/util/Map;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoadListener;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediatedBidderTokenLoader {
    @WorkerThread
    void loadBidderToken(Context context, Map<String, String> extras, MediatedBidderTokenLoadListener listener);
}

package com.monetization.ads.mediation.base.prefetch;

import androidx.annotation.MainThread;
import com.monetization.ads.mediation.base.prefetch.model.MediatedPrefetchAdapterData;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\u000b\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH'¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetchListener;", "", "Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;", "mediatedPrefetchAdapterData", "Lzfb;", "onPrefetched", "(Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;)V", "", "errorCode", "", "errorMessage", "onPrefetchFailed", "(Ljava/lang/Integer;Ljava/lang/String;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediatedAdapterPrefetchListener {
    @MainThread
    void onPrefetchFailed(Integer errorCode, String errorMessage);

    @MainThread
    void onPrefetched(MediatedPrefetchAdapterData mediatedPrefetchAdapterData);
}

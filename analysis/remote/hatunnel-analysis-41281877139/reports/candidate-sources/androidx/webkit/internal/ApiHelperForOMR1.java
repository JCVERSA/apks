package androidx.webkit.internal;

import android.content.Context;
import android.net.Uri;
import android.webkit.SafeBrowsingResponse;
import android.webkit.ValueCallback;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import java.util.List;

public class ApiHelperForOMR1 {
    private ApiHelperForOMR1() {
    }

    public static void backToSafety(SafeBrowsingResponse safeBrowsingResponse, boolean z) {
        zzy$$ExternalSyntheticApiModelOutline0.m(safeBrowsingResponse, z);
    }

    public static Uri getSafeBrowsingPrivacyPolicyUrl() {
        return zzy$$ExternalSyntheticApiModelOutline0.m494m();
    }

    public static void proceed(SafeBrowsingResponse safeBrowsingResponse, boolean z) {
        zzy$$ExternalSyntheticApiModelOutline0.m$2(safeBrowsingResponse, z);
    }

    public static void setSafeBrowsingWhitelist(List<String> list, ValueCallback<Boolean> valueCallback) {
        zzy$$ExternalSyntheticApiModelOutline0.m(list, valueCallback);
    }

    public static void showInterstitial(SafeBrowsingResponse safeBrowsingResponse, boolean z) {
        zzy$$ExternalSyntheticApiModelOutline0.m$1(safeBrowsingResponse, z);
    }

    public static void startSafeBrowsing(Context context, ValueCallback<Boolean> valueCallback) {
        zzy$$ExternalSyntheticApiModelOutline0.m(context, valueCallback);
    }
}

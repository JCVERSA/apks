package com.facebook.biddingkit.http.util;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.biddingkit.http.client.AndroidHttpClient;
import java.util.HashSet;
import java.util.Set;

public class NetworkUtilities {
    private static final int AD_READ_TIMEOUT_SANDBOX_MS = 120000;
    private static final int AD_REQUEST_TIMEOUT_MS = 30000;
    private static final int AD_REQUEST_TIMEOUT_SANDBOX_MS = 360000;
    private static final Set<String> PINNED_SHA1_CERTIFICATES;
    private static final Set<String> PINNED_SHA1_PUBLIC_KEYS;

    @Nullable
    private static AndroidHttpClient testHttpClient;

    static {
        HashSet hashSet = new HashSet(1);
        PINNED_SHA1_CERTIFICATES = hashSet;
        HashSet hashSet2 = new HashSet(2);
        PINNED_SHA1_PUBLIC_KEYS = hashSet2;
        hashSet.add("1ww8E0AYsR2oX5lndk2hwp2Uosk=\n");
        hashSet.add("mOTdnSGD1SmegENz//Kn4cSHn14=\n");
        hashSet.add("H7hrEWjsdDFUBi6MnMWxcaS3zLQ=\n");
        hashSet.add("orAitN2YRTqgCPUHW8KJW7r1IUY=\n");
        hashSet.add("M5zdV8/VsUEWm2Ff8xQoeC0dpjk=\n");
        hashSet.add("9a0LzBrVbNFQclschmwwrZLvIbA=\n");
        hashSet.add("Avrz4pFDVGhgeFdpTfXkW2iFGGg=\n");
        hashSet.add("jDlu2bB0Rmqr47pjguyML79Aye0=\n");
        hashSet.add("WCsptscss8t/NCgA1DxvmnaolGk=\n");
        hashSet.add("oDHEZ4Lm5sZiwsh8dtqapizKvY4=\n");
        hashSet.add("yj/IKGD+GsjgDNPj6SzsWN2sLT0=\n");
        hashSet.add("BrJZJ8QqchYxwe/ZQx5kj6YuHjk=\n");
        hashSet.add("npmkiplgsUkmu387AuItorCrcoA=\n");
        hashSet.add("kX5zLTMPmhJAT3PYvqNpSLkp3/w=\n");
        hashSet2.add("toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n");
        hashSet2.add("3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n");
        hashSet2.add("B08QtE4yLCdli4rptyqAEczXOeA=\n");
        hashSet2.add("XZXI6anZbdKf+taURdnyUH5ipgM=\n");
        hashSet2.add("bhbUIW5tqP+DrjCAXQxkIyBbTZU=\n");
        hashSet2.add("UbxPdxcIz+UJ3enqpVSOkcBneFM=\n");
        hashSet2.add("4kx7eUDImQCtxhdmZFPeQvoM1ig=\n");
        hashSet2.add("SXxoaOSEzPC6BgGmxAt/EAcsajw=\n");
        hashSet2.add("blhOM3W9V/bVQhsWAcLYwPU6n24=\n");
        hashSet2.add("T5x9IXmcrQ7YuQxXnxoCmeeQ84c=\n");
        hashSet2.add("3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n");
        hashSet2.add("b7+z1e0c+vrbTfOzogbkyuNbLFM=\n");
        hashSet2.add("nw+owQDOD/aWeu/JoBj4apDZ3co=\n");
        hashSet2.add("rvde5sbMtJH1szWIuROLvT7cgSo=\n");
        hashSet2.add("QIN33WddQIcN4iqJBUUodfI23tQ=\n");
        hashSet2.add("jfAKrXw/TPNCdeLsGb3zKOIkaSI=\n");
        hashSet2.add("m2VirtEZk8KAfti3Hh8IwICjc08=\n");
        testHttpClient = null;
    }

    public static AndroidHttpClient createHttpsClient() {
        AndroidHttpClient androidHttpClient = testHttpClient;
        if (androidHttpClient != null) {
            return androidHttpClient;
        }
        AndroidHttpClient androidHttpClient2 = new AndroidHttpClient();
        setupClient(androidHttpClient2);
        if (!isSandboxUrl()) {
            androidHttpClient2.setPinnedPublicKeys(PINNED_SHA1_PUBLIC_KEYS);
            androidHttpClient2.setPinnedCertificates(PINNED_SHA1_CERTIFICATES);
        }
        return androidHttpClient2;
    }

    public static boolean isSandboxUrl() {
        return false;
    }

    @VisibleForTesting
    public static void setTestHttpClient(@Nullable AndroidHttpClient androidHttpClient) {
        testHttpClient = androidHttpClient;
    }

    private static void setupClient(AndroidHttpClient androidHttpClient) {
        if (!isSandboxUrl()) {
            androidHttpClient.setConnectionTimeout(30000);
        } else {
            androidHttpClient.setConnectionTimeout(AD_REQUEST_TIMEOUT_SANDBOX_MS);
            androidHttpClient.setReadTimeout(AD_READ_TIMEOUT_SANDBOX_MS);
        }
    }
}

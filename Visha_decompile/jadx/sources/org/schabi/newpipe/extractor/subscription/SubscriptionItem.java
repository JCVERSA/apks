package org.schabi.newpipe.extractor.subscription;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;

public class SubscriptionItem implements Serializable {
    private final String name;
    private final int serviceId;
    private final String url;

    public SubscriptionItem(int i, String str, String str2) {
        this.serviceId = i;
        this.url = str;
        this.name = str2;
    }

    public String getName() {
        return this.name;
    }

    public int getServiceId() {
        return this.serviceId;
    }

    public String getUrl() {
        return this.url;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + "[name=" + this.name + " > " + this.serviceId + StringUtils.PROCESS_POSTFIX_DELIMITER + this.url + "]";
    }
}

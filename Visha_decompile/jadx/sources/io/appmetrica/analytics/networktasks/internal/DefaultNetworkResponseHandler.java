package io.appmetrica.analytics.networktasks.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class DefaultNetworkResponseHandler implements NetworkResponseHandler<DefaultResponseParser.Response> {
    private final DefaultResponseParser a;

    public DefaultNetworkResponseHandler() {
        this(new DefaultResponseParser());
    }

    public DefaultNetworkResponseHandler(DefaultResponseParser defaultResponseParser) {
        this.a = defaultResponseParser;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @Nullable
    public DefaultResponseParser.Response handle(@NonNull ResponseDataHolder responseDataHolder) {
        if (200 == responseDataHolder.getResponseCode()) {
            return this.a.parse(responseDataHolder.getResponseData());
        }
        return null;
    }
}

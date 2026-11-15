package org.chromium.net;

import android.content.Context;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.Executor;

@Deprecated
public abstract class ExperimentalCronetEngine extends CronetEngine {
    public static final int CONNECTION_METRIC_UNKNOWN = -1;
    public static final int EFFECTIVE_CONNECTION_TYPE_2G = 3;
    public static final int EFFECTIVE_CONNECTION_TYPE_3G = 4;
    public static final int EFFECTIVE_CONNECTION_TYPE_4G = 5;
    public static final int EFFECTIVE_CONNECTION_TYPE_OFFLINE = 1;
    public static final int EFFECTIVE_CONNECTION_TYPE_SLOW_2G = 2;
    public static final int EFFECTIVE_CONNECTION_TYPE_UNKNOWN = 0;
    public static final long UNBIND_NETWORK_HANDLE = -1;

    public static class Builder extends CronetEngine.Builder {
        public Builder(Context context) {
            super(context);
        }

        @Override
        public CronetEngine.Builder addPublicKeyPins(String str, Set set, boolean z10, Date date) {
            return addPublicKeyPins(str, (Set<byte[]>) set, z10, date);
        }

        @Override
        public Builder enableSdch(boolean z10) {
            return this;
        }

        public ICronetEngineBuilder getBuilderDelegate() {
            return this.mBuilderDelegate;
        }

        public Builder setExperimentalOptions(String str) {
            this.mBuilderDelegate.setExperimentalOptions(str);
            return this;
        }

        public Builder(ICronetEngineBuilder iCronetEngineBuilder) {
            super(iCronetEngineBuilder);
        }

        @Override
        public Builder addPublicKeyPins(String str, Set<byte[]> set, boolean z10, Date date) {
            super.addPublicKeyPins(str, set, z10, date);
            return this;
        }

        @Override
        public Builder addQuicHint(String str, int i10, int i11) {
            super.addQuicHint(str, i10, i11);
            return this;
        }

        @Override
        public ExperimentalCronetEngine build() {
            return this.mBuilderDelegate.build();
        }

        @Override
        public Builder enableHttp2(boolean z10) {
            super.enableHttp2(z10);
            return this;
        }

        @Override
        public Builder enableHttpCache(int i10, long j10) {
            super.enableHttpCache(i10, j10);
            return this;
        }

        @Override
        public Builder enableNetworkQualityEstimator(boolean z10) {
            super.enableNetworkQualityEstimator(z10);
            return this;
        }

        @Override
        public Builder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z10) {
            super.enablePublicKeyPinningBypassForLocalTrustAnchors(z10);
            return this;
        }

        @Override
        public Builder enableQuic(boolean z10) {
            super.enableQuic(z10);
            return this;
        }

        @Override
        @ConnectionMigrationOptions.Experimental
        public Builder setConnectionMigrationOptions(ConnectionMigrationOptions connectionMigrationOptions) {
            super.setConnectionMigrationOptions(connectionMigrationOptions);
            return this;
        }

        @Override
        @DnsOptions.Experimental
        public Builder setDnsOptions(DnsOptions dnsOptions) {
            super.setDnsOptions(dnsOptions);
            return this;
        }

        @Override
        public Builder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader) {
            super.setLibraryLoader(libraryLoader);
            return this;
        }

        @Override
        @QuicOptions.Experimental
        public Builder setQuicOptions(QuicOptions quicOptions) {
            super.setQuicOptions(quicOptions);
            return this;
        }

        @Override
        public Builder setStoragePath(String str) {
            super.setStoragePath(str);
            return this;
        }

        @Override
        public Builder setThreadPriority(int i10) {
            super.setThreadPriority(i10);
            return this;
        }

        @Override
        public Builder setUserAgent(String str) {
            super.setUserAgent(str);
            return this;
        }
    }

    @Override
    public abstract ExperimentalBidirectionalStream.Builder newBidirectionalStreamBuilder(String str, BidirectionalStream.Callback callback, Executor executor);

    @Override
    public abstract ExperimentalUrlRequest.Builder newUrlRequestBuilder(String str, UrlRequest.Callback callback, Executor executor);

    public URLConnection openConnection(URL url, Proxy proxy) throws IOException {
        return (URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection(proxy));
    }
}

package org.chromium.net;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandlerFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

public abstract class CronetEngine {
    public static final int ACTIVE_REQUEST_COUNT_UNKNOWN = -1;
    public static final int CONNECTION_METRIC_UNKNOWN = -1;
    public static final int EFFECTIVE_CONNECTION_TYPE_2G = 3;
    public static final int EFFECTIVE_CONNECTION_TYPE_3G = 4;
    public static final int EFFECTIVE_CONNECTION_TYPE_4G = 5;
    public static final int EFFECTIVE_CONNECTION_TYPE_OFFLINE = 1;
    public static final int EFFECTIVE_CONNECTION_TYPE_SLOW_2G = 2;
    public static final int EFFECTIVE_CONNECTION_TYPE_UNKNOWN = 0;
    private static final String TAG = "CronetEngine";
    public static final long UNBIND_NETWORK_HANDLE = -1;

    public static class Builder {
        public static final int HTTP_CACHE_DISABLED = 0;
        public static final int HTTP_CACHE_DISK = 3;
        public static final int HTTP_CACHE_DISK_NO_HTTP = 2;
        public static final int HTTP_CACHE_IN_MEMORY = 1;
        private static final String TAG = "CronetEngine.Builder";
        protected final ICronetEngineBuilder mBuilderDelegate;

        public static abstract class LibraryLoader {
            public abstract void loadLibrary(String str);
        }

        public Builder(Context context) {
            this(createBuilderDelegate(context));
        }

        static int compareVersions(String str, String str2) {
            if (str == null || str2 == null) {
                throw new IllegalArgumentException("The input values cannot be null");
            }
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            for (int i10 = 0; i10 < strArrSplit.length && i10 < strArrSplit2.length; i10++) {
                try {
                    int i11 = Integer.parseInt(strArrSplit[i10]);
                    int i12 = Integer.parseInt(strArrSplit2[i10]);
                    if (i11 != i12) {
                        return Integer.signum(i11 - i12);
                    }
                } catch (NumberFormatException e10) {
                    throw new IllegalArgumentException("Unable to convert version segments into integers: " + strArrSplit[i10] + " & " + strArrSplit2[i10], e10);
                }
            }
            return Integer.signum(strArrSplit.length - strArrSplit2.length);
        }

        private static ICronetEngineBuilder createBuilderDelegate(Context context) {
            CronetProvider cronetProvider = getEnabledCronetProviders(context, new ArrayList(CronetProvider.getAllProviders(context))).get(0);
            if (Log.isLoggable(TAG, 3)) {
                String.format("Using '%s' provider for creating CronetEngine.Builder.", cronetProvider);
            }
            return cronetProvider.createBuilder().mBuilderDelegate;
        }

        static List<CronetProvider> getEnabledCronetProviders(Context context, List<CronetProvider> list) {
            if (list.isEmpty()) {
                throw new RuntimeException("Unable to find any Cronet provider. Have you included all necessary jars?");
            }
            Iterator<CronetProvider> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().isEnabled()) {
                    it.remove();
                }
            }
            if (list.isEmpty()) {
                throw new RuntimeException("All available Cronet providers are disabled. A provider should be enabled before it can be used.");
            }
            Collections.sort(list, new Comparator<CronetProvider>() {
                @Override
                public int compare(CronetProvider cronetProvider, CronetProvider cronetProvider2) {
                    if (CronetProvider.PROVIDER_NAME_FALLBACK.equals(cronetProvider.getName())) {
                        return 1;
                    }
                    if (CronetProvider.PROVIDER_NAME_FALLBACK.equals(cronetProvider2.getName())) {
                        return -1;
                    }
                    return -Builder.compareVersions(cronetProvider.getVersion(), cronetProvider2.getVersion());
                }
            });
            return list;
        }

        private int getImplementationApiLevel() {
            try {
                return ((Integer) this.mBuilderDelegate.getClass().getClassLoader().loadClass("org.chromium.net.impl.ImplVersion").getMethod("getApiLevel", null).invoke(null, null)).intValue();
            } catch (Exception unused) {
                return -1;
            }
        }

        private int getMaximumApiLevel() {
            return ApiVersion.getMaximumAvailableApiLevel();
        }

        public Builder addPublicKeyPins(String str, Set<byte[]> set, boolean z10, Date date) {
            this.mBuilderDelegate.addPublicKeyPins(str, set, z10, date);
            return this;
        }

        public Builder addQuicHint(String str, int i10, int i11) {
            this.mBuilderDelegate.addQuicHint(str, i10, i11);
            return this;
        }

        public CronetEngine build() {
            int implementationApiLevel = getImplementationApiLevel();
            if (implementationApiLevel != -1 && implementationApiLevel < getMaximumApiLevel()) {
                Log.w(TAG, "The implementation version is lower than the API version. Calls to methods added in API " + (implementationApiLevel + 1) + " and newer will likely have no effect.");
            }
            return this.mBuilderDelegate.build();
        }

        public Builder enableBrotli(boolean z10) {
            this.mBuilderDelegate.enableBrotli(z10);
            return this;
        }

        public Builder enableHttp2(boolean z10) {
            this.mBuilderDelegate.enableHttp2(z10);
            return this;
        }

        public Builder enableHttpCache(int i10, long j10) {
            this.mBuilderDelegate.enableHttpCache(i10, j10);
            return this;
        }

        public Builder enableNetworkQualityEstimator(boolean z10) {
            this.mBuilderDelegate.enableNetworkQualityEstimator(z10);
            return this;
        }

        public Builder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z10) {
            this.mBuilderDelegate.enablePublicKeyPinningBypassForLocalTrustAnchors(z10);
            return this;
        }

        public Builder enableQuic(boolean z10) {
            this.mBuilderDelegate.enableQuic(z10);
            return this;
        }

        @Deprecated
        public Builder enableSdch(boolean z10) {
            return this;
        }

        public String getDefaultUserAgent() {
            return this.mBuilderDelegate.getDefaultUserAgent();
        }

        @ConnectionMigrationOptions.Experimental
        public Builder setConnectionMigrationOptions(ConnectionMigrationOptions connectionMigrationOptions) {
            this.mBuilderDelegate.setConnectionMigrationOptions(connectionMigrationOptions);
            return this;
        }

        @DnsOptions.Experimental
        public Builder setDnsOptions(DnsOptions dnsOptions) {
            this.mBuilderDelegate.setDnsOptions(dnsOptions);
            return this;
        }

        public Builder setLibraryLoader(LibraryLoader libraryLoader) {
            this.mBuilderDelegate.setLibraryLoader(libraryLoader);
            return this;
        }

        @QuicOptions.Experimental
        public Builder setQuicOptions(QuicOptions quicOptions) {
            this.mBuilderDelegate.setQuicOptions(quicOptions);
            return this;
        }

        public Builder setStoragePath(String str) {
            this.mBuilderDelegate.setStoragePath(str);
            return this;
        }

        public Builder setThreadPriority(int i10) {
            this.mBuilderDelegate.setThreadPriority(i10);
            return this;
        }

        public Builder setUserAgent(String str) {
            this.mBuilderDelegate.setUserAgent(str);
            return this;
        }

        public Builder(ICronetEngineBuilder iCronetEngineBuilder) {
            if (iCronetEngineBuilder instanceof e) {
                this.mBuilderDelegate = iCronetEngineBuilder;
            } else {
                this.mBuilderDelegate = new e(iCronetEngineBuilder);
            }
        }

        @ConnectionMigrationOptions.Experimental
        public Builder setConnectionMigrationOptions(ConnectionMigrationOptions.Builder builder) {
            return setConnectionMigrationOptions(builder.build());
        }

        @DnsOptions.Experimental
        public Builder setDnsOptions(DnsOptions.Builder builder) {
            return setDnsOptions(builder.build());
        }

        @QuicOptions.Experimental
        public Builder setQuicOptions(QuicOptions.Builder builder) {
            return setQuicOptions(builder.build());
        }
    }

    public void addRequestFinishedListener(RequestFinishedInfo.Listener listener) {
    }

    public void addRttListener(NetworkQualityRttListener networkQualityRttListener) {
    }

    public void addThroughputListener(NetworkQualityThroughputListener networkQualityThroughputListener) {
    }

    public void bindToNetwork(long j10) {
    }

    public void configureNetworkQualityEstimatorForTesting(boolean z10, boolean z11, boolean z12) {
    }

    public abstract URLStreamHandlerFactory createURLStreamHandlerFactory();

    public int getActiveRequestCount() {
        return -1;
    }

    public int getDownstreamThroughputKbps() {
        return -1;
    }

    public int getEffectiveConnectionType() {
        return 0;
    }

    public abstract byte[] getGlobalMetricsDeltas();

    public int getHttpRttMs() {
        return -1;
    }

    public int getTransportRttMs() {
        return -1;
    }

    public abstract String getVersionString();

    public BidirectionalStream.Builder newBidirectionalStreamBuilder(String str, BidirectionalStream.Callback callback, Executor executor) {
        throw new UnsupportedOperationException("Not implemented.");
    }

    public abstract UrlRequest.Builder newUrlRequestBuilder(String str, UrlRequest.Callback callback, Executor executor);

    public abstract URLConnection openConnection(URL url) throws IOException;

    public void removeRequestFinishedListener(RequestFinishedInfo.Listener listener) {
    }

    public void removeRttListener(NetworkQualityRttListener networkQualityRttListener) {
    }

    public void removeThroughputListener(NetworkQualityThroughputListener networkQualityThroughputListener) {
    }

    public abstract void shutdown();

    public void startNetLogToDisk(String str, boolean z10, int i10) {
    }

    public abstract void startNetLogToFile(String str, boolean z10);

    public abstract void stopNetLog();
}

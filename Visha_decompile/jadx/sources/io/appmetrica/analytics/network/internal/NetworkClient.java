package io.appmetrica.analytics.network.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.network.impl.c;
import io.appmetrica.analytics.network.impl.d;
import javax.net.ssl.SSLSocketFactory;

public class NetworkClient {
    private final Integer a;
    private final Integer b;
    private final SSLSocketFactory c;
    private final Boolean d;
    private final Boolean e;
    private final int f;

    public static class Builder {
        private Integer a;
        private Integer b;
        private SSLSocketFactory c;
        private Boolean d;
        private Boolean e;
        private Integer f;

        @NonNull
        public NetworkClient build() {
            return new NetworkClient(this.a, this.b, this.c, this.d, this.e, this.f, 0);
        }

        @NonNull
        public Builder withConnectTimeout(int i) {
            this.a = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder withInstanceFollowRedirects(boolean z) {
            this.e = Boolean.valueOf(z);
            return this;
        }

        @NonNull
        public Builder withMaxResponseSize(int i) {
            this.f = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder withReadTimeout(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder withSslSocketFactory(@Nullable SSLSocketFactory sSLSocketFactory) {
            this.c = sSLSocketFactory;
            return this;
        }

        @NonNull
        public Builder withUseCaches(boolean z) {
            this.d = Boolean.valueOf(z);
            return this;
        }
    }

    public NetworkClient(Integer num, Integer num2, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, Integer num3, int i) {
        this(num, num2, sSLSocketFactory, bool, bool2, num3);
    }

    @Nullable
    public Integer getConnectTimeout() {
        return this.a;
    }

    @Nullable
    public Boolean getInstanceFollowRedirects() {
        return this.e;
    }

    public int getMaxResponseSize() {
        return this.f;
    }

    @Nullable
    public Integer getReadTimeout() {
        return this.b;
    }

    @Nullable
    public SSLSocketFactory getSslSocketFactory() {
        return this.c;
    }

    @Nullable
    public Boolean getUseCaches() {
        return this.d;
    }

    @NonNull
    public Call newCall(@NonNull Request request) {
        return new c(this, request, new d());
    }

    public String toString() {
        return "NetworkClient{connectTimeout=" + this.a + ", readTimeout=" + this.b + ", sslSocketFactory=" + this.c + ", useCaches=" + this.d + ", instanceFollowRedirects=" + this.e + ", maxResponseSize=" + this.f + '}';
    }

    private NetworkClient(Integer num, Integer num2, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, Integer num3) {
        this.a = num;
        this.b = num2;
        this.c = sSLSocketFactory;
        this.d = bool;
        this.e = bool2;
        this.f = num3 == null ? Integer.MAX_VALUE : num3.intValue();
    }
}

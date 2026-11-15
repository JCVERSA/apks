package org.chromium.net;

import java.util.concurrent.Executor;

@Deprecated
public abstract class ExperimentalUrlRequest extends UrlRequest {

    @Deprecated
    public static abstract class Builder extends UrlRequest.Builder {
        public static final int DEFAULT_IDEMPOTENCY = 0;
        public static final int IDEMPOTENT = 1;
        public static final int NOT_IDEMPOTENT = 2;

        @Override
        public abstract Builder addHeader(String str, String str2);

        @Override
        public Builder addRequestAnnotation(Object obj) {
            return this;
        }

        @Override
        public abstract Builder allowDirectExecutor();

        @Override
        public abstract ExperimentalUrlRequest build();

        @Override
        public abstract Builder disableCache();

        public Builder disableConnectionMigration() {
            return this;
        }

        @Override
        public abstract Builder setHttpMethod(String str);

        public Builder setIdempotency(int i10) {
            return this;
        }

        @Override
        public abstract Builder setPriority(int i10);

        @Override
        public Builder setRequestFinishedListener(RequestFinishedInfo.Listener listener) {
            return this;
        }

        @Override
        public Builder setTrafficStatsTag(int i10) {
            return this;
        }

        @Override
        public Builder setTrafficStatsUid(int i10) {
            return this;
        }

        @Override
        public abstract Builder setUploadDataProvider(UploadDataProvider uploadDataProvider, Executor executor);
    }
}

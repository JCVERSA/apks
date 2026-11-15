package org.chromium.net;

@Deprecated
public abstract class ExperimentalBidirectionalStream extends BidirectionalStream {

    @Deprecated
    public static abstract class Builder extends BidirectionalStream.Builder {
        @Override
        public abstract Builder addHeader(String str, String str2);

        @Override
        public Builder addRequestAnnotation(Object obj) {
            return this;
        }

        @Override
        public abstract ExperimentalBidirectionalStream build();

        @Override
        public abstract Builder delayRequestHeadersUntilFirstFlush(boolean z);

        @Override
        public abstract Builder setHttpMethod(String str);

        @Override
        public abstract Builder setPriority(int i);

        @Override
        public Builder setTrafficStatsTag(int i) {
            return this;
        }

        @Override
        public Builder setTrafficStatsUid(int i) {
            return this;
        }
    }
}

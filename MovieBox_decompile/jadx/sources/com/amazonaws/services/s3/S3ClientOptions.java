package com.amazonaws.services.s3;

public class S3ClientOptions {

    private boolean f17980a;

    private boolean f17981b;

    private final boolean f17982c;

    private final boolean f17983d;

    private final boolean f17984e;

    private final boolean f17985f;

    public static final class Builder {

        private boolean f17986a;

        private boolean f17987b;

        private boolean f17988c;

        private boolean f17989d;

        private boolean f17990e;

        private boolean f17991f;

        public S3ClientOptions a() {
            return new S3ClientOptions(this.f17986a, this.f17987b, this.f17988c, this.f17989d, this.f17990e, this.f17991f);
        }

        public Builder b(boolean z10) {
            this.f17989d = z10;
            return this;
        }

        public Builder c(boolean z10) {
            this.f17987b = z10;
            return this;
        }

        private Builder() {
            this.f17986a = false;
            this.f17987b = false;
            this.f17988c = false;
            this.f17989d = false;
            this.f17990e = false;
            this.f17991f = false;
        }
    }

    public static Builder a() {
        return new Builder();
    }

    public boolean b() {
        return this.f17983d;
    }

    public boolean c() {
        return this.f17980a;
    }

    public boolean d() {
        return this.f17985f;
    }

    public boolean e() {
        return this.f17981b;
    }

    @Deprecated
    public S3ClientOptions() {
        this.f17980a = false;
        this.f17981b = false;
        this.f17982c = false;
        this.f17983d = false;
        this.f17984e = false;
        this.f17985f = false;
    }

    public S3ClientOptions(S3ClientOptions s3ClientOptions) {
        this.f17980a = s3ClientOptions.f17980a;
        this.f17981b = s3ClientOptions.f17981b;
        this.f17982c = s3ClientOptions.f17982c;
        this.f17983d = s3ClientOptions.f17983d;
        this.f17984e = s3ClientOptions.f17984e;
        this.f17985f = s3ClientOptions.f17985f;
    }

    private S3ClientOptions(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f17980a = z10;
        this.f17981b = z11;
        this.f17982c = z12;
        this.f17983d = z13;
        this.f17984e = z14;
        this.f17985f = z15;
    }
}

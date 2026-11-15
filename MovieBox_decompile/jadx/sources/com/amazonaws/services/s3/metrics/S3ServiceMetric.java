package com.amazonaws.services.s3.metrics;

import com.amazonaws.metrics.ServiceMetricType;
import com.amazonaws.metrics.SimpleMetricType;
import com.amazonaws.metrics.ThroughputMetricType;

public class S3ServiceMetric extends SimpleMetricType implements ServiceMetricType {

    public static final S3ThroughputMetric f18062b;

    public static final S3ServiceMetric f18063c;

    public static final S3ThroughputMetric f18064d;

    public static final S3ServiceMetric f18065e;

    private static final S3ServiceMetric[] f18066f;

    private final String f18067a;

    public static abstract class S3ThroughputMetric extends S3ServiceMetric implements ThroughputMetricType {
        private S3ThroughputMetric(String str) {
            super(str);
        }
    }

    static {
        S3ThroughputMetric s3ThroughputMetric = new S3ThroughputMetric(a("DownloadThroughput")) {
        };
        f18062b = s3ThroughputMetric;
        S3ServiceMetric s3ServiceMetric = new S3ServiceMetric(a("DownloadByteCount"));
        f18063c = s3ServiceMetric;
        S3ThroughputMetric s3ThroughputMetric2 = new S3ThroughputMetric(a("UploadThroughput")) {
        };
        f18064d = s3ThroughputMetric2;
        S3ServiceMetric s3ServiceMetric2 = new S3ServiceMetric(a("UploadByteCount"));
        f18065e = s3ServiceMetric2;
        f18066f = new S3ServiceMetric[]{s3ThroughputMetric, s3ServiceMetric, s3ThroughputMetric2, s3ServiceMetric2};
    }

    private static final String a(String str) {
        return "S3" + str;
    }

    public static S3ServiceMetric[] b() {
        return (S3ServiceMetric[]) f18066f.clone();
    }

    @Override
    public String name() {
        return this.f18067a;
    }

    private S3ServiceMetric(String str) {
        this.f18067a = str;
    }
}
